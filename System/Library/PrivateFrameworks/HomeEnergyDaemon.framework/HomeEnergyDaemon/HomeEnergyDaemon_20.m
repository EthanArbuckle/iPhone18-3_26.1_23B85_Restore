id sub_22B30E804(id result, uint64_t a2)
{
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [result name];
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = v5;
  v7 = sub_22B36084C();
  v9 = v8;

  if (v7 == 0xD000000000000011 && 0x800000022B369070 == v9)
  {
    goto LABEL_21;
  }

  v11 = sub_22B36134C();

  if ((v11 & 1) == 0)
  {
LABEL_31:
    v12 = [v4 name];
    if (!v12)
    {
      goto LABEL_14;
    }

    v13 = v12;
    v14 = sub_22B36084C();
    v16 = v15;

    if (v14 == 0x6C61767265746E49 && v16 == 0xEE00736B636F6C42)
    {
      goto LABEL_21;
    }

    v18 = sub_22B36134C();

    if ((v18 & 1) == 0)
    {
LABEL_14:
      v19 = [v4 name];
      if (!v19)
      {
        goto LABEL_18;
      }

      v20 = v19;
      v21 = sub_22B36084C();
      v23 = v22;

      if (v21 == 0xD000000000000011 && 0x800000022B36E2A0 == v23)
      {
        goto LABEL_21;
      }

      v24 = sub_22B36134C();

      if ((v24 & 1) == 0)
      {
LABEL_18:
        v25 = [v4 name];
        if (v25)
        {
          v26 = v25;
          v27 = sub_22B36084C();
          v29 = v28;

          if (v27 == 0xD000000000000013 && 0x800000022B36E280 == v29)
          {
LABEL_21:

            goto LABEL_22;
          }

          v31 = sub_22B36134C();

          if (v31)
          {
            goto LABEL_22;
          }
        }

        v32.receiver = v2;
        v32.super_class = type metadata accessor for CoreDataServerHandlingPolicy();
        v30 = objc_msgSendSuper2(&v32, sel_restrictingWritePredicateForEntity_fromClientWithContext_, v4, a2);
        goto LABEL_23;
      }
    }
  }

LABEL_22:
  v30 = [objc_opt_self() predicateWithValue_];
LABEL_23:

  return v30;
}

void sub_22B30EB9C(void *a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for CoreDataServerHandlingPolicy();
  v5 = objc_msgSendSuper2(&v9, sel_processFaultForObjectWithID_fromClientWithContext_error_, a1, a2, v10);
  v6 = v10[0];
  if (v5)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = v6;
    sub_22B35DB9C();

    swift_willThrow();
  }

  sub_22B30EC88(a1);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B30EC88(void *a1)
{
  if (a1)
  {
    v2 = [a1 persistentStore];
    if (v2)
    {
      v10 = v2;
      v3 = sub_22B36081C();
      v4 = NSSelectorFromString(v3);

      if ([v10 respondsToSelector_])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BADF0, &qword_22B367000);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_22B3634B0;
        *(v5 + 32) = a1;
        v6 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6A8, &qword_22B366F40);
        v7 = sub_22B360A3C();

        v8 = v10;
        [v10 performSelector:v4 withObject:v7];

        v9 = v7;
      }

      else
      {
        v9 = v10;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_22B30EF14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDataServerHandlingPolicy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B30EF6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA950, &qword_22B364940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B30EFD4(void *a1)
{
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 entitlements];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v10 = sub_22B3606EC();

  if (!v10)
  {
    goto LABEL_9;
  }

  v18[1] = 0xD000000000000019;
  v18[2] = 0x800000022B368210;
  sub_22B36110C();
  if (!*(v10 + 16) || (v11 = sub_22B33B248(v19), (v12 & 1) == 0))
  {

    sub_22B1B0560(v19);
LABEL_9:
    v20 = 0u;
    v21 = 0u;
    goto LABEL_10;
  }

  sub_22B170C58(*(v10 + 56) + 32 * v11, &v20);
  sub_22B1B0560(v19);

  if (!*(&v21 + 1))
  {
LABEL_10:
    sub_22B30EF6C(&v20);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v19[0];
  }

LABEL_11:
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v7, v14, v2);
  v15 = sub_22B36050C();
  v16 = sub_22B360D1C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22B116000, v15, v16, "Caller did not have store entitlements, declining connection", v17, 2u);
    MEMORY[0x23188F650](v17, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  return 0;
}

uint64_t sub_22B30F28C(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_22B30F2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[47] = a6;
  v7[48] = a7;
  v7[45] = a4;
  v7[46] = a5;
  v7[43] = a2;
  v7[44] = a3;
  v7[42] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5A8, &qword_22B3653E8) - 8) + 64) + 15;
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v9 = sub_22B35FFBC();
  v7[54] = v9;
  v10 = *(v9 - 8);
  v7[55] = v10;
  v11 = *(v10 + 64) + 15;
  v7[56] = swift_task_alloc();
  v12 = sub_22B36052C();
  v7[57] = v12;
  v13 = *(v12 - 8);
  v7[58] = v13;
  v14 = *(v13 + 64) + 15;
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();
  v15 = sub_22B36024C();
  v7[63] = v15;
  v16 = *(v15 - 8);
  v7[64] = v16;
  v17 = *(v16 + 64) + 15;
  v7[65] = swift_task_alloc();
  v7[66] = swift_task_alloc();
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();
  v7[69] = swift_task_alloc();
  v7[70] = swift_task_alloc();
  v7[71] = swift_task_alloc();
  v7[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B30F524, 0, 0);
}

uint64_t sub_22B30F524()
{
  *(v0 + 584) = sub_22B3602DC();
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDD8;
  *(v0 + 592) = qword_28140BDD8;

  return MEMORY[0x2822009F8](sub_22B30F5C8, v1, 0);
}

uint64_t sub_22B30F5C8()
{
  v1 = *(v0[74] + 120);
  v0[75] = v1;
  v2 = *(MEMORY[0x277D18258] + 4);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[76] = v4;
  *v4 = v0;
  v4[1] = sub_22B30F68C;
  v5 = v0[73];
  v6 = v0[71];
  v7 = v0[46];
  v8 = v0[47];
  v9 = v0[44];
  v10 = v0[45];
  v11 = v0[43];

  return MEMORY[0x282172630](v6, v7, v8, v9, v10, v11, v3);
}

uint64_t sub_22B30F68C()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v6 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v4 = sub_22B310B0C;
  }

  else
  {

    v4 = sub_22B30F7A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B30F7A8()
{
  v1 = v0[74];
  (*(v0[64] + 32))(v0[72], v0[71], v0[63]);

  return MEMORY[0x2822009F8](sub_22B30F828, v1, 0);
}

uint64_t sub_22B30F828()
{
  v1 = *(*(v0 + 592) + 120);
  *(v0 + 624) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_22B30F89C, 0, 0);
}

uint64_t sub_22B30F89C()
{
  v1 = v0[78];
  v0[2] = v0;
  v0[3] = sub_22B30F9B0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD20, &qword_22B366250);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22B30F28C;
  v0[13] = &block_descriptor_26;
  v0[14] = v2;
  [v1 resetWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22B30F9B0()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B30FA90, 0, 0);
}

uint64_t sub_22B30FA90()
{
  v168 = v0;

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 496);
  v2 = *(v0 + 456);
  v3 = *(v0 + 464);
  v4 = *(v0 + 360);
  v5 = __swift_project_value_buffer(v2, qword_28140BD10);
  *(v0 + 632) = v5;
  swift_beginAccess();
  v6 = *(v3 + 16);
  *(v0 + 640) = v6;
  *(v0 + 648) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 576);
    v149 = *(v0 + 464);
    v152 = *(v0 + 456);
    v155 = *(v0 + 496);
    v158 = v6;
    v10 = *(v0 + 352);
    v11 = *(v0 + 360);
    v162 = v5;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v167[0] = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_22B1A7B20(v10, v11, v167);
    *(v12 + 12) = 2080;
    swift_beginAccess();
    v14 = sub_22B36021C();
    v16 = sub_22B1A7B20(v14, v15, v167);

    *(v12 + 14) = v16;
    v6 = v158;
    *(v12 + 22) = 2080;
    v17 = sub_22B3601FC();
    v19 = sub_22B1A7B20(v17, v18, v167);

    *(v12 + 24) = v19;
    _os_log_impl(&dword_22B116000, v7, v8, "[TOU Preprocessor] Got peaks for %s from server %s-%s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v13, -1, -1);
    v20 = v12;
    v5 = v162;
    MEMORY[0x23188F650](v20, -1, -1);

    v21 = *(v149 + 8);
    v21(v155, v152);
  }

  else
  {
    v22 = *(v0 + 496);
    v24 = *(v0 + 456);
    v23 = *(v0 + 464);

    v21 = *(v23 + 8);
    v21(v22, v24);
  }

  *(v0 + 656) = v21;
  v25 = *(v0 + 576);
  swift_beginAccess();
  v26 = *(sub_22B36022C() + 16);

  if (!v26)
  {
    v27 = *(v0 + 360);
    v6(*(v0 + 488), v5, *(v0 + 456));

    v28 = sub_22B36050C();
    v29 = sub_22B360D2C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 576);
      v150 = *(v0 + 464);
      v153 = *(v0 + 456);
      v156 = *(v0 + 488);
      v159 = v6;
      v31 = *(v0 + 352);
      v32 = *(v0 + 360);
      v163 = v5;
      v33 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v167[0] = v147;
      *v33 = 136315650;
      *(v33 + 4) = sub_22B1A7B20(v31, v32, v167);
      *(v33 + 12) = 2080;
      v34 = sub_22B36021C();
      v36 = sub_22B1A7B20(v34, v35, v167);

      *(v33 + 14) = v36;
      v6 = v159;
      *(v33 + 22) = 2080;
      v37 = sub_22B3601FC();
      v39 = sub_22B1A7B20(v37, v38, v167);

      *(v33 + 24) = v39;
      _os_log_impl(&dword_22B116000, v28, v29, "[TOU Preprocessor] Got empty peaks for %s from server %s-%s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v147, -1, -1);
      v40 = v33;
      v5 = v163;
      MEMORY[0x23188F650](v40, -1, -1);

      v41 = v153;
      v42 = v156;
    }

    else
    {
      v43 = *(v0 + 488);
      v45 = *(v0 + 456);
      v44 = *(v0 + 464);

      v42 = v43;
      v41 = v45;
    }

    v21(v42, v41);
  }

  v46 = *(v0 + 576);
  v47 = *(v0 + 440);
  v48 = *(v0 + 448);
  v49 = *(v0 + 432);
  sub_22B3601EC();
  v50 = (*(v47 + 88))(v48, v49);
  if (v50 == *MEMORY[0x277D18128])
  {
    v6(*(v0 + 480), v5, *(v0 + 456));
    v51 = sub_22B36050C();
    v52 = sub_22B360D0C();
    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 480);
    v55 = *(v0 + 456);
    v56 = *(v0 + 464);
    if (v53)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_22B116000, v51, v52, "Got TOU", v57, 2u);
      MEMORY[0x23188F650](v57, -1, -1);
    }

    v21(v54, v55);
    goto LABEL_38;
  }

  if (v50 != *MEMORY[0x277D18140])
  {
    if (v50 == *MEMORY[0x277D18138])
    {
      v165 = *(v0 + 616);
      v72 = *(v0 + 576);
      v73 = *(v0 + 560);
      v74 = *(v0 + 424);
      v76 = *(v0 + 352);
      v75 = *(v0 + 360);
      type metadata accessor for TOUPeaksPreprocessor();
      sub_22B36023C();
      v77 = sub_22B36021C();
      v79 = v78;
      v80 = sub_22B3601FC();
      sub_22B1B07E4(v74, v76, v75, 0x466C6C6946646150, 0xEC00000064657869, v77, v79, v80, v73, v81);
      v68 = *(v0 + 576);
      if (v165)
      {
        v69 = *(v0 + 504);
        v70 = *(v0 + 512);
        v71 = *(v0 + 424);
        goto LABEL_24;
      }

      v104 = *(v0 + 560);
      v105 = *(v0 + 504);
      v106 = *(v0 + 512);
      sub_22B123284(*(v0 + 424), &qword_27D8BA5A8, &qword_22B3653E8);
    }

    else
    {
      if (v50 != *MEMORY[0x277D18130])
      {
        v107 = *MEMORY[0x277D18120];
        v108 = v50;
        type metadata accessor for TOUPeaksPreprocessor();
        v109 = *(v0 + 616);
        v110 = *(v0 + 576);
        v111 = *(v0 + 352);
        v112 = *(v0 + 360);
        if (v108 == v107)
        {
          v161 = *(v0 + 536);
          v113 = *(v0 + 400);
          sub_22B36023C();
          v114 = sub_22B36021C();
          v116 = v115;
          v117 = sub_22B3601FC();
          sub_22B1B07E4(v113, v111, v112, 0xD000000000000012, 0x800000022B36BD10, v114, v116, v117, v161, v118);
          v68 = *(v0 + 576);
          if (v109)
          {
            v69 = *(v0 + 504);
            v70 = *(v0 + 512);
            sub_22B123284(*(v0 + 400), &qword_27D8BA5A8, &qword_22B3653E8);

            goto LABEL_25;
          }

          v135 = *(v0 + 536);
          v136 = *(v0 + 504);
          v137 = *(v0 + 512);
          sub_22B123284(*(v0 + 400), &qword_27D8BA5A8, &qword_22B3653E8);

          swift_beginAccess();
          (*(v137 + 40))(v68, v135, v136);
        }

        else
        {
          v119 = *(v0 + 528);
          v120 = *(v0 + 392);
          sub_22B36023C();
          v121 = sub_22B36021C();
          v123 = v122;
          v124 = sub_22B3601FC();
          sub_22B1B07E4(v120, v111, v112, 0xD000000000000012, 0x800000022B36BD10, v121, v123, v124, v119, v125);
          v68 = *(v0 + 576);
          if (v109)
          {
            v69 = *(v0 + 504);
            v70 = *(v0 + 512);
            v127 = *(v0 + 440);
            v126 = *(v0 + 448);
            v128 = *(v0 + 432);
            sub_22B123284(*(v0 + 392), &qword_27D8BA5A8, &qword_22B3653E8);

            (*(v127 + 8))(v126, v128);
            goto LABEL_26;
          }

          v138 = *(v0 + 528);
          v139 = *(v0 + 504);
          v140 = *(v0 + 512);
          v142 = *(v0 + 440);
          v141 = *(v0 + 448);
          v143 = *(v0 + 432);
          sub_22B123284(*(v0 + 392), &qword_27D8BA5A8, &qword_22B3653E8);

          swift_beginAccess();
          (*(v140 + 40))(v68, v138, v139);
          (*(v142 + 8))(v141, v143);
        }

LABEL_38:
        if (qword_281408E00 != -1)
        {
          swift_once();
        }

        v129 = *(v0 + 576);
        v130 = *(v0 + 520);
        v131 = *(v0 + 504);
        v132 = *(v0 + 512);
        v133 = qword_28140BC80;
        *(v0 + 664) = qword_28140BC80;
        v134 = *(v132 + 16);
        *(v0 + 672) = v134;
        *(v0 + 680) = (v132 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v134(v130, v129, v131);

        return MEMORY[0x2822009F8](sub_22B3106FC, v133, 0);
      }

      v166 = *(v0 + 616);
      v82 = *(v0 + 576);
      v83 = *(v0 + 552);
      v84 = *(v0 + 416);
      v86 = *(v0 + 352);
      v85 = *(v0 + 360);
      type metadata accessor for TOUPeaksPreprocessor();
      sub_22B36023C();
      v87 = sub_22B36021C();
      v89 = v88;
      v90 = sub_22B3601FC();
      sub_22B1B07E4(v84, v86, v85, 0x466C6C6946646150, 0xEB0000000074616CLL, v87, v89, v90, v83, v91);
      v68 = *(v0 + 576);
      if (v166)
      {
        v69 = *(v0 + 504);
        v70 = *(v0 + 512);
        v71 = *(v0 + 416);
        goto LABEL_24;
      }

      v104 = *(v0 + 552);
      v105 = *(v0 + 504);
      v106 = *(v0 + 512);
      sub_22B123284(*(v0 + 416), &qword_27D8BA5A8, &qword_22B3653E8);
    }

LABEL_37:
    swift_beginAccess();
    (*(v106 + 40))(v68, v104, v105);
    goto LABEL_38;
  }

  v164 = *(v0 + 616);
  v58 = *(v0 + 576);
  v59 = *(v0 + 544);
  v60 = *(v0 + 408);
  v62 = *(v0 + 352);
  v61 = *(v0 + 360);
  type metadata accessor for TOUPeaksPreprocessor();
  sub_22B36023C();
  v63 = sub_22B36021C();
  v65 = v64;
  v66 = sub_22B3601FC();
  sub_22B1B07E4(v60, v62, v61, 0x546C6C6946646150, 0xED00006465726569, v63, v65, v66, v59, v67);
  v68 = *(v0 + 576);
  if (!v164)
  {
    v104 = *(v0 + 544);
    v105 = *(v0 + 504);
    v106 = *(v0 + 512);
    sub_22B123284(*(v0 + 408), &qword_27D8BA5A8, &qword_22B3653E8);

    goto LABEL_37;
  }

  v69 = *(v0 + 504);
  v70 = *(v0 + 512);
  v71 = *(v0 + 408);
LABEL_24:
  sub_22B123284(v71, &qword_27D8BA5A8, &qword_22B3653E8);

LABEL_25:

LABEL_26:
  (*(v70 + 8))(v68, v69);
  v92 = *(v0 + 576);
  v93 = *(v0 + 568);
  v94 = *(v0 + 560);
  v95 = *(v0 + 552);
  v96 = *(v0 + 544);
  v97 = *(v0 + 536);
  v98 = *(v0 + 528);
  v99 = *(v0 + 520);
  v101 = *(v0 + 488);
  v100 = *(v0 + 496);
  v144 = *(v0 + 480);
  v145 = *(v0 + 472);
  v146 = *(v0 + 448);
  v148 = *(v0 + 424);
  v151 = *(v0 + 416);
  v154 = *(v0 + 408);
  v157 = *(v0 + 400);
  v160 = *(v0 + 392);

  v102 = *(v0 + 8);

  return v102();
}

uint64_t sub_22B3106FC()
{
  v34 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 376);
  v3 = *(v0 + 360);
  (*(v0 + 640))(*(v0 + 472), *(v0 + 632), *(v0 + 456));

  v4 = sub_22B36050C();
  v5 = sub_22B360D2C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 656);
  v9 = *(v0 + 464);
  v8 = *(v0 + 472);
  v10 = *(v0 + 456);
  if (v6)
  {
    v30 = *(v0 + 368);
    v31 = *(v0 + 376);
    v12 = *(v0 + 352);
    v11 = *(v0 + 360);
    v32 = *(v0 + 656);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_22B1A7B20(v12, v11, &v33);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_22B1A7B20(v30, v31, &v33);
    _os_log_impl(&dword_22B116000, v4, v5, "Adding TOUPeaks for %s:%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    v32(v8, v10);
  }

  else
  {

    v7(v8, v10);
  }

  v15 = *(v0 + 664);
  v16 = *(v15 + 112);
  if (v16)
  {
    v17 = *(v0 + 520);
    v19 = *(v0 + 376);
    v18 = *(v0 + 384);
    v21 = *(v0 + 360);
    v20 = *(v0 + 368);
    v22 = *(v0 + 352);
    v23 = *(v15 + 120);
    v24 = v23;

    sub_22B217904(v17, v22, v21, v20, v19, v18, v23, v16);
  }

  v25 = *(v0 + 520);
  v26 = *(v0 + 504);
  v27 = *(v0 + 512);
  v28 = *(v27 + 8);
  *(v0 + 688) = v28;
  *(v0 + 696) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v25, v26);

  return MEMORY[0x2822009F8](sub_22B31097C, 0, 0);
}

uint64_t sub_22B31097C()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 576);
  v5 = *(v0 + 568);
  v6 = *(v0 + 560);
  v7 = *(v0 + 552);
  v8 = *(v0 + 544);
  v9 = *(v0 + 536);
  v13 = *(v0 + 528);
  v14 = *(v0 + 520);
  v10 = *(v0 + 504);
  v15 = *(v0 + 496);
  v16 = *(v0 + 488);
  v17 = *(v0 + 480);
  v18 = *(v0 + 472);
  v19 = *(v0 + 448);
  v20 = *(v0 + 424);
  v21 = *(v0 + 416);
  v22 = *(v0 + 408);
  v23 = *(v0 + 400);
  v24 = *(v0 + 392);
  (*(v0 + 672))(*(v0 + 336), v4, v10);
  v2(v4, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22B310B0C()
{
  v1 = *(v0 + 616);

  swift_willThrow();
  v22 = *(v0 + 616);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  v8 = *(v0 + 528);
  v9 = *(v0 + 520);
  v11 = *(v0 + 488);
  v10 = *(v0 + 496);
  v14 = *(v0 + 480);
  v15 = *(v0 + 472);
  v16 = *(v0 + 448);
  v17 = *(v0 + 424);
  v18 = *(v0 + 416);
  v19 = *(v0 + 408);
  v20 = *(v0 + 400);
  v21 = *(v0 + 392);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22B310CC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE28, &unk_22B367090);
    v3 = sub_22B36114C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_22B36149C();

      sub_22B3608FC();
      result = sub_22B3614DC();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_22B36134C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_22B310E30(uint64_t a1)
{
  v2 = sub_22B35E02C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BADF8, &qword_22B367078);
    v10 = sub_22B36114C();
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
      sub_22B316498(&qword_27D8BAE00, MEMORY[0x277CC99D0]);
      v18 = sub_22B36071C();
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
          sub_22B316498(&qword_27D8BAE08, MEMORY[0x277CC99D0]);
          v25 = sub_22B36078C();
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

uint64_t sub_22B311150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  v8 = sub_22B35DDBC();
  v7[21] = v8;
  v9 = *(v8 - 8);
  v7[22] = v9;
  v10 = *(v9 + 64) + 15;
  v7[23] = swift_task_alloc();
  v11 = sub_22B36024C();
  v7[24] = v11;
  v12 = *(v11 - 8);
  v7[25] = v12;
  v13 = *(v12 + 64) + 15;
  v7[26] = swift_task_alloc();
  v14 = type metadata accessor for CDTOUPeak();
  v7[27] = v14;
  v15 = *(v14 - 8);
  v7[28] = v15;
  v16 = *(v15 + 64) + 15;
  v7[29] = swift_task_alloc();
  v17 = sub_22B36052C();
  v7[30] = v17;
  v18 = *(v17 - 8);
  v7[31] = v18;
  v19 = *(v18 + 64) + 15;
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v20 = sub_22B35E02C();
  v7[35] = v20;
  v21 = *(v20 - 8);
  v7[36] = v21;
  v22 = *(v21 + 64) + 15;
  v7[37] = swift_task_alloc();
  v23 = sub_22B35DA4C();
  v7[38] = v23;
  v24 = *(v23 - 8);
  v7[39] = v24;
  v25 = *(v24 + 64) + 15;
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v26 = sub_22B35DE9C();
  v7[42] = v26;
  v27 = *(v26 - 8);
  v7[43] = v27;
  v28 = *(v27 + 64) + 15;
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v29 = sub_22B35E0BC();
  v7[54] = v29;
  v30 = *(v29 - 8);
  v7[55] = v30;
  v31 = *(v30 + 64) + 15;
  v7[56] = swift_task_alloc();
  v32 = sub_22B35DF9C();
  v7[57] = v32;
  v33 = *(v32 - 8);
  v7[58] = v33;
  v34 = *(v33 + 64) + 15;
  v7[59] = swift_task_alloc();
  v35 = sub_22B35E04C();
  v7[60] = v35;
  v36 = *(v35 - 8);
  v7[61] = v36;
  v37 = *(v36 + 64) + 15;
  v7[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B3115E8, 0, 0);
}

uint64_t sub_22B3115E8()
{
  v95 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 448);
  v4 = *(v0 + 456);
  v6 = *(v0 + 440);
  v72 = *(v0 + 432);
  v76 = *(v0 + 424);
  v88 = *(v0 + 416);
  v91 = *(v0 + 408);
  v79 = *(v0 + 328);
  v82 = *(v0 + 296);
  v74 = *(v0 + 288);
  v7 = *(v0 + 280);
  v8 = *(v0 + 160);
  v85 = *(v0 + 120);
  v70 = *(v0 + 112);
  (*(v2 + 104))(v3, *MEMORY[0x277CC9830], v4);
  sub_22B35DFAC();
  (*(v2 + 8))(v3, v4);
  (*(v6 + 16))(v5, v8, v72);
  sub_22B35E01C();
  sub_22B35F50C();
  *(v0 + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
  v9 = *(v74 + 72);
  *(v0 + 512) = v9;
  v10 = *(v74 + 80);
  *(v0 + 624) = v10;
  v11 = (v10 + 32) & ~v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22B363660;
  *(v0 + 628) = *MEMORY[0x277CC9988];
  v13 = *(v74 + 104);
  *(v0 + 520) = v13;
  *(v0 + 528) = (v74 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v13(v12 + v11);
  *(v0 + 632) = *MEMORY[0x277CC9998];
  v13(v12 + v11 + v9);
  v14 = *MEMORY[0x277CC9968];
  *(v0 + 636) = v14;
  (v13)(v12 + v11 + 2 * v9, v14, v7);
  *(v0 + 640) = *MEMORY[0x277CC9980];
  v13(v12 + v11 + 3 * v9);
  *(v0 + 644) = *MEMORY[0x277CC99A0];
  v13(v12 + v11 + 4 * v9);
  *(v0 + 648) = *MEMORY[0x277CC99A8];
  v13(v12 + v11 + 5 * v9);
  sub_22B310E30(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22B35DFCC();

  (v13)(v82, v14, v7);
  sub_22B35F60C();
  (*(v74 + 8))(v82, v7);
  sub_22B35F64C();
  swift_beginAccess();
  if (sub_22B35DDFC())
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 400);
    v16 = *(v0 + 408);
    v17 = *(v0 + 336);
    v18 = *(v0 + 344);
    v19 = *(v0 + 272);
    v20 = *(v0 + 240);
    v21 = *(v0 + 248);
    v22 = *(v0 + 136);
    v23 = __swift_project_value_buffer(v20, qword_28140BD10);
    *(v0 + 536) = v23;
    swift_beginAccess();
    v24 = *(v21 + 16);
    *(v0 + 544) = v24;
    *(v0 + 552) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v24(v19, v23, v20);
    v25 = *(v18 + 16);
    *(v0 + 560) = v25;
    *(v0 + 568) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v25(v15, v16, v17);

    v26 = sub_22B36050C();
    v27 = sub_22B360D2C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 424);
      v80 = *(v0 + 400);
      v30 = *(v0 + 336);
      v29 = *(v0 + 344);
      v86 = *(v0 + 248);
      v89 = *(v0 + 240);
      v92 = *(v0 + 272);
      v32 = *(v0 + 128);
      v31 = *(v0 + 136);
      v33 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v94 = v83;
      *v33 = 136315650;
      *(v33 + 4) = sub_22B1A7B20(v32, v31, &v94);
      *(v33 + 12) = 2080;
      sub_22B316498(&qword_28140B488, MEMORY[0x277CC9578]);
      v34 = sub_22B36131C();
      v36 = sub_22B1A7B20(v34, v35, &v94);

      *(v33 + 14) = v36;
      *(v33 + 22) = 2080;
      v37 = sub_22B36131C();
      v39 = v38;
      v40 = *(v29 + 8);
      v40(v80, v30);
      v41 = sub_22B1A7B20(v37, v39, &v94);

      *(v33 + 24) = v41;
      _os_log_impl(&dword_22B116000, v26, v27, "[TOU Preprocessor] Getting peaks for %s at %s to %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v83, -1, -1);
      MEMORY[0x23188F650](v33, -1, -1);

      v42 = *(v86 + 8);
      v42(v92, v89);
    }

    else
    {
      v54 = *(v0 + 400);
      v55 = *(v0 + 336);
      v56 = *(v0 + 344);
      v57 = *(v0 + 272);
      v58 = *(v0 + 240);
      v59 = *(v0 + 248);

      v40 = *(v56 + 8);
      v40(v54, v55);
      v42 = *(v59 + 8);
      v42(v57, v58);
    }

    *(v0 + 584) = v40;
    *(v0 + 576) = v42;
    if (qword_281408E00 != -1)
    {
      swift_once();
    }

    v60 = qword_28140BC80;
    *(v0 + 592) = qword_28140BC80;

    return MEMORY[0x2822009F8](sub_22B311E5C, v60, 0);
  }

  else
  {
    v43 = *(v0 + 336);
    v44 = *(*(v0 + 344) + 8);
    v45 = *(v0 + 416);
    v46 = *(v0 + 312);
    v44(*(v0 + 408), v43);
    v44(v45, v43);
    v47 = *(v0 + 488);
    v48 = *(v0 + 496);
    v49 = *(v0 + 480);
    v61 = *(v0 + 472);
    v62 = *(v0 + 448);
    v50 = *(v0 + 424);
    v63 = *(v0 + 416);
    v64 = *(v0 + 408);
    v65 = *(v0 + 400);
    v66 = *(v0 + 392);
    v67 = *(v0 + 384);
    v68 = *(v0 + 376);
    v69 = *(v0 + 368);
    v71 = *(v0 + 360);
    v73 = *(v0 + 352);
    v51 = *(v0 + 336);
    v75 = *(v0 + 320);
    v77 = *(v0 + 296);
    v78 = *(v0 + 272);
    v81 = *(v0 + 264);
    v84 = *(v0 + 256);
    v87 = *(v0 + 232);
    v90 = *(v0 + 208);
    v93 = *(v0 + 184);
    (*(v46 + 8))(*(v0 + 328), *(v0 + 304));
    (*(v47 + 8))(v48, v49);
    v44(v50, v51);

    v52 = *(v0 + 8);

    return v52();
  }
}

uint64_t sub_22B311E5C()
{
  v1 = v0[74];
  v0[75] = sub_22B21A278(v0[16], v0[17], v0[18], v0[19], v0[53], v0[51], 0);

  return MEMORY[0x2822009F8](sub_22B311EDC, 0, 0);
}

uint64_t sub_22B311EDC()
{
  v201 = v0;
  v1 = v0[75];
  if (!v1)
  {
    v61 = v0[73];
    v62 = v0[52];
    v63 = v0[42];
    v64 = (v0[39] + 8);
    v61(v0[51], v63);
    v61(v62, v63);
    v169 = v0[73];
LABEL_34:
    v132 = *v64;
    v133 = v0[61];
    v134 = v0[62];
    v135 = v0[59];
    v136 = v0[60];
    v137 = v0[56];
    v138 = v0[53];
    v148 = v0[52];
    v150 = v0[51];
    v151 = v0[50];
    v153 = v0[49];
    v154 = v0[48];
    v156 = v0[47];
    v158 = v0[46];
    v160 = v0[45];
    v162 = v0[44];
    v139 = v0[42];
    v164 = v0[40];
    v166 = v0[37];
    v173 = v0[34];
    v177 = v0[33];
    v182 = v0[32];
    v188 = v0[29];
    v193 = v0[26];
    v198 = v0[23];
    v132(v0[41], v0[38]);
    (*(v133 + 8))(v134, v136);
    v169(v138, v139);

    v140 = v0[1];

    return v140();
  }

  v3 = v0[48];
  v2 = v0[49];
  sub_22B35DD2C();
  sub_22B35DD1C();
  v4 = *(v1 + 16);
  v199 = v0;
  if (v4)
  {
    v6 = v0[48];
    v5 = v0[49];
    v7 = v0[28];
    v8 = v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    swift_beginAccess();
    swift_beginAccess();
    v9 = v8;
    v165 = *(v7 + 72);
    do
    {
      v194 = v4;
      v183 = v0[73];
      v167 = v0[71];
      v10 = v0[70];
      v178 = v0[53];
      v11 = v0[48];
      v12 = v0[49];
      v13 = v0[47];
      v170 = v0[46];
      v174 = v0[45];
      v14 = v0[42];
      v15 = v0[43];
      v16 = v0[29];
      v17 = v0[27];
      v189 = v9;
      sub_22B3160B8(v9, v16);
      v18 = v16 + *(v17 + 20);
      if (sub_22B35DDEC())
      {
        v19 = v18;
      }

      else
      {
        v19 = v12;
      }

      v10(v13, v19, v14);
      v20 = *(v15 + 40);
      v20(v12, v13, v14);
      v21 = v16 + *(v17 + 24);
      if (sub_22B35DDFC())
      {
        v22 = v21;
      }

      else
      {
        v22 = v11;
      }

      v10(v170, v22, v14);
      v20(v11, v170, v14);
      v10(v174, v11, v14);
      sub_22B316498(&qword_27D8BA430, MEMORY[0x277CC9578]);
      v23 = sub_22B36078C();
      v183(v174, v14);
      v0 = v199;
      if (v23)
      {
        v24 = v199[45];
        sub_22B35DD2C();
      }

      else
      {
        v25 = v199[71];
        (v199[70])(v199[45], v199[48], v199[42]);
      }

      v26 = v199[73];
      v27 = v199[48];
      v28 = v199[45];
      v29 = v199[42];
      v20(v199[53], v28, v29);
      sub_22B35DD1C();
      LOBYTE(v27) = sub_22B36078C();
      v26(v28, v29);
      if (v27)
      {
        sub_22B31611C(v199[29]);
      }

      else
      {
        v161 = *(v199 + 162);
        v159 = *(v199 + 161);
        v157 = *(v199 + 160);
        v155 = *(v199 + 159);
        v152 = *(v199 + 158);
        v30 = v199[66];
        v31 = v199[65];
        v149 = *(v199 + 157);
        v32 = v199[63];
        v33 = v199[64];
        v179 = v199[62];
        v171 = v199[48];
        v184 = v199[41];
        v168 = v199[40];
        v34 = (*(v199 + 624) + 32) & ~*(v199 + 624);
        v35 = v199[39];
        v175 = v199[38];
        v36 = v199[35];
        v163 = v199[29];
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_22B363660;
        v38 = v37 + v34;
        v31(v38, v149, v36);
        v31(v38 + v33, v152, v36);
        v31(v38 + 2 * v33, v155, v36);
        v31(v38 + 3 * v33, v157, v36);
        v31(v38 + 4 * v33, v159, v36);
        v31(v38 + 5 * v33, v161, v36);
        sub_22B310E30(v37);
        swift_setDeallocating();
        v0 = v199;
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_22B35DFCC();

        sub_22B31611C(v163);
        (*(v35 + 8))(v184, v175);
        (*(v35 + 32))(v184, v168, v175);
      }

      v9 = v189 + v165;
      v4 = v194 - 1;
    }

    while (v194 != 1);
    v39 = v0[69];
    v40 = v0[68];
    v41 = v0[67];
    v42 = v0[33];
    v43 = v0[30];
    v44 = v0[17];

    v40(v42, v41, v43);

    v45 = sub_22B36050C();
    v46 = sub_22B360CFC();

    v47 = os_log_type_enabled(v45, v46);
    v48 = v0[72];
    if (v47)
    {
      v49 = v0[49];
      v176 = v0[48];
      v50 = v0[42];
      v190 = v0[30];
      v195 = v0[33];
      v52 = v0[16];
      v51 = v0[17];
      v185 = v0[31] + 8;
      v180 = v0[72];
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v200[0] = v54;
      *v53 = 136315650;
      *(v53 + 4) = sub_22B1A7B20(v52, v51, v200);
      *(v53 + 12) = 2080;
      sub_22B316498(&qword_28140B488, MEMORY[0x277CC9578]);
      v55 = sub_22B36131C();
      v57 = sub_22B1A7B20(v55, v56, v200);

      *(v53 + 14) = v57;
      *(v53 + 22) = 2080;
      v58 = sub_22B36131C();
      v60 = sub_22B1A7B20(v58, v59, v200);

      *(v53 + 24) = v60;
      _os_log_impl(&dword_22B116000, v45, v46, "[TOU Preprocessor] Got peaks for %s from coredata %s-%s", v53, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v54, -1, -1);
      MEMORY[0x23188F650](v53, -1, -1);

      v180(v195, v190);
    }

    else
    {
      v76 = v0[33];
      v77 = v0[30];
      v78 = v0[31];

      v48(v76, v77);
    }

    goto LABEL_25;
  }

  v65 = v0[53];
  v66 = v0[51];

  if ((sub_22B35DDFC() & 1) == 0)
  {
LABEL_25:
    v79 = v0[69];
    v80 = v0[17];
    (v0[68])(v0[32], v0[67], v0[30]);

    v81 = sub_22B36050C();
    v82 = sub_22B360D0C();

    v83 = os_log_type_enabled(v81, v82);
    v84 = v0[73];
    v85 = v0[49];
    v191 = v0[72];
    v196 = v0[48];
    v86 = v0[42];
    v87 = v0[43];
    v88 = v0[31];
    v89 = v0[32];
    v90 = v0[30];
    if (v83)
    {
      v172 = v0[17];
      v186 = v0[49];
      v91 = v0[16];
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v200[0] = v93;
      *v92 = 136315138;
      *(v92 + 4) = sub_22B1A7B20(v91, v172, v200);
      _os_log_impl(&dword_22B116000, v81, v82, "[TOU Preprocessor] Got peaks for %s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v93);
      MEMORY[0x23188F650](v93, -1, -1);
      MEMORY[0x23188F650](v92, -1, -1);

      v191(v89, v90);
      v84(v196, v86);
      v94 = v186;
    }

    else
    {

      v191(v89, v90);
      v84(v196, v86);
      v94 = v85;
    }

    v84(v94, v86);
    v95 = v0[53];
    v96 = v0[51];
    if (sub_22B35DDFC())
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v97 = v0[50];
      v98 = v0[51];
      v99 = v0[42];
      v100 = v0[43];
      v101 = v0[34];
      v102 = v199[31];
      v103 = v199[30];
      v104 = v199[17];
      v105 = __swift_project_value_buffer(v103, qword_28140BD10);
      v199[67] = v105;
      swift_beginAccess();
      v106 = *(v102 + 16);
      v199[68] = v106;
      v199[69] = (v102 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v106(v101, v105, v103);
      v107 = v199;
      v108 = *(v100 + 16);
      v199[70] = v108;
      v199[71] = (v100 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v108(v97, v98, v99);

      v109 = sub_22B36050C();
      v110 = sub_22B360D2C();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = v199[53];
        v112 = v199[50];
        v113 = v199[43];
        v114 = v199[42];
        v187 = v199[31];
        v192 = v199[30];
        v197 = v199[34];
        v115 = v199[17];
        v116 = v199[16];
        v117 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        v200[0] = v181;
        *v117 = 136315650;
        *(v117 + 4) = sub_22B1A7B20(v116, v115, v200);
        *(v117 + 12) = 2080;
        sub_22B316498(&qword_28140B488, MEMORY[0x277CC9578]);
        v118 = sub_22B36131C();
        v120 = sub_22B1A7B20(v118, v119, v200);

        *(v117 + 14) = v120;
        *(v117 + 22) = 2080;
        v121 = v112;
        v122 = sub_22B36131C();
        v124 = v123;
        v125 = *(v113 + 8);
        v125(v121, v114);
        v107 = v199;
        v126 = sub_22B1A7B20(v122, v124, v200);

        *(v117 + 24) = v126;
        _os_log_impl(&dword_22B116000, v109, v110, "[TOU Preprocessor] Getting peaks for %s at %s to %s", v117, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v181, -1, -1);
        MEMORY[0x23188F650](v117, -1, -1);

        v127 = *(v187 + 8);
        v127(v197, v192);
      }

      else
      {
        v141 = v199[50];
        v142 = v199[42];
        v143 = v199[43];
        v144 = v199[34];
        v145 = v199[30];
        v146 = v199[31];

        v125 = *(v143 + 8);
        v125(v141, v142);
        v127 = *(v146 + 8);
        v127(v144, v145);
      }

      v107[73] = v125;
      v107[72] = v127;
      if (qword_281408E00 != -1)
      {
        swift_once();
      }

      v147 = qword_28140BC80;
      v107[74] = qword_28140BC80;

      return MEMORY[0x2822009F8](sub_22B311E5C, v147, 0);
    }

    v128 = v0[73];
    v129 = v0[42];
    v130 = v0[52];
    v131 = v0[39];
    v128(v0[51], v129);
    v169 = v128;
    v128(v130, v129);
    v64 = (v131 + 8);
    goto LABEL_34;
  }

  type metadata accessor for TOUPeaksPreprocessor();
  v67 = swift_task_alloc();
  v0[76] = v67;
  *v67 = v0;
  v67[1] = sub_22B312DB4;
  v68 = v0[41];
  v69 = v0[26];
  v70 = v0[19];
  v71 = v0[20];
  v72 = v0[17];
  v73 = v0[18];
  v74 = v0[16];

  return sub_22B30F2C0(v69, v68, v74, v72, v73, v70, v71);
}

uint64_t sub_22B312DB4()
{
  v2 = *(*v1 + 608);
  v5 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = sub_22B313BB8;
  }

  else
  {
    v3 = sub_22B312EC8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B312EC8()
{
  v169 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 352);
  v3 = *(v0 + 208);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  sub_22B35F59C();
  sub_22B3601FC();
  sub_22B35DD9C();
  if (v1)
  {
    v160 = v1;
    v7 = *(v0 + 200);
    v6 = *(v0 + 208);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v10 = *(v0 + 168);
    v11 = *(v0 + 176);

    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);
    v132 = *(v0 + 648);
    v126 = *(v0 + 644);
    v123 = *(v0 + 640);
    v120 = *(v0 + 636);
    v117 = *(v0 + 632);
    v12 = *(v0 + 528);
    v13 = *(v0 + 520);
    v111 = *(v0 + 628);
    v14 = *(v0 + 512);
    v108 = *(v0 + 504);
    v147 = *(v0 + 496);
    v106 = *(v0 + 424);
    v151 = *(v0 + 408);
    v155 = *(v0 + 416);
    v16 = *(v0 + 336);
    v15 = *(v0 + 344);
    v17 = *(v0 + 360);
    v129 = *(v0 + 320);
    v105 = (*(v0 + 624) + 32) & ~*(v0 + 624);
    v104 = *(v0 + 392);
    v140 = *(v0 + 312);
    v143 = *(v0 + 304);
    v18 = *(v0 + 280);
    v137 = *(v0 + 584);
    v137(*(v0 + 384), v16);
    v137(v104, v16);
    sub_22B35DD2C();
    v19 = v16;
    (*(v15 + 40))(v106, v17, v16);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_22B363660;
    v13(v20 + v105, v111, v18);
    v13(v20 + v105 + v14, v117, v18);
    v13(v20 + v105 + 2 * v14, v120, v18);
    v13(v20 + v105 + 3 * v14, v123, v18);
    v13(v20 + v105 + 4 * v14, v126, v18);
    v13(v20 + v105 + 5 * v14, v132, v18);
    sub_22B310E30(v20);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_22B35DFCC();

    v21 = *(v140 + 8);
    v21(v129, v143);
    v137(v151, v19);
    v137(v155, v19);
    v138 = *(v0 + 584);
LABEL_15:
    v89 = *(v0 + 488);
    v90 = *(v0 + 496);
    v91 = *(v0 + 472);
    v92 = *(v0 + 480);
    v93 = *(v0 + 424);
    v107 = *(v0 + 448);
    v110 = *(v0 + 416);
    v112 = *(v0 + 408);
    v114 = *(v0 + 400);
    v116 = *(v0 + 392);
    v119 = *(v0 + 384);
    v122 = *(v0 + 376);
    v125 = *(v0 + 368);
    v128 = *(v0 + 360);
    v131 = *(v0 + 352);
    v94 = *(v0 + 336);
    v134 = *(v0 + 320);
    v136 = *(v0 + 296);
    v142 = *(v0 + 272);
    v146 = *(v0 + 264);
    v150 = *(v0 + 256);
    v154 = *(v0 + 232);
    v159 = *(v0 + 208);
    v164 = *(v0 + 184);
    v21(*(v0 + 328), *(v0 + 304));
    (*(v89 + 8))(v90, v92);
    v138(v93, v94);

    v95 = *(v0 + 8);

    return v95();
  }

  v22 = *(v0 + 352);
  v23 = *(v0 + 336);
  v24 = *(v0 + 112);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

  sub_22B316498(&qword_27D8BA430, MEMORY[0x277CC9578]);
  v25 = sub_22B36078C();
  v26 = *(v0 + 424);
  if (v25)
  {
    v27 = *(v0 + 360);
    v28 = *(v0 + 336);
    v29 = *(v0 + 344);
    sub_22B35DD2C();
    (*(v29 + 40))(v26, v27, v28);
  }

  else
  {
    (*(*(v0 + 344) + 24))(*(v0 + 424), *(v0 + 352), *(v0 + 336));
  }

  v165 = *(v0 + 584);
  v124 = *(v0 + 648);
  v121 = *(v0 + 644);
  v118 = *(v0 + 640);
  v115 = *(v0 + 636);
  v113 = *(v0 + 632);
  v30 = *(v0 + 528);
  v31 = *(v0 + 520);
  v109 = *(v0 + 628);
  v32 = *(v0 + 504);
  v33 = *(v0 + 512);
  v139 = *(v0 + 424);
  v141 = *(v0 + 496);
  v148 = *(v0 + 352);
  v144 = *(v0 + 336);
  v161 = *(v0 + 328);
  v130 = *(v0 + 320);
  v152 = *(v0 + 312);
  v156 = *(v0 + 304);
  v34 = *(v0 + 280);
  v35 = *(v0 + 200);
  v133 = *(v0 + 344) + 8;
  v135 = *(v0 + 208);
  v36 = (*(v0 + 624) + 32) & ~*(v0 + 624);
  v127 = *(v0 + 192);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_22B363660;
  v38 = v37 + v36;
  v31(v38, v109, v34);
  v31(v38 + v33, v113, v34);
  v31(v38 + 2 * v33, v115, v34);
  v31(v38 + 3 * v33, v118, v34);
  v31(v38 + 4 * v33, v121, v34);
  v31(v38 + 5 * v33, v124, v34);
  sub_22B310E30(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22B35DFCC();

  v165(v148, v144);
  (*(v35 + 8))(v135, v127);
  (*(v152 + 8))(v161, v156);
  (*(v152 + 32))(v161, v130, v156);
  v39 = *(v0 + 552);
  v40 = *(v0 + 136);
  (*(v0 + 544))(*(v0 + 256), *(v0 + 536), *(v0 + 240));

  v41 = sub_22B36050C();
  v42 = sub_22B360D0C();

  v43 = os_log_type_enabled(v41, v42);
  v44 = *(v0 + 584);
  v45 = *(v0 + 392);
  v162 = *(v0 + 576);
  v166 = *(v0 + 384);
  v46 = *(v0 + 336);
  v47 = *(v0 + 344);
  v48 = *(v0 + 248);
  v49 = *(v0 + 256);
  v50 = *(v0 + 240);
  if (v43)
  {
    v157 = *(v0 + 392);
    v51 = *(v0 + 128);
    v145 = *(v0 + 136);
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v168[0] = v53;
    *v52 = 136315138;
    *(v52 + 4) = sub_22B1A7B20(v51, v145, v168);
    _os_log_impl(&dword_22B116000, v41, v42, "[TOU Preprocessor] Got peaks for %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x23188F650](v53, -1, -1);
    MEMORY[0x23188F650](v52, -1, -1);

    v162(v49, v50);
    v44(v166, v46);
    v54 = v157;
  }

  else
  {

    v162(v49, v50);
    v44(v166, v46);
    v54 = v45;
  }

  v44(v54, v46);
  v55 = *(v0 + 424);
  v56 = *(v0 + 408);
  if ((sub_22B35DDFC() & 1) == 0)
  {
    v85 = *(v0 + 584);
    v86 = *(v0 + 336);
    v87 = *(v0 + 416);
    v88 = *(v0 + 312);
    v85(*(v0 + 408), v86);
    v138 = v85;
    v85(v87, v86);
    v21 = *(v88 + 8);
    goto LABEL_15;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v57 = *(v0 + 400);
  v58 = *(v0 + 408);
  v59 = *(v0 + 336);
  v60 = *(v0 + 344);
  v61 = *(v0 + 272);
  v62 = *(v0 + 240);
  v63 = *(v0 + 248);
  v64 = *(v0 + 136);
  v65 = __swift_project_value_buffer(v62, qword_28140BD10);
  *(v0 + 536) = v65;
  swift_beginAccess();
  v66 = *(v63 + 16);
  *(v0 + 544) = v66;
  *(v0 + 552) = (v63 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v66(v61, v65, v62);
  v67 = *(v60 + 16);
  *(v0 + 560) = v67;
  *(v0 + 568) = (v60 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v67(v57, v58, v59);

  v68 = sub_22B36050C();
  v69 = sub_22B360D2C();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = *(v0 + 424);
    v149 = *(v0 + 400);
    v72 = *(v0 + 336);
    v71 = *(v0 + 344);
    v158 = *(v0 + 248);
    v163 = *(v0 + 240);
    v167 = *(v0 + 272);
    v74 = *(v0 + 128);
    v73 = *(v0 + 136);
    v75 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v168[0] = v153;
    *v75 = 136315650;
    *(v75 + 4) = sub_22B1A7B20(v74, v73, v168);
    *(v75 + 12) = 2080;
    sub_22B316498(&qword_28140B488, MEMORY[0x277CC9578]);
    v76 = sub_22B36131C();
    v78 = sub_22B1A7B20(v76, v77, v168);

    *(v75 + 14) = v78;
    *(v75 + 22) = 2080;
    v79 = sub_22B36131C();
    v81 = v80;
    v82 = *(v71 + 8);
    v82(v149, v72);
    v83 = sub_22B1A7B20(v79, v81, v168);

    *(v75 + 24) = v83;
    _os_log_impl(&dword_22B116000, v68, v69, "[TOU Preprocessor] Getting peaks for %s at %s to %s", v75, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v153, -1, -1);
    MEMORY[0x23188F650](v75, -1, -1);

    v84 = *(v158 + 8);
    v84(v167, v163);
  }

  else
  {
    v97 = *(v0 + 400);
    v98 = *(v0 + 336);
    v99 = *(v0 + 344);
    v100 = *(v0 + 272);
    v101 = *(v0 + 240);
    v102 = *(v0 + 248);

    v82 = *(v99 + 8);
    v82(v97, v98);
    v84 = *(v102 + 8);
    v84(v100, v101);
  }

  *(v0 + 584) = v82;
  *(v0 + 576) = v84;
  if (qword_281408E00 != -1)
  {
    swift_once();
  }

  v103 = qword_28140BC80;
  *(v0 + 592) = qword_28140BC80;

  return MEMORY[0x2822009F8](sub_22B311E5C, v103, 0);
}

uint64_t sub_22B313BB8()
{
  v55 = *(v0 + 616);
  v39 = *(v0 + 648);
  v37 = *(v0 + 644);
  v34 = *(v0 + 640);
  v32 = *(v0 + 636);
  v30 = *(v0 + 632);
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v26 = *(v0 + 628);
  v3 = *(v0 + 512);
  v24 = *(v0 + 504);
  v49 = *(v0 + 496);
  v21 = *(v0 + 424);
  v51 = *(v0 + 408);
  v53 = *(v0 + 416);
  v18 = *(v0 + 392);
  v19 = *(v0 + 360);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v41 = *(v0 + 320);
  v20 = (*(v0 + 624) + 32) & ~*(v0 + 624);
  v45 = *(v0 + 312);
  v47 = *(v0 + 304);
  v6 = *(v0 + 280);
  v43 = *(v0 + 584);
  v43(*(v0 + 384), v5);
  v43(v18, v5);
  sub_22B35DD2C();
  (*(v4 + 40))(v21, v19, v5);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22B363660;
  v2(v7 + v20, v26, v6);
  v2(v7 + v20 + v3, v30, v6);
  v2(v7 + v20 + 2 * v3, v32, v6);
  v2(v7 + v20 + 3 * v3, v34, v6);
  v2(v7 + v20 + 4 * v3, v37, v6);
  v2(v7 + v20 + 5 * v3, v39, v6);
  sub_22B310E30(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22B35DFCC();

  v8 = *(v45 + 8);
  (v8)(v41, v47);
  v43(v51, v5);
  v43(v53, v5);
  v9 = *(v0 + 584);
  v10 = *(v0 + 488);
  v11 = *(v0 + 496);
  v12 = *(v0 + 480);
  v22 = *(v0 + 472);
  v23 = *(v0 + 448);
  v13 = *(v0 + 424);
  v25 = *(v0 + 416);
  v27 = *(v0 + 408);
  v28 = *(v0 + 400);
  v29 = *(v0 + 392);
  v35 = *(v0 + 376);
  v36 = *(v0 + 368);
  v38 = *(v0 + 360);
  v40 = *(v0 + 352);
  v14 = *(v0 + 336);
  v31 = *(v0 + 384);
  v33 = *(v0 + 328);
  v42 = *(v0 + 320);
  v15 = *(v0 + 304);
  v44 = *(v0 + 296);
  v46 = *(v0 + 272);
  v48 = *(v0 + 264);
  v50 = *(v0 + 256);
  v52 = *(v0 + 232);
  v54 = *(v0 + 208);
  v56 = *(v0 + 184);
  v8();
  (*(v10 + 8))(v11, v12);
  v9(v13, v14);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22B313FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v7 = type metadata accessor for CDTOUPeak();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B3140AC, 0, 0);
}

uint64_t sub_22B3140AC()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 32);
  *(v0 + 184) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 56);
  v6 = MEMORY[0x277D84F98];
  *(v0 + 112) = MEMORY[0x277D84F98];
  *(v0 + 120) = v6;

  if (v5)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 128) = v5;
    *(v0 + 136) = v8;
    v10 = (*(v7 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v11 = *v10;
    *(v0 + 144) = *v10;
    v12 = v10[1];
    *(v0 + 152) = v12;

    v13 = swift_task_alloc();
    *(v0 + 160) = v13;
    *v13 = v0;
    v13[1] = sub_22B314250;
    v14 = *(v0 + 72);
    v15 = *(v0 + 80);
    v16 = *(v0 + 64);
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);

    return sub_22B311150(v18, v17, v11, v12, v16, v14, v15);
  }

  else
  {
    v9 = 0;
    while (((63 - v4) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v5 = *(v7 + 8 * v9++ + 64);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v0 + 104);

    v21 = *(v0 + 8);
    v22 = *(v0 + 120);

    return v21(v22);
  }
}

uint64_t sub_22B314250()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B31434C, 0, 0);
}

uint64_t sub_22B31434C()
{
  if (qword_281408E00 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BC80;
  *(v0 + 168) = qword_28140BC80;

  return MEMORY[0x2822009F8](sub_22B3143E4, v1, 0);
}

uint64_t sub_22B3143E4()
{
  v1 = v0[21];
  v0[22] = sub_22B21A278(v0[18], v0[19], v0[8], v0[9], v0[5], v0[6], 0);

  return MEMORY[0x2822009F8](sub_22B314460, 0, 0);
}

void sub_22B314460()
{
  v1 = *(v0 + 176);
  if (!v1)
  {
    v82 = *(v0 + 152);

    v83 = *(v0 + 136);
    v84 = (*(v0 + 128) - 1) & *(v0 + 128);
    if (!v84)
    {
      goto LABEL_48;
    }

LABEL_77:
    v86 = *(v0 + 56);
LABEL_78:
    *(v0 + 128) = v84;
    *(v0 + 136) = v83;
    v120 = (*(v86 + 48) + ((v83 << 10) | (16 * __clz(__rbit64(v84)))));
    v121 = *v120;
    *(v0 + 144) = *v120;
    v122 = v120[1];
    *(v0 + 152) = v122;

    v123 = swift_task_alloc();
    *(v0 + 160) = v123;
    *v123 = v0;
    v123[1] = sub_22B314250;
    v124 = *(v0 + 72);
    v125 = *(v0 + 80);
    v126 = *(v0 + 64);
    v128 = *(v0 + 40);
    v127 = *(v0 + 48);

    sub_22B311150(v128, v127, v121, v122, v126, v124, v125);
    return;
  }

  v138 = *(v1 + 16);
  if (v138)
  {
    v2 = 0;
    v3 = *(*(v0 + 96) + 80);
    v134 = *(v0 + 176);
    v136 = v1 + ((v3 + 32) & ~v3);
    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      sub_22B3160B8(v136 + *(*(v0 + 96) + 72) * v2, *(v0 + 104));
      if (v5[2])
      {
        sub_22B33B28C(*(v0 + 144), *(v0 + 152));
        if (v12)
        {
          if (v5[2])
          {
            v13 = sub_22B33B28C(*(v0 + 144), *(v0 + 152));
            if (v14)
            {
              break;
            }
          }
        }
      }

      v29 = *(v0 + 144);
      v28 = *(v0 + 152);
      v30 = *(v0 + 104);
      v31 = *(v0 + 88);
      v32 = *(v30 + *(v31 + 28));
      v33 = (v30 + *(v31 + 36));
      v34 = *v33;
      v35 = v33[1];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 16) = v4;
      v37 = sub_22B33B28C(v29, v28);
      v39 = v4[2];
      v40 = (v38 & 1) == 0;
      v26 = __OFADD__(v39, v40);
      v41 = v39 + v40;
      if (v26)
      {
        goto LABEL_89;
      }

      v42 = v38;
      if (v4[3] >= v41)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v4 = *(v0 + 16);
          if ((v38 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v80 = v37;
          sub_22B341930();
          v37 = v80;
          v4 = *(v0 + 16);
          if ((v42 & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        v44 = *(v0 + 144);
        v43 = *(v0 + 152);
        sub_22B33CAA0(v41, isUniquelyReferenced_nonNull_native);
        v45 = *(v0 + 16);
        v37 = sub_22B33B28C(v44, v43);
        if ((v42 & 1) != (v46 & 1))
        {
          goto LABEL_84;
        }

        v1 = v134;
        v4 = *(v0 + 16);
        if ((v42 & 1) == 0)
        {
LABEL_27:
          v48 = *(v0 + 144);
          v47 = *(v0 + 152);
          v49 = *(v0 + 104);
          v4[(v37 >> 6) + 8] |= 1 << v37;
          v50 = (v4[6] + 16 * v37);
          *v50 = v48;
          v50[1] = v47;
          v51 = (v4[7] + 24 * v37);
          *v51 = v32;
          v51[1] = v34;
          v51[2] = v35;

          sub_22B31611C(v49);
          v52 = v4[2];
          v26 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v26)
          {
            goto LABEL_91;
          }

          v4[2] = v53;
          goto LABEL_6;
        }
      }

      v6 = *(v0 + 104);
      v7 = (v4[7] + 24 * v37);
      v8 = *v7;
      v9 = v7[2];
      *v7 = v32;
      v7[1] = v34;
      v7[2] = v35;

      v10 = v6;
LABEL_5:
      sub_22B31611C(v10);
LABEL_6:
      ++v2;
      v5 = v4;
      v11 = v4;
      if (v138 == v2)
      {
        goto LABEL_53;
      }
    }

    v15 = *(v5[7] + 24 * v13);
    v16 = *(*(v0 + 104) + *(*(v0 + 88) + 28));
    v17 = *(v16 + 16);
    v18 = v15[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      goto LABEL_92;
    }

    v20 = swift_isUniquelyReferenced_nonNull_native();
    if (v20 && v19 <= v15[3] >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v54 = v18 + v17;
      }

      else
      {
        v54 = v18;
      }

      v15 = sub_22B32D1C8(v20, v54, 1, v15);
      if (*(v16 + 16))
      {
LABEL_16:
        v21 = (v15[3] >> 1) - v15[2];
        v22 = *(sub_22B35FF8C() - 8);
        if (v21 < v17)
        {
          goto LABEL_95;
        }

        v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v24 = *(v22 + 72);
        swift_arrayInitWithCopy();

        if (v17)
        {
          v25 = v15[2];
          v26 = __OFADD__(v25, v17);
          v27 = v25 + v17;
          if (v26)
          {
            goto LABEL_97;
          }

          v15[2] = v27;
        }

        goto LABEL_34;
      }
    }

    if (v17)
    {
      goto LABEL_93;
    }

LABEL_34:
    v56 = *(v0 + 144);
    v55 = *(v0 + 152);
    v57 = (*(v0 + 104) + *(*(v0 + 88) + 36));
    v58 = *v57;
    v59 = v57[1];

    v60 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 32) = v4;
    v61 = sub_22B33B28C(v56, v55);
    v63 = v4[2];
    v64 = (v62 & 1) == 0;
    v26 = __OFADD__(v63, v64);
    v65 = v63 + v64;
    if (v26)
    {
      goto LABEL_94;
    }

    v66 = v62;
    if (v4[3] >= v65)
    {
      if ((v60 & 1) == 0)
      {
        v81 = v61;
        sub_22B341930();
        v61 = v81;
      }
    }

    else
    {
      v68 = *(v0 + 144);
      v67 = *(v0 + 152);
      sub_22B33CAA0(v65, v60);
      v69 = *(v0 + 32);
      v61 = sub_22B33B28C(v68, v67);
      if ((v66 & 1) != (v70 & 1))
      {
LABEL_84:

        sub_22B3613BC();
        return;
      }

      v1 = v134;
    }

    v4 = *(v0 + 32);
    v71 = *(v0 + 152);
    if (v66)
    {
      v72 = (v4[7] + 24 * v61);
      v73 = *v72;
      v74 = v72[2];
      *v72 = v15;
      v72[1] = v58;
      v72[2] = v59;
    }

    else
    {
      v75 = *(v0 + 144);
      v4[(v61 >> 6) + 8] |= 1 << v61;
      v76 = (v4[6] + 16 * v61);
      *v76 = v75;
      v76[1] = v71;
      v77 = (v4[7] + 24 * v61);
      *v77 = v15;
      v77[1] = v58;
      v77[2] = v59;
      v78 = v4[2];
      v26 = __OFADD__(v78, 1);
      v79 = v78 + 1;
      if (v26)
      {
        goto LABEL_96;
      }

      v4[2] = v79;
    }

    v10 = *(v0 + 104);
    goto LABEL_5;
  }

  v4 = *(v0 + 112);
  v11 = *(v0 + 120);
LABEL_53:
  v87 = *(v0 + 152);

  v88 = -1;
  v89 = -1 << *(v11 + 32);
  if (-v89 < 64)
  {
    v88 = ~(-1 << -v89);
  }

  v90 = v88 & v11[8];
  v91 = (63 - v89) >> 6;

  v92 = 0;
  v93 = v11;
  while (v90)
  {
    v94 = v90;
LABEL_62:
    v90 = (v94 - 1) & v94;
    if (v93[2])
    {
      v96 = (v11[6] + ((v92 << 10) | (16 * __clz(__rbit64(v94)))));
      v98 = *v96;
      v97 = v96[1];

      v99 = sub_22B33B28C(v98, v97);
      if (v100)
      {
        v101 = (v93[7] + 24 * v99);
        v133 = *v101;
        v135 = v101[1];
        v102 = v101[2];

        v137 = v102;

        v139 = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 24) = v4;
        v103 = sub_22B33B28C(v98, v97);
        v105 = v4[2];
        v106 = (v104 & 1) == 0;
        v26 = __OFADD__(v105, v106);
        v107 = v105 + v106;
        if (v26)
        {
          goto LABEL_98;
        }

        if (v4[3] >= v107)
        {
          if (v139)
          {
            if ((v104 & 1) == 0)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v140 = v103;
            v119 = v104;
            sub_22B341930();
            v103 = v140;
            if ((v119 & 1) == 0)
            {
              goto LABEL_69;
            }
          }

LABEL_73:
          v115 = v103;

          v4 = *(v0 + 24);
          v116 = (v4[7] + 24 * v115);
          v117 = *v116;
          v118 = v116[2];
          *v116 = v133;
          v116[1] = v135;
          v116[2] = v137;

          v93 = v4;
        }

        else
        {
          v108 = v104;
          sub_22B33CAA0(v107, v139);
          v109 = *(v0 + 24);
          v103 = sub_22B33B28C(v98, v97);
          if ((v108 & 1) != (v110 & 1))
          {
            goto LABEL_84;
          }

          if (v108)
          {
            goto LABEL_73;
          }

LABEL_69:
          v4 = *(v0 + 24);
          v4[(v103 >> 6) + 8] |= 1 << v103;
          v111 = (v4[6] + 16 * v103);
          *v111 = v98;
          v111[1] = v97;
          v112 = (v4[7] + 24 * v103);
          *v112 = v133;
          v112[1] = v135;
          v112[2] = v137;
          v113 = v4[2];
          v26 = __OFADD__(v113, 1);
          v114 = v113 + 1;
          if (v26)
          {
            goto LABEL_99;
          }

          v4[2] = v114;
          v93 = v4;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v95 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      __break(1u);
      goto LABEL_88;
    }

    if (v95 >= v91)
    {
      break;
    }

    v94 = v11[v95 + 8];
    ++v92;
    if (v94)
    {
      v92 = v95;
      goto LABEL_62;
    }
  }

  v83 = *(v0 + 136);
  v84 = (*(v0 + 128) - 1) & *(v0 + 128);
  *(v0 + 112) = v4;
  *(v0 + 120) = v93;
  if (v84)
  {
    goto LABEL_77;
  }

LABEL_48:
  while (1)
  {
    v85 = v83 + 1;
    if (__OFADD__(v83, 1))
    {
      break;
    }

    if (v85 >= (((1 << *(v0 + 184)) + 63) >> 6))
    {
      v129 = *(v0 + 104);
      v130 = *(v0 + 56);

      v131 = *(v0 + 8);
      v132 = *(v0 + 120);

      v131(v132);
      return;
    }

    v86 = *(v0 + 56);
    v84 = *(v86 + 8 * v85 + 56);
    ++v83;
    if (v84)
    {
      v83 = v85;
      goto LABEL_78;
    }
  }

LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
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
}

void *sub_22B314D64(uint64_t a1, uint64_t a2)
{
  v97 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA828, qword_22B365C20);
  v80 = *(v81 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v90 = &v67 - v4;
  v89 = sub_22B35EFAC();
  v5 = *(v89 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B35FF8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v79 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v96 = &v67 - v13;
  v95 = sub_22B35DDBC();
  v14 = *(v95 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v95);
  v106 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v67 - v19;
  v21 = sub_22B35DE9C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v78 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v77 = &v67 - v25;
  MEMORY[0x28223BE20](v26);
  v87 = &v67 - v27;
  MEMORY[0x28223BE20](v28);
  v86 = &v67 - v29;
  MEMORY[0x28223BE20](v30);
  v33 = &v67 - v32;
  v71 = *(a1 + 16);
  if (v71)
  {
    v94 = v8;
    v34 = v31;
    v35 = type metadata accessor for CDTOUPeak();
    v36 = 0;
    v70 = v35;
    v37 = *(v35 - 8);
    v69 = a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v84 = *(v34 + 16);
    v38 = v9 + 16;
    v103 = v9 + 8;
    v91 = (v34 + 56);
    v92 = (v14 + 8);
    v75 = (v34 + 32);
    v74 = (v5 + 16);
    v73 = (v5 + 8);
    v82 = (v34 + 8);
    v68 = *(v37 + 72);
    v100 = MEMORY[0x277D84F90];
    v93 = v9;
    v104 = v21;
    v83 = v34 + 16;
    v76 = v33;
    while (1)
    {
      v72 = v36;
      v40 = v69 + v68 * v36;
      v41 = *(v40 + *(v70 + 28));
      v42 = *(v41 + 16);
      v84(v33, v40 + *(v70 + 24), v21);
      if (v42)
      {
        break;
      }

LABEL_3:
      v39 = v72 + 1;
      (*v82)(v33, v21);
      v36 = v39;
      if (v39 == v71)
      {
        return v100;
      }
    }

    v98 = v41 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v99 = v41;
    while (1)
    {
      result = sub_22B35F55C();
      if (v42 > *(v41 + 16))
      {
        break;
      }

      v44 = *(v9 + 72);
      v105 = v42 - 1;
      v45 = v98 + v44 * (v42 - 1);
      v46 = *(v9 + 16);
      v47 = v96;
      v101 = v45;
      v102 = v46;
      v48 = v94;
      (v46)(v96);
      sub_22B35FF7C();
      v49 = v20;
      v50 = *(v9 + 8);
      v50(v47, v48);
      sub_22B35DD9C();
      (*v92)(v106, v95);

      v51 = v104;
      (*v91)(v49, 0, 1, v104);
      v85 = v50;
      v52 = *v75;
      v53 = v86;
      (*v75)(v86, v49, v51);
      v54 = v87;
      v52(v87, v33, v51);
      v55 = v38;
      v56 = v84;
      v84(v33, v53, v51);
      v56(v77, v53, v51);
      v56(v78, v54, v51);
      v57 = v88;
      sub_22B35EF9C();
      v58 = v79;
      v59 = v55;
      v102(v79, v101, v48);
      v60 = sub_22B35FF5C();
      v85(v58, v48);
      v61 = *(v81 + 48);
      v62 = v90;
      (*v74)(v90, v57, v89);
      *(v62 + v61) = v60;
      v20 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = sub_22B32D254(0, v100[2] + 1, 1, v100);
      }

      v41 = v99;
      v64 = v100[2];
      v63 = v100[3];
      v21 = v104;
      v33 = v76;
      if (v64 >= v63 >> 1)
      {
        v100 = sub_22B32D254(v63 > 1, v64 + 1, 1, v100);
      }

      (*v73)(v88, v89);
      v65 = *v82;
      (*v82)(v87, v21);
      v65(v86, v21);
      v66 = v100;
      v100[2] = v64 + 1;
      sub_22B2072E4(v90, v66 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v64);
      v38 = v59;
      v42 = v105;
      v9 = v93;
      if (v105 + 1 <= 1)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22B3156C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = sub_22B35E0BC();
  v7[12] = v8;
  v9 = *(v8 - 8);
  v7[13] = v9;
  v10 = *(v9 + 64) + 15;
  v7[14] = swift_task_alloc();
  v11 = sub_22B35DE9C();
  v7[15] = v11;
  v12 = *(v11 - 8);
  v7[16] = v12;
  v13 = *(v12 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v14 = sub_22B36052C();
  v7[19] = v14;
  v15 = *(v14 - 8);
  v7[20] = v15;
  v16 = *(v15 + 64) + 15;
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B315864, 0, 0);
}

uint64_t sub_22B315864()
{
  v68 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v55 = v0[18];
  v57 = v0[17];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v61 = v0[12];
  v63 = v0[14];
  v65 = v0[11];
  v59 = v0[9];
  log = v0[8];
  v7 = v0[6];
  v8 = v0[7];
  v9 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[23] = v9;
  swift_beginAccess();
  v10 = *(v3 + 16);
  v0[24] = v10;
  v0[25] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v9, v2);
  v11 = *(v4 + 16);
  v11(v55, v8, v5);
  v11(v57, log, v5);
  (*(v6 + 16))(v63, v59, v61);

  v12 = sub_22B36050C();
  v13 = sub_22B360D0C();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[22];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[18];
  v19 = v0[15];
  v20 = v0[16];
  v21 = v0[13];
  v66 = v0[14];
  v62 = v0[17];
  v64 = v0[12];
  if (v14)
  {
    v58 = v0[20];
    v60 = v0[19];
    v22 = v0[10];
    v23 = v0[11];
    v52 = v13;
    loga = v12;
    v24 = v0[5];
    v25 = v0[6];
    v56 = v0[22];
    v26 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v67 = v51;
    *v26 = 136316162;
    *(v26 + 4) = sub_22B1A7B20(v24, v25, &v67);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_22B1A7B20(v22, v23, &v67);
    *(v26 + 22) = 2080;
    sub_22B316498(&qword_28140B488, MEMORY[0x277CC9578]);
    v27 = sub_22B36131C();
    v29 = v28;
    v30 = *(v20 + 8);
    v30(v18, v19);
    v31 = sub_22B1A7B20(v27, v29, &v67);

    *(v26 + 24) = v31;
    *(v26 + 32) = 2080;
    v32 = sub_22B36131C();
    v34 = v33;
    v30(v62, v19);
    v35 = sub_22B1A7B20(v32, v34, &v67);

    *(v26 + 34) = v35;
    *(v26 + 42) = 2080;
    v36 = sub_22B35E06C();
    v38 = v37;
    (*(v21 + 8))(v66, v64);
    v39 = sub_22B1A7B20(v36, v38, &v67);

    *(v26 + 44) = v39;
    _os_log_impl(&dword_22B116000, loga, v52, "[TOU Preprocessor] Process peaks for utility %s, tariffProfile: %s from %s-%s in timezone %s", v26, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v51, -1, -1);
    MEMORY[0x23188F650](v26, -1, -1);

    v40 = *(v58 + 8);
    v40(v56, v60);
  }

  else
  {

    (*(v21 + 8))(v66, v64);
    v41 = *(v20 + 8);
    v41(v62, v19);
    v41(v18, v19);
    v40 = *(v16 + 8);
    v40(v15, v17);
  }

  v0[26] = v40;
  v42 = swift_task_alloc();
  v0[27] = v42;
  *v42 = v0;
  v42[1] = sub_22B315D1C;
  v43 = v0[10];
  v44 = v0[11];
  v45 = v0[8];
  v46 = v0[9];
  v47 = v0[6];
  v48 = v0[7];
  v49 = v0[5];

  return sub_22B311150(v48, v45, v43, v44, v49, v47, v46);
}

uint64_t sub_22B315D1C()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B315E18, 0, 0);
}

uint64_t sub_22B315E18()
{
  if (qword_281408E00 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BC80;
  *(v0 + 224) = qword_28140BC80;

  return MEMORY[0x2822009F8](sub_22B315EB0, v1, 0);
}

uint64_t sub_22B315EB0()
{
  v1 = v0[28];
  v0[29] = sub_22B21A278(v0[10], v0[11], v0[5], v0[6], v0[7], v0[8], 1);

  return MEMORY[0x2822009F8](sub_22B315F2C, 0, 0);
}

uint64_t sub_22B315F2C()
{
  v1 = v0[29];
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = v0[29];
      v3 = sub_22B314D64(v1, v0[9]);

      goto LABEL_8;
    }

    v5 = v0[24];
    v4 = v0[25];
    v6 = v0[23];
    v7 = v0[21];
    v8 = v0[19];

    v5(v7, v6, v8);
    v9 = sub_22B36050C();
    v10 = sub_22B360D1C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[26];
    v14 = v0[20];
    v13 = v0[21];
    v15 = v0[19];
    if (v11)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22B116000, v9, v10, "[TOU Preprocessor] found empty fetched peak", v16, 2u);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    v12(v13, v15);
  }

  v3 = 0;
LABEL_8:
  v18 = v0[21];
  v17 = v0[22];
  v20 = v0[17];
  v19 = v0[18];
  v21 = v0[14];

  v22 = v0[1];

  return v22(v3);
}

uint64_t sub_22B3160B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDTOUPeak();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B31611C(uint64_t a1)
{
  v2 = type metadata accessor for CDTOUPeak();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B316178(uint64_t a1)
{
  v2 = sub_22B35EA4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE10, &qword_22B367088);
    v10 = sub_22B36114C();
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
      sub_22B316498(&qword_27D8BAE18, MEMORY[0x277D17688]);
      v18 = sub_22B36071C();
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
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          sub_22B316498(&qword_27D8BAE20, MEMORY[0x277D17688]);
          v25 = sub_22B36078C();
          v26 = *v16;
          (*v16)(v6, v2);
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

uint64_t sub_22B316498(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B3164E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22B3564FC(a1, a2);
  if (!v3)
  {
    v6 = result;
    sub_22B2A534C(2);
    if (v6 >> 62)
    {
      v7 = sub_22B36109C();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *a3 = v7;
  }

  return result;
}

unint64_t sub_22B316578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = 0;
  v8 = 0;
  v9 = *(a1 + 16);
  while (v9 != v8)
  {
    v10 = *(sub_22B35E6AC() - 8);
    result = sub_22B3564FC(a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, a2);
    if (v3)
    {
      return result;
    }

    if (result >> 62)
    {
      v12 = sub_22B36109C();
    }

    else
    {
      v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v8;
    v13 = __OFADD__(v7, v12);
    v7 += v12;
    if (v13)
    {
      __break(1u);
      return result;
    }
  }

  result = sub_22B2A534C(2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_22B3166B0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_22B35DE9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v9);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v11, v10, v6);
  *(v13 + v12) = a3;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22B31AFF8;
  *(v14 + 24) = v13;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_44_0;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  [v16 performBlockAndWait_];
  _Block_release(v15);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

void sub_22B316900(uint64_t a1, uint64_t a2, void *a3)
{
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B3634B0;
  v5 = sub_22B35DDDC();
  *(v4 + 56) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v4 + 64) = sub_22B250330(&qword_281408550, &qword_281408558, 0x277CBEAA8);
  *(v4 + 32) = v5;
  v6 = sub_22B360CCC();
  sub_22B31AD58(v6, a3);
}

uint64_t sub_22B316A30(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v9);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v11, v10, v6);
  *(v13 + v12) = a3;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22B31AFCC;
  *(v14 + 24) = v13;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_34;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  [v16 performBlockAndWait_];
  _Block_release(v15);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

void sub_22B316C80(uint64_t a1, uint64_t a2, void *a3)
{
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B3634B0;
  v5 = sub_22B35DEDC();
  *(v4 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v4 + 64) = sub_22B250330(&qword_281408540, &qword_281408548, 0x277CCAD78);
  *(v4 + 32) = v5;
  v6 = sub_22B360CCC();
  sub_22B31AD58(v6, a3);
}

uint64_t sub_22B316DB0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v9);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v11, v10, v6);
  *(v13 + v12) = a3;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22B31AFA0;
  *(v14 + 24) = v13;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_24_0;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  [v16 performBlockAndWait_];
  _Block_release(v15);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

void sub_22B317000(uint64_t a1, uint64_t a2, void *a3)
{
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B3634B0;
  v5 = sub_22B35DEDC();
  *(v4 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v4 + 64) = sub_22B250330(&qword_281408540, &qword_281408548, 0x277CCAD78);
  *(v4 + 32) = v5;
  v6 = sub_22B360CCC();
  sub_22B31AD58(v6, a3);
}

uint64_t sub_22B317130(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v26 = a4;
  v27 = a3;
  v6 = sub_22B35DE9C();
  v25 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22B35DF1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v13);
  (*(v7 + 16))(v9, a2, v6);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v15, v14, v10);
  (*(v7 + 32))(v18 + v16, v9, v25);
  v19 = v27;
  *(v18 + v17) = v26;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22B31AC54;
  *(v20 + 24) = v18;
  aBlock[4] = sub_22B12819C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_27;
  v21 = _Block_copy(aBlock);

  v22 = v19;

  [v22 performBlockAndWait_];
  _Block_release(v21);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  return result;
}

void sub_22B317450(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22B3634C0;
  v6 = sub_22B35DEDC();
  *(v5 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v5 + 64) = sub_22B250330(&qword_281408540, &qword_281408548, 0x277CCAD78);
  *(v5 + 32) = v6;
  v7 = sub_22B35DDDC();
  *(v5 + 96) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v5 + 104) = sub_22B250330(&qword_281408550, &qword_281408558, 0x277CBEAA8);
  *(v5 + 72) = v7;
  v8 = sub_22B360CCC();
  sub_22B31AD58(v8, a4);
}

void sub_22B3175E0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v80 = a2;
  v72 = a3;
  v74 = sub_22B35DE9C();
  v70 = *(v74 - 1);
  v4 = *(v70 + 64);
  MEMORY[0x28223BE20](v74);
  v69 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B36052C();
  v77 = *(v6 - 8);
  v78 = v6;
  v7 = *(v77 + 64);
  MEMORY[0x28223BE20](v6);
  v75 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v67 - v11;
  v13 = sub_22B35DF1C();
  v73 = *(v13 - 8);
  v14 = *(v73 + 64);
  MEMORY[0x28223BE20](v13);
  v76 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v17 = sub_22B36081C();
  v18 = [v16 initWithEntityName_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v19 = swift_allocObject();
  v79 = xmmword_22B3634B0;
  *(v19 + 16) = xmmword_22B3634B0;
  v68 = a1;
  v20 = sub_22B35DDDC();
  *(v19 + 56) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v19 + 64) = sub_22B250330(&qword_281408550, &qword_281408558, 0x277CBEAA8);
  *(v19 + 32) = v20;
  v21 = v18;
  v22 = sub_22B360CCC();
  [v18 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v23 = swift_allocObject();
  *(v23 + 16) = v79;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 32) = 0xD000000000000011;
  *(v23 + 40) = 0x800000022B36E380;
  v24 = sub_22B360A3C();

  [v18 setPropertiesToFetch_];

  [v18 setReturnsDistinctResults_];
  [v18 setResultType_];
  sub_22B128014(0, &qword_27D8BA3D8, 0x277CBEAC0);
  v25 = v84;
  v26 = sub_22B360E9C();
  v27 = v25;
  v71 = v21;
  if (v25)
  {
    if (qword_28140A0C8 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_3;
  }

  v84 = v13;
  v80 = 0x800000022B36E380;
  if (v26 >> 62)
  {
    v66 = v26;
    v52 = sub_22B36109C();
    v26 = v66;
  }

  else
  {
    v52 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v70 = 0;
  if (!v52)
  {
    v54 = MEMORY[0x277D84F90];
LABEL_30:

    v65 = sub_22B31AA70(v54);

    goto LABEL_31;
  }

  v53 = 0;
  v78 = v26 & 0xFFFFFFFFFFFFFF8;
  *&v79 = v26 & 0xC000000000000001;
  v27 = (v73 + 56);
  v74 = (v73 + 32);
  v75 = (v73 + 48);
  v54 = MEMORY[0x277D84F90];
  v77 = v52;
  while (1)
  {
    if (v79)
    {
      v55 = v26;
      v56 = MEMORY[0x23188EAC0](v53);
    }

    else
    {
      if (v53 >= *(v78 + 16))
      {
        goto LABEL_33;
      }

      v55 = v26;
      v56 = *(v26 + 8 * v53 + 32);
    }

    v57 = v56;
    v58 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    *&v81 = 0xD000000000000011;
    *(&v81 + 1) = v80;
    v59 = [v56 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v59)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {

      v81 = 0u;
      v82 = 0u;
    }

    v60 = v84;
    v83[0] = v81;
    v83[1] = v82;
    if (*(&v82 + 1))
    {
      v61 = swift_dynamicCast();
      (*v27)(v12, v61 ^ 1u, 1, v60);
      if ((*v75)(v12, 1, v60) != 1)
      {
        v62 = *v74;
        (*v74)(v76, v12, v60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_22B32D50C(0, *(v54 + 2) + 1, 1, v54);
        }

        v64 = *(v54 + 2);
        v63 = *(v54 + 3);
        if (v64 >= v63 >> 1)
        {
          v54 = sub_22B32D50C(v63 > 1, v64 + 1, 1, v54);
        }

        *(v54 + 2) = v64 + 1;
        v62(&v54[((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v64]);
        goto LABEL_11;
      }
    }

    else
    {
      sub_22B123284(v83, &unk_27D8BA950, &qword_22B364940);
      (*v27)(v12, 1, 1, v60);
    }

    sub_22B123284(v12, &qword_27D8BA970, &unk_22B363560);
LABEL_11:
    ++v53;
    v26 = v55;
    if (v58 == v77)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  swift_once();
LABEL_3:
  v28 = v78;
  v29 = __swift_project_value_buffer(v78, qword_28140BD10);
  swift_beginAccess();
  v30 = v77;
  v31 = v75;
  (*(v77 + 16))(v75, v29, v28);
  v32 = v70;
  v33 = v69;
  v34 = v74;
  (*(v70 + 16))(v69, v68, v74);
  v35 = v27;
  v36 = sub_22B36050C();
  v37 = sub_22B360D1C();

  LODWORD(v84) = v37;
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v81 = v40;
    *v38 = 136315394;
    sub_22B31AC0C(&qword_28140B488, MEMORY[0x277CC9578]);
    v41 = v36;
    v42 = sub_22B36131C();
    v43 = v34;
    v45 = v44;
    (*(v32 + 8))(v33, v43);
    v46 = sub_22B1A7B20(v42, v45, &v81);
    v47 = v27;
    v48 = v46;

    *(v38 + 4) = v48;
    *(v38 + 12) = 2112;
    v49 = v47;
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 14) = v50;
    *v39 = v50;
    _os_log_impl(&dword_22B116000, v41, v84, "Failed to fetch session IDs starting after %s: %@", v38, 0x16u);
    sub_22B123284(v39, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v39, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x23188F650](v40, -1, -1);
    MEMORY[0x23188F650](v38, -1, -1);

    (*(v77 + 8))(v75, v78);
    v51 = v47;
  }

  else
  {

    (*(v32 + 8))(v33, v34);
    (*(v30 + 8))(v31, v28);

    v51 = v27;
  }

  v65 = MEMORY[0x277D84FA0];
LABEL_31:
  *v72 = v65;
}

uint64_t sub_22B318018()
{
  type metadata accessor for LoadSessionBlockManager();
  v0 = swift_allocObject();
  result = sub_22B17499C();
  qword_27D8BB1D0 = v0;
  return result;
}

uint64_t sub_22B318054(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_22B35DF1C();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = sub_22B35E6AC();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v9 = sub_22B36052C();
  v2[14] = v9;
  v10 = *(v9 - 8);
  v2[15] = v10;
  v11 = *(v10 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B3181D8, v1, 0);
}

uint64_t sub_22B3181D8()
{
  v63 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[6];
  v8 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  v60 = v8;
  v59 = *(v3 + 16);
  v59(v1, v8, v2);
  (*(v5 + 16))(v4, v7, v6);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  v11 = os_log_type_enabled(v9, v10);
  v61 = v0[17];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[12];
  v15 = v0[13];
  v16 = v0[11];
  if (v11)
  {
    v55 = v0[11];
    v57 = v10;
    v17 = v0[9];
    v18 = v0[10];
    v19 = v0[8];
    v20 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v62 = v56;
    *v20 = 136315138;
    v58 = v12;
    sub_22B35E5CC();
    sub_22B31AC0C(&qword_2814091D0, MEMORY[0x277CC95F0]);
    log = v9;
    v21 = v19;
    v22 = sub_22B36131C();
    v24 = v23;
    (*(v17 + 8))(v18, v21);
    (*(v14 + 8))(v15, v55);
    v25 = sub_22B1A7B20(v22, v24, &v62);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_22B116000, log, v57, "Insert LoadSessionEvent with session ID: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x23188F650](v56, -1, -1);
    MEMORY[0x23188F650](v20, -1, -1);

    v26 = *(v13 + 8);
    v26(v61, v58);
  }

  else
  {

    (*(v14 + 8))(v15, v16);
    v26 = *(v13 + 8);
    v26(v61, v12);
  }

  v27 = v0[7];
  if (*(v27 + 120))
  {
    v28 = *(v27 + 112);
    v29 = *(v27 + 120);

    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v32 = sub_22B2A632C();
      v30 = [v32 newBackgroundContext];
      v33 = sub_22B36081C();
      [v30 setTransactionAuthor_];

      [v30 setMergePolicy_];
      [v30 setUndoManager_];
      [v30 setShouldRefreshAfterSave_];
      [v30 setStalenessInterval_];
      [v30 setShouldDeleteInaccessibleFaults_];

      v28 = 0;
    }

    v34 = v0[6];
    v35 = swift_task_alloc();
    *(v35 + 16) = v34;
    *(v35 + 24) = v30;
    v36 = v28;
    v37 = v30;
    sub_22B360E7C();
    v43 = v0[16];
    v44 = v0[14];

    v45 = v0[5];
    v59(v43, v60, v44);
    v46 = sub_22B36050C();
    v47 = sub_22B360D2C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = v45;
      _os_log_impl(&dword_22B116000, v46, v47, "Successfully inserted %ld LoadSessionBlocks", v48, 0xCu);
      MEMORY[0x23188F650](v48, -1, -1);
    }

    else
    {
    }

    v49 = v0[17];
    v50 = v0[13];
    v51 = v0[10];
    v52 = v0[15] + 8;
    v26(v0[16], v0[14]);

    v42 = v0[1];
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v31 = 7;
    swift_willThrow();
    v39 = v0[16];
    v38 = v0[17];
    v40 = v0[13];
    v41 = v0[10];

    v42 = v0[1];
  }

  return v42();
}

uint64_t sub_22B3187AC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_22B36052C();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B318878, v1, 0);
}

uint64_t sub_22B318878()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  v6 = *(v3 + 16);
  v6(v1, v5, v2);

  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[6];
  if (v9)
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v10 + 16);

    _os_log_impl(&dword_22B116000, v7, v8, "Insert %ld LoadSessionEvents", v11, 0xCu);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  else
  {
    v12 = v0[6];
  }

  v13 = v0[7];
  v14 = *(v0[9] + 8);
  v14(v0[11], v0[8]);
  if (*(v13 + 120))
  {
    v15 = *(v0[7] + 112);
    v41 = v6;

    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v18 = sub_22B2A632C();
      v16 = [v18 newBackgroundContext];
      v19 = sub_22B36081C();
      [v16 setTransactionAuthor_];

      [v16 setMergePolicy_];
      [v16 setUndoManager_];
      [v16 setShouldRefreshAfterSave_];
      [v16 setStalenessInterval_];
      [v16 setShouldDeleteInaccessibleFaults_];

      v15 = 0;
    }

    v20 = v0[6];
    v21 = swift_task_alloc();
    *(v21 + 16) = v20;
    *(v21 + 24) = v16;
    v22 = v15;
    v23 = v16;
    sub_22B360E7C();
    v40 = v14;
    v27 = v0[10];
    v28 = v0[8];
    v29 = v0[6];

    v30 = v0[5];
    v41(v27, v5, v28);

    v31 = sub_22B36050C();
    v32 = sub_22B360D2C();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[6];
    if (v33)
    {
      v35 = swift_slowAlloc();
      v36 = v30;
      v37 = v35;
      *v35 = 134218240;
      *(v35 + 4) = v36;
      *(v35 + 12) = 2048;
      *(v35 + 14) = *(v34 + 16);

      _os_log_impl(&dword_22B116000, v31, v32, "Successfully inserted %ld LoadSessionBlocks from %ld events", v37, 0x16u);
      MEMORY[0x23188F650](v37, -1, -1);
    }

    else
    {
    }

    v38 = v0[11];
    v40(v0[10], v0[8]);

    v26 = v0[1];
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v17 = 7;
    swift_willThrow();
    v25 = v0[10];
    v24 = v0[11];

    v26 = v0[1];
  }

  return v26();
}

uint64_t sub_22B318D18(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22B35DE9C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_22B36052C();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B318E34, v1, 0);
}

uint64_t sub_22B318E34()
{
  v42 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[9];
  v15 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  if (v11)
  {
    v40 = v0[10];
    v18 = swift_slowAlloc();
    v38 = v10;
    v19 = swift_slowAlloc();
    v41 = v19;
    *v18 = 136315138;
    sub_22B31AC0C(&qword_28140B488, MEMORY[0x277CC9578]);
    v20 = sub_22B36131C();
    v39 = v12;
    v22 = v21;
    (*(v16 + 8))(v14, v17);
    v23 = sub_22B1A7B20(v20, v22, &v41);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_22B116000, v9, v38, "Delete LoadSessionBlocks with session end before: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v13 + 8))(v39, v40);
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
  }

  v24 = v0[6];
  v25 = *(v24 + 120);
  if (v25)
  {
    v26 = *(v24 + 112);
    v27 = *(v24 + 120);

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v29 = sub_22B2A632C();
      v28 = [v29 newBackgroundContext];
      v30 = sub_22B36081C();
      [v28 setTransactionAuthor_];

      [v28 setMergePolicy_];
      [v28 setUndoManager_];
      [v28 setShouldRefreshAfterSave_];
      [v28 setStalenessInterval_];
      [v28 setShouldDeleteInaccessibleFaults_];

      v26 = 0;
    }

    v31 = v0[5];
    v32 = v26;
    v33 = v28;
    sub_22B3166B0(v31, v33, v25);
  }

  v34 = v0[12];
  v35 = v0[9];

  v36 = v0[1];

  return v36();
}

uint64_t sub_22B319204(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22B35DF1C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_22B36052C();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B319320, v1, 0);
}

uint64_t sub_22B319320()
{
  v42 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[9];
  v15 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  if (v11)
  {
    v40 = v0[10];
    v18 = swift_slowAlloc();
    v38 = v10;
    v19 = swift_slowAlloc();
    v41 = v19;
    *v18 = 136315138;
    sub_22B31AC0C(&qword_2814091D0, MEMORY[0x277CC95F0]);
    v20 = sub_22B36131C();
    v39 = v12;
    v22 = v21;
    (*(v16 + 8))(v14, v17);
    v23 = sub_22B1A7B20(v20, v22, &v41);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_22B116000, v9, v38, "Delete LoadSessionBlocks for site ID: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v13 + 8))(v39, v40);
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
  }

  v24 = v0[6];
  v25 = *(v24 + 120);
  if (v25)
  {
    v26 = *(v24 + 112);
    v27 = *(v24 + 120);

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v29 = sub_22B2A632C();
      v28 = [v29 newBackgroundContext];
      v30 = sub_22B36081C();
      [v28 setTransactionAuthor_];

      [v28 setMergePolicy_];
      [v28 setUndoManager_];
      [v28 setShouldRefreshAfterSave_];
      [v28 setStalenessInterval_];
      [v28 setShouldDeleteInaccessibleFaults_];

      v26 = 0;
    }

    v31 = v0[5];
    v32 = v26;
    v33 = v28;
    sub_22B316A30(v31, v33, v25);
  }

  v34 = v0[12];
  v35 = v0[9];

  v36 = v0[1];

  return v36();
}

uint64_t sub_22B3196F0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22B35DF1C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_22B36052C();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B31980C, v1, 0);
}

uint64_t sub_22B31980C()
{
  v42 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[9];
  v15 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  if (v11)
  {
    v40 = v0[10];
    v18 = swift_slowAlloc();
    v38 = v10;
    v19 = swift_slowAlloc();
    v41 = v19;
    *v18 = 136315138;
    sub_22B31AC0C(&qword_2814091D0, MEMORY[0x277CC95F0]);
    v20 = sub_22B36131C();
    v39 = v12;
    v22 = v21;
    (*(v16 + 8))(v14, v17);
    v23 = sub_22B1A7B20(v20, v22, &v41);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_22B116000, v9, v38, "Delete LoadSessionBlocks for home ID: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v13 + 8))(v39, v40);
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
  }

  v24 = v0[6];
  v25 = *(v24 + 120);
  if (v25)
  {
    v26 = *(v24 + 112);
    v27 = *(v24 + 120);

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v29 = sub_22B2A632C();
      v28 = [v29 newBackgroundContext];
      v30 = sub_22B36081C();
      [v28 setTransactionAuthor_];

      [v28 setMergePolicy_];
      [v28 setUndoManager_];
      [v28 setShouldRefreshAfterSave_];
      [v28 setStalenessInterval_];
      [v28 setShouldDeleteInaccessibleFaults_];

      v26 = 0;
    }

    v31 = v0[5];
    v32 = v26;
    v33 = v28;
    sub_22B316DB0(v31, v33, v25);
  }

  v34 = v0[12];
  v35 = v0[9];

  v36 = v0[1];

  return v36();
}

uint64_t sub_22B319BDC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22B35DE9C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = sub_22B35DF1C();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v10 = sub_22B36052C();
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B319D58, v2, 0);
}

uint64_t sub_22B319D58()
{
  v56 = v0;
  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v51 = v0[8];
  loga = v0[10];
  v8 = v0[5];
  v49 = v0[6];
  v9 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v9, v3);
  (*(v6 + 16))(v4, v8, v5);
  (*(v7 + 16))(loga, v49, v51);
  v10 = sub_22B36050C();
  v52 = sub_22B360D2C();
  log = v10;
  v11 = os_log_type_enabled(v10, v52);
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[12];
  v18 = v0[9];
  v19 = v0[10];
  v20 = v0[8];
  if (v11)
  {
    v50 = v0[16];
    v21 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v55 = v48;
    *v21 = 136315394;
    sub_22B31AC0C(&qword_2814091D0, MEMORY[0x277CC95F0]);
    v46 = v12;
    v47 = v15;
    v22 = sub_22B36131C();
    v24 = v23;
    (*(v17 + 8))(v14, v16);
    v25 = sub_22B1A7B20(v22, v24, &v55);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    sub_22B31AC0C(&qword_28140B488, MEMORY[0x277CC9578]);
    v26 = sub_22B36131C();
    v28 = v27;
    (*(v18 + 8))(v19, v20);
    v29 = sub_22B1A7B20(v26, v28, &v55);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_22B116000, log, v52, "Delete LoadSessionBlocks for home ID: %s with session ends before: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v48, -1, -1);
    MEMORY[0x23188F650](v21, -1, -1);

    (*(v46 + 8))(v50, v47);
  }

  else
  {

    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v14, v16);
    (*(v12 + 8))(v13, v15);
  }

  v30 = v0[7];
  v31 = *(v30 + 120);
  if (v31)
  {
    v32 = *(v30 + 112);
    v33 = *(v30 + 120);

    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v35 = sub_22B2A632C();
      v34 = [v35 newBackgroundContext];
      v36 = sub_22B36081C();
      [v34 setTransactionAuthor_];

      [v34 setMergePolicy_];
      [v34 setUndoManager_];
      [v34 setShouldRefreshAfterSave_];
      [v34 setStalenessInterval_];
      [v34 setShouldDeleteInaccessibleFaults_];
    }

    v38 = v0[5];
    v37 = v0[6];
    v39 = v32;
    v40 = v34;
    sub_22B317130(v38, v37, v40, v31);
  }

  v41 = v0[16];
  v42 = v0[13];
  v43 = v0[10];

  v44 = v0[1];

  return v44();
}

uint64_t sub_22B31A234(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_22B35DE9C();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = sub_22B36052C();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B31A350, v1, 0);
}

uint64_t sub_22B31A350()
{
  v43 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v8 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[10];
  v15 = v0[11];
  v17 = v0[8];
  v16 = v0[9];
  if (v11)
  {
    v41 = v0[11];
    v18 = swift_slowAlloc();
    v39 = v10;
    v19 = swift_slowAlloc();
    v42 = v19;
    *v18 = 136315138;
    sub_22B31AC0C(&qword_28140B488, MEMORY[0x277CC9578]);
    v20 = sub_22B36131C();
    v40 = v12;
    v22 = v21;
    (*(v16 + 8))(v14, v17);
    v23 = sub_22B1A7B20(v20, v22, &v42);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_22B116000, v9, v39, "Fetch session IDs starting after: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v13 + 8))(v40, v41);
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
  }

  v24 = v0[7];
  if (*(v24 + 120))
  {
    v25 = *(v24 + 112);
    v26 = *(v24 + 120);

    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v29 = sub_22B2A632C();
      v27 = [v29 newBackgroundContext];
      v30 = sub_22B36081C();
      [v27 setTransactionAuthor_];

      [v27 setMergePolicy_];
      [v27 setUndoManager_];
      [v27 setShouldRefreshAfterSave_];
      [v27 setStalenessInterval_];
      [v27 setShouldDeleteInaccessibleFaults_];

      v25 = 0;
    }

    v31 = v0[6];
    v32 = swift_task_alloc();
    *(v32 + 16) = v31;
    *(v32 + 24) = v27;
    v33 = v25;
    v34 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE30, &qword_22B367148);
    sub_22B360E7C();

    v28 = v0[5];
  }

  else
  {
    v28 = MEMORY[0x277D84FA0];
  }

  v35 = v0[13];
  v36 = v0[10];

  v37 = v0[1];

  return v37(v28);
}

void *sub_22B31A7BC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_22B31A7DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22B31A80C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23188E590](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22B32DF50(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22B31A904(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22B36109C())
  {
    v12 = sub_22B128014(0, a2, a3);
    v13 = sub_22B250330(a4, a2, a3);
    result = MEMORY[0x23188E590](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x23188EAC0](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_22B36109C();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22B31AA70(uint64_t a1)
{
  v2 = sub_22B35DF1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_22B31AC0C(&unk_27D8BA320, MEMORY[0x277CC95F0]);
  result = MEMORY[0x23188E590](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_22B32E628(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_22B31AC0C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22B31AC54()
{
  v1 = *(sub_22B35DF1C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_22B35DE9C() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_22B317450(v0 + v2, v0 + v5, v7, v8);
}

void sub_22B31AD58(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_22B36081C();
  v16 = [v4 initWithEntityName_];

  [v16 setPredicate_];
  [v16 setResultType_];
  [v16 setFetchBatchSize_];
  while (1)
  {
    [v16 setFetchOffset_];
    [v16 setFetchLimit_];
    sub_22B35F67C();
    v7 = sub_22B360E9C();
    v8 = v7;
    v9 = v7 >> 62;
    if (v7 >> 62)
    {
      break;
    }

    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_6:
    v11 = MEMORY[0x23188EEB0]();
    if (v10 < 1)
    {
      __break(1u);
      return;
    }

    v12 = v11;
    for (i = 0; i != v10; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x23188EAC0](i, v8);
      }

      else
      {
        v14 = *(v8 + 8 * i + 32);
      }

      v15 = v14;
      [a2 deleteObject_];
    }

    objc_autoreleasePoolPop(v12);
    sub_22B2A534C(2);
    if (v9)
    {
      v6 = sub_22B36109C();
    }

    else
    {
      v6 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    [a2 reset];
    if (v6 <= 99)
    {
      goto LABEL_16;
    }
  }

  v10 = sub_22B36109C();
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_15:

LABEL_16:
  [a2 reset];
}

uint64_t sub_22B31B024(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v2 + v5);
  v7 = *(v2 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a2(v2 + v4, v6, v7);
}

unint64_t HomeEnergyError.description.getter()
{
  result = 0x206E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 7:
    case 0xE:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0x6C706D6920746F4ELL;
      break;
    case 9:
      result = 0x69746E6520746F4ELL;
      break;
    case 0xA:
      result = 0x746F6E2065746953;
      break;
    case 0xB:
      result = 0x6E6F697461636F4CLL;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    case 0xD:
      result = 0x74694B64756F6C43;
      break;
    case 0xF:
      result = 0xD000000000000023;
      break;
    case 0x10:
    case 0x15:
      result = 0xD00000000000001BLL;
      break;
    case 0x11:
    case 0x1E:
      result = 0xD00000000000001CLL;
      break;
    case 0x12:
      result = 0xD000000000000018;
      break;
    case 0x13:
      result = 0xD000000000000018;
      break;
    case 0x14:
      result = 0xD000000000000013;
      break;
    case 0x16:
      result = 0x20656E6F5A204B43;
      break;
    case 0x17:
      result = 0xD00000000000001ALL;
      break;
    case 0x18:
      result = 0xD00000000000002ALL;
      break;
    case 0x19:
      result = 0xD00000000000001DLL;
      break;
    case 0x1A:
      result = 0xD000000000000029;
      break;
    case 0x1B:
      result = 0xD000000000000010;
      break;
    case 0x1C:
      result = 0x6920444965746953;
      break;
    case 0x1D:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

HomeEnergyDaemon::HomeEnergyError_optional __swiftcall HomeEnergyError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 13;
  switch(rawValue)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v2 = 1;
      goto LABEL_25;
    case 2:
      v2 = 2;
      goto LABEL_25;
    case 3:
      v2 = 3;
      goto LABEL_25;
    case 4:
      v2 = 4;
      goto LABEL_25;
    case 5:
      v2 = 5;
      goto LABEL_25;
    case 6:
      v2 = 6;
      goto LABEL_25;
    case 7:
      v2 = 7;
      goto LABEL_25;
    case 8:
      v2 = 8;
      goto LABEL_25;
    case 9:
      v2 = 9;
      goto LABEL_25;
    case 10:
      v2 = 10;
      goto LABEL_25;
    case 11:
      v2 = 11;
      goto LABEL_25;
    case 12:
      v2 = 12;
LABEL_25:
      v3 = v2;
      goto LABEL_26;
    case 13:
LABEL_26:
      *v1 = v3;
      break;
    case 14:
      *v1 = 14;
      break;
    case 15:
      *v1 = 15;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    case 20:
      *v1 = 20;
      break;
    case 21:
      *v1 = 21;
      break;
    case 22:
      *v1 = 22;
      break;
    case 23:
      *v1 = 23;
      break;
    case 24:
      *v1 = 24;
      break;
    case 25:
      *v1 = 25;
      break;
    case 26:
      *v1 = 26;
      break;
    case 27:
      *v1 = 27;
      break;
    case 28:
      *v1 = 28;
      break;
    case 29:
      *v1 = 29;
      break;
    case 30:
      *v1 = 30;
      break;
    default:
      *v1 = 31;
      break;
  }

  return rawValue;
}

unint64_t sub_22B31B684()
{
  result = qword_27D8BAE38;
  if (!qword_27D8BAE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BAE38);
  }

  return result;
}

uint64_t sub_22B31B6D8()
{
  v1 = *v0;
  sub_22B36149C();
  MEMORY[0x23188EDD0](v1);
  return sub_22B3614DC();
}

uint64_t sub_22B31B74C()
{
  v1 = *v0;
  sub_22B36149C();
  MEMORY[0x23188EDD0](v1);
  return sub_22B3614DC();
}

uint64_t sub_22B31B7A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B31B958();
  v5 = sub_22B123628();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for HomeEnergyError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeEnergyError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B31B958()
{
  result = qword_281408E28[0];
  if (!qword_281408E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281408E28);
  }

  return result;
}

void sub_22B31B9AC(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, NSObject *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v163 = a6;
  v170 = a5;
  v10 = sub_22B36052C();
  v168 = *(v10 - 8);
  v169 = v10;
  v11 = *(v168 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v157 = v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v166 = v152 - v15;
  MEMORY[0x28223BE20](v14);
  v156 = v152 - v16;
  v159 = sub_22B35DE9C();
  v161 = *(v159 - 8);
  v17 = *(v161 + 64);
  v18 = MEMORY[0x28223BE20](v159);
  v20 = v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v158 = v152 - v21;
  v22 = sub_22B35D8BC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v160 = v152 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v167 = v152 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v155 = v152 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = v152 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = v152 - v36;
  v164 = a4;
  MEMORY[0x23188BC90](v35);
  v165 = v23;
  v38 = *(v23 + 56);
  v173 = v22;
  v39 = v38(v37, 0, 1, v22);
  v40 = MEMORY[0x23188EEB0](v39);
  v154 = a2;
  v41 = v162;
  sub_22B31EB78(a2, a3, 2, v37, 1, a1, v171);
  v162 = v41;
  if (v41)
  {
    objc_autoreleasePoolPop(v40);
    __break(1u);
  }

  else
  {
    objc_autoreleasePoolPop(v40);
    sub_22B123284(v37, &qword_27D8BA3E8, &unk_22B364790);
    if (v171[0] >> 62)
    {
      v42 = sub_22B36109C();
    }

    else
    {
      v42 = *((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v43 = v165;
    v44 = v166;
    v45 = v167;

    if (v42)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v47 = v169;
      v48 = __swift_project_value_buffer(v169, qword_28140BD10);
      swift_beginAccess();
      v49 = v168;
      (*(v168 + 16))(v44, v48, v47);
      v50 = *(v43 + 16);
      v51 = v45;
      v52 = v170;
      v53 = v173;
      v50(v51, v170, v173);
      v54 = v160;
      v50(v160, v52, v53);
      v55 = sub_22B36050C();
      v56 = sub_22B360D2C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v157 = v57;
        v170 = swift_slowAlloc();
        v172[0] = v170;
        *v57 = 136315394;
        v58 = v158;
        LODWORD(v165) = v56;
        v59 = v167;
        sub_22B35D89C();
        v156 = sub_22B321D18(&qword_28140B488, MEMORY[0x277CC9578]);
        v60 = v161;
        v61 = v159;
        v62 = sub_22B36131C();
        v64 = v63;
        v161 = *(v60 + 8);
        (v161)(v58, v61);
        v164 = v55;
        v65 = *(v43 + 8);
        v65(v59, v53);
        v66 = sub_22B1A7B20(v62, v64, v172);

        v67 = v157;
        *(v157 + 4) = v66;
        *(v67 + 6) = 2080;
        v68 = v160;
        sub_22B35D86C();
        v69 = sub_22B36131C();
        v71 = v70;
        (v161)(v58, v61);
        v72 = v163;
        v65(v68, v173);
        v73 = sub_22B1A7B20(v69, v71, v172);

        *(v67 + 14) = v73;
        v74 = v164;
        _os_log_impl(&dword_22B116000, v164, v165, "historical guidance already exists in cache for interval: %s %s", v67, 0x16u);
        v75 = v170;
        swift_arrayDestroy();
        MEMORY[0x23188F650](v75, -1, -1);
        MEMORY[0x23188F650](v67, -1, -1);

        (*(v168 + 8))(v166, v169);
        v76 = 1;
      }

      else
      {

        v107 = *(v43 + 8);
        v107(v54, v53);
        v107(v167, v53);
        (*(v49 + 8))(v44, v47);
        v76 = 1;
        v72 = v163;
      }
    }

    else
    {
      v152[1] = a3;
      v153 = a1;
      MEMORY[0x23188BC90](v46);
      v77 = v158;
      sub_22B35D89C();
      v78 = v20;
      v80 = v43 + 8;
      v79 = *(v43 + 8);
      v79(v32, v173);
      sub_22B35D89C();
      v166 = sub_22B321D18(&qword_28140B490, MEMORY[0x277CC9578]);
      v81 = v159;
      LODWORD(v167) = sub_22B36074C();
      v83 = v161 + 8;
      v82 = *(v161 + 8);
      v82(v78, v81);
      v84 = (v82)(v77, v81);
      MEMORY[0x23188BC90](v84);
      sub_22B35D86C();
      v160 = v79;
      v161 = v80;
      v79(v32, v173);
      sub_22B35D86C();
      v85 = sub_22B36074C();
      v82(v78, v81);
      v86 = v81;
      v87 = v83;
      v166 = v82;
      v82(v77, v86);
      v88 = v85 | v167;
      v89 = v169;
      v90 = v157;
      if ((v85 | v167))
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v91 = __swift_project_value_buffer(v89, qword_28140BD10);
        swift_beginAccess();
        v92 = v156;
        (*(v168 + 16))(v156, v91, v89);
        v93 = v155;
        v94 = v173;
        (*(v165 + 16))(v155, v170, v173);
        v95 = sub_22B36050C();
        v96 = sub_22B360D2C();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          LODWORD(v167) = v88;
          v98 = v97;
          v99 = swift_slowAlloc();
          v171[0] = v99;
          *v98 = 136315138;
          sub_22B321D18(&qword_2814091E0, MEMORY[0x277CC88A8]);
          v100 = sub_22B36131C();
          v101 = v94;
          v103 = v102;
          (v160)(v93, v101);
          v104 = sub_22B1A7B20(v100, v103, v171);

          *(v98 + 4) = v104;
          _os_log_impl(&dword_22B116000, v95, v96, "historical guidance with interval %s is partial", v98, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v99);
          v105 = v99;
          v89 = v169;
          MEMORY[0x23188F650](v105, -1, -1);
          v106 = v98;
          v88 = v167;
          MEMORY[0x23188F650](v106, -1, -1);
        }

        else
        {

          (v160)(v93, v94);
        }

        (*(v168 + 8))(v92, v89);
        v90 = v157;
      }

      v108 = sub_22B35D82C();
      v109 = *(v108 + 48);
      v110 = *(v108 + 52);
      swift_allocObject();
      sub_22B35D81C();
      sub_22B35E37C();
      sub_22B321D18(&qword_281409190, MEMORY[0x277D17FC8]);
      v111 = v162;
      v112 = sub_22B35D80C();
      v114 = v153;
      if (v111)
      {

        v72 = v163;
        v115 = v168;
        v138 = [objc_opt_self() processInfo];
        v139 = [v138 processName];

        v140 = sub_22B36084C();
        v142 = v141;

        LOWORD(v171[0]) = 513;
        BYTE2(v171[0]) = 5;
        v171[1] = v140;
        v171[2] = v142;
        v171[3] = 0;
        static AutoBugCaptureManager.sendIssue(_:)(v171);

        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v143 = __swift_project_value_buffer(v89, qword_28140BD10);
        swift_beginAccess();
        (*(v115 + 16))(v90, v143, v89);
        v144 = v111;
        v145 = sub_22B36050C();
        v146 = sub_22B360D1C();

        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          *v147 = 138543362;
          v149 = v111;
          v150 = _swift_stdlib_bridgeErrorToNSError();
          *(v147 + 4) = v150;
          *v148 = v150;
          _os_log_impl(&dword_22B116000, v145, v146, "Error preparing historical guidance data for inserting into cache. %{public}@", v147, 0xCu);
          sub_22B123284(v148, &unk_27D8BAA90, &unk_22B362BC0);
          v151 = v148;
          v89 = v169;
          MEMORY[0x23188F650](v151, -1, -1);
          MEMORY[0x23188F650](v147, -1, -1);
        }

        else
        {
        }

        (*(v115 + 8))(v90, v89);
        v76 = 0;
      }

      else
      {
        v116 = v112;
        v117 = v113;

        v118 = objc_opt_self();
        v119 = sub_22B36081C();
        v161 = v87;
        v120 = v119;
        v121 = [v118 insertNewObjectForEntityForName:v119 inManagedObjectContext:*(v114 + 48)];

        v122 = sub_22B36081C();
        v123 = sub_22B36081C();
        [v121 setValue:v122 forKeyPath:v123];

        v165 = v116;
        v173 = v117;
        v124 = sub_22B35DCCC();
        v125 = sub_22B36081C();
        [v121 &off_2786FB278];

        v126 = v158;
        sub_22B35D89C();
        v127 = sub_22B35DDDC();
        v128 = v159;
        LODWORD(v167) = v88;
        v129 = v166;
        (v166)(v126, v159);
        v130 = sub_22B36081C();
        [v121 setValue:v127 forKeyPath:v130];

        sub_22B35D86C();
        v131 = sub_22B35DDDC();
        (v129)(v126, v128);
        v132 = sub_22B36081C();
        [v121 setValue:v131 forKeyPath:v132];

        v133 = sub_22B360ABC();
        v134 = sub_22B36081C();
        [v121 setValue:v133 forKeyPath:v134];

        v135 = sub_22B36144C();
        v136 = sub_22B36081C();
        [v121 setValue:v135 forKeyPath:v136];

        v137 = *(v153 + 48);
        sub_22B2A534C(2);
        v72 = v163;
        sub_22B12F174(v165, v173);

        v76 = 1;
      }
    }

    *v72 = v76;
  }
}

void sub_22B31CA2C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v77 = a1;
  v78 = a4;
  v76 = a5;
  v7 = sub_22B36052C();
  v73 = *(v7 - 8);
  v74 = v7;
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v7);
  v81 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22B35DE9C();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v70 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v67 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v67 - v18;
  v20 = sub_22B35D8BC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v79 = v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v25 = sub_22B36081C();
  v26 = [v24 initWithEntityName_];

  v83 = MEMORY[0x277D84F90];
  v82 = v26;
  [v26 setResultType_];
  v27 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_22B3634B0;
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = sub_22B1280E4();
  *(v28 + 32) = v77;
  *(v28 + 40) = a2;

  v77 = v27;
  v29 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22B360A7C();
  }

  v75 = v29;
  sub_22B360A9C();
  sub_22B170BE0(a3, v19, &qword_27D8BA3E8, &unk_22B364790);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_22B123284(v19, &qword_27D8BA3E8, &unk_22B364790);
    v30 = v82;
    v31 = v80;
    v32 = v78;
  }

  else
  {
    v33 = *(v21 + 32);
    v69 = v20;
    v33(v79, v19, v20);
    v67[1] = "historicalGuidance";
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_22B3634C0;
    sub_22B35D89C();
    v35 = sub_22B35DDDC();
    v36 = v72;
    v68 = v21;
    v37 = *(v71 + 8);
    v37(v15, v72);
    v38 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
    *(v34 + 56) = v38;
    v39 = sub_22B1D7CDC();
    *(v34 + 64) = v39;
    *(v34 + 32) = v35;
    v40 = v70;
    sub_22B35D86C();
    v41 = sub_22B35DDDC();
    v37(v40, v36);
    *(v34 + 96) = v38;
    *(v34 + 104) = v39;
    *(v34 + 72) = v41;
    v42 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v63 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22B360A7C();
    }

    sub_22B360A9C();

    (*(v68 + 8))(v79, v69);
    v30 = v82;
    v31 = v80;
    v32 = v78;
  }

  v43 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v44 = sub_22B360A3C();

  v45 = [v43 initWithType:1 subpredicates:v44];

  [v30 setPredicate_];
  v46 = *(v32 + 48);
  sub_22B35FDAC();
  v47 = v46;
  v48 = sub_22B360E9C();
  v49 = v81;
  if (v31)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v50 = v74;
    v51 = __swift_project_value_buffer(v74, qword_28140BD10);
    swift_beginAccess();
    v52 = v73;
    (*(v73 + 16))(v49, v51, v50);
    v53 = sub_22B36050C();
    v54 = sub_22B360D1C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_22B116000, v53, v54, "Error deleting entry from cache.", v55, 2u);
      MEMORY[0x23188F650](v55, -1, -1);
    }

    else
    {
    }

    (*(v52 + 8))(v49, v50);
    v61 = 0;
    v62 = v76;
    goto LABEL_25;
  }

  v56 = v48;

  if (!(v56 >> 62))
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57)
    {
      goto LABEL_15;
    }

LABEL_24:

    v64 = *(v32 + 48);
    sub_22B2A534C(2);
    v65 = v75;
    v62 = v76;
    v66 = v82;

    v61 = 1;
LABEL_25:
    *v62 = v61;
    return;
  }

  v57 = sub_22B36109C();
  if (!v57)
  {
    goto LABEL_24;
  }

LABEL_15:
  if (v57 >= 1)
  {
    for (i = 0; i != v57; ++i)
    {
      if ((v56 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x23188EAC0](i, v56);
      }

      else
      {
        v59 = *(v56 + 8 * i + 32);
      }

      v60 = v59;
      [*(v32 + 48) deleteObject_];
    }

    goto LABEL_24;
  }

  __break(1u);
}

void sub_22B31D294(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v105 = a5;
  v114 = *MEMORY[0x277D85DE8];
  v98 = sub_22B35DE9C();
  v97 = *(v98 - 8);
  v10 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v96 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22B36052C();
  v101 = *(v12 - 8);
  v13 = *(v101 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v102 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v99 = &v93 - v16;
  v17 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v18 = sub_22B36081C();
  v106 = [v17 initWithEntityName_];

  v109 = MEMORY[0x277D84F90];
  if (a2)
  {
    sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_22B3634B0;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_22B1280E4();
    *(v19 + 32) = a1;
    *(v19 + 40) = a2;

    v20 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v92 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22B360A7C();
    }

    sub_22B360A9C();
  }

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v21 = swift_allocObject();
  v95 = xmmword_22B3634B0;
  *(v21 + 16) = xmmword_22B3634B0;
  v22 = sub_22B35DDDC();
  *(v21 + 56) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v21 + 64) = sub_22B1D7CDC();
  *(v21 + 32) = v22;
  v23 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v90 = v23;
    v91 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22B360A7C();
    v23 = v90;
  }

  sub_22B360A9C();
  v24 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v25 = sub_22B360A3C();
  v26 = [v24 initWithType:1 subpredicates:v25];

  v27 = v106;
  v104 = v26;
  [v106 setPredicate_];
  v28 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v28 setResultType_];
  v29 = *(a4 + 48);
  *&v112 = 0;
  v103 = v28;
  v30 = [v29 executeRequest:v28 error:&v112];
  if (v30)
  {
    v31 = v30;
    v102 = v5;
    v32 = v112;

    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      v34 = v33;
      if ([v33 result])
      {
        sub_22B36102C();
        swift_unknownObjectRelease();
      }

      else
      {
        v110 = 0u;
        v111 = 0u;
      }

      v112 = v110;
      v113 = v111;
      if (*(&v111 + 1))
      {
        v100 = v23;
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA858, &qword_22B365EF8);
        if (swift_dynamicCast())
        {
          v58 = v110;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA960, &qword_22B365F00);
          inited = swift_initStackObject();
          *(inited + 16) = v95;
          v60 = *MEMORY[0x277CBE150];
          *&v112 = sub_22B36084C();
          *(&v112 + 1) = v61;
          sub_22B36110C();
          *(inited + 96) = v57;
          *(inited + 72) = v58;
          sub_22B321BDC(inited);
          swift_setDeallocating();
          sub_22B123284(inited + 32, &unk_27D8BACC0, &unk_22B3662C0);
          v62 = objc_opt_self();
          v63 = sub_22B3606CC();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
          v64 = swift_allocObject();
          *(v64 + 16) = xmmword_22B363650;
          v65 = *(a4 + 48);
          *(v64 + 32) = v65;
          sub_22B128014(0, &qword_281408580, 0x277CBE440);
          v66 = v65;
          v67 = sub_22B360A3C();

          [v62 mergeChangesFromRemoteContextSave:v63 intoContexts:v67];

          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v68 = v12;
          v69 = __swift_project_value_buffer(v12, qword_28140BD10);
          swift_beginAccess();
          v70 = v101;
          v71 = *(v101 + 16);
          v72 = v99;
          *&v95 = v68;
          v71(v99, v69, v68);
          v73 = v97;
          v74 = v96;
          v75 = v98;
          (*(v97 + 16))(v96, a3, v98);
          v76 = sub_22B36050C();
          v77 = sub_22B360D2C();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v94 = v76;
            v79 = v78;
            v80 = v74;
            v93 = swift_slowAlloc();
            *&v110 = v93;
            *v79 = 136315138;
            sub_22B321D18(&qword_28140B488, MEMORY[0x277CC9578]);
            v81 = sub_22B36131C();
            v82 = v75;
            v84 = v83;
            (*(v73 + 8))(v80, v82);
            v85 = sub_22B1A7B20(v81, v84, &v110);

            *(v79 + 4) = v85;
            v86 = v77;
            v87 = v94;
            _os_log_impl(&dword_22B116000, v94, v86, "Sucessfully deleted data for Historical Guidance older than %s", v79, 0xCu);
            v88 = v93;
            __swift_destroy_boxed_opaque_existential_0(v93);
            MEMORY[0x23188F650](v88, -1, -1);
            MEMORY[0x23188F650](v79, -1, -1);

            (*(v70 + 8))(v99, v95);
          }

          else
          {

            (*(v73 + 8))(v74, v75);
            (*(v70 + 8))(v72, v95);
          }

          *v105 = 1;
          goto LABEL_29;
        }

LABEL_28:
        *v105 = 0;
        goto LABEL_29;
      }
    }

    else
    {

      v112 = 0u;
      v113 = 0u;
    }

    sub_22B123284(&v112, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_28;
  }

  v100 = v23;
  v35 = v112;
  v36 = sub_22B35DB9C();

  swift_willThrow();
  v108 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  sub_22B128014(0, &qword_281408530, 0x277CCA9B8);
  swift_dynamicCast();

  v37 = v107;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v12, qword_28140BD10);
  swift_beginAccess();
  v39 = v101;
  v40 = v102;
  (*(v101 + 16))(v102, v38, v12);
  v41 = v37;
  v42 = sub_22B36050C();
  v43 = sub_22B360D1C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v112 = v45;
    *v44 = 136446210;
    v46 = [v41 localizedDescription];
    v47 = sub_22B36084C();
    *&v95 = v12;
    v48 = v47;
    v50 = v49;

    v27 = v106;
    v51 = sub_22B1A7B20(v48, v50, &v112);

    *(v44 + 4) = v51;
    _os_log_impl(&dword_22B116000, v42, v43, "Failed to batch delete historical guidance data %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x23188F650](v45, -1, -1);
    MEMORY[0x23188F650](v44, -1, -1);

    (*(v39 + 8))(v102, v95);
  }

  else
  {

    (*(v39 + 8))(v40, v12);
  }

  v52 = [objc_opt_self() processInfo];
  v53 = [v52 processName];

  v54 = sub_22B36084C();
  v56 = v55;

  LOWORD(v112) = 513;
  BYTE2(v112) = 8;
  *(&v112 + 1) = v54;
  v113 = v56;
  static AutoBugCaptureManager.sendIssue(_:)(&v112);

  *v105 = 0;
LABEL_29:
  v89 = *MEMORY[0x277D85DE8];
}

unint64_t sub_22B31E04C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_22B35D8BC();
  v13 = (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v14 = MEMORY[0x23188EEB0](v13);
  sub_22B31EB78(a1, a2, 2, v11, 0, a3, &v25);
  objc_autoreleasePoolPop(v14);
  sub_22B123284(v11, &qword_27D8BA3E8, &unk_22B364790);
  v15 = v25;
  if (!(v25 >> 62))
  {
    v16 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_10:

    v22 = 1;
    goto LABEL_11;
  }

  v16 = sub_22B36109C();
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_3:
  v17 = __OFSUB__(v16, 1);
  result = v16 - 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v19 = MEMORY[0x23188EAC0](result, v15);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v15 + 8 * result + 32);
LABEL_8:
    v20 = v19;

    v21 = [v20 intervalEnd];

    sub_22B35DE5C();
    v22 = 0;
LABEL_11:
    v23 = sub_22B35DE9C();
    return (*(*(v23 - 8) + 56))(a4, v22, 1, v23);
  }

  __break(1u);
  return result;
}

void sub_22B31E274(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v34 = a4;
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35FDAC();
  v13 = sub_22B35FD9C();
  [v13 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22B3634B0;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_22B1280E4();
  v31 = a1;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  v15 = sub_22B360CCC();
  [v13 setPredicate_];
  v16 = *(a3 + 48);
  v17 = sub_22B360E8C();
  if (v4)
  {

    v18 = [objc_opt_self() processInfo];
    v19 = [v18 processName];

    v20 = sub_22B36084C();
    v22 = v21;

    v35 = 513;
    v36 = 10;
    v37 = v20;
    v38 = v22;
    v39 = 0;
    static AutoBugCaptureManager.sendIssue(_:)(&v35);

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v23 = v32;
    v24 = __swift_project_value_buffer(v32, qword_28140BD10);
    swift_beginAccess();
    v25 = v33;
    (*(v33 + 16))(v12, v24, v23);

    v26 = sub_22B36050C();
    v27 = sub_22B360D1C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v29;
      *v28 = 136380675;
      *(v28 + 4) = sub_22B1A7B20(v31, a2, &v40);
      _os_log_impl(&dword_22B116000, v26, v27, "Failed to fetch exact historical guidance cache entry for %{private}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x23188F650](v29, -1, -1);
      MEMORY[0x23188F650](v28, -1, -1);
    }

    (*(v25 + 8))(v12, v23);
    v30 = 0;
  }

  else
  {
    v30 = v17;
  }

  *v34 = v30;
}

void sub_22B31E654(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v55 = a3;
  v57 = a4;
  v6 = sub_22B36052C();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v48 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B35DE9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  v54 = sub_22B35FDAC();
  v53 = sub_22B35FD9C();
  [v53 setResultType_];
  v17 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  v51 = "intervalEnd <= %@";
  v52 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22B364620;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_22B1280E4();
  v46 = a1;
  v47 = a2;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;

  sub_22B35D89C();
  v19 = sub_22B35DDDC();
  v20 = *(v10 + 8);
  v20(v16, v9);
  v21 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v18 + 96) = v21;
  v22 = sub_22B1D7CDC();
  *(v18 + 104) = v22;
  *(v18 + 72) = v19;
  sub_22B35D86C();
  v23 = sub_22B35DDDC();
  v24 = v9;
  v25 = v53;
  v20(v14, v24);
  *(v18 + 136) = v21;
  *(v18 + 144) = v22;
  *(v18 + 112) = v23;
  v26 = sub_22B360CCC();
  [v25 setPredicate_];
  v27 = *(v55 + 48);
  v28 = v56;
  v29 = sub_22B360E8C();
  if (v28)
  {

    v30 = [objc_opt_self() processInfo];
    v31 = [v30 processName];

    v32 = sub_22B36084C();
    v34 = v33;

    v58 = 513;
    v59 = 10;
    v60 = v32;
    v61 = v34;
    v62 = 0;
    static AutoBugCaptureManager.sendIssue(_:)(&v58);

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v35 = v50;
    v36 = __swift_project_value_buffer(v50, qword_28140BD10);
    swift_beginAccess();
    v38 = v48;
    v37 = v49;
    (*(v49 + 16))(v48, v36, v35);
    v39 = v47;

    v40 = sub_22B36050C();
    v41 = sub_22B360D1C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v63 = v43;
      *v42 = 136380675;
      *(v42 + 4) = sub_22B1A7B20(v46, v39, &v63);
      _os_log_impl(&dword_22B116000, v40, v41, "Failed to fetch exact historical guidance cache entry for %{private}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x23188F650](v43, -1, -1);
      MEMORY[0x23188F650](v42, -1, -1);
    }

    (*(v37 + 8))(v38, v35);
    v44 = 0;
  }

  else
  {
    v45 = v29;

    v44 = v45 > 0;
  }

  *v57 = v44;
}

void sub_22B31EB78(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v136 = a6;
  LODWORD(v130) = a5;
  v133 = a4;
  v141 = a7;
  v10 = sub_22B36052C();
  v139 = *(v10 - 8);
  v140 = v10;
  v11 = *(v139 + 64);
  MEMORY[0x28223BE20](v10);
  v138 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_22B35DE9C();
  v129 = *(v132 - 8);
  v13 = *(v129 + 64);
  v14 = MEMORY[0x28223BE20](v132);
  v126 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v125 = &v118 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v124 = &v118 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v123 = &v118 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v122 = &v118 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v121 = &v118 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v120 = &v118 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v119 = &v118 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v128 = &v118 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v118 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v118 - v36;
  v38 = sub_22B35D8BC();
  v144 = *(v38 - 8);
  v145 = v38;
  v39 = *(v144 + 64);
  MEMORY[0x28223BE20](v38);
  v143 = &v118 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_22B35FDAC();
  v146 = sub_22B35FD9C();
  [v146 setResultType_];
  v147[0] = MEMORY[0x277D84F90];
  v41 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_22B3634B0;
  *(v42 + 56) = MEMORY[0x277D837D0];
  *(v42 + 64) = sub_22B1280E4();
  v127 = a1;
  *(v42 + 32) = a1;
  *(v42 + 40) = a2;
  v131 = a2;

  v142 = v41;
  v43 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  if (*((v147[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22B360A7C();
  }

  sub_22B360A9C();
  if (a3 == 2)
  {
    v44 = v146;
  }

  else
  {
    v44 = v146;
    if (a3)
    {
      v45 = sub_22B360CCC();
      MEMORY[0x23188E350]();
      if (*((v147[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v117 = *((v147[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22B360A7C();
        v44 = v146;
      }

      sub_22B360A9C();
    }
  }

  sub_22B170BE0(v133, v37, &qword_27D8BA3E8, &unk_22B364790);
  v46 = v144;
  v47 = v145;
  v48 = (*(v144 + 48))(v37, 1, v145);
  v134 = v43;
  if (v48 == 1)
  {
    sub_22B123284(v37, &qword_27D8BA3E8, &unk_22B364790);
    v50 = v139;
    v49 = v140;
    v51 = v138;
  }

  else
  {
    (*(v46 + 32))(v143, v37, v47);
    v52 = (v129 + 8);
    if (v130)
    {
      v130 = "intervalStart >= %@)";
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_22B3634C0;
      sub_22B35D89C();
      v54 = sub_22B35DDDC();
      v55 = *v52;
      v56 = v132;
      (*v52)(v33, v132);
      v57 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
      *(v53 + 56) = v57;
      v58 = sub_22B1D7CDC();
      *(v53 + 64) = v58;
      *(v53 + 32) = v54;
      v59 = v128;
      sub_22B35D86C();
      v60 = sub_22B35DDDC();
      v55(v59, v56);
      *(v53 + 96) = v57;
      *(v53 + 104) = v58;
      *(v53 + 72) = v60;
    }

    else
    {
      v130 = "historicalGuidanceCache";
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_22B365780;
      sub_22B35D89C();
      v62 = sub_22B35DDDC();
      v133 = v52;
      v63 = *v52;
      v64 = v132;
      (*v52)(v33, v132);
      v65 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
      *(v61 + 56) = v65;
      v66 = v65;
      v67 = sub_22B1D7CDC();
      *(v61 + 64) = v67;
      *(v61 + 32) = v62;
      v68 = v128;
      sub_22B35D89C();
      v69 = sub_22B35DDDC();
      v70 = v64;
      v63(v68, v64);
      v71 = v63;
      *(v61 + 96) = v66;
      *(v61 + 104) = v67;
      *(v61 + 72) = v69;
      v72 = v119;
      sub_22B35D86C();
      v73 = sub_22B35DDDC();
      v71(v72, v70);
      *(v61 + 136) = v66;
      *(v61 + 144) = v67;
      *(v61 + 112) = v73;
      v74 = v120;
      sub_22B35D89C();
      v75 = sub_22B35DDDC();
      v76 = v132;
      v71(v74, v132);
      *(v61 + 176) = v66;
      *(v61 + 184) = v67;
      *(v61 + 152) = v75;
      v77 = v121;
      sub_22B35D86C();
      v78 = sub_22B35DDDC();
      v71(v77, v76);
      *(v61 + 216) = v66;
      *(v61 + 224) = v67;
      v129 = v67;
      *(v61 + 192) = v78;
      v79 = v122;
      sub_22B35D89C();
      v80 = sub_22B35DDDC();
      v71(v79, v76);
      *(v61 + 256) = v66;
      *(v61 + 264) = v67;
      *(v61 + 232) = v80;
      v81 = v123;
      sub_22B35D86C();
      v82 = sub_22B35DDDC();
      v71(v81, v76);
      v83 = v129;
      *(v61 + 296) = v66;
      *(v61 + 304) = v83;
      *(v61 + 272) = v82;
      v84 = v124;
      sub_22B35D86C();
      v85 = sub_22B35DDDC();
      v71(v84, v76);
      *(v61 + 336) = v66;
      *(v61 + 344) = v83;
      *(v61 + 312) = v85;
      v86 = v125;
      sub_22B35D86C();
      v87 = sub_22B35DDDC();
      v71(v86, v76);
      *(v61 + 376) = v66;
      *(v61 + 384) = v83;
      *(v61 + 352) = v87;
      v88 = v126;
      sub_22B35D89C();
      v89 = sub_22B35DDDC();
      v71(v88, v76);
      *(v61 + 416) = v66;
      *(v61 + 424) = v83;
      *(v61 + 392) = v89;
    }

    v90 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    v44 = v146;
    v50 = v139;
    v49 = v140;
    v51 = v138;
    v91 = v144;
    if (*((v147[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v116 = *((v147[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22B360A7C();
    }

    sub_22B360A9C();

    (*(v91 + 8))(v143, v145);
  }

  v92 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v93 = sub_22B360A3C();

  v94 = [v92 initWithType:1 subpredicates:v93];

  [v44 setPredicate_];
  v95 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v96 = sub_22B36081C();
  v97 = [v95 initWithKey:v96 ascending:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_22B363650;
  *(v98 + 32) = v97;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v99 = v97;
  v100 = sub_22B360A3C();

  [v44 setSortDescriptors_];

  v101 = *(v136 + 48);
  v102 = v137;
  v103 = sub_22B360E9C();
  if (v102)
  {

    v104 = [objc_opt_self() processInfo];
    v105 = [v104 processName];

    v106 = sub_22B36084C();
    v108 = v107;

    LOWORD(v147[0]) = 513;
    BYTE2(v147[0]) = 10;
    v147[1] = v106;
    v147[2] = v108;
    v147[3] = 0;
    static AutoBugCaptureManager.sendIssue(_:)(v147);

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v109 = __swift_project_value_buffer(v49, qword_28140BD10);
    swift_beginAccess();
    (*(v50 + 16))(v51, v109, v49);
    v110 = v131;

    v111 = sub_22B36050C();
    v112 = sub_22B360D1C();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v148 = v114;
      *v113 = 136380675;
      *(v113 + 4) = sub_22B1A7B20(v127, v110, &v148);
      _os_log_impl(&dword_22B116000, v111, v112, "Failed to fetch historical guidance cache entry for %{private}s", v113, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v114);
      MEMORY[0x23188F650](v114, -1, -1);
      MEMORY[0x23188F650](v113, -1, -1);
    }

    (*(v50 + 8))(v51, v49);
    *v141 = MEMORY[0x277D84F90];
  }

  else
  {
    v115 = v103;

    *v141 = v115;
  }
}

uint64_t sub_22B31F998()
{
  type metadata accessor for HistoricalGuidanceCacheManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  if (qword_28140AD60 != -1)
  {
    swift_once();
  }

  v1 = sub_22B33AD90(0xD000000000000010, 0x800000022B368B50, 0x6361436C61636F4CLL, 0xEA00000000006568);
  v2 = *(v0 + 112);
  *(v0 + 112) = v1;

  qword_28140BC30 = v0;
  return result;
}

uint64_t sub_22B31FA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_22B36052C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_28140BD10);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_22B36050C();
  v17 = sub_22B360D2C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30[0] = v5;
    v19 = a1;
    v20 = a2;
    v21 = a3;
    v22 = a4;
    v23 = v18;
    *v18 = 0;
    _os_log_impl(&dword_22B116000, v16, v17, "Add historical guidance to cache", v18, 2u);
    v24 = v23;
    a4 = v22;
    a3 = v21;
    a2 = v20;
    a1 = v19;
    v5 = v30[0];
    MEMORY[0x23188F650](v24, -1, -1);
  }

  v25 = (*(v11 + 8))(v14, v10);
  v26 = *(v5 + 112);
  if (!v26)
  {
    return 0;
  }

  v27 = *(v26 + 48);
  MEMORY[0x28223BE20](v25);
  v30[-6] = v26;
  v30[-5] = a1;
  v30[-4] = a2;
  v30[-3] = a3;
  v30[-2] = a4;

  v28 = v27;
  sub_22B360E7C();

  return v31;
}

void sub_22B31FCDC(uint64_t a1@<X0>, NSObject *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, char *a6@<X8>)
{
  v13 = MEMORY[0x23188EEB0]();
  sub_22B31B9AC(a1, a4, a5, a2, a3, &v15);
  objc_autoreleasePoolPop(v13);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v14 = v15;
    [*(a1 + 48) refreshAllObjects];
    *a6 = v14;
  }
}

uint64_t sub_22B31FD94(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a1;
  v7 = sub_22B35D8BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22B36052C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_28140BD10);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = *(v8 + 16);
  v43 = a3;
  v18(v11, a3, v7);

  v19 = sub_22B36050C();
  v20 = v12;
  v21 = sub_22B360D2C();

  v22 = os_log_type_enabled(v19, v21);
  v42 = a2;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v41 = v4;
    v24 = v23;
    v40 = swift_slowAlloc();
    v45[0] = v40;
    *v24 = 136380931;
    *(v24 + 4) = sub_22B1A7B20(v44, a2, v45);
    *(v24 + 12) = 2080;
    sub_22B321D18(&qword_2814091E0, MEMORY[0x277CC88A8]);
    v39 = v20;
    v25 = sub_22B36131C();
    v27 = v26;
    (*(v8 + 8))(v11, v7);
    v28 = sub_22B1A7B20(v25, v27, v45);

    *(v24 + 14) = v28;
    _os_log_impl(&dword_22B116000, v19, v21, "check if cache has exact data for %{private}s interval: %s", v24, 0x16u);
    v29 = v40;
    swift_arrayDestroy();
    MEMORY[0x23188F650](v29, -1, -1);
    v30 = v24;
    v4 = v41;
    MEMORY[0x23188F650](v30, -1, -1);

    v31 = (*(v13 + 8))(v16, v39);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    v31 = (*(v13 + 8))(v16, v20);
  }

  v32 = *(v4 + 112);
  if (!v32)
  {
    return 0;
  }

  v33 = *(v32 + 48);
  MEMORY[0x28223BE20](v31);
  v34 = v44;
  *(&v38 - 4) = v32;
  *(&v38 - 3) = v34;
  v35 = v43;
  *(&v38 - 2) = v42;
  *(&v38 - 1) = v35;

  v36 = v33;
  sub_22B360E7C();

  return LOBYTE(v45[0]);
}

void sub_22B3201CC(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, char a6@<W5>, size_t *a7@<X6>, size_t *a8@<X8>)
{
  v67 = a7;
  LODWORD(v63) = a5;
  v61 = a8;
  v62 = sub_22B36052C();
  v59 = *(v62 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x28223BE20](v62);
  v58 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22B35DE9C();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v65 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v66 = sub_22B35D8BC();
  v19 = *(v66 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v66);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x23188EEB0](v21);
  v56 = a2;
  v57 = a3;
  v25 = v64;
  sub_22B31EB78(a2, a3, a6, a4, v63, a1, v68);
  if (!v25)
  {
    objc_autoreleasePoolPop(v24);
    v26 = v68[0];
    v60 = a1;
    if (v68[0] >> 62)
    {
      v43 = v68[0];
      v27 = sub_22B36109C();
      v26 = v43;
      if (v27)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v27 = *((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
LABEL_4:
        if (v27 >= 1)
        {
          v59 = 0;
          v28 = 0;
          v62 = v19 + 32;
          v63 = v26 & 0xC000000000000001;
          v64 = v26;
          do
          {
            v29 = v27;
            if (v63)
            {
              v30 = MEMORY[0x23188EAC0](v28);
            }

            else
            {
              v30 = *(v26 + 8 * v28 + 32);
            }

            v31 = v30;
            v32 = [v30 intervalStart];
            sub_22B35DE5C();

            v33 = [v31 intervalEnd];
            sub_22B35DE5C();

            sub_22B35D88C();
            v34 = v67;
            v35 = *v67;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v34 = v35;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v35 = sub_22B32DAA0(0, v35[2] + 1, 1, v35);
              *v67 = v35;
            }

            v38 = v35[2];
            v37 = v35[3];
            if (v38 >= v37 >> 1)
            {
              v41 = sub_22B32DAA0(v37 > 1, v38 + 1, 1, v35);
              *v67 = v41;
            }

            ++v28;

            v39 = v66;
            v40 = *v67;
            *(v40 + 16) = v38 + 1;
            (*(v19 + 32))(v40 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v38, v23, v39);
            v27 = v29;
            v26 = v64;
          }

          while (v29 != v28);

          v42 = v61;
LABEL_20:
          [*(v60 + 48) refreshAllObjects];
          *v42 = *v67;

          return;
        }

        __break(1u);
        goto LABEL_22;
      }
    }

    if (qword_28140A0C8 == -1)
    {
LABEL_17:
      v44 = v62;
      v45 = __swift_project_value_buffer(v62, qword_28140BD10);
      swift_beginAccess();
      v47 = v58;
      v46 = v59;
      (*(v59 + 16))(v58, v45, v44);
      v48 = v57;

      v49 = sub_22B36050C();
      v50 = sub_22B360D2C();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = v48;
        v54 = v52;
        v69 = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_22B1A7B20(v56, v53, &v69);
        _os_log_impl(&dword_22B116000, v49, v50, "empty results for %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x23188F650](v54, -1, -1);
        MEMORY[0x23188F650](v51, -1, -1);
      }

      (*(v46 + 8))(v47, v44);
      v42 = v61;
      goto LABEL_20;
    }

LABEL_22:
    swift_once();
    goto LABEL_17;
  }

  objc_autoreleasePoolPop(v24);
  __break(1u);
}

void sub_22B320734(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, char a6@<W5>, char **a7@<X6>, char **a8@<X8>)
{
  v57 = a8;
  v16 = sub_22B36052C();
  v58 = *(v16 - 8);
  v59 = v16;
  v17 = *(v58 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v55 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x23188EEB0](v18);
  v54 = a2;
  v21 = a2;
  v22 = a3;
  v56 = a1;
  sub_22B31EB78(v21, a3, a6, a4, a5, a1, v60);
  if (!v8)
  {
    objc_autoreleasePoolPop(v20);
    v23 = v60[0];
    if (v60[0] >> 62)
    {
      v42 = v60[0];
      v43 = sub_22B36109C();
      v23 = v42;
      v24 = v43;
      v25 = v58;
      v26 = v59;
      if (v43)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v24 = *((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v58;
      v26 = v59;
      if (v24)
      {
LABEL_4:
        if (v24 >= 1)
        {
          v55 = 0;
          v27 = 0;
          v58 = v23 & 0xC000000000000001;
          v59 = v23;
          do
          {
            if (v58)
            {
              v28 = MEMORY[0x23188EAC0](v27);
            }

            else
            {
              v28 = *(v23 + 8 * v27 + 32);
            }

            v29 = v28;
            v30 = [v28 historicalGuidance];
            v31 = sub_22B35DCDC();
            v33 = v32;

            v34 = *a7;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a7 = v34;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v34 = sub_22B32D0BC(0, *(v34 + 2) + 1, 1, v34);
              *a7 = v34;
            }

            v37 = *(v34 + 2);
            v36 = *(v34 + 3);
            if (v37 >= v36 >> 1)
            {
              *a7 = sub_22B32D0BC((v36 > 1), v37 + 1, 1, v34);
            }

            ++v27;

            v38 = *a7;
            *(v38 + 2) = v37 + 1;
            v39 = &v38[16 * v37];
            *(v39 + 4) = v31;
            *(v39 + 5) = v33;
            v23 = v59;
          }

          while (v24 != v27);

          v40 = v56;
          v41 = v57;
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_23;
      }
    }

    if (qword_28140A0C8 == -1)
    {
LABEL_17:
      v44 = __swift_project_value_buffer(v26, qword_28140BD10);
      swift_beginAccess();
      v45 = v55;
      (*(v25 + 16))(v55, v44, v26);

      v46 = sub_22B36050C();
      v47 = sub_22B360D2C();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = v25;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v51 = v22;
        v52 = v50;
        v61 = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_22B1A7B20(v54, v51, &v61);
        _os_log_impl(&dword_22B116000, v46, v47, "empty results for %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x23188F650](v52, -1, -1);
        MEMORY[0x23188F650](v49, -1, -1);

        (*(v48 + 8))(v45, v26);
      }

      else
      {

        (*(v25 + 8))(v45, v26);
      }

      v40 = v56;
      v41 = v57;
LABEL_21:
      [*(v40 + 48) refreshAllObjects];
      *v41 = *a7;

      return;
    }

LABEL_23:
    swift_once();
    goto LABEL_17;
  }

  objc_autoreleasePoolPop(v20);
  __break(1u);
}

void sub_22B320B88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, _BYTE *a6@<X8>)
{
  v13 = MEMORY[0x23188EEB0]();
  a5(&v15, a2, a3, a4, a1);
  objc_autoreleasePoolPop(v13);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v14 = v15;
    [*(a1 + 48) refreshAllObjects];
    *a6 = v14;
  }
}

uint64_t sub_22B320C40()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_22B36050C();
  v9 = sub_22B360D2C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v8, v9, "Delete all historical guidance from cache", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *(v1 + 112);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v11 + 48);

  v13 = v12;
  sub_22B360E7C();

  return v15[23];
}

void sub_22B320E50(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = MEMORY[0x23188EEB0]();
  sub_22B339F64(0xD000000000000017, 0x800000022B36E8A0, a1, &v7);
  objc_autoreleasePoolPop(v5);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v6 = v7;
    [*(a1 + 48) refreshAllObjects];
    *a2 = v6;
  }
}

uint64_t sub_22B320EF0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_28140BD10);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);

  v14 = sub_22B36050C();
  v15 = sub_22B360D2C();

  v16 = os_log_type_enabled(v14, v15);
  v34 = a3;
  v35 = a2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v33 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v36 = v19;
    *v18 = 136380675;
    v20 = a3 == 0;
    v21 = a3;
    v22 = v4;
    if (v20)
    {
      v23 = 4999502;
    }

    else
    {
      v23 = a2;
    }

    if (v20)
    {
      v24 = 0xE300000000000000;
    }

    else
    {
      v24 = v21;
    }

    v25 = sub_22B1A7B20(v23, v24, &v36);

    *(v18 + 4) = v25;
    v4 = v22;
    _os_log_impl(&dword_22B116000, v14, v15, "Delete historical guidance from cache for %{private}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    v26 = v18;
    a1 = v33;
    MEMORY[0x23188F650](v26, -1, -1);
  }

  v27 = (*(v9 + 8))(v12, v8);
  v28 = *(v4 + 112);
  if (!v28)
  {
    return 0;
  }

  v29 = *(v28 + 48);
  MEMORY[0x28223BE20](v27);
  *(&v33 - 4) = v28;
  *(&v33 - 3) = a1;
  v30 = v34;
  *(&v33 - 2) = v35;
  *(&v33 - 1) = v30;

  v31 = v29;
  sub_22B360E7C();

  return v36;
}

void sub_22B3211E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v11 = MEMORY[0x23188EEB0]();
  sub_22B31D294(a3, a4, a2, a1, &v13);
  objc_autoreleasePoolPop(v11);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v12 = v13;
    [*(a1 + 48) refreshAllObjects];
    *a5 = v12;
  }
}

void sub_22B32128C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v25 = a1;
  v7 = sub_22B36052C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  (*(v8 + 16))(v11, v12, v7);

  v13 = sub_22B36050C();
  v14 = sub_22B360D2C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = a3;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136380675;
    *(v16 + 4) = sub_22B1A7B20(v25, a2, &v26);
    _os_log_impl(&dword_22B116000, v13, v14, "Getting last fetched end date for %{private}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    v18 = v16;
    a3 = v15;
    MEMORY[0x23188F650](v18, -1, -1);
  }

  v19 = (*(v8 + 8))(v11, v7);
  v20 = *(v4 + 112);
  if (v20)
  {
    v21 = *(v20 + 48);
    MEMORY[0x28223BE20](v19);
    v22 = v25;
    *(&v25 - 4) = v20;
    *(&v25 - 3) = v22;
    *(&v25 - 2) = a2;

    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
    sub_22B360E7C();
  }

  else
  {
    v24 = sub_22B35DE9C();
    (*(*(v24 - 8) + 56))(a3, 1, 1, v24);
  }
}

uint64_t sub_22B321590(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_22B36052C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_28140BD10);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);

  v12 = sub_22B36050C();
  v13 = sub_22B360D2C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136380675;
    *(v14 + 4) = sub_22B1A7B20(a1, a2, &v22);
    _os_log_impl(&dword_22B116000, v12, v13, "Getting last fetched end date for %{private}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  v16 = (*(v7 + 8))(v10, v6);
  v17 = *(v3 + 112);
  if (!v17)
  {
    return 0;
  }

  v18 = *(v17 + 48);
  MEMORY[0x28223BE20](v16);
  *&v21[-32] = v17;
  *&v21[-24] = a1;
  *&v21[-16] = a2;

  v19 = v18;
  sub_22B360E7C();

  return v22;
}

void sub_22B32183C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = MEMORY[0x23188EEB0]();
  sub_22B31E274(a2, a3, a1, &v11);
  objc_autoreleasePoolPop(v9);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v10 = v11;
    [*(a1 + 48) refreshAllObjects];
    *a4 = v10;
  }
}

id sub_22B321920@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  sub_22B31E04C(v1[3], v1[4], v2, a1);
  return [*(v2 + 48) refreshAllObjects];
}

unint64_t sub_22B321984(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE40, &unk_22B367390);
    v3 = sub_22B3612BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B170BE0(v4, &v11, &qword_27D8BAE48, &unk_22B367E10);
      v5 = v11;
      result = sub_22B33BA3C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_22B172454(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_22B321AAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC40, &unk_22B367380);
    v3 = sub_22B3612BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B170BE0(v4, &v13, &unk_27D8BAD00, &qword_22B3656C0);
      v5 = v13;
      v6 = v14;
      result = sub_22B33B28C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22B172454(&v15, (v3[7] + 32 * result));
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

unint64_t sub_22B321BDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC38, &unk_22B366B50);
    v3 = sub_22B3612BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B170BE0(v4, v13, &unk_27D8BACC0, &unk_22B3662C0);
      result = sub_22B33B248(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_22B172454(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_22B321D18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22B321DD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE80, &qword_22B3673E0);
    v3 = sub_22B3612BC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22B33B28C(v5, v6);
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

unint64_t sub_22B321ED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE78, &qword_22B3673D8);
    v3 = sub_22B3612BC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22B33B28C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_22B321FE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE50, &qword_22B3673A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE58, &qword_22B3673A8);
    v8 = sub_22B3612BC();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22B170BE0(v10, v6, &qword_27D8BAE50, &qword_22B3673A0);
      result = sub_22B33B6BC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22B35DF1C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 16 * v14;
      v18 = v9[8];
      *v17 = *v9;
      *(v17 + 8) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22B3221DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE98, &qword_22B3673F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v24 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAEA0, &unk_22B367400);
    v8 = sub_22B3612BC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v24 = *(v3 + 72);
    v25 = v9;

    while (1)
    {
      sub_22B170BE0(v10, v6, &qword_27D8BAE98, &qword_22B3673F8);
      v11 = *v6;
      v12 = v6[1];
      v14 = v6[2];
      v13 = v6[3];
      result = sub_22B33B790(*v6, v12, v14, v13);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v8[6] + 32 * result);
      *v18 = v11;
      v18[1] = v12;
      v18[2] = v14;
      v18[3] = v13;
      v19 = v8[7];
      v20 = sub_22B35DE9C();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v6 + v25, v20);
      v21 = v8[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v8[2] = v23;
      v10 += v24;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22B3223E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE88, &qword_22B3673E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE90, &qword_22B3673F0);
    v8 = sub_22B3612BC();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22B170BE0(v10, v6, &qword_27D8BAE88, &qword_22B3673E8);
      result = sub_22B33B830(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for SessionKey(0);
      result = sub_22B322A34(v6, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = (v8[7] + 2 * v14);
      v18 = v9[1];
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22B3225C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA658, &qword_22B365750);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE70, &qword_22B3673D0);
    v8 = sub_22B3612BC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22B170BE0(v10, v6, &qword_27D8BA658, &qword_22B365750);
      result = sub_22B33B968(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22B35DC4C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22B3227B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE60, &qword_22B3673B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE68, &qword_22B3673B8);
    v8 = sub_22B3612BC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22B170BE0(v10, v6, &qword_27D8BAE60, &qword_22B3673B0);
      result = sub_22B33B348(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22B35DE9C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE0, &unk_22B3673C0);
      result = sub_22B3229C4(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_22B3229C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE0, &unk_22B3673C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B322A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B322A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22B124BA8(a3, v27 - v11);
  v13 = sub_22B360B6C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22B118DDC(v12);
  }

  else
  {
    sub_22B360B5C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22B360ACC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22B3608CC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t DaemonInitializer.__allocating_init()()
{
  v0 = swift_allocObject();
  DaemonInitializer.init()();
  return v0;
}

uint64_t DaemonInitializer.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v18 - v2;
  v19 = sub_22B360D8C();
  v4 = *(v19 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v19);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B360D6C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_22B36062C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_22B128014(0, &qword_2814092E0, 0x277D85C78);
  v18[1] = " %@ AND intervalEnd == %@";
  v18[2] = v12;
  sub_22B36060C();
  v21 = MEMORY[0x277D84F90];
  sub_22B118988(&qword_2814092F0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAA80, &qword_22B3653C0);
  sub_22B118A18(&qword_281409340, &unk_27D8BAA80, &qword_22B3653C0);
  sub_22B36104C();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v19);
  v13 = sub_22B360DBC();
  v14 = v20;
  *(v20 + 16) = v13;
  *(v14 + 24) = 0;
  sub_22B360B3C();
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v3, 0, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;

  sub_22B322A98(0, 0, v3, &unk_22B367418, v16);

  sub_22B118DDC(v3);
  return v14;
}

uint64_t sub_22B3230C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  sub_22B360B3C();
  v5 = sub_22B360B6C();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_22B322A98(0, 0, v4, &unk_22B367420, v6);

  return sub_22B118DDC(v4);
}

uint64_t sub_22B3231E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_22B3605EC();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = sub_22B36062C();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v12 = sub_22B36052C();
  v4[19] = v12;
  v13 = *(v12 - 8);
  v4[20] = v13;
  v14 = *(v13 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B3233A8, 0, 0);
}

uint64_t sub_22B3233A8()
{
  v1 = MEMORY[0x23188EEB0]();
  sub_22B34D88C();
  objc_autoreleasePoolPop(v1);
  type metadata accessor for HomeEnergyDaemonUtilities();
  v2 = MEMORY[0x23188EEB0]();
  sub_22B34C348();
  v0[24] = 0;
  objc_autoreleasePoolPop(v2);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v3 = v0[23];
  v4 = v0[19];
  v5 = v0[20];
  v6 = __swift_project_value_buffer(v4, qword_28140BD10);
  v0[25] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[26] = v7;
  v0[27] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6, v4);
  v8 = sub_22B36050C();
  v9 = sub_22B360D2C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v8, v9, "Setting up listeners", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  v11 = v0[23];
  v12 = v0[19];
  v13 = v0[20];

  v14 = *(v13 + 8);
  v0[28] = v14;
  v14(v11, v12);
  if (qword_28140AD60 != -1)
  {
    swift_once();
  }

  sub_22B33AA3C(0xD000000000000010, 0x800000022B368B50, 0x6361436C61636F4CLL, 0xEA00000000006568);
  if (qword_28140B168 != -1)
  {
    swift_once();
  }

  if (qword_28140B068 != -1)
  {
    swift_once();
  }

  if (qword_28140AF70 != -1)
  {
    swift_once();
  }

  if (qword_28140A7B0 != -1)
  {
    swift_once();
  }

  if (qword_281408F18 != -1)
  {
    swift_once();
  }

  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v15 = swift_task_alloc();
  v0[29] = v15;
  *v15 = v0;
  v15[1] = sub_22B323750;

  return sub_22B335200();
}

uint64_t sub_22B323750(char a1)
{
  v2 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_22B323850, 0, 0);
}

uint64_t sub_22B323850()
{
  if (*(v0 + 256) != 1)
  {
    v10 = (v0 + 168);
    v16 = *(v0 + 216);
    (*(v0 + 208))(*(v0 + 168), *(v0 + 200), *(v0 + 152));
    v12 = sub_22B36050C();
    v13 = sub_22B360D1C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "E2E not available. Features disabled";
      goto LABEL_23;
    }

LABEL_24:
    v17 = *v10;
    goto LABEL_25;
  }

  if (qword_28140A888 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = qword_27D8BB058;
  v3 = off_27D8BB060;

  sub_22B253414(v2, v3, 0x4374686769736E49, 0xEC00000065686361);

  sub_22B360B3C();
  v4 = sub_22B360B6C();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 0, 1, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_22B322A98(0, 0, v1, &unk_22B3674A8, v6);

  sub_22B118DDC(v1);
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  if (qword_2814096B8 != -1)
  {
    swift_once();
  }

  if (qword_281409598 != -1)
  {
    swift_once();
  }

  if (qword_2814099B0 != -1)
  {
    swift_once();
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  if (qword_28140A0B8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 144);
  sub_22B360B3C();
  v5(v7, 0, 1, v4);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_22B322A98(0, 0, v7, &unk_22B3674B8, v8);

  sub_22B118DDC(v7);
  if (qword_28140A1F0 != -1)
  {
    swift_once();
  }

  v9 = sub_22B253D1C(0, 0);

  if ((v9 & 1) == 0)
  {
    v10 = (v0 + 176);
    v11 = *(v0 + 216);
    (*(v0 + 208))(*(v0 + 176), *(v0 + 200), *(v0 + 152));
    v12 = sub_22B36050C();
    v13 = sub_22B360D1C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Failed to setup KVS";
LABEL_23:
      _os_log_impl(&dword_22B116000, v12, v13, v15, v14, 2u);
      v17 = *v10;
      MEMORY[0x23188F650](v14, -1, -1);
LABEL_25:
      v18 = *(v0 + 224);
      v19 = *(v0 + 152);
      v20 = *(v0 + 160);

      v18(v17, v19);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_26:
  if (qword_28140AB18 != -1)
  {
    swift_once();
  }

  sub_22B1AC734();
  if (qword_28140AA30 != -1)
  {
    swift_once();
  }

  v21 = swift_task_alloc();
  *(v0 + 240) = v21;
  *v21 = v0;
  v21[1] = sub_22B323D8C;

  return sub_22B1979E4();
}

uint64_t sub_22B323D8C()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B323E88, 0, 0);
}

void sub_22B323E88()
{
  v1 = *(v0 + 192);
  v2 = MEMORY[0x23188EEB0]();
  sub_22B324778();
  objc_autoreleasePoolPop(v2);
  if (!v1)
  {
    if (qword_281409E98 != -1)
    {
      swift_once();
    }

    v3 = qword_28140BD00;
    *(v0 + 248) = qword_28140BD00;

    MEMORY[0x2822009F8](sub_22B323F58, v3, 0);
  }
}

uint64_t sub_22B323F58()
{
  v1 = *(v0 + 248);
  sub_22B2A8E9C();

  return MEMORY[0x2822009F8](sub_22B323FC0, 0, 0);
}

uint64_t sub_22B323FC0()
{
  if (qword_28140A5D0 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[13];
  v20 = v0[12];
  v21 = v0[15];
  v5 = v0[11];
  sub_22B128014(0, &qword_2814092B0, 0x277D85CA0);
  v6 = *(v5 + 16);
  v7 = sub_22B360DEC();

  v8 = *(v5 + 24);
  *(v5 + 24) = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v0[6] = sub_22B324B40;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22B118A6C;
  v0[5] = &block_descriptor_28;
  v9 = _Block_copy(v0 + 2);
  sub_22B36060C();
  sub_22B324D5C();
  sub_22B360DFC();
  _Block_release(v9);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v3, v20);
  (*(v2 + 8))(v1, v21);
  v10 = sub_22B36054C();
  signal(15, v10);
  if (*(v5 + 24))
  {
    v11 = *(v5 + 24);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_22B360E0C();
    swift_unknownObjectRelease();
  }

  v13 = v0[22];
  v12 = v0[23];
  v14 = v0[21];
  v16 = v0[17];
  v15 = v0[18];
  v17 = v0[14];

  v18 = v0[1];

  return v18();
}

uint64_t sub_22B324220(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B124D88;

  return sub_22B3231E0(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B324314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B119A60;

  return sub_22B3231E0(a1, v4, v5, v6);
}

uint64_t sub_22B3243C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B324468;

  return sub_22B2F26F0();
}

uint64_t sub_22B324468()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v5;
  v3[1] = sub_22B3245A4;

  return sub_22B2F0FF4();
}

uint64_t sub_22B3245A4()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B3246A0, 0, 0);
}

uint64_t sub_22B3246A0()
{
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22B14D5A0;

  return sub_22B333ED8();
}

uint64_t sub_22B324778()
{
  v0 = sub_22B35EE8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281409448 != -1)
  {
    swift_once();
  }

  sub_22B197310();
  sub_22B12B274();
  (*(v1 + 104))(v4, *MEMORY[0x277D07390], v0);
  v5 = sub_22B35EE7C();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    sub_22B32508C(0);
    sub_22B3251C8(0);
    sub_22B3252F4(0);
  }

  v11[3] = &type metadata for BackgroundSystemTaskScheduler;
  v11[4] = &off_283EFE540;
  type metadata accessor for BackgroundLaunchTask();
  v6 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v11, &type metadata for BackgroundSystemTaskScheduler);
  v9 = &type metadata for BackgroundSystemTaskScheduler;
  v10 = &off_283EFE540;
  swift_defaultActor_initialize();
  sub_22B11A02C(&v8, v6 + 112);
  __swift_destroy_boxed_opaque_existential_0(v11);

  sub_22B348848(0xD000000000000023, 0x800000022B36EA10, sub_22B325420, v6);
}

uint64_t sub_22B32496C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_22B360B6C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_22B12B3CC(a1, v13);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  sub_22B11A02C(v13, (v9 + 5));

  v10 = sub_22B145224(0, 0, v7, &unk_22B3674D0, v9);
  sub_22B118DDC(v7);
  return v10;
}

uint64_t sub_22B324AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_22B119A60;

  return sub_22B343E24(a5);
}

uint64_t sub_22B324B40()
{
  v0 = sub_22B36052C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281409388 != -1)
  {
    swift_once();
  }

  v5 = qword_28140BCD0;
  sub_22B360CFC();
  sub_22B36044C();

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28140BD10);
  swift_beginAccess();
  (*(v1 + 16))(v4, v6, v0);
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22B116000, v7, v8, "SIGTERM received; shutting down", v9, 2u);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return xpc_transaction_exit_clean();
}

uint64_t sub_22B324D5C()
{
  sub_22B3605EC();
  sub_22B118988(&qword_281409370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B118A18(&qword_281409350, &unk_27D8BA330, &unk_22B363330);
  return sub_22B36104C();
}

uint64_t DaemonInitializer.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t DaemonInitializer.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22B324F34()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B3243C8();
}

uint64_t sub_22B324FE0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B324764();
}

uint64_t sub_22B32508C(uint64_t a1)
{
  v10[3] = &type metadata for BackgroundSystemTaskScheduler;
  v10[4] = &off_283EFE540;
  sub_22B12B3CC(v10, v9);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
  v8[3] = &type metadata for BackgroundSystemTaskScheduler;
  v8[4] = &off_283EFE540;
  type metadata accessor for BackgroundLaunchTask();
  v2 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v8, &type metadata for BackgroundSystemTaskScheduler);
  v6 = &type metadata for BackgroundSystemTaskScheduler;
  v7 = &off_283EFE540;
  swift_defaultActor_initialize();
  sub_22B11A02C(&v5, v2 + 112);
  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = 0xD000000000000026;
  v3[4] = 0x800000022B36CB60;
  v3[5] = a1;

  sub_22B348848(0xD000000000000026, 0x800000022B36CB60, sub_22B325478, v3);

  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t sub_22B3251C8(uint64_t a1)
{
  v10[3] = &type metadata for BackgroundSystemTaskScheduler;
  v10[4] = &off_283EFE540;
  sub_22B12B3CC(v10, v9);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
  v8[3] = &type metadata for BackgroundSystemTaskScheduler;
  v8[4] = &off_283EFE540;
  type metadata accessor for BackgroundLaunchTask();
  v2 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v8, &type metadata for BackgroundSystemTaskScheduler);
  v6 = &type metadata for BackgroundSystemTaskScheduler;
  v7 = &off_283EFE540;
  swift_defaultActor_initialize();
  sub_22B11A02C(&v5, v2 + 112);
  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;

  sub_22B348848(0xD000000000000032, 0x800000022B36CB20, sub_22B325470, v3);

  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t sub_22B3252F4(uint64_t a1)
{
  v10[3] = &type metadata for BackgroundSystemTaskScheduler;
  v10[4] = &off_283EFE540;
  sub_22B12B3CC(v10, v9);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
  v8[3] = &type metadata for BackgroundSystemTaskScheduler;
  v8[4] = &off_283EFE540;
  type metadata accessor for BackgroundLaunchTask();
  v2 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v8, &type metadata for BackgroundSystemTaskScheduler);
  v6 = &type metadata for BackgroundSystemTaskScheduler;
  v7 = &off_283EFE540;
  swift_defaultActor_initialize();
  sub_22B11A02C(&v5, v2 + 112);
  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;

  sub_22B348848(0xD000000000000026, 0x800000022B36A4C0, sub_22B325428, v3);

  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t objectdestroy_38Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B325484(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B119A60;

  return sub_22B324AA4(a1, v4, v5, v6, (v1 + 5));
}

void *sub_22B325594(unint64_t a1, uint64_t *a2)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E8, &qword_22B365990);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v40 - v5);
  v51 = type metadata accessor for CDUsagePointRecords();
  v43 = *(v51 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v42 = &v40 - v11;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22B36109C())
  {
    v13 = 0;
    v48 = a1 & 0xFFFFFFFFFFFFFF8;
    v49 = a1 & 0xC000000000000001;
    v41 = a1;
    v46 = (v43 + 56);
    v44 = (a1 + 32);
    v45 = (v43 + 48);
    v52 = MEMORY[0x277D84F90];
    v47 = i;
    while (1)
    {
      if (v49)
      {
        v14 = MEMORY[0x23188EAC0](v13, v41, v10);
      }

      else
      {
        if (v13 >= *(v48 + 16))
        {
          goto LABEL_29;
        }

        v14 = *&v44[8 * v13];
      }

      v15 = v14;
      if (__OFADD__(v13++, 1))
      {
        break;
      }

      v17 = *v54;

      v18 = [v15 usagePointID];
      v19 = sub_22B36084C();
      v21 = v20;

      if (*(v17 + 16) && (v22 = *(v17 + 40), sub_22B36149C(), sub_22B3608FC(), v23 = sub_22B3614DC(), v24 = -1 << *(v17 + 32), v25 = v23 & ~v24, ((*(v17 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
      {
        v26 = ~v24;
        while (1)
        {
          v27 = (*(v17 + 48) + 16 * v25);
          v28 = *v27 == v19 && v27[1] == v21;
          if (v28 || (sub_22B36134C() & 1) != 0)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v17 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        a1 = v51;
        (*v46)(v6, 1, 1, v51);

        v34 = (*v45)(v6, 1, a1);
      }

      else
      {
LABEL_19:

        v29 = [v15 usagePointID];
        v30 = sub_22B36084C();
        v32 = v31;

        sub_22B32DF50(&v53, v30, v32);

        a1 = v15;
        sub_22B326094(a1, v6);
        v33 = v51;
        (*v46)(v6, 0, 1, v51);

        v34 = (*v45)(v6, 1, v33);
      }

      if (v34 == 1)
      {
        sub_22B123284(v6, &qword_27D8BA6E8, &qword_22B365990);
      }

      else
      {
        v35 = v42;
        sub_22B333058(v6, v42, type metadata accessor for CDUsagePointRecords);
        sub_22B333058(v35, v50, type metadata accessor for CDUsagePointRecords);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_22B32DAC8(0, v52[2] + 1, 1, v52, &qword_27D8BAF30, &unk_22B367588, type metadata accessor for CDUsagePointRecords);
        }

        v37 = v52[2];
        v36 = v52[3];
        a1 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v52 = sub_22B32DAC8(v36 > 1, v37 + 1, 1, v52, &qword_27D8BAF30, &unk_22B367588, type metadata accessor for CDUsagePointRecords);
        }

        v38 = v52;
        v52[2] = a1;
        sub_22B333058(v50, v38 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v37, type metadata accessor for CDUsagePointRecords);
      }

      if (v13 == v47)
      {
        return v52;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22B325AD4(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_22B36149C();
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 8);
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[8];
  v30 = a1[7];
  sub_22B3608FC();
  v35 = v7;
  sub_22B3614CC();
  v33 = v9;
  v34 = v8;
  sub_22B3608FC();
  v31 = v11;
  v32 = v10;
  sub_22B3608FC();
  v29 = v12;
  sub_22B3608FC();
  v13 = sub_22B3614DC();
  v14 = -1 << *(a2 + 32);
  v15 = v13 & ~v14;
  v38 = a2 + 56;
  if (((*(a2 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    return 0;
  }

  v36 = ~v14;
  v37 = *(a2 + 48);
  while (1)
  {
    v16 = v37 + 72 * v15;
    v17 = *(v16 + 16);
    v19 = *(v16 + 24);
    v18 = *(v16 + 32);
    v20 = *(v16 + 40);
    v21 = *(v16 + 48);
    v22 = *(v16 + 56);
    v23 = *(v16 + 64);
    v24 = *v16 == v5 && *(v16 + 8) == v6;
    if (v24 || (sub_22B36134C()) && v17 == v35)
    {
      v25 = v19 == v34 && v18 == v33;
      if (v25 || (sub_22B36134C() & 1) != 0)
      {
        v26 = v20 == v32 && v21 == v31;
        if (v26 || (sub_22B36134C() & 1) != 0)
        {
          v27 = v22 == v30 && v23 == v29;
          if (v27 || (sub_22B36134C() & 1) != 0)
          {
            break;
          }
        }
      }
    }

    v15 = (v15 + 1) & v36;
    if (((*(v38 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_22B325CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22B36149C();
  sub_22B3608FC();
  v7 = sub_22B3614DC();
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
    if (v12 || (sub_22B36134C() & 1) != 0)
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

uint64_t sub_22B325DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_22B170BE0(a3, v24 - v10, &qword_27D8BA8D0, &qword_22B363610);
  v12 = sub_22B360B6C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B123284(v11, &qword_27D8BA8D0, &qword_22B363610);
  }

  else
  {
    sub_22B360B5C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22B360ACC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22B3608CC() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_22B123284(a3, &qword_27D8BA8D0, &qword_22B363610);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B123284(a3, &qword_27D8BA8D0, &qword_22B363610);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_22B326094(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 recordID];
  v5 = sub_22B36084C();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  v8 = [a1 usagePointID];
  v9 = sub_22B36084C();
  v11 = v10;

  a2[2] = v9;
  a2[3] = v11;
  v12 = [a1 tariffProfiles];
  v13 = sub_22B35DCDC();
  v15 = v14;

  v16 = MEMORY[0x23188EEB0]();
  sub_22B326940(&v42);
  objc_autoreleasePoolPop(v16);
  sub_22B12F174(v13, v15);
  a2[4] = v42;
  v17 = [a1 tariffRiders];
  v18 = sub_22B35DCDC();
  v20 = v19;

  v21 = MEMORY[0x23188EEB0]();
  sub_22B326304(&v42);
  objc_autoreleasePoolPop(v21);
  sub_22B12F174(v18, v20);
  a2[5] = v42;
  v22 = [a1 sourceTime];
  v23 = type metadata accessor for CDUsagePointRecords();
  v24 = a2 + v23[8];
  sub_22B35DE5C();

  v25 = [a1 creationDate];
  v26 = a2 + v23[9];
  sub_22B35DE5C();

  v27 = [a1 zoneName];
  v28 = sub_22B36084C();
  v30 = v29;

  v31 = (a2 + v23[10]);
  *v31 = v28;
  v31[1] = v30;
  v32 = [a1 subscriptionID];
  v33 = sub_22B36084C();
  v35 = v34;

  v36 = (a2 + v23[11]);
  *v36 = v33;
  v36[1] = v35;
  v37 = [a1 utilityID];
  v38 = sub_22B36084C();
  v40 = v39;

  v41 = (a2 + v23[12]);
  *v41 = v38;
  v41[1] = v40;
}

void sub_22B326304(void (*a1)(char *, char *, uint64_t)@<X8>)
{
  v53 = a1;
  v49 = sub_22B36052C();
  v1 = *(v49 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22B3603FC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B35F74C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  sub_22B128014(0, &qword_27D8BA690, 0x277CBEA60);
  v19 = v59;
  v20 = sub_22B360F7C();
  if (v19)
  {
    v21 = v19;
    v22 = v53;
    v23 = v49;
LABEL_3:
    v24 = v52;
    if (qword_28140A0C8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  v50 = v18;
  v51 = v15;
  v55 = v12;
  if (!v20)
  {
    v24 = MEMORY[0x277D84F90];
    v22 = v53;
    goto LABEL_24;
  }

  v59 = 0;
  *&v56 = 0;
  v36 = v20;
  sub_22B360A4C();

  v23 = v56;
  v22 = v53;
  if (!v56)
  {
    v24 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v48 = *(v56 + 16);
  if (v48)
  {
    v45 = v1;
    v46 = v9;
    v1 = 0;
    v54 = (v9 + 32);
    v21 = (v56 + 40);
    v24 = MEMORY[0x277D84F90];
    v47 = v7;
    while (v1 < *(v23 + 16))
    {
      v38 = *(v21 - 1);
      v37 = *v21;
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      sub_22B144B30(v38, v37);
      sub_22B3603EC();
      sub_22B332F4C(&qword_27D8BAF18, MEMORY[0x277D07428]);
      v39 = v51;
      v40 = v59;
      sub_22B36041C();
      v59 = v40;
      if (v40)
      {

        v21 = v59;
        v22 = v53;
        v23 = v49;
        v1 = v45;
        goto LABEL_3;
      }

      v22 = *v54;
      v41 = v50;
      (*v54)(v50, v39, v8);
      v22(v55, v41, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_22B32DAC8(0, *(v24 + 2) + 1, 1, v24, &qword_27D8BAF20, &qword_22B367580, MEMORY[0x277D07428]);
      }

      v43 = *(v24 + 2);
      v42 = *(v24 + 3);
      if (v43 >= v42 >> 1)
      {
        v24 = sub_22B32DAC8(v42 > 1, v43 + 1, 1, v24, &qword_27D8BAF20, &qword_22B367580, MEMORY[0x277D07428]);
      }

      ++v1;
      *(v24 + 2) = v43 + 1;
      v22(&v24[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v43], v55, v8);
      v21 += 2;
      if (v48 == v1)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
LABEL_4:
    v25 = __swift_project_value_buffer(v23, qword_28140BD10);
    swift_beginAccess();
    (*(v1 + 16))(v24, v25, v23);
    v26 = v21;
    v27 = sub_22B36050C();
    v28 = sub_22B360D1C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v1;
      v31 = swift_slowAlloc();
      *v29 = 138412290;
      v32 = v21;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_22B116000, v27, v28, "Failed to unarchive TariffRider %@", v29, 0xCu);
      sub_22B123284(v31, &unk_27D8BAA90, &unk_22B362BC0);
      v34 = v31;
      v1 = v30;
      MEMORY[0x23188F650](v34, -1, -1);
      v35 = v29;
      v24 = v52;
      MEMORY[0x23188F650](v35, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v24, v23);
    v24 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_23:

  v22 = v53;
LABEL_24:
  *v22 = v24;
}