uint64_t sub_22B1ED390()
{
  v1 = *(v0 + 820);
  v2 = *(v0 + 804);
  v3 = *(v0 + 544);
  v4 = *(v0 + 512);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v8 = *(v0 + 128);
  v11 = *(v0 + 224);
  v12 = *(v0 + 120);
  v9 = swift_task_alloc();
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v1;
  (*(v5 + 104))(v6, v2, v7);
  sub_22B360BBC();

  return MEMORY[0x2822009F8](sub_22B1ED498, v12, 0);
}

uint64_t sub_22B1ED498()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[22];
  sub_22B360B9C();
  v5 = sub_22B1FE510(&qword_27D8BA720, v4, type metadata accessor for LoadEventsProcessor);
  v6 = MEMORY[0x277D84F90];
  v0[96] = v5;
  v0[97] = v6;
  v7 = v0[15];
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  v0[98] = v9;
  *v9 = v0;
  v9[1] = sub_22B1ED5A0;
  v10 = v0[22];
  v11 = v0[19];
  v12 = v0[20];

  return MEMORY[0x2822003E8](v11, v7, v5, v12);
}

uint64_t sub_22B1ED5A0()
{
  v1 = *(*v0 + 784);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B1ED6B0, v2, 0);
}

uint64_t sub_22B1ED6B0()
{
  v1 = *(v0 + 152);
  if ((*(*(v0 + 136) + 48))(v1, 1, *(v0 + 128)) == 1)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    v2 = swift_task_alloc();
    *(v0 + 792) = v2;
    *v2 = v0;
    v2[1] = sub_22B1ED8F4;
    v3 = *(v0 + 776);
    v4 = *(v0 + 820);
    v5 = *(v0 + 704);
    v6 = *(v0 + 512);
    v7 = *(v0 + 256);
    v8 = *(v0 + 120);
    v9 = *(v0 + 96);

    return sub_22B1E5470(v4, v3, v7, v5, v9, v6, v0 + 56, v0 + 40);
  }

  else
  {
    v11 = *(v0 + 776);
    sub_22B20203C(v1, *(v0 + 144), type metadata accessor for SessionHalfHourlySummary);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v0 + 776);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_22B32D4E4(0, v13[2] + 1, 1, *(v0 + 776));
    }

    v15 = v13[2];
    v14 = v13[3];
    if (v15 >= v14 >> 1)
    {
      v13 = sub_22B32D4E4(v14 > 1, v15 + 1, 1, v13);
    }

    v17 = *(v0 + 136);
    v16 = *(v0 + 144);
    v13[2] = v15 + 1;
    sub_22B20203C(v16, v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15, type metadata accessor for SessionHalfHourlySummary);
    *(v0 + 776) = v13;
    v18 = *(v0 + 768);
    v19 = *(v0 + 120);
    v20 = *(MEMORY[0x277D85798] + 4);
    v21 = swift_task_alloc();
    *(v0 + 784) = v21;
    *v21 = v0;
    v21[1] = sub_22B1ED5A0;
    v22 = *(v0 + 176);
    v23 = *(v0 + 152);
    v24 = *(v0 + 160);

    return MEMORY[0x2822003E8](v23, v19, v18, v24);
  }
}

uint64_t sub_22B1ED8F4()
{
  v1 = *(*v0 + 792);
  v2 = *(*v0 + 776);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22B1EDA20, v3, 0);
}

uint64_t sub_22B1EDA20()
{
  v1 = *(v0 + 512);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  (*(v3 + 8))(v2, v4);
  sub_22B201FDC(v1, type metadata accessor for SessionKey);
  v5 = (*(v0 + 728) - 1) & *(v0 + 728);
  v6 = *(v0 + 736);
  *(v0 + 720) = *(v0 + 760);
  if (v5)
  {
    goto LABEL_4;
  }

LABEL_5:
  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= (((1 << *(v0 + 818)) + 63) >> 6))
    {
      v35 = *(v0 + 712);
      v36 = *(v0 + 704);
      v37 = *(v0 + 600);
      v38 = *(v0 + 576);
      v39 = *(v0 + 456);
      v40 = *(v0 + 392);
      v41 = *(v0 + 400);

      v42 = *(v0 + 48);

      v43 = *(v0 + 56);

      (*(v41 + 8))(v39, v40);

      goto LABEL_20;
    }

    v7 = *(v0 + 576);
    v5 = *(v7 + 8 * v8 + 56);
    ++v6;
    if (v5)
    {
      v6 = v8;
      while (1)
      {
        *(v0 + 736) = v6;
        *(v0 + 728) = v5;
        v9 = *(v0 + 600);
        v10 = *(v0 + 520);
        v11 = *(v0 + 512);
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        sub_22B201F74(*(v7 + 48) + *(*(v0 + 504) + 72) * (v12 | (v6 << 6)), v10, type metadata accessor for SessionKey);
        sub_22B20203C(v10, v11, type metadata accessor for SessionKey);
        if (!*(v9 + 16))
        {
          goto LABEL_3;
        }

        v13 = *(v0 + 600);
        v14 = *(v0 + 512);
        v15 = *(v0 + 464);
        *(v0 + 808) = *(*(v0 + 496) + 36);
        v16 = *(v13 + 40);
        sub_22B1FE510(&unk_27D8BA320, 255, MEMORY[0x277CC95F0]);
        v17 = sub_22B36071C();
        v18 = -1 << *(v13 + 32);
        v19 = v17 & ~v18;
        if ((*(v13 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19))
        {
          v20 = ~v18;
          v21 = *(*(v0 + 472) + 72);
          v22 = *(v0 + 600);
          while (1)
          {
            v23 = *(v0 + 560);
            v24 = *(v0 + 472);
            v25 = *(v0 + 480);
            v26 = *(v0 + 464);
            (*(v0 + 552))(v25, *(v22 + 48) + v19 * v21, v26);
            sub_22B1FE510(&qword_27D8BA718, 255, MEMORY[0x277CC95F0]);
            v27 = sub_22B36078C();
            (*(v24 + 8))(v25, v26);
            if (v27)
            {
              break;
            }

            v22 = *(v0 + 600);
            v19 = (v19 + 1) & v20;
            if (((*(v22 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19) & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          if (sub_22B360BFC())
          {
            v56 = *(v0 + 712);
            v57 = *(v0 + 704);
            v58 = *(v0 + 600);

            v59 = *(v0 + 48);

            v60 = *(v0 + 56);

            if (qword_28140A0C8 != -1)
            {
              goto LABEL_31;
            }

            goto LABEL_24;
          }

          v29 = *(v0 + 240);
          v28 = *(v0 + 248);
          v30 = *(v0 + 232);
          v31 = (*(v0 + 512) + *(*(v0 + 496) + 32));
          v32 = *v31;
          v33 = v31[1];

          sub_22B35E83C();
          if ((*(v28 + 48))(v30, 1, v29) != 1)
          {
            v76 = *(v0 + 544);
            v77 = *(v0 + 496);
            (*(*(v0 + 248) + 32))(*(v0 + 256), *(v0 + 232), *(v0 + 240));
            *(v0 + 812) = *(v77 + 20);

            return MEMORY[0x2822009F8](sub_22B1EC068, v76, 0);
          }

          v34 = *(v0 + 232);
          sub_22B201FDC(*(v0 + 512), type metadata accessor for SessionKey);
          sub_22B123284(v34, &qword_27D8BA710, &qword_22B3659B8);
          if (!v5)
          {
            goto LABEL_5;
          }
        }

        else
        {
LABEL_3:
          sub_22B201FDC(*(v0 + 512), type metadata accessor for SessionKey);
          if (!v5)
          {
            goto LABEL_5;
          }
        }

LABEL_4:
        v7 = *(v0 + 576);
      }
    }
  }

  __break(1u);
LABEL_31:
  swift_once();
LABEL_24:
  v62 = *(v0 + 272);
  v61 = *(v0 + 280);
  v63 = *(v0 + 264);
  v64 = __swift_project_value_buffer(v63, qword_28140BD10);
  swift_beginAccess();
  (*(v62 + 16))(v61, v64, v63);
  v65 = sub_22B36050C();
  v66 = sub_22B360D1C();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_22B116000, v65, v66, "[LoadEventsProcessor] Task was cancelled", v67, 2u);
    MEMORY[0x23188F650](v67, -1, -1);
  }

  v68 = *(v0 + 576);
  v69 = *(v0 + 512);
  v70 = *(v0 + 456);
  v71 = *(v0 + 392);
  v72 = *(v0 + 400);
  v74 = *(v0 + 272);
  v73 = *(v0 + 280);
  v75 = *(v0 + 264);

  (*(v74 + 8))(v73, v75);
  (*(v72 + 8))(v70, v71);
  sub_22B201FDC(v69, type metadata accessor for SessionKey);
LABEL_20:
  v44 = *(v0 + 536);
  v45 = *(v0 + 528);
  v46 = *(v0 + 520);
  v47 = *(v0 + 512);
  v49 = *(v0 + 480);
  v48 = *(v0 + 488);
  v51 = *(v0 + 448);
  v50 = *(v0 + 456);
  v53 = *(v0 + 432);
  v52 = *(v0 + 440);
  v78 = *(v0 + 424);
  v79 = *(v0 + 416);
  v80 = *(v0 + 408);
  v81 = *(v0 + 384);
  v82 = *(v0 + 360);
  v83 = *(v0 + 352);
  v84 = *(v0 + 344);
  v85 = *(v0 + 320);
  v86 = *(v0 + 312);
  v87 = *(v0 + 304);
  v88 = *(v0 + 280);
  v89 = *(v0 + 256);
  v90 = *(v0 + 232);
  v91 = *(v0 + 224);
  v92 = *(v0 + 200);
  v93 = *(v0 + 176);
  v94 = *(v0 + 152);
  v95 = *(v0 + 144);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_22B1EE190(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_22B35DE9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod();
  sub_22B170BE0(a2 + *(Events + 28), v6, &qword_27D8BA340, &qword_22B363FB0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_22B123284(v6, &qword_27D8BA340, &qword_22B363FB0);
    v13 = *(type metadata accessor for CDTOUPeak() + 24);
    v14 = *(Events + 24);
    v15 = sub_22B35DDEC();
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v16 = type metadata accessor for CDTOUPeak();
    v17 = *(v16 + 20);
    if (sub_22B35DDFC())
    {
      v18 = *(v16 + 24);
      v19 = *(Events + 24);
      v15 = sub_22B35DDEC();
    }

    else
    {
      v15 = 0;
    }

    (*(v8 + 8))(v11, v7);
  }

  return v15 & 1;
}

uint64_t sub_22B1EE3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v5 = sub_22B35F7CC();
  v4[27] = v5;
  v6 = *(v5 - 8);
  v4[28] = v6;
  v7 = *(v6 + 64) + 15;
  v4[29] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E8, &qword_22B365990) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v9 = type metadata accessor for CDUsagePointRecords();
  v4[31] = v9;
  v10 = *(v9 - 8);
  v4[32] = v10;
  v11 = *(v10 + 64) + 15;
  v4[33] = swift_task_alloc();
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod();
  v4[34] = Events;
  v13 = *(Events - 8);
  v4[35] = v13;
  v14 = *(v13 + 64) + 15;
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v15 = sub_22B35F9DC();
  v4[40] = v15;
  v16 = *(v15 - 8);
  v4[41] = v16;
  v17 = *(v16 + 64) + 15;
  v4[42] = swift_task_alloc();
  v18 = type metadata accessor for CDUsageSummaryRecords();
  v4[43] = v18;
  v19 = *(v18 - 8);
  v4[44] = v19;
  v20 = *(v19 + 64) + 15;
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA420, &unk_22B364910) - 8) + 64) + 15;
  v4[47] = swift_task_alloc();
  v22 = sub_22B35DE9C();
  v4[48] = v22;
  v23 = *(v22 - 8);
  v4[49] = v23;
  v24 = *(v23 + 64) + 15;
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v25 = sub_22B36052C();
  v4[52] = v25;
  v26 = *(v25 - 8);
  v4[53] = v26;
  v27 = *(v26 + 64) + 15;
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v28 = sub_22B35EE4C();
  v4[61] = v28;
  v29 = *(v28 - 8);
  v4[62] = v29;
  v30 = *(v29 + 64) + 15;
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  v4[65] = swift_task_alloc();
  v32 = sub_22B35E0BC();
  v4[66] = v32;
  v33 = *(v32 - 8);
  v4[67] = v33;
  v34 = *(v33 + 64) + 15;
  v4[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1EE88C, v3, 0);
}

uint64_t sub_22B1EE88C()
{
  v1 = v0[24];
  v2 = sub_22B35F14C();
  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = v2;
  v5 = v3;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_24:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v34 = v0[53];
    v33 = v0[54];
    v35 = v0[52];
    v36 = __swift_project_value_buffer(v35, qword_28140BD10);
    swift_beginAccess();
    (*(v34 + 16))(v33, v36, v35);
    v37 = sub_22B36050C();
    v38 = sub_22B360CFC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22B116000, v37, v38, "[LoadEventsProcessor] Auth token is empty. Skip rate plan fetch", v39, 2u);
      MEMORY[0x23188F650](v39, -1, -1);
    }

    v40 = v0[54];
    goto LABEL_57;
  }

  v7 = v0[24];
  v8 = sub_22B35F06C();
  if (!v9)
  {
    goto LABEL_29;
  }

  v10 = v8;
  v11 = v9;

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
LABEL_29:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v41 = v0[55];
    v42 = v0[52];
    v43 = v0[53];
    v44 = __swift_project_value_buffer(v42, qword_28140BD10);
    swift_beginAccess();
    (*(v43 + 16))(v41, v44, v42);
    v37 = sub_22B36050C();
    v45 = sub_22B360CFC();
    if (os_log_type_enabled(v37, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_22B116000, v37, v45, "[LoadEventsProcessor] Access token is empty. Skip rate plan fetch", v46, 2u);
      MEMORY[0x23188F650](v46, -1, -1);
    }

    v40 = v0[55];
    goto LABEL_57;
  }

  v13 = v0[24];
  v14 = sub_22B35F0BC();
  if (!v15)
  {
    goto LABEL_34;
  }

  v16 = v14;
  v17 = v15;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
LABEL_34:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v47 = v0[56];
    v48 = v0[52];
    v49 = v0[53];
    v50 = __swift_project_value_buffer(v48, qword_28140BD10);
    swift_beginAccess();
    (*(v49 + 16))(v47, v50, v48);
    v37 = sub_22B36050C();
    v51 = sub_22B360CFC();
    if (os_log_type_enabled(v37, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_22B116000, v37, v51, "[LoadEventsProcessor] Refresh token is empty. Skip rate plan fetch", v52, 2u);
      MEMORY[0x23188F650](v52, -1, -1);
    }

    v40 = v0[56];
    goto LABEL_57;
  }

  v19 = v0[24];
  v20 = sub_22B35F43C();
  v0[69] = v20;
  v0[70] = v21;
  if (!v21)
  {
    goto LABEL_40;
  }

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

LABEL_40:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v53 = v0[57];
    v54 = v0[52];
    v55 = v0[53];
    v56 = __swift_project_value_buffer(v54, qword_28140BD10);
    swift_beginAccess();
    (*(v55 + 16))(v53, v56, v54);
    v37 = sub_22B36050C();
    v57 = sub_22B360CFC();
    if (os_log_type_enabled(v37, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_22B116000, v37, v57, "[LoadEventsProcessor] Utility ID is empty. Skip rate plan fetch", v58, 2u);
      MEMORY[0x23188F650](v58, -1, -1);
    }

    v40 = v0[57];
    goto LABEL_57;
  }

  v23 = v0[24];
  v24 = sub_22B35F12C();
  v0[71] = v24;
  v0[72] = v25;
  if (!v25)
  {
LABEL_46:

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v59 = v0[58];
    v60 = v0[52];
    v61 = v0[53];
    v62 = __swift_project_value_buffer(v60, qword_28140BD10);
    swift_beginAccess();
    (*(v61 + 16))(v59, v62, v60);
    v37 = sub_22B36050C();
    v63 = sub_22B360CFC();
    if (os_log_type_enabled(v37, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_22B116000, v37, v63, "[LoadEventsProcessor] Subscription ID is empty. Skip rate plan fetch", v64, 2u);
      MEMORY[0x23188F650](v64, -1, -1);
    }

    v40 = v0[58];
    goto LABEL_57;
  }

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {

    goto LABEL_46;
  }

  v27 = v0[24];
  sub_22B35F41C();
  if (!v28)
  {

    goto LABEL_52;
  }

  v29 = v0[67];
  v30 = v0[66];
  v31 = v0[65];
  sub_22B35E05C();

  if ((*(v29 + 48))(v31, 1, v30) == 1)
  {
    v32 = v0[65];

    sub_22B123284(v32, &unk_27D8BA080, &unk_22B364280);
LABEL_52:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v65 = v0[59];
    v66 = v0[52];
    v67 = v0[53];
    v68 = __swift_project_value_buffer(v66, qword_28140BD10);
    swift_beginAccess();
    (*(v67 + 16))(v65, v68, v66);
    v37 = sub_22B36050C();
    v69 = sub_22B360CFC();
    if (os_log_type_enabled(v37, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_22B116000, v37, v69, "[LoadEventsProcessor] Timezone is invalid. Skip rate plan fetch", v70, 2u);
      MEMORY[0x23188F650](v70, -1, -1);
    }

    v40 = v0[59];
LABEL_57:
    v71 = v0[52];
    v72 = v0[53];
    v73 = v0[23];

    (*(v72 + 8))(v40, v71);
LABEL_58:
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E0, &qword_22B365988);
    (*(*(v74 - 8) + 56))(v73, 1, 1, v74);
    v75 = v0[68];
    v76 = v0[65];
    v78 = v0[63];
    v77 = v0[64];
    v80 = v0[59];
    v79 = v0[60];
    v81 = v0[57];
    v82 = v0[58];
    v84 = v0[55];
    v83 = v0[56];
    v138 = v0[54];
    v139 = v0[51];
    v140 = v0[50];
    v141 = v0[47];
    v142 = v0[46];
    v143 = v0[45];
    v144 = v0[42];
    v145 = v0[39];
    v146 = v0[38];
    v147 = v0[37];
    v148 = v0[36];
    v149 = v0[33];
    v150 = v0[30];
    v152 = v0[29];

    v85 = v0[1];

    return v85();
  }

  v87 = v0[68];
  v88 = v0[67];
  v89 = v0[66];
  v90 = v0[65];
  v91 = v0[64];
  v92 = v0[61];
  v93 = v0[62];
  v94 = v0[24];
  v95 = *(v88 + 32);
  v0[73] = v95;
  v0[74] = (v88 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v95(v87, v90, v89);
  v153 = sub_22B35F38C();
  v97 = v96;
  v151 = *(v93 + 104);
  v151(v91, *MEMORY[0x277D07350], v92);
  v98 = sub_22B35EE3C();
  v100 = v99;
  v101 = v91;
  v102 = v97;
  v103 = *(v93 + 8);
  v103(v101, v92);
  if (v153 == v98 && v102 == v100)
  {
    goto LABEL_63;
  }

  v104 = sub_22B36134C();

  if (v104)
  {
    goto LABEL_65;
  }

  v118 = v0[63];
  v119 = v0[61];
  v120 = v0[24];
  v154 = sub_22B35F38C();
  v122 = v121;
  v151(v118, *MEMORY[0x277D07348], v119);
  v123 = sub_22B35EE3C();
  v125 = v124;
  v103(v118, v119);
  if (v154 == v123 && v122 == v125)
  {
LABEL_63:

LABEL_65:

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v105 = v0[60];
    v106 = v0[52];
    v107 = v0[53];
    v108 = __swift_project_value_buffer(v106, qword_28140BD10);
    swift_beginAccess();
    (*(v107 + 16))(v105, v108, v106);
    v109 = sub_22B36050C();
    v110 = sub_22B360CFC();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_22B116000, v109, v110, "[LoadEventsProcessor] Subscription in error state. Skip rate plan fetch", v111, 2u);
      MEMORY[0x23188F650](v111, -1, -1);
    }

    v112 = v0[68];
    v113 = v0[67];
    v114 = v0[66];
    v115 = v0[60];
    v116 = v0[52];
    v117 = v0[53];
    v73 = v0[23];

    (*(v117 + 8))(v115, v116);
    (*(v113 + 8))(v112, v114);
    goto LABEL_58;
  }

  v126 = sub_22B36134C();

  if (v126)
  {
    goto LABEL_65;
  }

  v127 = v0[51];
  v128 = v0[48];
  v129 = v0[49];
  v130 = v0[25];
  v131 = *(v129 + 16);
  v0[75] = v131;
  v0[76] = (v129 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v131(v127, v130, v128);
  if (qword_281409598 != -1)
  {
    swift_once();
  }

  v132 = v0[47];
  v133 = v0[48];
  v134 = v0[25];
  v135 = qword_28140BCE0;
  v0[77] = qword_28140BCE0;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA078, &unk_22B362BB0);
  v137 = *(v136 + 48);
  v131(v132, v134, v133);
  sub_22B35DE6C();
  (*(*(v136 - 8) + 56))(v132, 0, 1, v136);

  return MEMORY[0x2822009F8](sub_22B1EF594, v135, 0);
}

uint64_t sub_22B1EF594()
{
  v1 = v0[77];
  sub_22B1D6838(v0[71], v0[72], v0[69], v0[70], v0[47]);
  v0[78] = v2;
  v0[79] = 0;
  v3 = v0[26];
  sub_22B123284(v0[47], &qword_27D8BA420, &unk_22B364910);

  return MEMORY[0x2822009F8](sub_22B1EF678, v3, 0);
}

uint64_t sub_22B1EF678()
{
  v1 = v0[78];
  if (v1)
  {
    v92 = *(v1 + 16);
    if (v92)
    {
      v2 = 0;
      v3 = v0[49];
      v98 = v0[43];
      v4 = v0[41];
      v72 = v0[39];
      v71 = v0[35];
      v70 = v0[34];
      v90 = v0[44];
      v88 = v1 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
      v86 = (v3 + 8);
      v5 = (v4 + 8);
      v69 = (v3 + 56);
      v82 = MEMORY[0x277D84F90];
      v84 = v0[78];
      while (v2 < *(v1 + 16))
      {
        v6 = v0[76];
        v7 = v0[75];
        v8 = v0[51];
        v9 = v0[48];
        v11 = v0[45];
        v10 = v0[46];
        v100 = v2;
        sub_22B201F74(v88 + *(v90 + 72) * v2, v10, type metadata accessor for CDUsageSummaryRecords);
        (*v86)(v8, v9);
        sub_22B20203C(v10, v11, type metadata accessor for CDUsageSummaryRecords);
        v94 = v98[7];
        v7(v8, v11 + v94, v9);
        v96 = v11;
        v12 = *(v11 + v98[8]);
        v13 = *(v12 + 16);
        if (v13)
        {
          v14 = 0;
          v15 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
          while (1)
          {
            if (v14 >= *(v12 + 16))
            {
              __break(1u);
              goto LABEL_34;
            }

            (*(v4 + 16))(v0[42], v15 + *(v4 + 72) * v14, v0[40]);
            v16 = sub_22B35F97C();
            v18 = v17;

            v19 = HIBYTE(v18) & 0xF;
            if ((v18 & 0x2000000000000000) == 0)
            {
              v19 = v16 & 0xFFFFFFFFFFFFLL;
            }

            if (v19)
            {
              v20 = v0[42];
              v21 = sub_22B35F94C();
              v23 = v22;

              v24 = HIBYTE(v23) & 0xF;
              if ((v23 & 0x2000000000000000) == 0)
              {
                v24 = v21 & 0xFFFFFFFFFFFFLL;
              }

              if (v24)
              {
                break;
              }
            }

            ++v14;
            (*v5)(v0[42], v0[40]);
            if (v13 == v14)
            {
              goto LABEL_4;
            }
          }

          v25 = v0[76];
          v26 = v0[75];
          v76 = v0[69];
          v78 = v0[70];
          v27 = v0[48];
          v28 = v0[45];
          v29 = v0[42];
          v30 = v0[39];
          v80 = v0[38];
          v31 = sub_22B35F97C();
          v73 = v32;
          v74 = v31;
          v26(v30 + *(v70 + 24), v28 + v98[11], v27);
          v33 = *(v70 + 28);
          v26(v30 + v33, v96 + v94, v27);
          (*v69)(v30 + v33, 0, 1, v27);
          *v30 = v74;
          v72[1] = v73;
          v72[2] = v76;
          v72[3] = v78;
          sub_22B201F74(v30, v80, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v82 = sub_22B32D444(0, v82[2] + 1, 1, v82);
          }

          v35 = v82[2];
          v34 = v82[3];
          if (v35 >= v34 >> 1)
          {
            v82 = sub_22B32D444(v34 > 1, v35 + 1, 1, v82);
          }

          v36 = v0[45];
          v37 = v0[42];
          v38 = v0[40];
          v39 = v0[38];
          sub_22B201FDC(v0[39], type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
          (*v5)(v37, v38);
          sub_22B201FDC(v36, type metadata accessor for CDUsageSummaryRecords);
          v82[2] = v35 + 1;
          sub_22B20203C(v39, v82 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v35, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        }

        else
        {
LABEL_4:
          sub_22B201FDC(v0[45], type metadata accessor for CDUsageSummaryRecords);
        }

        v2 = v100 + 1;
        v1 = v84;
        if (v100 + 1 == v92)
        {
          goto LABEL_24;
        }
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v82 = MEMORY[0x277D84F90];
LABEL_24:

    v40 = v82;
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  v41 = v0[79];
  v0[81] = v40;
  v0[80] = v41;
  v43 = v0[50];
  v42 = v0[51];
  v45 = v0[48];
  v44 = v0[49];
  sub_22B35DE6C();
  LOBYTE(v42) = sub_22B35DDFC();
  v46 = *(v44 + 8);
  v0[82] = v46;
  v0[83] = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v46(v43, v45);
  if (v42)
  {
    if (qword_2814096B8 == -1)
    {
LABEL_27:
      v47 = qword_28140BCE8;
      v0[84] = qword_28140BCE8;

      return MEMORY[0x2822009F8](sub_22B1EFDA8, v47, 0);
    }

LABEL_35:
    swift_once();
    goto LABEL_27;
  }

  v48 = v0[72];
  v49 = v0[70];
  v46(v0[51], v0[48]);

  v50 = v0[74];
  v51 = v0[73];
  v52 = v0[68];
  v53 = v0[66];
  v54 = v0[23];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E0, &qword_22B365988);
  v56 = *(v55 + 48);
  *v54 = v40;
  v51(&v54[v56], v52, v53);
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  v57 = v0[68];
  v58 = v0[65];
  v60 = v0[63];
  v59 = v0[64];
  v62 = v0[59];
  v61 = v0[60];
  v63 = v0[57];
  v64 = v0[58];
  v66 = v0[55];
  v65 = v0[56];
  v75 = v0[54];
  v77 = v0[51];
  v79 = v0[50];
  v81 = v0[47];
  v83 = v0[46];
  v85 = v0[45];
  v87 = v0[42];
  v89 = v0[39];
  v91 = v0[38];
  v93 = v0[37];
  v95 = v0[36];
  v97 = v0[33];
  v99 = v0[30];
  v101 = v0[29];

  v67 = v0[1];

  return v67();
}

uint64_t sub_22B1EFDA8()
{
  v1 = v0[84];
  v2 = v0[80];
  sub_22B32BF44(v0[71], v0[72], v0[69], v0[70], v0[30]);
  v3 = v0[72];
  if (v2)
  {
    v4 = v0[70];
    v5 = v0[26];

    v6 = sub_22B1F06EC;
    v7 = v5;
  }

  else
  {
    v8 = v0[26];
    v9 = v0[72];

    v6 = sub_22B1EFE84;
    v7 = v8;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_22B1EFE84()
{
  v1 = *(v0 + 240);
  if ((*(*(v0 + 256) + 48))(v1, 1, *(v0 + 248)) == 1)
  {
    v2 = *(v0 + 664);
    v3 = *(v0 + 560);
    (*(v0 + 656))(*(v0 + 408), *(v0 + 384));

    sub_22B123284(*(v0 + 240), &qword_27D8BA6E8, &qword_22B365990);
    v1 = *(v0 + 648);
  }

  else
  {
    v4 = *(v0 + 264);
    sub_22B20203C(v1, v4, type metadata accessor for CDUsagePointRecords);
    v5 = *(v4 + 32);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = *(v0 + 224);
      v9 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v10 = (v8 + 8);
      while (1)
      {
        if (v7 >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_19;
        }

        (*(v8 + 16))(*(v0 + 232), v9 + *(v8 + 72) * v7, *(v0 + 216));
        v1 = sub_22B35F75C();
        v12 = v11;

        v13 = HIBYTE(v12) & 0xF;
        if ((v12 & 0x2000000000000000) == 0)
        {
          v13 = v1 & 0xFFFFFFFFFFFFLL;
        }

        if (v13)
        {
          break;
        }

        ++v7;
        (*v10)(*(v0 + 232), *(v0 + 216));
        if (v6 == v7)
        {
          goto LABEL_10;
        }
      }

      v20 = *(v0 + 608);
      v21 = *(v0 + 600);
      v76 = *(v0 + 560);
      v79 = *(v0 + 648);
      v22 = *(v0 + 408);
      v23 = *(v0 + 384);
      v24 = *(v0 + 392);
      v25 = *(v0 + 296);
      v70 = *(v0 + 552);
      v73 = *(v0 + 288);
      v26 = *(v0 + 272);
      v27 = *(v0 + 232);
      v28 = sub_22B35F75C();
      v68 = v29;
      v21(v25 + *(v26 + 24), v22, v23);
      v30 = *(v26 + 28);
      sub_22B35DE6C();
      (*(v24 + 56))(v25 + v30, 0, 1, v23);
      *v25 = v28;
      v25[1] = v68;
      v25[2] = v70;
      v25[3] = v76;
      sub_22B201F74(v25, v73, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1 = *(v0 + 648);
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

LABEL_19:
      v1 = sub_22B32D444(0, *(v1 + 16) + 1, 1, v1);
LABEL_12:
      v33 = *(v1 + 16);
      v32 = *(v1 + 24);
      if (v33 >= v32 >> 1)
      {
        v1 = sub_22B32D444(v32 > 1, v33 + 1, 1, v1);
      }

      v71 = *(v0 + 656);
      v74 = *(v0 + 664);
      v34 = *(v0 + 408);
      v35 = *(v0 + 384);
      v77 = *(v0 + 288);
      v36 = *(v0 + 280);
      v37 = *(v0 + 264);
      v38 = *(v0 + 232);
      v39 = *(v0 + 216);
      sub_22B201FDC(*(v0 + 296), type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      (*v10)(v38, v39);
      v71(v34, v35);
      sub_22B201FDC(v37, type metadata accessor for CDUsagePointRecords);
      *(v1 + 16) = v33 + 1;
      sub_22B20203C(v77, v1 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v33, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    }

    else
    {
LABEL_10:
      v14 = *(v0 + 664);
      v15 = *(v0 + 656);
      v16 = *(v0 + 560);
      v17 = *(v0 + 408);
      v18 = *(v0 + 384);
      v19 = *(v0 + 264);

      v15(v17, v18);
      sub_22B201FDC(v19, type metadata accessor for CDUsagePointRecords);
      v1 = *(v0 + 648);
    }
  }

  v40 = *(v0 + 592);
  v41 = *(v0 + 584);
  v42 = *(v0 + 544);
  v43 = *(v0 + 528);
  v44 = *(v0 + 184);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E0, &qword_22B365988);
  v46 = *(v45 + 48);
  *v44 = v1;
  v41(v44 + v46, v42, v43);
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v47 = *(v0 + 544);
  v48 = *(v0 + 520);
  v50 = *(v0 + 504);
  v49 = *(v0 + 512);
  v52 = *(v0 + 472);
  v51 = *(v0 + 480);
  v53 = *(v0 + 456);
  v54 = *(v0 + 464);
  v56 = *(v0 + 440);
  v55 = *(v0 + 448);
  v59 = *(v0 + 432);
  v60 = *(v0 + 408);
  v61 = *(v0 + 400);
  v62 = *(v0 + 376);
  v63 = *(v0 + 368);
  v64 = *(v0 + 360);
  v65 = *(v0 + 336);
  v66 = *(v0 + 312);
  v67 = *(v0 + 304);
  v69 = *(v0 + 296);
  v72 = *(v0 + 288);
  v75 = *(v0 + 264);
  v78 = *(v0 + 240);
  v80 = *(v0 + 232);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_22B1F03DC()
{
  v1 = MEMORY[0x277D84F90];
  v0[81] = MEMORY[0x277D84F90];
  v0[80] = 0;
  v2 = v0[50];
  v3 = v0[51];
  v4 = v0[48];
  v5 = v0[49];
  sub_22B35DE6C();
  LOBYTE(v3) = sub_22B35DDFC();
  v6 = *(v5 + 8);
  v0[82] = v6;
  v0[83] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  if (v3)
  {
    if (qword_2814096B8 != -1)
    {
      swift_once();
    }

    v7 = qword_28140BCE8;
    v0[84] = qword_28140BCE8;

    return MEMORY[0x2822009F8](sub_22B1EFDA8, v7, 0);
  }

  else
  {
    v8 = v0[72];
    v9 = v0[70];
    v6(v0[51], v0[48]);

    v10 = v0[74];
    v11 = v0[73];
    v12 = v0[68];
    v13 = v0[66];
    v14 = v0[23];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E0, &qword_22B365988);
    v16 = *(v15 + 48);
    *v14 = v1;
    v11(&v14[v16], v12, v13);
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
    v17 = v0[68];
    v18 = v0[65];
    v20 = v0[63];
    v19 = v0[64];
    v22 = v0[59];
    v21 = v0[60];
    v23 = v0[57];
    v24 = v0[58];
    v26 = v0[55];
    v25 = v0[56];
    v29 = v0[54];
    v30 = v0[51];
    v31 = v0[50];
    v32 = v0[47];
    v33 = v0[46];
    v34 = v0[45];
    v35 = v0[42];
    v36 = v0[39];
    v37 = v0[38];
    v38 = v0[37];
    v39 = v0[36];
    v40 = v0[33];
    v41 = v0[30];
    v42 = v0[29];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_22B1F06EC()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  (*(v0 + 656))(*(v0 + 408), *(v0 + 384));
  (*(v3 + 56))(v4, 1, 1, v2);
  sub_22B123284(*(v0 + 240), &qword_27D8BA6E8, &qword_22B365990);
  v5 = *(v0 + 648);
  v6 = *(v0 + 592);
  v7 = *(v0 + 584);
  v8 = *(v0 + 544);
  v9 = *(v0 + 528);
  v10 = *(v0 + 184);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E0, &qword_22B365988);
  v12 = *(v11 + 48);
  *v10 = v5;
  v7(&v10[v12], v8, v9);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v13 = *(v0 + 544);
  v14 = *(v0 + 520);
  v16 = *(v0 + 504);
  v15 = *(v0 + 512);
  v18 = *(v0 + 472);
  v17 = *(v0 + 480);
  v19 = *(v0 + 456);
  v20 = *(v0 + 464);
  v22 = *(v0 + 440);
  v21 = *(v0 + 448);
  v25 = *(v0 + 432);
  v26 = *(v0 + 408);
  v27 = *(v0 + 400);
  v28 = *(v0 + 376);
  v29 = *(v0 + 368);
  v30 = *(v0 + 360);
  v31 = *(v0 + 336);
  v32 = *(v0 + 312);
  v33 = *(v0 + 304);
  v34 = *(v0 + 296);
  v35 = *(v0 + 288);
  v36 = *(v0 + 264);
  v37 = *(v0 + 240);
  v38 = *(v0 + 232);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_22B1F094C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6D8, &qword_22B365980) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = sub_22B35DF1C();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1F0AD0, v2, 0);
}

uint64_t sub_22B1F0AD0()
{
  v1 = v0[2];
  sub_22B35EAFC();
  v2 = *v1;
  v3 = v1[1];
  v4 = (v1 + *(type metadata accessor for CDEnergySite() + 28));
  v5 = *v4;
  v6 = v4[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = sub_22B35EAEC();
  v0[13] = v9;
  v10 = v9;
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];
  sub_22B35DEBC();
  if ((*(v11 + 48))(v13, 1, v12) == 1)
  {
    v14 = v0[9];

    sub_22B123284(v14, &qword_27D8BA970, &unk_22B363560);
    v15 = v0[12];
    v16 = v0[8];
    v17 = v0[9];
    v19 = v0[6];
    v18 = v0[7];
    v20 = v0[5];

    v21 = v0[1];

    return v21();
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    v23 = swift_task_alloc();
    v0[14] = v23;
    *v23 = v0;
    v23[1] = sub_22B1F0CC4;
    v24 = v0[8];
    v25 = v0[3];
    v26 = v0[4];

    return sub_22B1EE3B0(v24, v10, v25);
  }
}

uint64_t sub_22B1F0CC4()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B1F0DD4, v2, 0);
}

uint64_t sub_22B1F0DD4()
{
  v1 = v0[7];
  sub_22B170BE0(v0[8], v1, &qword_27D8BA6D8, &qword_22B365980);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E0, &qword_22B365988);
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  v5 = v0[7];
  v6 = v0[5];
  if (v4 == 1)
  {
    sub_22B123284(v0[7], &qword_27D8BA6D8, &qword_22B365980);
    v7 = sub_22B35E0BC();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

  else
  {
    v8 = *v5;

    v9 = *(v2 + 48);
    v10 = sub_22B35E0BC();
    v11 = *(v10 - 8);
    (*(v11 + 32))(v6, &v5[v9], v10);
    (*(v11 + 56))(v6, 0, 1, v10);
  }

  v12 = v0[6];
  sub_22B170BE0(v0[8], v12, &qword_27D8BA6D8, &qword_22B365980);
  v13 = v3(v12, 1, v2);
  v14 = v0[6];
  if (v13 == 1)
  {
    sub_22B123284(v0[6], &qword_27D8BA6D8, &qword_22B365980);
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = *v14;
    v16 = *(v2 + 48);
    v17 = sub_22B35E0BC();
    (*(*(v17 - 8) + 8))(v14 + v16, v17);
  }

  v0[15] = v15;
  v18 = swift_task_alloc();
  v0[16] = v18;
  *v18 = v0;
  v18[1] = sub_22B1F108C;
  v19 = v0[12];
  v21 = v0[4];
  v20 = v0[5];
  v22 = v0[3];

  return sub_22B1E982C(v19, v20, v22, v15);
}

uint64_t sub_22B1F108C()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v6 = *v0;

  sub_22B123284(v3, &unk_27D8BA080, &unk_22B364280);

  return MEMORY[0x2822009F8](sub_22B1F11EC, v4, 0);
}

uint64_t sub_22B1F11EC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);

  sub_22B123284(v4, &qword_27D8BA6D8, &qword_22B365980);
  (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 96);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 40);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22B1F12D0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22B36052C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8A0, &unk_22B365970) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = type metadata accessor for CDEnergySite();
  v3[12] = v8;
  v9 = *(v8 - 8);
  v3[13] = v9;
  v10 = *(v9 + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1F1428, v2, 0);
}

uint64_t sub_22B1F1428()
{
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = qword_28140BDD0;
  v0[15] = qword_28140BDD0;
  v0[16] = sub_22B35DECC();
  v0[17] = v3;

  return MEMORY[0x2822009F8](sub_22B1F14D0, v2, 0);
}

uint64_t sub_22B1F14D0()
{
  v1 = v0[15];
  v2 = v0[7];
  sub_22B141AE8(v0[16], v0[17], 1, v0[11]);

  return MEMORY[0x2822009F8](sub_22B1F155C, v2, 0);
}

uint64_t sub_22B1F155C()
{
  v1 = v0[11];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    sub_22B123284(v1, &qword_27D8BA8A0, &unk_22B365970);
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[8];
    v5 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v2, v5, v4);
    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22B116000, v6, v7, "[LoadEventsProcessor] No owned sites found", v12, 2u);
      MEMORY[0x23188F650](v12, -1, -1);
    }

    (*(v10 + 8))(v9, v11);
    v13 = v0[14];
    v14 = v0[10];
    v15 = v0[11];

    v16 = v0[1];

    return v16();
  }

  else
  {
    sub_22B20203C(v1, v0[14], type metadata accessor for CDEnergySite);
    v18 = swift_task_alloc();
    v0[18] = v18;
    *v18 = v0;
    v18[1] = sub_22B1F17BC;
    v19 = v0[14];
    v20 = v0[6];
    v21 = v0[7];

    return sub_22B1F094C(v19, v20);
  }
}

uint64_t sub_22B1F17BC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B1F18CC, v2, 0);
}

uint64_t sub_22B1F18CC()
{
  sub_22B201FDC(v0[14], type metadata accessor for CDEnergySite);
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22B1F195C(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_22B35DE9C();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v6 = sub_22B35D8BC();
  v2[28] = v6;
  v7 = *(v6 - 8);
  v2[29] = v7;
  v8 = *(v7 + 64) + 15;
  v2[30] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560) - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v10 = sub_22B35DF1C();
  v2[32] = v10;
  v11 = *(v10 - 8);
  v2[33] = v11;
  v12 = *(v11 + 64) + 15;
  v2[34] = swift_task_alloc();
  v13 = sub_22B36052C();
  v2[35] = v13;
  v14 = *(v13 - 8);
  v2[36] = v14;
  v15 = *(v14 + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v16 = *(type metadata accessor for CDEnergySite() - 8);
  v2[41] = v16;
  v17 = *(v16 + 64) + 15;
  v2[42] = swift_task_alloc();
  v18 = sub_22B35F01C();
  v2[43] = v18;
  v19 = *(v18 - 8);
  v2[44] = v19;
  v20 = *(v19 + 64) + 15;
  v2[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1F1C4C, v1, 0);
}

uint64_t sub_22B1F1C4C()
{
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  (*(v0[44] + 104))(v0[45], *MEMORY[0x277D073D0], v0[43]);
  v1 = swift_task_alloc();
  v0[46] = v1;
  *v1 = v0;
  v1[1] = sub_22B1F1D3C;
  v2 = v0[45];

  return sub_22B141FF0(0, v2);
}

uint64_t sub_22B1F1D3C(uint64_t a1)
{
  v2 = *(*v1 + 368);
  v3 = *(*v1 + 360);
  v4 = *(*v1 + 352);
  v5 = *(*v1 + 344);
  v6 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 376) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_22B1F1EB0, v6, 0);
}

uint64_t sub_22B1F1EB0()
{
  v106 = v0;
  v1 = *(v0 + 376);
  if (v1)
  {
    v2 = *(v1 + 16);
    v101 = *(v0 + 376);
    if (v2)
    {
      v3 = *(v0 + 328);
      v4 = *(v0 + 336);
      v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v6 = *(v3 + 72);
      v7 = MEMORY[0x277D84F90];
      do
      {
        v8 = *(v0 + 336);
        sub_22B201F74(v5, v8, type metadata accessor for CDEnergySite);
        v9 = *v8;
        v10 = *(v4 + 8);

        sub_22B201FDC(v8, type metadata accessor for CDEnergySite);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_22B32CD20(0, *(v7 + 2) + 1, 1, v7);
        }

        v12 = *(v7 + 2);
        v11 = *(v7 + 3);
        if (v12 >= v11 >> 1)
        {
          v7 = sub_22B32CD20((v11 > 1), v12 + 1, 1, v7);
        }

        *(v7 + 2) = v12 + 1;
        v13 = &v7[16 * v12];
        *(v13 + 4) = v9;
        *(v13 + 5) = v10;
        v5 += v6;
        --v2;
      }

      while (v2);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v25 = *(v0 + 176);

    v26 = *(v0 + 176);
    if (v25)
    {
      v27 = *(v0 + 176);
    }

    else
    {
      v28 = sub_22B35EABC();
      v29 = sub_22B35EAAC();
      *(v0 + 40) = v28;
      *(v0 + 48) = &off_283EF8EA8;
      *(v0 + 16) = v29;
      type metadata accessor for ActivityLogCoordinator();
      v27 = swift_allocObject();
      v30 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v28);
      v31 = *(v28 - 8);
      v32 = *(v31 + 64) + 15;
      v33 = swift_task_alloc();
      (*(v31 + 16))(v33, v30, v28);
      v34 = *v33;
      v27[5] = v28;
      v27[6] = &off_283EF8EA8;
      v27[2] = v34;
      v27[7] = 5000;
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }

    *(v0 + 384) = v27;
    type metadata accessor for LoadEventManager();
    inited = swift_initStackObject();
    *(v0 + 392) = inited;
    *(inited + 16) = v27;

    v36 = sub_22B31A80C(v7);
    *(v0 + 400) = v36;

    v37 = 0;
    v38 = *(v36 + 32);
    *(v0 + 440) = v38;
    v39 = 1 << v38;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v41 = v40 & *(v36 + 56);
    while (v41)
    {
      v42 = *(v0 + 400);
LABEL_29:
      *(v0 + 408) = v41;
      *(v0 + 416) = v37;
      v44 = (*(v42 + 48) + ((v37 << 10) | (16 * __clz(__rbit64(v41)))));
      v46 = *v44;
      v45 = v44[1];

      if (sub_22B360BFC())
      {

        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v75 = *(v0 + 320);
        v76 = *(v0 + 280);
        v77 = *(v0 + 288);
        v78 = __swift_project_value_buffer(v76, qword_28140BD10);
        swift_beginAccess();
        (*(v77 + 16))(v75, v78, v76);
        v79 = sub_22B36050C();
        v80 = sub_22B360D1C();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_22B116000, v79, v80, "[LoadEventsProcessor] Task was cancelled", v81, 2u);
          MEMORY[0x23188F650](v81, -1, -1);
        }

        v82 = *(v0 + 392);
        v83 = *(v0 + 400);
        v84 = *(v0 + 320);
        v85 = *(v0 + 280);
        v86 = *(v0 + 288);

        (*(v86 + 8))(v84, v85);
        v103 = 0;
        goto LABEL_37;
      }

      v48 = *(v0 + 256);
      v47 = *(v0 + 264);
      v49 = *(v0 + 248);
      sub_22B35DEBC();
      if ((*(v47 + 48))(v49, 1, v48) != 1)
      {
        v88 = *(v0 + 264);
        v87 = *(v0 + 272);
        v90 = *(v0 + 248);
        v89 = *(v0 + 256);
        v104 = *(v0 + 240);
        v92 = *(v0 + 208);
        v91 = *(v0 + 216);
        v94 = *(v0 + 192);
        v93 = *(v0 + 200);

        (*(v88 + 32))(v87, v90, v89);
        sub_22B35DE6C();
        sub_22B35DDCC();
        (*(v93 + 8))(v92, v94);
        sub_22B35DE6C();
        sub_22B35D88C();
        v95 = swift_task_alloc();
        *(v0 + 424) = v95;
        *v95 = v0;
        v95[1] = sub_22B1F27C8;
        v96 = *(v0 + 392);
        v97 = *(v0 + 272);
        v98 = *(v0 + 240);

        return sub_22B1A8FD4(v97, v98, 200000);
      }

      sub_22B123284(*(v0 + 248), &qword_27D8BA970, &unk_22B363560);
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v41 &= v41 - 1;
      v50 = *(v0 + 304);
      v52 = *(v0 + 280);
      v51 = *(v0 + 288);
      v53 = __swift_project_value_buffer(v52, qword_28140BD10);
      swift_beginAccess();
      (*(v51 + 16))(v50, v53, v52);

      v54 = sub_22B36050C();
      v55 = sub_22B360D1C();

      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v0 + 304);
      v58 = *(v0 + 288);
      v102 = *(v0 + 280);
      if (v56)
      {
        v99 = *(v0 + 304);
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v105 = v60;
        *v59 = 136315138;
        v61 = sub_22B1A7B20(v46, v45, &v105);

        *(v59 + 4) = v61;
        _os_log_impl(&dword_22B116000, v54, v55, "[LoadEventsProcessor] Failed to parse siteID %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x23188F650](v60, -1, -1);
        MEMORY[0x23188F650](v59, -1, -1);

        (*(v58 + 8))(v99, v102);
      }

      else
      {

        (*(v58 + 8))(v57, v102);
      }
    }

    while (1)
    {
      v43 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      v42 = *(v0 + 400);
      if (v43 >= (((1 << *(v0 + 440)) + 63) >> 6))
      {
        v62 = *(v0 + 384);

        goto LABEL_36;
      }

      v41 = *(v42 + 8 * v43 + 56);
      ++v37;
      if (v41)
      {
        v37 = v43;
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  else if (qword_28140A0C8 == -1)
  {
    goto LABEL_11;
  }

  swift_once();
LABEL_11:
  v15 = *(v0 + 288);
  v14 = *(v0 + 296);
  v16 = *(v0 + 280);
  v17 = __swift_project_value_buffer(v16, qword_28140BD10);
  swift_beginAccess();
  (*(v15 + 16))(v14, v17, v16);
  v18 = sub_22B36050C();
  v19 = sub_22B360D1C();
  v20 = os_log_type_enabled(v18, v19);
  v22 = *(v0 + 288);
  v21 = *(v0 + 296);
  v23 = *(v0 + 280);
  if (v20)
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_22B116000, v18, v19, "[LoadEventsProcessor] No shared sites found", v24, 2u);
    MEMORY[0x23188F650](v24, -1, -1);
  }

  (*(v22 + 8))(v21, v23);
LABEL_36:
  v103 = 1;
LABEL_37:
  v63 = *(v0 + 360);
  v64 = *(v0 + 336);
  v66 = *(v0 + 312);
  v65 = *(v0 + 320);
  v68 = *(v0 + 296);
  v67 = *(v0 + 304);
  v69 = *(v0 + 272);
  v71 = *(v0 + 240);
  v70 = *(v0 + 248);
  v72 = *(v0 + 216);
  v100 = *(v0 + 208);

  v73 = *(v0 + 8);

  return v73(v103);
}

uint64_t sub_22B1F27C8()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;

  v5 = v2[30];
  v6 = v2[29];
  v7 = v2[28];
  v8 = v2[23];
  v9 = (v6 + 8);
  if (v0)
  {

    (*v9)(v5, v7);
    v10 = sub_22B2022F4;
  }

  else
  {
    (*v9)(v5, v7);
    v10 = sub_22B1F2978;
  }

  return MEMORY[0x2822009F8](v10, v8, 0);
}

uint64_t sub_22B1F2978()
{
  if (sub_22B360BFC())
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v1 = v0[39];
    v2 = v0[35];
    v3 = v0[36];
    v4 = __swift_project_value_buffer(v2, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v1, v4, v2);
    v5 = sub_22B36050C();
    v6 = sub_22B360D1C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v5, v6, "[LoadEventsProcessor] Task was cancelled", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v8 = v0[49];
    v9 = v0[50];
    v10 = v0[39];
    v11 = v0[35];
    v12 = v0[36];
    v14 = v0[33];
    v13 = v0[34];
    v15 = v0[32];

    (*(v12 + 8))(v10, v11);
    (*(v14 + 8))(v13, v15);
    v16 = v0[45];
    v17 = v0[42];
    v19 = v0[39];
    v18 = v0[40];
    v21 = v0[37];
    v20 = v0[38];
    v22 = v0[34];
    v24 = v0[30];
    v23 = v0[31];
    v25 = v0[27];
    v31 = v0[26];

    v26 = v0[1];

    return v26(0);
  }

  else
  {
    v28 = swift_task_alloc();
    v0[54] = v28;
    *v28 = v0;
    v28[1] = sub_22B1F2C24;
    v29 = v0[49];
    v30 = v0[34];

    return sub_22B1AA7FC(v30);
  }
}

uint64_t sub_22B1F2C24()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;

  v5 = *(v2 + 184);
  if (v0)
  {

    v6 = sub_22B2022F0;
  }

  else
  {
    v6 = sub_22B1F2D5C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B1F2D5C()
{
  v68 = v0;
  (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
  v1 = *(v0 + 416);
  v2 = (*(v0 + 408) - 1) & *(v0 + 408);
  v3 = &unk_28140A000;
  while (1)
  {
    if (!v2)
    {
      while (1)
      {
        v5 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        v4 = *(v0 + 400);
        if (v5 >= (((1 << *(v0 + 440)) + 63) >> 6))
        {
          v25 = *(v0 + 384);

          v63 = 1;
          goto LABEL_16;
        }

        v2 = *(v4 + 8 * v5 + 56);
        ++v1;
        if (v2)
        {
          v1 = v5;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

    v4 = *(v0 + 400);
LABEL_9:
    *(v0 + 408) = v2;
    *(v0 + 416) = v1;
    v6 = (*(v4 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v2)))));
    v8 = *v6;
    v7 = v6[1];

    if (sub_22B360BFC())
    {
      break;
    }

    v10 = *(v0 + 256);
    v9 = *(v0 + 264);
    v11 = *(v0 + 248);
    sub_22B35DEBC();
    if ((*(v9 + 48))(v11, 1, v10) != 1)
    {
      v51 = *(v0 + 264);
      v50 = *(v0 + 272);
      v53 = *(v0 + 248);
      v52 = *(v0 + 256);
      v66 = *(v0 + 240);
      v55 = *(v0 + 208);
      v54 = *(v0 + 216);
      v57 = *(v0 + 192);
      v56 = *(v0 + 200);

      (*(v51 + 32))(v50, v53, v52);
      sub_22B35DE6C();
      sub_22B35DDCC();
      (*(v56 + 8))(v55, v57);
      sub_22B35DE6C();
      sub_22B35D88C();
      v58 = swift_task_alloc();
      *(v0 + 424) = v58;
      *v58 = v0;
      v58[1] = sub_22B1F27C8;
      v59 = *(v0 + 392);
      v60 = *(v0 + 272);
      v61 = *(v0 + 240);

      return sub_22B1A8FD4(v60, v61, 200000);
    }

    sub_22B123284(*(v0 + 248), &qword_27D8BA970, &unk_22B363560);
    if (v3[25] != -1)
    {
      swift_once();
    }

    v2 &= v2 - 1;
    v12 = *(v0 + 304);
    v14 = *(v0 + 280);
    v13 = *(v0 + 288);
    v15 = __swift_project_value_buffer(v14, qword_28140BD10);
    swift_beginAccess();
    (*(v13 + 16))(v12, v15, v14);

    v16 = sub_22B36050C();
    v17 = sub_22B360D1C();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 304);
    v20 = *(v0 + 288);
    v64 = *(v0 + 280);
    if (v18)
    {
      v62 = *(v0 + 304);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v67 = v22;
      *v21 = 136315138;
      v23 = sub_22B1A7B20(v8, v7, &v67);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_22B116000, v16, v17, "[LoadEventsProcessor] Failed to parse siteID %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v24 = v22;
      v3 = &unk_28140A000;
      MEMORY[0x23188F650](v24, -1, -1);
      MEMORY[0x23188F650](v21, -1, -1);

      (*(v20 + 8))(v62, v64);
    }

    else
    {

      (*(v20 + 8))(v19, v64);
    }
  }

  if (v3[25] == -1)
  {
    goto LABEL_20;
  }

LABEL_27:
  swift_once();
LABEL_20:
  v38 = *(v0 + 320);
  v39 = *(v0 + 280);
  v40 = *(v0 + 288);
  v41 = __swift_project_value_buffer(v39, qword_28140BD10);
  swift_beginAccess();
  (*(v40 + 16))(v38, v41, v39);
  v42 = sub_22B36050C();
  v43 = sub_22B360D1C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_22B116000, v42, v43, "[LoadEventsProcessor] Task was cancelled", v44, 2u);
    MEMORY[0x23188F650](v44, -1, -1);
  }

  v45 = *(v0 + 392);
  v46 = *(v0 + 400);
  v47 = *(v0 + 320);
  v48 = *(v0 + 280);
  v49 = *(v0 + 288);

  (*(v49 + 8))(v47, v48);
  v63 = 0;
LABEL_16:
  v26 = *(v0 + 360);
  v27 = *(v0 + 336);
  v29 = *(v0 + 312);
  v28 = *(v0 + 320);
  v31 = *(v0 + 296);
  v30 = *(v0 + 304);
  v32 = *(v0 + 272);
  v34 = *(v0 + 240);
  v33 = *(v0 + 248);
  v35 = *(v0 + 216);
  v65 = *(v0 + 208);

  v36 = *(v0 + 8);

  return v36(v63);
}

uint64_t sub_22B1F3330(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = sub_22B35DE9C();
  v2[36] = v3;
  v4 = *(v3 - 8);
  v2[37] = v4;
  v5 = *(v4 + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v6 = sub_22B35D8BC();
  v2[40] = v6;
  v7 = *(v6 - 8);
  v2[41] = v7;
  v8 = *(v7 + 64) + 15;
  v2[42] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560) - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v10 = sub_22B35DF1C();
  v2[44] = v10;
  v11 = *(v10 - 8);
  v2[45] = v11;
  v12 = *(v11 + 64) + 15;
  v2[46] = swift_task_alloc();
  v13 = sub_22B36052C();
  v2[47] = v13;
  v14 = *(v13 - 8);
  v2[48] = v14;
  v15 = *(v14 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v16 = *(type metadata accessor for CDEnergySite() - 8);
  v2[57] = v16;
  v17 = *(v16 + 64) + 15;
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v18 = sub_22B35F01C();
  v2[60] = v18;
  v19 = *(v18 - 8);
  v2[61] = v19;
  v20 = *(v19 + 64) + 15;
  v2[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1F365C, v1, 0);
}

uint64_t sub_22B1F365C()
{
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  (*(v0[61] + 104))(v0[62], *MEMORY[0x277D073C8], v0[60]);
  v1 = swift_task_alloc();
  v0[63] = v1;
  *v1 = v0;
  v1[1] = sub_22B1F374C;
  v2 = v0[62];

  return sub_22B141FF0(1, v2);
}

uint64_t sub_22B1F374C(uint64_t a1)
{
  v2 = *(*v1 + 504);
  v3 = *(*v1 + 496);
  v4 = *(*v1 + 488);
  v5 = *(*v1 + 480);
  v6 = *(*v1 + 280);
  v8 = *v1;
  *(*v1 + 512) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_22B1F38C0, v6, 0);
}

uint64_t sub_22B1F38C0()
{
  v101 = v0;
  v1 = v0[64];
  if (v1)
  {
    v2 = sub_22B35EABC();
    v0[2] = sub_22B35EAAC();
    v0[5] = v2;
    v0[6] = &off_283EF8EA8;
    type metadata accessor for ActivityLogCoordinator();
    v3 = swift_allocObject();
    v0[65] = v3;
    v4 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v2);
    v5 = *(v2 - 8);
    v6 = *(v5 + 64) + 15;
    v7 = swift_task_alloc();
    (*(v5 + 16))(v7, v4, v2);
    v8 = *v7;
    v3[5] = v2;
    v3[6] = &off_283EF8EA8;
    v3[2] = v8;
    v3[7] = 5000;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    type metadata accessor for LoadEventManager();
    inited = swift_initStackObject();
    v0[66] = inited;
    *(inited + 16) = v3;
    v93 = v1;
    isa = v1[2].isa;
    v0[67] = isa;
    if (!isa)
    {
LABEL_17:
      v49 = v0[64];

      if (qword_27D8B9F88 != -1)
      {
        swift_once();
      }

      v50 = v0[38];
      v51 = v0[39];
      v52 = v0[36];
      v53 = v0[37];
      v54 = qword_27D8BB1B0;
      v0[73] = qword_27D8BB1B0;
      sub_22B35DE6C();
      sub_22B35DDCC();
      v55 = *(v53 + 8);
      v0[74] = v55;
      v0[75] = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v55(v50, v52);

      return MEMORY[0x2822009F8](sub_22B1F5468, v54, 0);
    }

    v11 = 0;
    v12 = &unk_28140A000;
    while (1)
    {
      v0[68] = v11;
      v14 = v0[64];
      if (v11 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      sub_22B201F74(v14 + ((*(v0[57] + 80) + 32) & ~*(v0[57] + 80)) + *(v0[57] + 72) * v11, v0[59], type metadata accessor for CDEnergySite);
      if (sub_22B360BFC())
      {
        break;
      }

      v15 = v0[59];
      v17 = v0[44];
      v16 = v0[45];
      v18 = v0[43];
      v19 = *v15;
      v20 = v15[1];
      sub_22B35DEBC();
      if ((*(v16 + 48))(v18, 1, v17) != 1)
      {
        v80 = v0[42];
        v81 = v0[38];
        v82 = v0[39];
        v83 = v0[36];
        v84 = v0[37];
        (*(v0[45] + 32))(v0[46], v0[43], v0[44]);
        sub_22B35DE6C();
        sub_22B35DDCC();
        (*(v84 + 8))(v81, v83);
        sub_22B35DE6C();
        sub_22B35D88C();
        v85 = swift_task_alloc();
        v0[69] = v85;
        *v85 = v0;
        v85[1] = sub_22B1F41FC;
        v86 = v0[66];
        v87 = v0[46];
        v88 = v0[42];

        return sub_22B1A8FD4(v87, v88, 200000);
      }

      sub_22B123284(v0[43], &qword_27D8BA970, &unk_22B363560);
      if (v12[25] != -1)
      {
        swift_once();
      }

      v22 = v0[58];
      v21 = v0[59];
      v23 = v0[52];
      v25 = v0[47];
      v24 = v0[48];
      v26 = __swift_project_value_buffer(v25, qword_28140BD10);
      swift_beginAccess();
      (*(v24 + 16))(v23, v26, v25);
      sub_22B201F74(v21, v22, type metadata accessor for CDEnergySite);
      v1 = sub_22B36050C();
      v27 = sub_22B360D1C();
      v28 = os_log_type_enabled(v1, v27);
      v29 = v0[58];
      v30 = v0[52];
      v31 = v0[47];
      v32 = (v0[48] + 8);
      if (v28)
      {
        v98 = v0[47];
        v33 = swift_slowAlloc();
        v96 = v30;
        v34 = swift_slowAlloc();
        v100 = v34;
        *v33 = 136315138;
        v35 = *v29;
        v36 = v29[1];

        sub_22B201FDC(v29, type metadata accessor for CDEnergySite);
        v37 = sub_22B1A7B20(v35, v36, &v100);

        *(v33 + 4) = v37;
        v12 = &unk_28140A000;
        _os_log_impl(&dword_22B116000, v1, v27, "[LoadEventsProcessor] Failed to parse siteID %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x23188F650](v34, -1, -1);
        MEMORY[0x23188F650](v33, -1, -1);

        (*v32)(v96, v98);
      }

      else
      {

        sub_22B201FDC(v29, type metadata accessor for CDEnergySite);
        (*v32)(v30, v31);
      }

      ++v11;
      v13 = v0[67];
      sub_22B201FDC(v0[59], type metadata accessor for CDEnergySite);
      if (v11 == v13)
      {
        goto LABEL_17;
      }
    }

    v56 = v0[64];

    if (v12[25] != -1)
    {
      swift_once();
    }

    v57 = v0[56];
    v58 = v0[47];
    v59 = v0[48];
    v60 = __swift_project_value_buffer(v58, qword_28140BD10);
    swift_beginAccess();
    (*(v59 + 16))(v57, v60, v58);
    v61 = sub_22B36050C();
    v62 = sub_22B360D1C();
    v1 = v93;
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_22B116000, v61, v62, "[LoadEventsProcessor] Task was cancelled", v63, 2u);
      MEMORY[0x23188F650](v63, -1, -1);
    }

    v64 = v0[66];
    v65 = v0[59];
    v66 = v0[56];
    v67 = v0[47];
    v68 = v0[48];

    (*(v68 + 8))(v66, v67);
    sub_22B201FDC(v65, type metadata accessor for CDEnergySite);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
LABEL_34:
      swift_once();
    }

    v39 = v0[48];
    v38 = v0[49];
    v40 = v0[47];
    v41 = __swift_project_value_buffer(v40, qword_28140BD10);
    swift_beginAccess();
    (*(v39 + 16))(v38, v41, v40);
    v42 = sub_22B36050C();
    v43 = sub_22B360D1C();
    v44 = os_log_type_enabled(v42, v43);
    v46 = v0[48];
    v45 = v0[49];
    v47 = v0[47];
    if (v44)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_22B116000, v42, v43, "[LoadEventsProcessor] No owned sites found", v48, 2u);
      MEMORY[0x23188F650](v48, -1, -1);
    }

    (*(v46 + 8))(v45, v47);
  }

  v69 = v0[62];
  v99 = v1 == 0;
  v71 = v0[58];
  v70 = v0[59];
  v73 = v0[55];
  v72 = v0[56];
  v75 = v0[53];
  v74 = v0[54];
  v76 = v0[51];
  v77 = v0[52];
  v78 = v0[50];
  v90 = v0[49];
  v91 = v0[46];
  v92 = v0[43];
  v94 = v0[42];
  v95 = v0[39];
  v97 = v0[38];

  v79 = v0[1];

  return v79(v99);
}

uint64_t sub_22B1F41FC()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;

  v5 = v2[42];
  v6 = v2[41];
  v7 = v2[40];
  v8 = v2[35];
  v9 = (v6 + 8);
  if (v0)
  {

    (*v9)(v5, v7);
    v10 = sub_22B1F5F88;
  }

  else
  {
    (*v9)(v5, v7);
    v10 = sub_22B202280;
  }

  return MEMORY[0x2822009F8](v10, v8, 0);
}

uint64_t sub_22B1F43AC()
{
  v1 = *(*v0 + 560);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B1F44BC, v2, 0);
}

uint64_t sub_22B1F44BC()
{
  if (sub_22B360BFC())
  {
    v1 = v0[64];

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = v0[54];
    v3 = v0[47];
    v4 = v0[48];
    v5 = __swift_project_value_buffer(v3, qword_28140BD10);
    swift_beginAccess();
    (*(v4 + 16))(v2, v5, v3);
    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22B116000, v6, v7, "[LoadEventsProcessor] Task was cancelled", v8, 2u);
      MEMORY[0x23188F650](v8, -1, -1);
    }

    v9 = v0[66];
    v10 = v0[59];
    v11 = v0[54];
    v12 = v0[47];
    v13 = v0[48];
    v15 = v0[45];
    v14 = v0[46];
    v16 = v0[44];

    (*(v13 + 8))(v11, v12);
    (*(v15 + 8))(v14, v16);
    sub_22B201FDC(v10, type metadata accessor for CDEnergySite);
    v17 = v0[62];
    v19 = v0[58];
    v18 = v0[59];
    v21 = v0[55];
    v20 = v0[56];
    v23 = v0[53];
    v22 = v0[54];
    v24 = v0[51];
    v25 = v0[52];
    v26 = v0[50];
    v32 = v0[49];
    v33 = v0[46];
    v34 = v0[43];
    v35 = v0[42];
    v36 = v0[39];
    v37 = v0[38];

    v27 = v0[1];

    return v27(0);
  }

  else
  {
    v29 = swift_task_alloc();
    v0[71] = v29;
    *v29 = v0;
    v29[1] = sub_22B1F47C0;
    v30 = v0[46];
    v31 = v0[35];

    return sub_22B203F38(v30);
  }
}

uint64_t sub_22B1F47C0()
{
  v1 = *(*v0 + 568);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B1F48D0, v2, 0);
}

uint64_t sub_22B1F48D0()
{
  if (sub_22B360BFC())
  {
    v1 = v0[64];

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = v0[53];
    v3 = v0[47];
    v4 = v0[48];
    v5 = __swift_project_value_buffer(v3, qword_28140BD10);
    swift_beginAccess();
    (*(v4 + 16))(v2, v5, v3);
    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22B116000, v6, v7, "[LoadEventsProcessor] Task was cancelled", v8, 2u);
      MEMORY[0x23188F650](v8, -1, -1);
    }

    v9 = v0[66];
    v10 = v0[59];
    v11 = v0[53];
    v12 = v0[47];
    v13 = v0[48];
    v15 = v0[45];
    v14 = v0[46];
    v16 = v0[44];

    (*(v13 + 8))(v11, v12);
    (*(v15 + 8))(v14, v16);
    sub_22B201FDC(v10, type metadata accessor for CDEnergySite);
    v17 = v0[62];
    v19 = v0[58];
    v18 = v0[59];
    v21 = v0[55];
    v20 = v0[56];
    v23 = v0[53];
    v22 = v0[54];
    v24 = v0[51];
    v25 = v0[52];
    v26 = v0[50];
    v32 = v0[49];
    v33 = v0[46];
    v34 = v0[43];
    v35 = v0[42];
    v36 = v0[39];
    v37 = v0[38];

    v27 = v0[1];

    return v27(0);
  }

  else
  {
    v29 = swift_task_alloc();
    v0[72] = v29;
    *v29 = v0;
    v29[1] = sub_22B1F4BD4;
    v30 = v0[66];
    v31 = v0[46];

    return sub_22B1AA7FC(v31);
  }
}

uint64_t sub_22B1F4BD4()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v4 = *v1;

  v5 = *(v2 + 280);
  if (v0)
  {

    v6 = sub_22B2022F8;
  }

  else
  {
    v6 = sub_22B1F4D0C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B1F4D0C()
{
  v82 = v0;
  v1 = v0[67];
  v2 = v0[59];
  v3 = v0[68] + 1;
  (*(v0[45] + 8))(v0[46], v0[44]);
  sub_22B201FDC(v2, type metadata accessor for CDEnergySite);
  if (v3 == v1)
  {
LABEL_2:
    v4 = v0[64];

    if (qword_27D8B9F88 != -1)
    {
LABEL_27:
      swift_once();
    }

    v5 = v0[38];
    v6 = v0[39];
    v7 = v0[36];
    v8 = v0[37];
    v9 = qword_27D8BB1B0;
    v0[73] = qword_27D8BB1B0;
    sub_22B35DE6C();
    sub_22B35DDCC();
    v10 = *(v8 + 8);
    v0[74] = v10;
    v0[75] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v5, v7);

    return MEMORY[0x2822009F8](sub_22B1F5468, v9, 0);
  }

  else
  {
    v11 = v0[68] + 1;
    v12 = &unk_28140A000;
    while (1)
    {
      v0[68] = v11;
      v14 = v0[64];
      if (v11 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      sub_22B201F74(v14 + ((*(v0[57] + 80) + 32) & ~*(v0[57] + 80)) + *(v0[57] + 72) * v11, v0[59], type metadata accessor for CDEnergySite);
      if (sub_22B360BFC())
      {
        break;
      }

      v15 = v0[59];
      v17 = v0[44];
      v16 = v0[45];
      v18 = v0[43];
      v19 = *v15;
      v20 = v15[1];
      sub_22B35DEBC();
      if ((*(v16 + 48))(v18, 1, v17) != 1)
      {
        v63 = v0[42];
        v64 = v0[38];
        v65 = v0[39];
        v66 = v0[36];
        v67 = v0[37];
        (*(v0[45] + 32))(v0[46], v0[43], v0[44]);
        sub_22B35DE6C();
        sub_22B35DDCC();
        (*(v67 + 8))(v64, v66);
        sub_22B35DE6C();
        sub_22B35D88C();
        v68 = swift_task_alloc();
        v0[69] = v68;
        *v68 = v0;
        v68[1] = sub_22B1F41FC;
        v69 = v0[66];
        v70 = v0[46];
        v71 = v0[42];

        return sub_22B1A8FD4(v70, v71, 200000);
      }

      sub_22B123284(v0[43], &qword_27D8BA970, &unk_22B363560);
      if (v12[25] != -1)
      {
        swift_once();
      }

      v22 = v0[58];
      v21 = v0[59];
      v23 = v0[52];
      v25 = v0[47];
      v24 = v0[48];
      v26 = __swift_project_value_buffer(v25, qword_28140BD10);
      swift_beginAccess();
      (*(v24 + 16))(v23, v26, v25);
      sub_22B201F74(v21, v22, type metadata accessor for CDEnergySite);
      v27 = sub_22B36050C();
      v28 = sub_22B360D1C();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[58];
      v31 = v0[52];
      v32 = v0[47];
      v33 = (v0[48] + 8);
      if (v29)
      {
        v79 = v0[47];
        v34 = swift_slowAlloc();
        v77 = v31;
        v35 = swift_slowAlloc();
        v81 = v35;
        *v34 = 136315138;
        v36 = *v30;
        v37 = v30[1];

        sub_22B201FDC(v30, type metadata accessor for CDEnergySite);
        v38 = sub_22B1A7B20(v36, v37, &v81);

        *(v34 + 4) = v38;
        v12 = &unk_28140A000;
        _os_log_impl(&dword_22B116000, v27, v28, "[LoadEventsProcessor] Failed to parse siteID %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x23188F650](v35, -1, -1);
        MEMORY[0x23188F650](v34, -1, -1);

        (*v33)(v77, v79);
      }

      else
      {

        sub_22B201FDC(v30, type metadata accessor for CDEnergySite);
        (*v33)(v31, v32);
      }

      ++v11;
      v13 = v0[67];
      sub_22B201FDC(v0[59], type metadata accessor for CDEnergySite);
      if (v11 == v13)
      {
        goto LABEL_2;
      }
    }

    v39 = v0[64];

    if (v12[25] != -1)
    {
      swift_once();
    }

    v40 = v0[56];
    v41 = v0[47];
    v42 = v0[48];
    v43 = __swift_project_value_buffer(v41, qword_28140BD10);
    swift_beginAccess();
    (*(v42 + 16))(v40, v43, v41);
    v44 = sub_22B36050C();
    v45 = sub_22B360D1C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_22B116000, v44, v45, "[LoadEventsProcessor] Task was cancelled", v46, 2u);
      MEMORY[0x23188F650](v46, -1, -1);
    }

    v47 = v0[66];
    v48 = v0[59];
    v49 = v0[56];
    v50 = v0[47];
    v51 = v0[48];

    (*(v51 + 8))(v49, v50);
    sub_22B201FDC(v48, type metadata accessor for CDEnergySite);
    v52 = v0[62];
    v54 = v0[58];
    v53 = v0[59];
    v56 = v0[55];
    v55 = v0[56];
    v58 = v0[53];
    v57 = v0[54];
    v59 = v0[51];
    v60 = v0[52];
    v61 = v0[50];
    v73 = v0[49];
    v74 = v0[46];
    v75 = v0[43];
    v76 = v0[42];
    v78 = v0[39];
    v80 = v0[38];

    v62 = v0[1];

    return v62(0);
  }
}

uint64_t sub_22B1F5468()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[73];
  v4 = v0[39];
  v6 = v0[35];
  v5 = v0[36];
  sub_22B18687C(v4);
  v2(v4, v5);

  return MEMORY[0x2822009F8](sub_22B1F5500, v6, 0);
}

uint64_t sub_22B1F5500()
{
  if (sub_22B360BFC())
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v1 = v0[51];
    v2 = v0[47];
    v3 = v0[48];
    v4 = __swift_project_value_buffer(v2, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v1, v4, v2);
    v5 = sub_22B36050C();
    v6 = sub_22B360D1C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v5, v6, "[LoadEventsProcessor] Task was cancelled", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v8 = v0[66];
    v9 = v0[51];
    v10 = v0[47];
    v11 = v0[48];

    (*(v11 + 8))(v9, v10);
    v12 = v0[62];
    v14 = v0[58];
    v13 = v0[59];
    v16 = v0[55];
    v15 = v0[56];
    v18 = v0[53];
    v17 = v0[54];
    v19 = v0[51];
    v20 = v0[52];
    v21 = v0[50];
    v31 = v0[49];
    v32 = v0[46];
    v33 = v0[43];
    v34 = v0[42];
    v35 = v0[39];
    v36 = v0[38];

    v22 = v0[1];

    return v22(0);
  }

  else
  {
    if (qword_27D8B9FB8 != -1)
    {
      swift_once();
    }

    v24 = v0[75];
    v25 = v0[74];
    v26 = v0[38];
    v27 = v0[39];
    v28 = v0[36];
    sub_22B35DE6C();
    sub_22B35DDCC();
    v25(v26, v28);
    v29 = swift_task_alloc();
    v0[76] = v29;
    *v29 = v0;
    v29[1] = sub_22B1F5830;
    v30 = v0[39];

    return sub_22B318D18(v30);
  }
}

uint64_t sub_22B1F5830()
{
  v1 = *(*v0 + 608);
  v2 = *(*v0 + 600);
  v3 = *(*v0 + 592);
  v4 = *(*v0 + 312);
  v5 = *(*v0 + 288);
  v6 = *(*v0 + 280);
  v8 = *v0;

  v3(v4, v5);

  return MEMORY[0x2822009F8](sub_22B1F59AC, v6, 0);
}

uint64_t sub_22B1F59AC()
{
  if (sub_22B360BFC())
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v1 = v0[50];
    v2 = v0[47];
    v3 = v0[48];
    v4 = __swift_project_value_buffer(v2, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v1, v4, v2);
    v5 = sub_22B36050C();
    v6 = sub_22B360D1C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v5, v6, "[LoadEventsProcessor] Task was cancelled", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v8 = v0[66];
    v9 = v0[50];
    v10 = v0[47];
    v11 = v0[48];

    (*(v11 + 8))(v9, v10);
    v12 = v0[62];
    v14 = v0[58];
    v13 = v0[59];
    v16 = v0[55];
    v15 = v0[56];
    v18 = v0[53];
    v17 = v0[54];
    v19 = v0[51];
    v20 = v0[52];
    v21 = v0[50];
    v31 = v0[49];
    v32 = v0[46];
    v33 = v0[43];
    v34 = v0[42];
    v35 = v0[39];
    v36 = v0[38];

    v22 = v0[1];

    return v22(0);
  }

  else
  {
    if (qword_27D8B9F78 != -1)
    {
      swift_once();
    }

    v24 = v0[75];
    v25 = v0[74];
    v26 = v0[38];
    v27 = v0[39];
    v28 = v0[36];
    sub_22B35DE6C();
    sub_22B35DDCC();
    v25(v26, v28);
    v29 = swift_task_alloc();
    v0[77] = v29;
    *v29 = v0;
    v29[1] = sub_22B1F5CDC;
    v30 = v0[39];

    return sub_22B1758E0(v30);
  }
}

uint64_t sub_22B1F5CDC()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 600);
  v3 = *(*v0 + 592);
  v4 = *(*v0 + 312);
  v5 = *(*v0 + 288);
  v6 = *(*v0 + 280);
  v8 = *v0;

  v3(v4, v5);

  return MEMORY[0x2822009F8](sub_22B1F5E58, v6, 0);
}

uint64_t sub_22B1F5E58()
{
  v1 = v0[65];

  v2 = v0[62];
  v4 = v0[58];
  v3 = v0[59];
  v6 = v0[55];
  v5 = v0[56];
  v8 = v0[53];
  v7 = v0[54];
  v9 = v0[51];
  v10 = v0[52];
  v11 = v0[50];
  v14 = v0[49];
  v15 = v0[46];
  v16 = v0[43];
  v17 = v0[42];
  v18 = v0[39];
  v19 = v0[38];

  v12 = v0[1];

  return v12(1);
}

uint64_t sub_22B1F5F88()
{
  if (sub_22B360BFC())
  {
    v1 = v0[64];

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = v0[55];
    v3 = v0[47];
    v4 = v0[48];
    v5 = __swift_project_value_buffer(v3, qword_28140BD10);
    swift_beginAccess();
    (*(v4 + 16))(v2, v5, v3);
    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22B116000, v6, v7, "[LoadEventsProcessor] Task was cancelled", v8, 2u);
      MEMORY[0x23188F650](v8, -1, -1);
    }

    v9 = v0[66];
    v10 = v0[59];
    v11 = v0[55];
    v12 = v0[47];
    v13 = v0[48];
    v15 = v0[45];
    v14 = v0[46];
    v16 = v0[44];

    (*(v13 + 8))(v11, v12);
    (*(v15 + 8))(v14, v16);
    sub_22B201FDC(v10, type metadata accessor for CDEnergySite);
    v17 = v0[62];
    v19 = v0[58];
    v18 = v0[59];
    v21 = v0[55];
    v20 = v0[56];
    v23 = v0[53];
    v22 = v0[54];
    v24 = v0[51];
    v25 = v0[52];
    v26 = v0[50];
    v33 = v0[49];
    v34 = v0[46];
    v35 = v0[43];
    v36 = v0[42];
    v37 = v0[39];
    v38 = v0[38];

    v27 = v0[1];

    return v27(0);
  }

  else
  {
    v29 = swift_task_alloc();
    v0[70] = v29;
    *v29 = v0;
    v29[1] = sub_22B1F43AC;
    v30 = v0[59];
    v31 = v0[34];
    v32 = v0[35];

    return sub_22B1F094C(v30, v31);
  }
}

uint64_t sub_22B1F628C()
{
  v1[5] = v0;
  v2 = sub_22B35DE9C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_22B36052C();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = sub_22B35EA1C();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v11 = sub_22B35DF1C();
  v1[15] = v11;
  v12 = *(v11 - 8);
  v1[16] = v12;
  v13 = *(v12 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v1[19] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1F64CC, v0, 0);
}

uint64_t sub_22B1F64CC()
{
  if (qword_281408F18 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_22B1F6590;

  return sub_22B2430B4();
}

uint64_t sub_22B1F6590(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 192);
  v7 = *v2;

  v8 = *(v4 + 40);
  if (v1)
  {

    v9 = sub_22B1F69C4;
  }

  else
  {
    *(v5 + 200) = a1;
    v9 = sub_22B1F66D4;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22B1F66D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 200);
  *(v3 + 208) = v4;
  if (v4 >> 62)
  {
    v21 = v4;
    v5 = sub_22B36109C();
    v4 = v21;
    *(v3 + 216) = v5;
    if (v5)
    {
LABEL_3:
      if (v5 < 1)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v4, a2, a3);
      }

      v6 = *(*(v3 + 40) + 152);
      *(v3 + 304) = *MEMORY[0x277D175C8];
      v7 = (v3 + 308);
      *(v3 + 308) = *MEMORY[0x277D175C0];
      *(v3 + 224) = v6;
      *(v3 + 232) = 0;
      v8 = *(v3 + 208);
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23188EAC0](0);
      }

      else
      {
        v9 = *(v8 + 32);
      }

      v10 = v9;
      *(v3 + 240) = v9;
      v11 = [v9 owner];
      v12 = [v10 currentUser];
      v13 = v12;
      if (v11)
      {
        if (v12)
        {
          v14 = *(v3 + 144);
          sub_22B128014(0, &qword_281408560, 0x277CD1EE0);
          v15 = sub_22B360FBC();

          v16 = [v10 uniqueIdentifier];
          sub_22B35DEFC();

          if (v15)
          {
LABEL_16:
            (*(*(v3 + 104) + 104))(*(v3 + 112), *v7, *(v3 + 96));
            v4 = sub_22B1F6CB0;
            a2 = 0;
            a3 = 0;

            return MEMORY[0x2822009F8](v4, a2, a3);
          }

LABEL_15:
          v7 = (v3 + 304);
          goto LABEL_16;
        }

        v13 = v11;
      }

      else if (!v12)
      {
        v17 = *(v3 + 144);
        v18 = [v10 uniqueIdentifier];
        sub_22B35DEFC();

        goto LABEL_16;
      }

      v19 = *(v3 + 144);

      v20 = [v10 uniqueIdentifier];
      sub_22B35DEFC();

      goto LABEL_15;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v3 + 216) = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v23 = *(v3 + 176);
  v22 = *(v3 + 184);
  v25 = *(v3 + 160);
  v24 = *(v3 + 168);
  v27 = *(v3 + 136);
  v26 = *(v3 + 144);
  v28 = *(v3 + 112);
  v29 = *(v3 + 88);
  v30 = *(v3 + 64);

  v31 = *(v3 + 8);

  return v31(0);
}

uint64_t sub_22B1F69C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  *(v3 + 208) = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    v5 = sub_22B36109C();
    *(v3 + 216) = v5;
    if (v5)
    {
LABEL_3:
      if (v5 < 1)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v5, a2, a3);
      }

      v6 = *(*(v3 + 40) + 152);
      *(v3 + 304) = *MEMORY[0x277D175C8];
      v7 = (v3 + 308);
      *(v3 + 308) = *MEMORY[0x277D175C0];
      *(v3 + 224) = v6;
      *(v3 + 232) = 0;
      v8 = *(v3 + 208);
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23188EAC0](0);
      }

      else
      {
        v9 = *(v8 + 32);
      }

      v10 = v9;
      *(v3 + 240) = v9;
      v11 = [v9 owner];
      v12 = [v10 currentUser];
      v13 = v12;
      if (v11)
      {
        if (v12)
        {
          v14 = *(v3 + 144);
          sub_22B128014(0, &qword_281408560, 0x277CD1EE0);
          v15 = sub_22B360FBC();

          v16 = [v10 uniqueIdentifier];
          sub_22B35DEFC();

          if (v15)
          {
LABEL_16:
            (*(*(v3 + 104) + 104))(*(v3 + 112), *v7, *(v3 + 96));
            v5 = sub_22B1F6CB0;
            a2 = 0;
            a3 = 0;

            return MEMORY[0x2822009F8](v5, a2, a3);
          }

LABEL_15:
          v7 = (v3 + 304);
          goto LABEL_16;
        }

        v13 = v11;
      }

      else if (!v12)
      {
        v17 = *(v3 + 144);
        v18 = [v10 uniqueIdentifier];
        sub_22B35DEFC();

        goto LABEL_16;
      }

      v19 = *(v3 + 144);

      v20 = [v10 uniqueIdentifier];
      sub_22B35DEFC();

      goto LABEL_15;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v3 + 216) = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v22 = *(v3 + 176);
  v21 = *(v3 + 184);
  v24 = *(v3 + 160);
  v23 = *(v3 + 168);
  v26 = *(v3 + 136);
  v25 = *(v3 + 144);
  v27 = *(v3 + 112);
  v28 = *(v3 + 88);
  v29 = *(v3 + 64);

  v30 = *(v3 + 8);

  return v30(0);
}

uint64_t sub_22B1F6CB0()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[28] + 16), *(v0[28] + 40));
  v2 = *(MEMORY[0x277D17718] + 4);
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_22B1F6D68;
  v4 = v0[23];
  v5 = v0[18];
  v6 = v0[14];

  return MEMORY[0x282171C58](v4, v5, v6, 17);
}

uint64_t sub_22B1F6D68()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_22B1F6E7C;
  }

  else
  {
    v3 = sub_22B1F71DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B1F6E7C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[5];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v3 + 8))(v1, v2);

  return MEMORY[0x2822009F8](sub_22B1F6F20, v4, 0);
}

uint64_t sub_22B1F6F20()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 232) + 1;
  if (v2 == *(v0 + 216))
  {
    v3 = *(v0 + 208);

    v4 = *(v0 + 256) == 0;
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 112);
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);

    v14 = *(v0 + 8);

    return v14(v4);
  }

  *(v0 + 232) = v2;
  v16 = *(v0 + 208);
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x23188EAC0]();
  }

  else
  {
    v17 = *(v16 + 8 * v2 + 32);
  }

  v18 = v17;
  *(v0 + 240) = v17;
  v19 = [v17 owner];
  v20 = [v18 currentUser];
  v21 = v20;
  if (!v19)
  {
    if (!v20)
    {
      v26 = *(v0 + 144);
      v27 = [v18 uniqueIdentifier];
      sub_22B35DEFC();

      v25 = 308;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (!v20)
  {
    v21 = v19;
LABEL_15:
    v28 = *(v0 + 144);

    v29 = [v18 uniqueIdentifier];
    sub_22B35DEFC();

    goto LABEL_16;
  }

  v22 = *(v0 + 144);
  sub_22B128014(0, &qword_281408560, 0x277CD1EE0);
  v23 = sub_22B360FBC();

  v24 = [v18 uniqueIdentifier];
  sub_22B35DEFC();

  if ((v23 & 1) == 0)
  {
LABEL_16:
    v25 = 304;
    goto LABEL_17;
  }

  v25 = 308;
LABEL_17:
  (*(*(v0 + 104) + 104))(*(v0 + 112), *(v0 + v25), *(v0 + 96));

  return MEMORY[0x2822009F8](sub_22B1F6CB0, 0, 0);
}

uint64_t sub_22B1F71DC()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[5];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v5 = *(v3 + 8);
  v0[33] = v5;
  v0[34] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);

  return MEMORY[0x2822009F8](sub_22B1F728C, v4, 0);
}

uint64_t sub_22B1F728C()
{
  v53 = v0;
  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = __swift_project_value_buffer(v6, qword_28140BD10);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  sub_22B170BE0(v3, v2, &qword_27D8BA340, &qword_22B363FB0);
  v8 = v1;
  v9 = sub_22B36050C();
  v10 = sub_22B360CFC();

  v11 = &off_2786FB000;
  if (os_log_type_enabled(v9, v10))
  {
    v45 = *(v0 + 264);
    v46 = *(v0 + 272);
    v12 = *(v0 + 240);
    v13 = *(v0 + 176);
    v47 = *(v0 + 168);
    v48 = *(v0 + 152);
    v14 = *(v0 + 136);
    v15 = *(v0 + 120);
    v49 = *(v0 + 80);
    v50 = *(v0 + 72);
    v51 = *(v0 + 88);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v52 = v17;
    *v16 = 136315394;
    v18 = [v12 uniqueIdentifier];
    sub_22B35DEFC();

    sub_22B1FE510(&qword_2814091D0, 255, MEMORY[0x277CC95F0]);
    v19 = sub_22B36131C();
    v21 = v20;
    v45(v14, v15);
    v22 = sub_22B1A7B20(v19, v21, &v52);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    sub_22B170BE0(v13, v47, &qword_27D8BA340, &qword_22B363FB0);
    v23 = sub_22B3608BC();
    v25 = v24;
    sub_22B123284(v13, &qword_27D8BA340, &qword_22B363FB0);
    v26 = sub_22B1A7B20(v23, v25, &v52);
    v11 = &off_2786FB000;

    *(v16 + 14) = v26;
    _os_log_impl(&dword_22B116000, v9, v10, "[LoadEventsProcessor] Oldest event date for home %s: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);

    (*(v49 + 8))(v51, v50);
  }

  else
  {
    v27 = *(v0 + 176);
    v29 = *(v0 + 80);
    v28 = *(v0 + 88);
    v30 = *(v0 + 72);

    sub_22B123284(v27, &qword_27D8BA340, &qword_22B363FB0);
    (*(v29 + 8))(v28, v30);
  }

  v31 = *(v0 + 160);
  v32 = *(v0 + 48);
  v33 = *(v0 + 56);
  sub_22B170BE0(*(v0 + 184), v31, &qword_27D8BA340, &qword_22B363FB0);
  v34 = *(v33 + 48);
  v35 = v34(v31, 1, v32);
  v36 = *(v0 + 160);
  if (v35 == 1)
  {
    v37 = *(v0 + 48);
    v38 = *(v0 + 64);
    sub_22B35DE6C();
    if (v34(v36, 1, v37) != 1)
    {
      sub_22B123284(*(v0 + 160), &qword_27D8BA340, &qword_22B363FB0);
    }
  }

  else
  {
    (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 160), *(v0 + 48));
  }

  if (qword_27D8B9F88 != -1)
  {
    swift_once();
  }

  v39 = *(v0 + 136);
  v40 = [*(v0 + 240) v11[486]];
  sub_22B35DEFC();

  v41 = swift_task_alloc();
  *(v0 + 280) = v41;
  *v41 = v0;
  v41[1] = sub_22B1F775C;
  v42 = *(v0 + 136);
  v43 = *(v0 + 64);

  return sub_22B187E44(v42, v43);
}

uint64_t sub_22B1F775C()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 136);
  v5 = *(*v0 + 120);
  v6 = *(*v0 + 40);
  v8 = *v0;

  v3(v4, v5);

  return MEMORY[0x2822009F8](sub_22B1F78D8, v6, 0);
}

uint64_t sub_22B1F78D8()
{
  if (qword_27D8B9FB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = [*(v0 + 240) uniqueIdentifier];
  sub_22B35DEFC();

  v3 = swift_task_alloc();
  *(v0 + 288) = v3;
  *v3 = v0;
  v3[1] = sub_22B1F79DC;
  v4 = *(v0 + 136);
  v5 = *(v0 + 64);

  return sub_22B319BDC(v4, v5);
}

uint64_t sub_22B1F79DC()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 136);
  v5 = *(*v0 + 120);
  v6 = *(*v0 + 40);
  v8 = *v0;

  v3(v4, v5);

  return MEMORY[0x2822009F8](sub_22B1F7B58, v6, 0);
}

uint64_t sub_22B1F7B58()
{
  if (qword_27D8B9F78 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = [*(v0 + 240) uniqueIdentifier];
  sub_22B35DEFC();

  v3 = swift_task_alloc();
  *(v0 + 296) = v3;
  *v3 = v0;
  v3[1] = sub_22B1F7C5C;
  v4 = *(v0 + 136);
  v5 = *(v0 + 64);

  return sub_22B1767A4(v4, v5);
}

uint64_t sub_22B1F7C5C()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 136);
  v5 = *(*v0 + 120);
  v6 = *(*v0 + 40);
  v8 = *v0;

  v3(v4, v5);

  return MEMORY[0x2822009F8](sub_22B1F7DD8, v6, 0);
}

uint64_t sub_22B1F7DD8()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);

  (*(v3 + 8))(v2, v4);
  sub_22B123284(v1, &qword_27D8BA340, &qword_22B363FB0);
  v5 = *(v0 + 232) + 1;
  if (v5 == *(v0 + 216))
  {
    v6 = *(v0 + 208);

    v7 = *(v0 + 256) == 0;
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v11 = *(v0 + 160);
    v10 = *(v0 + 168);
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v14 = *(v0 + 112);
    v15 = *(v0 + 88);
    v16 = *(v0 + 64);

    v17 = *(v0 + 8);

    return v17(v7);
  }

  *(v0 + 232) = v5;
  v19 = *(v0 + 208);
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x23188EAC0]();
  }

  else
  {
    v20 = *(v19 + 8 * v5 + 32);
  }

  v21 = v20;
  *(v0 + 240) = v20;
  v22 = [v20 owner];
  v23 = [v21 currentUser];
  v24 = v23;
  if (!v22)
  {
    if (!v23)
    {
      v29 = *(v0 + 144);
      v30 = [v21 uniqueIdentifier];
      sub_22B35DEFC();

      v28 = 308;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (!v23)
  {
    v24 = v22;
LABEL_15:
    v31 = *(v0 + 144);

    v32 = [v21 uniqueIdentifier];
    sub_22B35DEFC();

    goto LABEL_16;
  }

  v25 = *(v0 + 144);
  sub_22B128014(0, &qword_281408560, 0x277CD1EE0);
  v26 = sub_22B360FBC();

  v27 = [v21 uniqueIdentifier];
  sub_22B35DEFC();

  if ((v26 & 1) == 0)
  {
LABEL_16:
    v28 = 304;
    goto LABEL_17;
  }

  v28 = 308;
LABEL_17:
  (*(*(v0 + 104) + 104))(*(v0 + 112), *(v0 + v28), *(v0 + 96));

  return MEMORY[0x2822009F8](sub_22B1F6CB0, 0, 0);
}

uint64_t sub_22B1F80C4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  v1 = *(v0 + 152);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_22B1F8128(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!sub_22B36109C())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22B36108C();
    sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
    sub_22B202100();
    sub_22B360C7C();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_22B1A20B8();
      return;
    }

    while (1)
    {
      v18 = sub_22B1F98D0(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_22B3610BC())
      {
        sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_22B1F8348(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v19 - v5;
  v7 = sub_22B35DF1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;
    v19[0] = v8 + 8;
    v19[1] = v8 + 16;

    v16 = 0;
    while (v14)
    {
      v17 = v16;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      (*(v8 + 16))(v11, *(a1 + 48) + *(v8 + 72) * (v18 | (v17 << 6)), v7);
      sub_22B1F9A68(v11, v6);
      (*(v8 + 8))(v11, v7);
      sub_22B123284(v6, &qword_27D8BA970, &unk_22B363560);
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        return;
      }

      v14 = *(a1 + 56 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22B1F8564(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v86 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v3 = MEMORY[0x277D84FA0];
    goto LABEL_63;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22B36108C();
    sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
    sub_22B202100();
    sub_22B360C7C();
    v4 = v81;
    v6 = v82;
    v7 = v83;
    v8 = v84;
    v9 = v85;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v76 = v4;
  v77 = v6;
  v78 = v7;
  v79 = v8;
  v67 = v7;
  v13 = (v7 + 64) >> 6;
  v73 = (v3 + 56);
  v80 = v9;
  v70 = v6;
  v71 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = sub_22B3610BC();
      if (!v21)
      {
        goto LABEL_62;
      }

      v74 = v21;
      sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
      swift_dynamicCast();
      v19 = v75;
      v17 = v8;
      v2 = v9;
      if (!v75)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        v16 = v13 <= (v8 + 1) ? v8 + 1 : v13;
        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_66;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v76 = v4;
      v77 = v6;
      v78 = v67;
      v79 = v17;
      v80 = v2;
      if (!v19)
      {
        goto LABEL_62;
      }
    }

    v22 = *(v3 + 40);
    v23 = v19;
    v24 = sub_22B360FAC();
    v25 = -1 << *(v3 + 32);
    v8 = v24 & ~v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v73[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v70;
    v4 = v71;
  }

  v26 = ~v25;
  v27 = sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
  v28 = *(*(v3 + 48) + 8 * v8);
  v72 = v27;
  while (1)
  {
    v29 = sub_22B360FBC();

    if (v29)
    {
      break;
    }

    v8 = (v8 + 1) & v26;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v73[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v28 = *(*(v3 + 48) + 8 * v8);
  }

  v31 = *(v3 + 32);
  v64 = ((1 << v31) + 63) >> 6;
  v5 = 8 * v64;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v65 = &v63;
    MEMORY[0x28223BE20](v30);
    v33 = &v63 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v73, v32);
    v34 = *&v33[8 * v4] & ~v15;
    v35 = *(v3 + 16);
    v66 = v33;
    *&v33[8 * v4] = v34;
    v4 = v35 - 1;
    v37 = v70;
    v36 = v71;
    v38 = i;
LABEL_33:
    v68 = v4;
    while (v36 < 0)
    {
      v39 = sub_22B3610BC();
      if (!v39)
      {
        goto LABEL_61;
      }

      v74 = v39;
      swift_dynamicCast();
      v40 = v75;
      if (!v75)
      {
        goto LABEL_61;
      }

LABEL_50:
      v45 = *(v3 + 40);
      v46 = sub_22B360FAC();
      v47 = v3;
      v48 = -1 << *(v3 + 32);
      v49 = v46 & ~v48;
      v50 = v49 >> 6;
      v51 = 1 << v49;
      if (((1 << v49) & v73[v49 >> 6]) != 0)
      {
        v52 = ~v48;
        while (1)
        {
          v8 = *(*(v47 + 48) + 8 * v49);
          v53 = sub_22B360FBC();

          if (v53)
          {
            break;
          }

          v49 = (v49 + 1) & v52;
          v50 = v49 >> 6;
          v51 = 1 << v49;
          if (((1 << v49) & v73[v49 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v54 = v66[v50];
        v66[v50] = v54 & ~v51;
        v55 = (v54 & v51) == 0;
        v3 = v47;
        v37 = v70;
        v36 = v71;
        v4 = v68;
        v38 = i;
        if (!v55)
        {
          v4 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            v3 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v47;
        v37 = v70;
        v36 = v71;
        v4 = v68;
        v38 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v43 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v40 = *(*(v36 + 48) + ((v15 << 9) | (8 * v43)));
      v44 = v40;
      v42 = v15;
LABEL_49:
      v76 = v36;
      v77 = v37;
      v78 = v67;
      v79 = v42;
      v17 = v42;
      v80 = v2;
      if (!v40)
      {
LABEL_61:
        v3 = sub_22B1FA498(v66, v64, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v38 <= v17 + 1)
    {
      v41 = v17 + 1;
    }

    else
    {
      v41 = v38;
    }

    v42 = v41 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v38)
      {
        v40 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v37 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v58 = v5;

    v59 = v58;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v60 = swift_slowAlloc();
  memcpy(v60, v73, v59);
  sub_22B1F9D18(v60, v64, v3, v8, &v76);
  v62 = v61;

  MEMORY[0x23188F650](v60, -1, -1);
  v3 = v62;
LABEL_62:
  sub_22B1A20B8();
LABEL_63:
  v56 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_22B1F8BE4(uint64_t a1, uint64_t a2)
{
  v99 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v70 - v10);
  v12 = sub_22B35DF1C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v90 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = (&v70 - v16);
  MEMORY[0x28223BE20](v18);
  v85 = (&v70 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v71 = v11;
  v73 = v8;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v84 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v92 = (v24 & v21);
  v77 = (63 - v23) >> 6;
  v91 = v19 + 16;
  v82 = (v19 + 48);
  v83 = (v19 + 56);
  v81 = (v19 + 32);
  v87 = (a2 + 56);
  v72 = v19;
  v93 = (v19 + 8);

  v26 = 0;
  v74 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v92;
    v28 = v26;
    if (v92)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v71;
      (*(v72 + 16))(v71, *(a1 + 48) + *(v72 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v77 <= (v26 + 1) ? v26 + 1 : v77;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v77)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v71;
    }

    v79 = *v83;
    v79(v32, v33, 1, v12);
    v94 = a1;
    v95 = v22;
    v96 = v84;
    v97 = v30;
    v98 = v2;
    v78 = *v82;
    if (v78(v32, 1, v12) == 1)
    {
      sub_22B123284(v32, &qword_27D8BA970, &unk_22B363560);
      goto LABEL_52;
    }

    v76 = *v81;
    v76(v85, v32, v12);
    v34 = *(a2 + 40);
    v75 = sub_22B1FE510(&unk_27D8BA320, 255, MEMORY[0x277CC95F0]);
    v35 = sub_22B36071C();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v87[v26 >> 6]) != 0)
    {
      break;
    }

    (*v93)(v85, v12);
LABEL_22:
    v26 = v30;
    v92 = v2;
  }

  v70 = v93 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v86 = ~v36;
  v37 = *(v72 + 72);
  v88 = *(v72 + 16);
  v89 = v37;
  while (1)
  {
    v88(v17, *(a2 + 48) + v89 * v26, v12);
    v38 = sub_22B1FE510(&qword_27D8BA718, 255, MEMORY[0x277CC95F0]);
    v39 = sub_22B36078C();
    v92 = *v93;
    v92(v17, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v86;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v87[v26 >> 6]) == 0)
    {
      a1 = v74;
      v92(v85, v12);
      goto LABEL_22;
    }
  }

  v86 = v38;
  v40 = (v92)(v85, v12);
  v41 = *(a2 + 32);
  v70 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v70;
  a1 = v74;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v71 = &v70;
    MEMORY[0x28223BE20](v40);
    v43 = &v70 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v87, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v85 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v73;
    v47 = i;
    v48 = v77;
LABEL_26:
    v72 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v88(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v89, v12);
      v53 = 0;
LABEL_39:
      v79(v26, v53, 1, v12);
      v94 = a1;
      v95 = v47;
      v96 = v84;
      v97 = v30;
      v98 = v2;
      if (v78(v26, 1, v12) == 1)
      {
        sub_22B123284(v26, &qword_27D8BA970, &unk_22B363560);
        a2 = sub_22B1FA68C(v85, v70, v72, a2);
        goto LABEL_52;
      }

      v76(v90, v26, v12);
      v54 = *(a2 + 40);
      v55 = sub_22B36071C();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v87[v58 >> 6]) != 0)
      {
        v88(v17, *(v56 + 48) + v58 * v89, v12);
        v59 = sub_22B36078C();
        v92(v17, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v87[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v88(v17, *(v56 + 48) + v58 * v89, v12);
            v61 = sub_22B36078C();
            v92(v17, v12);
          }

          while ((v61 & 1) == 0);
        }

        v92(v90, v12);
        v62 = v85[v28];
        v85[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v74;
        v26 = v73;
        v47 = i;
        v48 = v77;
        if ((v62 & v22) != 0)
        {
          v46 = v72 - 1;
          if (__OFSUB__(v72, 1))
          {
            __break(1u);
          }

          if (v72 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v92(v90, v12);
        a2 = v56;
        a1 = v74;
        v26 = v73;
        v47 = i;
        v48 = v77;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;

    v85 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v85;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v87, v66);
  sub_22B1F9FBC(v68, v70, v85, v26, &v94);
  a2 = v69;

  MEMORY[0x23188F650](v68, -1, -1);
LABEL_52:
  sub_22B1A20B8();
LABEL_54:
  v63 = *MEMORY[0x277D85DE8];
  return a2;
}

double sub_22B1F9650@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = *v2;
  v4 = *(*v2 + 40);
  sub_22B36149C();
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 8);
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v13 = a1[7];
  v12 = a1[8];
  sub_22B3608FC();
  v44 = v7;
  sub_22B3614CC();
  v42 = v9;
  v43 = v8;
  sub_22B3608FC();
  v40 = v11;
  v41 = v10;
  sub_22B3608FC();
  v38 = v12;
  v39 = v13;
  sub_22B3608FC();
  v14 = sub_22B3614DC();
  v15 = -1 << *(v46 + 32);
  v16 = v14 & ~v15;
  v48 = v46 + 56;
  if ((*(v46 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v45 = ~v15;
    v47 = *(v46 + 48);
    while (1)
    {
      v17 = v47 + 72 * v16;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v20 = *(v17 + 32);
      v22 = *(v17 + 40);
      v21 = *(v17 + 48);
      v23 = *(v17 + 56);
      v24 = *(v17 + 64);
      v25 = *v17 == v5 && *(v17 + 8) == v6;
      if (v25 || (sub_22B36134C()) && v18 == v44)
      {
        v26 = v19 == v43 && v20 == v42;
        if (v26 || (sub_22B36134C() & 1) != 0)
        {
          v27 = v22 == v41 && v21 == v40;
          if (v27 || (sub_22B36134C() & 1) != 0)
          {
            v28 = v23 == v39 && v24 == v38;
            if (v28 || (sub_22B36134C() & 1) != 0)
            {
              break;
            }
          }
        }
      }

      v16 = (v16 + 1) & v45;
      if (((*(v48 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v29 = *v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v36;
    v49 = *v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22B331200();
      v31 = v49;
    }

    v32 = *(v31 + 48) + 72 * v16;
    v33 = *(v32 + 48);
    *(a2 + 32) = *(v32 + 32);
    *(a2 + 48) = v33;
    *(a2 + 64) = *(v32 + 64);
    v34 = *(v32 + 16);
    *a2 = *v32;
    *(a2 + 16) = v34;
    sub_22B1FAB20(v16);
    *v36 = v49;
  }

  else
  {
LABEL_28:
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22B1F98D0(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_22B3610CC();

    if (v7)
    {
      v8 = sub_22B1FA9B8();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
  v11 = *(v3 + 40);
  v12 = sub_22B360FAC();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_22B360FBC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22B331390();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_22B1FAD94(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_22B1F9A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22B1FE510(&unk_27D8BA320, 255, MEMORY[0x277CC95F0]);
  v35 = a1;
  v13 = sub_22B36071C();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_22B1FE510(&qword_27D8BA718, 255, MEMORY[0x277CC95F0]);
      v22 = sub_22B36078C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22B3314E4();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_22B1FAF34(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

void sub_22B1F9D18(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v34 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_22B3610BC())
          {
            goto LABEL_29;
          }

          sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
          swift_dynamicCast();
          v12 = v35;
          if (!v35)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_22B1FA498(a1, a2, v31, a3);
            return;
          }
        }

        v18 = *(a3 + 40);
        v19 = sub_22B360FAC();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
        v24 = *(*(a3 + 48) + 8 * v21);
        v25 = sub_22B360FBC();

        if (v25)
        {
          break;
        }

        v26 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          v27 = *(*(a3 + 48) + 8 * v21);
          v28 = sub_22B360FBC();

          if (v28)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:

      v29 = a1[v22];
      a1[v22] = v29 & ~v23;
      v5 = a5;
    }

    while ((v29 & v23) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v31 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_22B1F9FBC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_22B35DF1C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v60 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13, v17);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_22B123284(v12, &qword_27D8BA970, &unk_22B363560);
          v48 = v64;

          sub_22B1FA68C(v52, v50, v51, v48);
          return;
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_22B1FE510(&unk_27D8BA320, 255, MEMORY[0x277CC95F0]);
        v38 = sub_22B36071C();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        v24(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_22B1FE510(&qword_27D8BA718, 255, MEMORY[0x277CC95F0]);
        v46 = sub_22B36078C();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      v24(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v51 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_22B1FA498(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7F8, &qword_22B3676D0);
  result = sub_22B36114C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_22B360FAC();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22B1FA68C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_22B35DF1C();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA728, &unk_22B3659C0);
  result = sub_22B36114C();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_22B1FE510(&unk_27D8BA320, 255, MEMORY[0x277CC95F0]);
    result = sub_22B36071C();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22B1FA9B8()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_22B36109C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_22B32EEA4(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_22B360FAC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_22B360FBC();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_22B1FAD94(v9);
  result = sub_22B360FBC();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22B1FAB20(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22B36106C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v24 = v3;
      v25 = v2;
      v23 = v4;
      v22 = (v8 + 1) & v7;
      while (1)
      {
        v9 = *(v3 + 48) + 72 * v6;
        v11 = *(v9 + 32);
        v10 = *(v9 + 48);
        v12 = *(v9 + 16);
        v28 = *(v9 + 64);
        v27[2] = v11;
        v27[3] = v10;
        v27[0] = *v9;
        v27[1] = v12;
        v13 = *(v3 + 40);
        sub_22B36149C();
        sub_22B2020A4(v27, v26);
        sub_22B3608FC();
        sub_22B3614CC();
        sub_22B3608FC();
        sub_22B3608FC();
        sub_22B3608FC();
        v14 = sub_22B3614DC();
        sub_22B172074(v27);
        v15 = v14 & v7;
        v2 = v25;
        if (v25 >= v22)
        {
          v4 = v23;
          if (v15 < v22)
          {
            v3 = v24;
            goto LABEL_14;
          }

          v3 = v24;
          if (v25 < v15)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v4 = v23;
          v3 = v24;
          if (v15 < v22 && v25 < v15)
          {
            goto LABEL_14;
          }
        }

        v16 = *(v3 + 48);
        v17 = (v16 + 72 * v25);
        v18 = (v16 + 72 * v6);
        if (v25 != v6 || v17 >= v18 + 72)
        {
          memmove(v17, v18, 0x48uLL);
          v2 = v6;
        }

LABEL_14:
        v6 = (v6 + 1) & v7;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          break;
        }

        v25 = v2;
      }
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_22B1FAD94(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22B36106C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_22B360FAC();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_22B1FAF34(int64_t a1)
{
  v3 = sub_22B35DF1C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = sub_22B36106C();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v15 = v12;
      v16 = (v14 + 1) & v12;
      v37 = v4[2];
      v38 = v4 + 2;
      v17 = v4[9];
      v35 = (v4 + 1);
      v36 = v9;
      v18 = v17;
      do
      {
        v19 = v18;
        v20 = v18 * v11;
        v37(v7, *(v8 + 48) + v18 * v11, v3);
        v21 = v8;
        v22 = v16;
        v23 = v15;
        v24 = v21;
        v25 = *(v21 + 40);
        sub_22B1FE510(&unk_27D8BA320, 255, MEMORY[0x277CC95F0]);
        v26 = sub_22B36071C();
        (*v35)(v7, v3);
        v27 = v26 & v23;
        v15 = v23;
        v16 = v22;
        if (a1 >= v22)
        {
          if (v27 >= v22 && a1 >= v27)
          {
LABEL_16:
            v8 = v24;
            v30 = *(v24 + 48);
            v18 = v19;
            v31 = v19 * a1;
            if (v19 * a1 < v20 || v30 + v19 * a1 >= (v30 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v31 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v27 >= v22 || a1 >= v27)
        {
          goto LABEL_16;
        }

        v8 = v24;
        v18 = v19;
LABEL_5:
        v11 = (v11 + 1) & v15;
        v9 = v36;
      }

      while (((*(v36 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v32 = *(v8 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v34;
    ++*(v8 + 36);
  }
}

void sub_22B1FB268(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_22B1FB40C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_22B36109C();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_22B32DE30(v2, 0);

    v1 = sub_22B2500DC(&v5, v3 + 4, v2, v1);
    sub_22B1A20B8();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_22B1FB4BC(void **a1)
{
  v2 = *(type metadata accessor for LoadEventsProcessor.RatePlanPeriod() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22B21CB70(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22B1FB60C(v5);
  *a1 = v3;
}

void sub_22B1FB564(void **a1)
{
  v2 = *(type metadata accessor for CDTOUPeak() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22B21CB84(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22B1FB738(v5);
  *a1 = v3;
}

void sub_22B1FB60C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22B36130C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LoadEventsProcessor.RatePlanPeriod();
        v6 = sub_22B360A8C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for LoadEventsProcessor.RatePlanPeriod() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22B1FBD2C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22B1FB864(0, v2, 1, a1);
  }
}

void sub_22B1FB738(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22B36130C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for CDTOUPeak();
        v6 = sub_22B360A8C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for CDTOUPeak() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22B1FC690(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22B1FBAC8(0, v2, 1, a1);
  }
}

void sub_22B1FB864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod();
  v9 = *(*(Events - 8) + 64);
  MEMORY[0x28223BE20](Events);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    while (1)
    {
      sub_22B201F74(v23, v17, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      sub_22B201F74(v20, v13, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      v24 = *(Events + 24);
      v25 = sub_22B35DDFC();
      sub_22B201FDC(v13, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      sub_22B201FDC(v17, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v26 = v36;
      sub_22B20203C(v23, v36, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      swift_arrayInitWithTakeFrontToBack();
      sub_22B20203C(v26, v20, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22B1FBAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for CDTOUPeak();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    while (1)
    {
      sub_22B201F74(v23, v17, type metadata accessor for CDTOUPeak);
      sub_22B201F74(v20, v13, type metadata accessor for CDTOUPeak);
      v24 = *(v8 + 20);
      v25 = sub_22B35DDFC();
      sub_22B201FDC(v13, type metadata accessor for CDTOUPeak);
      sub_22B201FDC(v17, type metadata accessor for CDTOUPeak);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v26 = v36;
      sub_22B20203C(v23, v36, type metadata accessor for CDTOUPeak);
      swift_arrayInitWithTakeFrontToBack();
      sub_22B20203C(v26, v20, type metadata accessor for CDTOUPeak);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22B1FBD2C(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod();
  v116 = *(Events - 8);
  v10 = *(v116 + 64);
  MEMORY[0x28223BE20](Events);
  v111 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v119 = &v104 - v13;
  MEMORY[0x28223BE20](v14);
  v120 = &v104 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v104 - v17;
  v118 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v99 = a4;
LABEL_99:
      v122 = v99;
      a4 = *(v99 + 2);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *&v99[16 * a4];
          v101 = v99;
          v102 = *&v99[16 * a4 + 24];
          sub_22B1FCFF4(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *&v99[16 * a4 + 16], *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
            goto LABEL_107;
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_22B21C768(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_22B21C6DC(a4 - 1);
          v99 = v122;
          a4 = *(v122 + 2);
          if (a4 <= 1)
          {
            goto LABEL_107;
          }
        }

        goto LABEL_133;
      }

LABEL_107:

      return;
    }

LABEL_129:
    v99 = sub_22B21C768(a4);
    goto LABEL_99;
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v107 = a4;
  v121 = Events;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v112 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v116 + 72);
      v5 = *v118 + v24 * v23;
      v114 = *v118;
      v25 = v114;
      sub_22B201F74(v114 + v24 * v23, v18, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v120;
      sub_22B201F74(v26, v120, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      v29 = *(Events + 24);
      LODWORD(v115) = sub_22B35DDFC();
      sub_22B201FDC(v28, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      sub_22B201FDC(v18, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      v106 = v27;
      v30 = v27 + 2;
      v117 = v24;
      v31 = v114 + v24 * (v27 + 2);
      while (v19 != v30)
      {
        sub_22B201F74(v31, v18, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        v32 = v120;
        sub_22B201F74(v5, v120, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        v33 = *(v121 + 24);
        v34 = sub_22B35DDFC() & 1;
        sub_22B201FDC(v32, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        sub_22B201FDC(v18, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        ++v30;
        v31 += v117;
        v5 += v117;
        if ((v115 & 1) != v34)
        {
          v19 = v30 - 1;
          break;
        }
      }

      v22 = v106;
      a4 = v107;
      Events = v121;
      if (v115)
      {
        if (v19 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v19)
        {
          v105 = v6;
          v35 = v117 * (v19 - 1);
          v36 = v19;
          v37 = v19 * v117;
          v115 = v19;
          v38 = v106;
          v39 = v106;
          v40 = v106 * v117;
          do
          {
            if (v38 != --v36)
            {
              v41 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v41 + v40;
              sub_22B20203C(v41 + v40, v111, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
              if (v40 < v35 || v5 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22B20203C(v111, v41 + v35, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
            }

            ++v38;
            v35 -= v117;
            v37 -= v117;
            v40 += v117;
          }

          while (v38 < v36);
          v6 = v105;
          a4 = v107;
          Events = v121;
          v22 = v39;
          v19 = v115;
        }
      }
    }

    v42 = v118[1];
    if (v19 >= v42)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v19, v22))
    {
      goto LABEL_125;
    }

    if (v19 - v22 >= a4)
    {
LABEL_32:
      v20 = v19;
      if (v19 < v22)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v22, a4))
    {
      goto LABEL_127;
    }

    if ((v22 + a4) >= v42)
    {
      v43 = v118[1];
    }

    else
    {
      v43 = v22 + a4;
    }

    if (v43 < v22)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v19 == v43)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v88 = v19;
    v89 = v22;
    v90 = *v118;
    v91 = *(v116 + 72);
    v92 = *v118 + v91 * (v19 - 1);
    v93 = -v91;
    v106 = v89;
    v94 = v89 - v19;
    v115 = v88;
    v109 = v91;
    v110 = v43;
    v5 = v90 + v88 * v91;
LABEL_86:
    v113 = v5;
    v114 = v94;
    v117 = v92;
LABEL_87:
    sub_22B201F74(v5, v18, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    v95 = v120;
    sub_22B201F74(v92, v120, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    v96 = *(Events + 24);
    a4 = sub_22B35DDFC();
    sub_22B201FDC(v95, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    sub_22B201FDC(v18, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    if (a4)
    {
      break;
    }

    Events = v121;
LABEL_85:
    v20 = v110;
    v92 = v117 + v109;
    v94 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v22 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v112;
    }

    else
    {
      v21 = sub_22B21C984(0, *(v112 + 2) + 1, 1, v112);
    }

    a4 = *(v21 + 2);
    v44 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      v21 = sub_22B21C984((v44 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v45 = &v21[16 * a4];
    *(v45 + 4) = v22;
    *(v45 + 5) = v20;
    v46 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          v52 = &v21[16 * v5 + 32];
          v53 = *(v52 - 64);
          v54 = *(v52 - 56);
          v58 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          if (v58)
          {
            goto LABEL_111;
          }

          v57 = *(v52 - 48);
          v56 = *(v52 - 40);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          v51 = v58;
          if (v58)
          {
            goto LABEL_112;
          }

          v59 = &v21[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v58 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v58)
          {
            goto LABEL_114;
          }

          v58 = __OFADD__(v50, v62);
          v63 = v50 + v62;
          if (v58)
          {
            goto LABEL_117;
          }

          if (v63 >= v55)
          {
            v81 = &v21[16 * v47 + 32];
            v83 = *v81;
            v82 = *(v81 + 1);
            v58 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v58)
            {
              goto LABEL_121;
            }

            if (v50 < v84)
            {
              v47 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v51)
            {
              goto LABEL_113;
            }

            v64 = &v21[16 * v5];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_116;
            }

            v70 = &v21[16 * v47 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_120;
            }

            if (v68 + v73 < v50)
            {
              goto LABEL_66;
            }

            if (v50 < v73)
            {
              v47 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v48 = *(v21 + 4);
            v49 = *(v21 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
            goto LABEL_52;
          }

          v74 = &v21[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_66:
          if (v69)
          {
            goto LABEL_115;
          }

          v77 = &v21[16 * v47];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v80 < v68)
          {
            break;
          }
        }

        a4 = v47 - 1;
        if (v47 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
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
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v85 = v21;
        v86 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v47 + 40];
        sub_22B1FCFF4(*v118 + *(v116 + 72) * v86, *v118 + *(v116 + 72) * *&v21[16 * v47 + 32], *v118 + *(v116 + 72) * v5, v46);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v86)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_22B21C768(v85);
        }

        if (a4 >= *(v85 + 2))
        {
          goto LABEL_110;
        }

        v87 = &v85[16 * a4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v122 = v85;
        sub_22B21C6DC(v47);
        v21 = v122;
        v5 = *(v122 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v19 = v118[1];
    a4 = v107;
    Events = v121;
    if (v20 >= v19)
    {
      goto LABEL_96;
    }
  }

  if (v90)
  {
    a4 = type metadata accessor for LoadEventsProcessor.RatePlanPeriod;
    v97 = v119;
    sub_22B20203C(v5, v119, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    Events = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_22B20203C(v97, v92, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    v92 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

void sub_22B1FC690(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for CDTOUPeak();
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  MEMORY[0x28223BE20](v9);
  v111 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v119 = &v104 - v13;
  MEMORY[0x28223BE20](v14);
  v120 = &v104 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v104 - v17;
  v118 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v99 = a4;
LABEL_99:
      v122 = v99;
      a4 = *(v99 + 2);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *&v99[16 * a4];
          v101 = v99;
          v102 = *&v99[16 * a4 + 24];
          sub_22B1FD524(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *&v99[16 * a4 + 16], *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
            goto LABEL_107;
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_22B21C768(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_22B21C6DC(a4 - 1);
          v99 = v122;
          a4 = *(v122 + 2);
          if (a4 <= 1)
          {
            goto LABEL_107;
          }
        }

        goto LABEL_133;
      }

LABEL_107:

      return;
    }

LABEL_129:
    v99 = sub_22B21C768(a4);
    goto LABEL_99;
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v112 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v116 + 72);
      v5 = *v118 + v24 * v23;
      v114 = *v118;
      v25 = v114;
      sub_22B201F74(v114 + v24 * v23, v18, type metadata accessor for CDTOUPeak);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v120;
      sub_22B201F74(v26, v120, type metadata accessor for CDTOUPeak);
      v29 = *(v9 + 20);
      LODWORD(v115) = sub_22B35DDFC();
      sub_22B201FDC(v28, type metadata accessor for CDTOUPeak);
      sub_22B201FDC(v18, type metadata accessor for CDTOUPeak);
      v106 = v27;
      v30 = v27 + 2;
      v117 = v24;
      v31 = v114 + v24 * (v27 + 2);
      while (v19 != v30)
      {
        sub_22B201F74(v31, v18, type metadata accessor for CDTOUPeak);
        v32 = v120;
        sub_22B201F74(v5, v120, type metadata accessor for CDTOUPeak);
        v33 = *(v121 + 20);
        v34 = sub_22B35DDFC() & 1;
        sub_22B201FDC(v32, type metadata accessor for CDTOUPeak);
        sub_22B201FDC(v18, type metadata accessor for CDTOUPeak);
        ++v30;
        v31 += v117;
        v5 += v117;
        if ((v115 & 1) != v34)
        {
          v19 = v30 - 1;
          break;
        }
      }

      v22 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v19 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v19)
        {
          v105 = v6;
          v35 = v117 * (v19 - 1);
          v36 = v19;
          v37 = v19 * v117;
          v115 = v19;
          v38 = v106;
          v39 = v106;
          v40 = v106 * v117;
          do
          {
            if (v38 != --v36)
            {
              v41 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v41 + v40;
              sub_22B20203C(v41 + v40, v111, type metadata accessor for CDTOUPeak);
              if (v40 < v35 || v5 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22B20203C(v111, v41 + v35, type metadata accessor for CDTOUPeak);
            }

            ++v38;
            v35 -= v117;
            v37 -= v117;
            v40 += v117;
          }

          while (v38 < v36);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v22 = v39;
          v19 = v115;
        }
      }
    }

    v42 = v118[1];
    if (v19 >= v42)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v19, v22))
    {
      goto LABEL_125;
    }

    if (v19 - v22 >= a4)
    {
LABEL_32:
      v20 = v19;
      if (v19 < v22)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v22, a4))
    {
      goto LABEL_127;
    }

    if ((v22 + a4) >= v42)
    {
      v43 = v118[1];
    }

    else
    {
      v43 = v22 + a4;
    }

    if (v43 < v22)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v19 == v43)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v88 = v19;
    v89 = v22;
    v90 = *v118;
    v91 = *(v116 + 72);
    v92 = *v118 + v91 * (v19 - 1);
    v93 = -v91;
    v106 = v89;
    v94 = v89 - v19;
    v115 = v88;
    v109 = v91;
    v110 = v43;
    v5 = v90 + v88 * v91;
LABEL_86:
    v113 = v5;
    v114 = v94;
    v117 = v92;
LABEL_87:
    sub_22B201F74(v5, v18, type metadata accessor for CDTOUPeak);
    v95 = v120;
    sub_22B201F74(v92, v120, type metadata accessor for CDTOUPeak);
    v96 = *(v9 + 20);
    a4 = sub_22B35DDFC();
    sub_22B201FDC(v95, type metadata accessor for CDTOUPeak);
    sub_22B201FDC(v18, type metadata accessor for CDTOUPeak);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v20 = v110;
    v92 = v117 + v109;
    v94 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v22 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v112;
    }

    else
    {
      v21 = sub_22B21C984(0, *(v112 + 2) + 1, 1, v112);
    }

    a4 = *(v21 + 2);
    v44 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      v21 = sub_22B21C984((v44 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v45 = &v21[16 * a4];
    *(v45 + 4) = v22;
    *(v45 + 5) = v20;
    v46 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          v52 = &v21[16 * v5 + 32];
          v53 = *(v52 - 64);
          v54 = *(v52 - 56);
          v58 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          if (v58)
          {
            goto LABEL_111;
          }

          v57 = *(v52 - 48);
          v56 = *(v52 - 40);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          v51 = v58;
          if (v58)
          {
            goto LABEL_112;
          }

          v59 = &v21[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v58 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v58)
          {
            goto LABEL_114;
          }

          v58 = __OFADD__(v50, v62);
          v63 = v50 + v62;
          if (v58)
          {
            goto LABEL_117;
          }

          if (v63 >= v55)
          {
            v81 = &v21[16 * v47 + 32];
            v83 = *v81;
            v82 = *(v81 + 1);
            v58 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v58)
            {
              goto LABEL_121;
            }

            if (v50 < v84)
            {
              v47 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v51)
            {
              goto LABEL_113;
            }

            v64 = &v21[16 * v5];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_116;
            }

            v70 = &v21[16 * v47 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_120;
            }

            if (v68 + v73 < v50)
            {
              goto LABEL_66;
            }

            if (v50 < v73)
            {
              v47 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v48 = *(v21 + 4);
            v49 = *(v21 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
            goto LABEL_52;
          }

          v74 = &v21[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_66:
          if (v69)
          {
            goto LABEL_115;
          }

          v77 = &v21[16 * v47];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v80 < v68)
          {
            break;
          }
        }

        a4 = v47 - 1;
        if (v47 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
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
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v85 = v21;
        v86 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v47 + 40];
        sub_22B1FD524(*v118 + *(v116 + 72) * v86, *v118 + *(v116 + 72) * *&v21[16 * v47 + 32], *v118 + *(v116 + 72) * v5, v46);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v86)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_22B21C768(v85);
        }

        if (a4 >= *(v85 + 2))
        {
          goto LABEL_110;
        }

        v87 = &v85[16 * a4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v122 = v85;
        sub_22B21C6DC(v47);
        v21 = v122;
        v5 = *(v122 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v19 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v20 >= v19)
    {
      goto LABEL_96;
    }
  }

  if (v90)
  {
    a4 = type metadata accessor for CDTOUPeak;
    v97 = v119;
    sub_22B20203C(v5, v119, type metadata accessor for CDTOUPeak);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_22B20203C(v97, v92, type metadata accessor for CDTOUPeak);
    v92 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

void sub_22B1FCFF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod();
  v8 = *(*(Events - 8) + 64);
  MEMORY[0x28223BE20](Events);
  v47 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v38 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v51 = a1;
  v50 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v17;
    if (v17 >= 1)
    {
      v25 = -v13;
      v26 = a4 + v17;
      v42 = a1;
      v43 = a4;
      v41 = -v13;
      do
      {
        v39 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v44 = v27;
        v45 = v28;
        while (1)
        {
          if (v27 <= a1)
          {
            v51 = v27;
            v49 = v39;
            goto LABEL_59;
          }

          v40 = v24;
          v30 = Events;
          v31 = a3 + v25;
          v32 = v26 + v25;
          v33 = v46;
          sub_22B201F74(v32, v46, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
          v34 = v47;
          sub_22B201F74(v28, v47, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
          v35 = *(v30 + 24);
          v36 = sub_22B35DDFC();
          sub_22B201FDC(v34, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
          sub_22B201FDC(v33, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
          if (v36)
          {
            break;
          }

          v24 = v32;
          if (a3 < v26 || v31 >= v26)
          {
            a3 = v31;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v42;
          }

          else
          {
            v37 = a3 == v26;
            a3 = v31;
            a1 = v42;
            if (!v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v27 = v44;
          v29 = v32 > v43;
          v28 = v45;
          v25 = v41;
          if (!v29)
          {
            a2 = v44;
            goto LABEL_58;
          }
        }

        if (a3 < v44 || v31 >= v44)
        {
          a3 = v31;
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v41;
          a1 = v42;
          v24 = v40;
        }

        else
        {
          v37 = a3 == v44;
          a3 = v31;
          a2 = v45;
          v25 = v41;
          a1 = v42;
          v24 = v40;
          if (!v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v43);
    }

LABEL_58:
    v51 = a2;
    v49 = v24;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v16;
    v49 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v46;
        sub_22B201F74(a2, v46, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        v21 = v47;
        sub_22B201F74(a4, v47, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        v22 = *(Events + 24);
        v23 = sub_22B35DDFC();
        sub_22B201FDC(v21, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        sub_22B201FDC(v20, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v51 = a1;
      }

      while (a4 < v45 && a2 < a3);
    }
  }

LABEL_59:
  sub_22B21C77C(&v51, &v50, &v49);
}

void sub_22B1FD524(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = type metadata accessor for CDTOUPeak();
  v8 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v38 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v51 = a1;
  v50 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v17;
    if (v17 >= 1)
    {
      v25 = -v13;
      v26 = a4 + v17;
      v42 = a1;
      v43 = a4;
      v41 = -v13;
      do
      {
        v39 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v44 = v27;
        v45 = v28;
        while (1)
        {
          if (v27 <= a1)
          {
            v51 = v27;
            v49 = v39;
            goto LABEL_59;
          }

          v40 = v24;
          v30 = v48;
          v31 = a3 + v25;
          v32 = v26 + v25;
          v33 = v46;
          sub_22B201F74(v32, v46, type metadata accessor for CDTOUPeak);
          v34 = v47;
          sub_22B201F74(v28, v47, type metadata accessor for CDTOUPeak);
          v35 = *(v30 + 20);
          v36 = sub_22B35DDFC();
          sub_22B201FDC(v34, type metadata accessor for CDTOUPeak);
          sub_22B201FDC(v33, type metadata accessor for CDTOUPeak);
          if (v36)
          {
            break;
          }

          v24 = v32;
          if (a3 < v26 || v31 >= v26)
          {
            a3 = v31;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v42;
          }

          else
          {
            v37 = a3 == v26;
            a3 = v31;
            a1 = v42;
            if (!v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v27 = v44;
          v29 = v32 > v43;
          v28 = v45;
          v25 = v41;
          if (!v29)
          {
            a2 = v44;
            goto LABEL_58;
          }
        }

        if (a3 < v44 || v31 >= v44)
        {
          a3 = v31;
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v41;
          a1 = v42;
          v24 = v40;
        }

        else
        {
          v37 = a3 == v44;
          a3 = v31;
          a2 = v45;
          v25 = v41;
          a1 = v42;
          v24 = v40;
          if (!v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v43);
    }

LABEL_58:
    v51 = a2;
    v49 = v24;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v16;
    v49 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v46;
        sub_22B201F74(a2, v46, type metadata accessor for CDTOUPeak);
        v21 = v47;
        sub_22B201F74(a4, v47, type metadata accessor for CDTOUPeak);
        v22 = *(v48 + 20);
        v23 = sub_22B35DDFC();
        sub_22B201FDC(v21, type metadata accessor for CDTOUPeak);
        sub_22B201FDC(v20, type metadata accessor for CDTOUPeak);
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v51 = a1;
      }

      while (a4 < v45 && a2 < a3);
    }
  }

LABEL_59:
  sub_22B21C794(&v51, &v50, &v49);
}

BOOL sub_22B1FDA54(void *a1, void *a2)
{
  v4 = sub_22B35DE9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA730, &unk_22B367910);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_22B36134C() & 1) == 0)
  {
    return 0;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_22B36134C() & 1) == 0)
  {
    return 0;
  }

  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod();
  v18 = *(Events + 24);
  if ((sub_22B35DE4C() & 1) == 0)
  {
    return 0;
  }

  v31 = v8;
  v19 = v5;
  v20 = *(Events + 28);
  v21 = *(v13 + 48);
  sub_22B170BE0(a1 + v20, v16, &qword_27D8BA340, &qword_22B363FB0);
  v22 = a2 + v20;
  v23 = v19;
  sub_22B170BE0(v22, &v16[v21], &qword_27D8BA340, &qword_22B363FB0);
  v24 = *(v19 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v21], 1, v4) == 1)
    {
      sub_22B123284(v16, &qword_27D8BA340, &qword_22B363FB0);
      return 1;
    }

    goto LABEL_13;
  }

  sub_22B170BE0(v16, v12, &qword_27D8BA340, &qword_22B363FB0);
  if (v24(&v16[v21], 1, v4) == 1)
  {
    (*(v19 + 8))(v12, v4);
LABEL_13:
    sub_22B123284(v16, &qword_27D8BA730, &unk_22B367910);
    return 0;
  }

  v26 = *(v19 + 32);
  v27 = v31;
  v26(v31, &v16[v21], v4);
  sub_22B1FE510(&qword_27D8BA430, 255, MEMORY[0x277CC9578]);
  v28 = sub_22B36078C();
  v29 = *(v23 + 8);
  v29(v27, v4);
  v29(v12, v4);
  sub_22B123284(v16, &qword_27D8BA340, &qword_22B363FB0);
  return (v28 & 1) != 0;
}

uint64_t sub_22B1FDE04(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_22B36052C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_22B35EACC();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = sub_22B35EE8C();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1FDF7C, 0, 0);
}

uint64_t sub_22B1FDF7C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v2 + 104))(v1, *MEMORY[0x277D07390], v3);
  v4 = sub_22B35EE7C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[9];
    v8 = v0[5];
    v9 = sub_22B35E7EC();
    (*(*(v9 - 8) + 16))(v5, v8, v9);
    v10 = *MEMORY[0x277D174F8];
    v11 = sub_22B35E41C();
    (*(*(v11 - 8) + 104))(v5, v10, v11);
    (*(v6 + 104))(v5, *MEMORY[0x277D17968], v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6D0, &qword_22B365968);
    v12 = *(v6 + 72);
    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v14 = swift_allocObject();
    v0[15] = v14;
    *(v14 + 16) = xmmword_22B3634B0;
    (*(v6 + 16))(v14 + v13, v5, v7);
    v15 = *(MEMORY[0x277D17638] + 4);
    v16 = swift_task_alloc();
    v0[16] = v16;
    *v16 = v0;
    v16[1] = sub_22B1FE2EC;

    return MEMORY[0x282171BF0](v14);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v18 = v0[7];
    v17 = v0[8];
    v19 = v0[6];
    v20 = __swift_project_value_buffer(v19, qword_28140BD10);
    swift_beginAccess();
    (*(v18 + 16))(v17, v20, v19);
    v21 = sub_22B36050C();
    v22 = sub_22B360D1C();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[7];
    v24 = v0[8];
    v26 = v0[6];
    if (v23)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22B116000, v21, v22, "[LoadEventUploader] Feature Disabled. Skip submission", v27, 2u);
      MEMORY[0x23188F650](v27, -1, -1);
    }

    (*(v25 + 8))(v24, v26);
    v28 = v0[14];
    v29 = v0[11];
    v30 = v0[8];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_22B1FE2EC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  v5 = *(v2 + 120);
  if (v0)
  {

    v6 = sub_22B202284;
  }

  else
  {

    v6 = sub_22B1FE434;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B1FE434()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t type metadata accessor for LoadEventsProcessor.RatePlanPeriod()
{
  result = qword_27D8BA800;
  if (!qword_27D8BA800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B1FE510(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_22B1FE57C@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  return sub_22B189148(*(v1 + 24), *(v1 + 32), *(v1 + 48), a1);
}

uint64_t sub_22B1FE5A4(uint64_t a1, void *a2, uint64_t a3)
{
  v251 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v202 = &v187 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v193 = &v187 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v187 - v11;
  MEMORY[0x28223BE20](v13);
  v225 = &v187 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v187 - v16;
  MEMORY[0x28223BE20](v18);
  v211 = &v187 - v19;
  v20 = sub_22B35DE9C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v199 = &v187 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v187 - v25;
  MEMORY[0x28223BE20](v27);
  v200 = &v187 - v28;
  MEMORY[0x28223BE20](v29);
  v203 = &v187 - v30;
  MEMORY[0x28223BE20](v31);
  v191 = &v187 - v32;
  MEMORY[0x28223BE20](v33);
  v204 = &v187 - v34;
  MEMORY[0x28223BE20](v35);
  v201 = &v187 - v36;
  MEMORY[0x28223BE20](v37);
  v232 = &v187 - v38;
  MEMORY[0x28223BE20](v39);
  v224 = &v187 - v40;
  MEMORY[0x28223BE20](v41);
  v231 = &v187 - v42;
  MEMORY[0x28223BE20](v43);
  v236 = &v187 - v44;
  MEMORY[0x28223BE20](v45);
  v234 = &v187 - v46;
  MEMORY[0x28223BE20](v47);
  v235 = &v187 - v48;
  MEMORY[0x28223BE20](v49);
  v253 = &v187 - v50;
  v254 = sub_22B35FF8C();
  v250 = *(v254 - 8);
  v51 = *(v250 + 64);
  MEMORY[0x28223BE20](v254);
  v192 = &v187 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v189 = &v187 - v54;
  MEMORY[0x28223BE20](v55);
  v190 = &v187 - v56;
  MEMORY[0x28223BE20](v57);
  v194 = &v187 - v58;
  MEMORY[0x28223BE20](v59);
  v205 = &v187 - v60;
  MEMORY[0x28223BE20](v61);
  v63 = &v187 - v62;
  MEMORY[0x28223BE20](v64);
  v257 = &v187 - v65;
  v208 = type metadata accessor for CDTOUPeak();
  v209 = *(v208 - 8);
  v66 = *(v209 + 64);
  MEMORY[0x28223BE20](v208);
  v197 = (&v187 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v68);
  v233 = &v187 - v69;
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod();
  v70 = *(Events - 8);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](Events);
  v252 = (&v187 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  v196 = sub_22B35DDBC();
  v195 = *(v196 - 8);
  v73 = *(v195 + 64);
  MEMORY[0x28223BE20](v196);
  v247 = &v187 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35F55C();
  v259 = a2;
  v260 = MEMORY[0x277D84F90];
  v198 = a2;

  sub_22B1FB4BC(&v259);
  v258 = 0;
  v75 = v259;
  v76 = v259[2];
  v212 = v26;
  v215 = v70;
  v77 = v254;
  v219 = v76;
  if (!v76)
  {

    v160 = MEMORY[0x277D84F90];
LABEL_88:
    v161 = v204;
    sub_22B35D89C();
    if (*(v160 + 2))
    {
      v162 = v250;
      v163 = v192;
      (*(v250 + 16))(v192, &v160[(*(v162 + 80) + 32) & ~*(v162 + 80)], v77);

      sub_22B35FF7C();
      (*(v162 + 8))(v163, v77);
      v164 = v193;
      v165 = v258;
      sub_22B35DD9C();
      if (v165)
      {

        (*(v21 + 56))(v164, 1, 1, v20);
        v166 = v191;
        sub_22B35D89C();
        (*(v21 + 8))(v161, v20);
        v167 = (*(v21 + 48))(v164, 1, v20);
        v168 = v202;
        if (v167 != 1)
        {
          sub_22B123284(v164, &qword_27D8BA340, &qword_22B363FB0);
        }
      }

      else
      {
        (*(v21 + 8))(v161, v20);

        (*(v21 + 56))(v164, 0, 1, v20);
        v166 = v191;
        (*(v21 + 32))(v191, v164, v20);
        v168 = v202;
      }

      (*(v21 + 32))(v161, v166, v20);
      v26 = v212;
      v70 = v215;
    }

    else
    {

      v168 = v202;
    }

    (*(v21 + 16))(v203, v161, v20);
    v169 = v198[2];
    v257 = v160;
    if (v169)
    {
      sub_22B170BE0(v198 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * (v169 - 1) + *(Events + 28), v168, &qword_27D8BA340, &qword_22B363FB0);
      if ((*(v21 + 48))(v168, 1, v20) != 1)
      {
        (*(v21 + 32))(v26, v168, v20);
LABEL_101:
        v171 = v199;
        sub_22B35D86C();
        sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578]);
        v172 = sub_22B36074C();
        v173 = *(v21 + 8);
        v258 = v173;
        v174 = (v172 & 1) == 0;
        if (v172)
        {
          v175 = v26;
        }

        else
        {
          v175 = v171;
        }

        if (v174)
        {
          v176 = v26;
        }

        else
        {
          v176 = v171;
        }

        v173(v175, v20);
        v177 = *(v21 + 32);
        v178 = v200;
        v177(v200, v176, v20);
        v179 = v197;
        *v197 = 0x6465686374697473;
        *(v179 + 8) = 0xE800000000000000;
        v180 = v208;
        v177((v179 + *(v208 + 20)), v203, v20);
        v177((v179 + v180[6]), v178, v20);
        *(v179 + v180[7]) = v257;
        v181 = (v179 + v180[8]);
        *v181 = 0x6465686374697473;
        v181[1] = 0xE800000000000000;
        v182 = (v179 + v180[9]);
        *v182 = 0xD000000000000027;
        v182[1] = 0x800000022B36C380;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA738, &unk_22B3659D0);
        v183 = *(v209 + 72);
        v184 = (*(v209 + 80) + 32) & ~*(v209 + 80);
        v185 = swift_allocObject();
        *(v185 + 16) = xmmword_22B3634B0;
        sub_22B20203C(v179, v185 + v184, type metadata accessor for CDTOUPeak);
        v258(v204, v20);

        (*(v195 + 8))(v247, v196);
        return v185;
      }
    }

    else
    {
      (*(v21 + 56))(v168, 1, 1, v20);
    }

    sub_22B35D86C();
    v170 = v202;
    if ((*(v21 + 48))(v202, 1, v20) != 1)
    {
      sub_22B123284(v170, &qword_27D8BA340, &qword_22B363FB0);
    }

    goto LABEL_101;
  }

  v78 = 0;
  v218 = v259 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
  v245 = v250 + 16;
  v256 = (v21 + 8);
  v222 = (v21 + 16);
  v249 = (v21 + 32);
  v244 = (v21 + 56);
  v240 = (v21 + 48);
  v246 = (v250 + 8);
  v188 = (v250 + 40);
  v213 = a1;
  v210 = v21;
  v206 = v12;
  v230 = v17;
  v229 = v63;
  v217 = v259;
  while (1)
  {
    if (v78 >= v75[2])
    {
      goto LABEL_114;
    }

    v81 = *(v70 + 72);
    v221 = v78;
    v82 = v252;
    v83 = sub_22B201F74(&v218[v81 * v78], v252, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    v80 = MEMORY[0x23188EEB0](v83);
    if (!*(a1 + 16))
    {
      v79 = v221;
      goto LABEL_6;
    }

    v220 = v80;
    v84 = sub_22B33B460(v82);
    if (v85)
    {
      break;
    }

LABEL_5:
    v79 = v221;
    v80 = v220;
LABEL_6:
    objc_autoreleasePoolPop(v80);
    sub_22B201FDC(v252, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    v78 = v79 + 1;
    v75 = v217;
    if (v79 + 1 == v219)
    {

      v160 = v260;
      goto LABEL_88;
    }
  }

  v86 = *(*(a1 + 56) + 8 * v84);
  v87 = v86[2];
  if (!v87)
  {
    v105 = MEMORY[0x277D84F90];
    v91 = v211;
    v106 = *(MEMORY[0x277D84F90] + 16);
    if (v106)
    {
      goto LABEL_31;
    }

LABEL_3:

LABEL_4:
    v21 = v210;
    v26 = v212;
    goto LABEL_5;
  }

  v255 = *(v208 + 28);
  v88 = v209;
  v89 = v86 + ((*(v209 + 80) + 32) & ~*(v209 + 80));
  v248 = v86;

  v77 = *(v88 + 72);
  v90 = MEMORY[0x277D84F90];
  v91 = v211;
  do
  {
    v92 = v233;
    sub_22B201F74(v89, v233, type metadata accessor for CDTOUPeak);
    v93 = *(v92 + v255);

    sub_22B201FDC(v92, type metadata accessor for CDTOUPeak);
    v94 = *(v93 + 16);
    v95 = v90[2];
    v96 = v95 + v94;
    if (__OFADD__(v95, v94))
    {
      goto LABEL_109;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v90;
    if (isUniquelyReferenced_nonNull_native && v96 <= v90[3] >> 1)
    {
      if (!*(v93 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v95 <= v96)
      {
        v99 = v95 + v94;
      }

      else
      {
        v99 = v95;
      }

      v98 = sub_22B32D1C8(isUniquelyReferenced_nonNull_native, v99, 1, v90);
      if (!*(v93 + 16))
      {
LABEL_12:
        v90 = v98;

        if (v94)
        {
          goto LABEL_110;
        }

        goto LABEL_13;
      }
    }

    if ((*(v98 + 24) >> 1) - *(v98 + 16) < v94)
    {
      goto LABEL_111;
    }

    v100 = (*(v250 + 80) + 32) & ~*(v250 + 80);
    v90 = v98;
    v101 = *(v250 + 72);
    swift_arrayInitWithCopy();

    if (v94)
    {
      v102 = v90[2];
      v103 = __OFADD__(v102, v94);
      v104 = v102 + v94;
      if (v103)
      {
        goto LABEL_113;
      }

      v90[2] = v104;
    }

LABEL_13:
    v89 += v77;
    --v87;
  }

  while (v87);

  a1 = v213;
  v70 = v215;
  v77 = v254;
  v105 = v90;
  v106 = v90[2];
  if (!v106)
  {
    goto LABEL_3;
  }

LABEL_31:
  v107 = *(Events + 24);
  v216 = (*(v250 + 80) + 32) & ~*(v250 + 80);
  v238 = v105 + v216;
  v239 = v106;
  v108 = v106 - 1;
  v109 = v106 - 1;
  v237 = v107;
  v248 = v105;
  while (2)
  {
    if (v109 + 1 > v105[2])
    {
      __break(1u);
LABEL_109:
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
      goto LABEL_115;
    }

    v110 = *(v250 + 72);
    v111 = *(v250 + 16);
    v111(v257, v238 + v110 * v109, v77);
    v112 = v235;
    sub_22B35D89C();
    v113 = sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578]);
    v114 = v252;
    v255 = v113;
    if (sub_22B36075C())
    {
      (*v249)(v253, v112, v20);
    }

    else
    {
      (*v256)(v112, v20);
      (*v222)(v253, v114 + v107, v20);
    }

    sub_22B35FF7C();
    v115 = v258;
    sub_22B35DD9C();
    v243 = v111;
    if (v115)
    {
      v258 = 0;

      v241 = *v244;
      v241(v91, 1, 1, v20);
      v116 = v234;
      sub_22B35DD2C();
      v117 = (*v240)(v91, 1, v20);
      v77 = v254;
      if (v117 != 1)
      {
        sub_22B123284(v91, &qword_27D8BA340, &qword_22B363FB0);
      }
    }

    else
    {
      v258 = 0;

      v241 = *v244;
      v241(v91, 0, 1, v20);
      v116 = v234;
      (*v249)(v234, v91, v20);
      v77 = v254;
    }

    v118 = v253;
    v119 = sub_22B36074C();
    v120 = v116;
    v121 = v119;
    v122 = *v256;
    (*v256)(v120, v20);
    v122(v118, v20);
    v242 = *v246;
    v242(v257, v77);
    if (v109-- != 0)
    {
      v105 = v248;
      v107 = v237;
      if ((v121 & 1) == 0)
      {
        goto LABEL_43;
      }

      continue;
    }

    break;
  }

  v105 = v248;
LABEL_43:
  v227 = *(Events + 28);
  v207 = v109 + 1;
  v124 = v105 + v216 + v108 * v110;
  v226 = -v110;
  v125 = v230;
  v126 = v231;
  v127 = v229;
  v128 = v239;
  v228 = v122;
  while (1)
  {
    if (v128 > v105[2])
    {
      goto LABEL_112;
    }

    v239 = v128;
    v243(v127, v124, v77);
    sub_22B170BE0(v252 + v227, v125, &qword_27D8BA340, &qword_22B363FB0);
    v129 = *v240;
    if ((*v240)(v125, 1, v20) == 1)
    {
      sub_22B35D86C();
      if (v129(v125, 1, v20) != 1)
      {
        sub_22B123284(v125, &qword_27D8BA340, &qword_22B363FB0);
      }
    }

    else
    {
      (*v249)(v126, v125, v20);
    }

    v130 = v224;
    sub_22B35D86C();
    v131 = sub_22B36074C();
    v132 = (v131 & 1) == 0;
    v133 = (v131 & 1) != 0 ? v126 : v130;
    v134 = v132 ? v126 : v130;
    v122(v133, v20);
    v135 = *v249;
    (*v249)(v236, v134, v20);
    sub_22B35FF7C();
    v136 = v20;
    v137 = v225;
    v138 = v258;
    sub_22B35DD9C();
    v223 = v135;
    if (v138)
    {
      v258 = 0;

      v241(v137, 1, 1, v136);
      sub_22B35DD2C();
      v139 = v129(v137, 1, v136);
      v77 = v254;
      if (v139 != 1)
      {
        sub_22B123284(v137, &qword_27D8BA340, &qword_22B363FB0);
      }

      v20 = v136;
      v125 = v230;
      v140 = v232;
    }

    else
    {
      v258 = 0;

      v241(v137, 0, 1, v136);
      v140 = v232;
      v135(v232, v137, v136);
      v20 = v136;
      v125 = v230;
      v77 = v254;
    }

    v126 = v231;
    v122 = v228;
    v141 = v236;
    v142 = sub_22B35DDFC();
    v122(v140, v20);
    v122(v141, v20);
    v127 = v229;
    v242(v229, v77);
    if (v142)
    {
      break;
    }

    v124 += v226;
    v128 = v239 - 1;
    v105 = v248;
    if (v239 == 1)
    {
      v143 = v248[2];
      if ((v121 & 1) == 0)
      {
        v144 = v207;
        a1 = v213;
        v145 = v206;
        if (v143 < v207)
        {
          goto LABEL_117;
        }

        goto LABEL_68;
      }

LABEL_66:
      v144 = 0;
      a1 = v213;
      v145 = v206;
      goto LABEL_68;
    }
  }

  v105 = v248;
  v143 = v239;
  if (v121)
  {
    goto LABEL_66;
  }

  v144 = v207;
  a1 = v213;
  v145 = v206;
  if (v239 < v207)
  {
    goto LABEL_116;
  }

LABEL_68:
  v146 = v105[2];
  if (v146 < v144 || v146 < v143)
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  if (v146 != v143 - v144)
  {
    sub_22B1FB268(v105, v238, v144, (2 * v143) | 1, &qword_27D8BA5B8, &unk_22B367600, MEMORY[0x277D180E0]);
    v159 = v158;

    v146 = v159[2];
    v105 = v159;
  }

  v70 = v215;
  if (!v146)
  {
    goto LABEL_85;
  }

  v248 = v105;
  v147 = v205;
  v243(v205, v105 + v216, v77);
  sub_22B35FF7C();
  v242(v147, v77);
  v148 = v258;
  sub_22B35DD9C();
  if (v148)
  {

    v241(v145, 1, 1, v20);
    sub_22B123284(v145, &qword_27D8BA340, &qword_22B363FB0);
    v258 = 0;
    goto LABEL_83;
  }

  v258 = 0;

  v241(v145, 0, 1, v20);
  v149 = v201;
  v223(v201, v145, v20);
  if ((sub_22B35DDFC() & 1) == 0)
  {
    v122(v149, v20);
LABEL_83:
    v70 = v215;
    v77 = v254;
LABEL_84:
    v105 = v248;
LABEL_85:
    sub_22B355040(v105);
    goto LABEL_4;
  }

  v150 = sub_22B35DDAC();
  v77 = v254;
  if (!v248[2])
  {
    goto LABEL_118;
  }

  v241 = v151;
  v255 = v150;
  v152 = v216;
  v153 = v190;
  v154 = v243;
  v243(v190, v248 + v216, v254);
  sub_22B35FF4C();
  v239 = v155;
  v156 = v242;
  v242(v153, v77);
  if (!v248[2])
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v157 = v189;
  v154(v189, v248 + v152, v77);
  sub_22B35FF5C();
  v156(v157, v77);
  sub_22B35FF6C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v248 = sub_22B206AC4(v248);
  }

  a1 = v213;
  v70 = v215;
  v122(v201, v20);
  if (v248[2])
  {
    (*v188)(v248 + v216, v194, v77);
    goto LABEL_84;
  }

LABEL_120:
  __break(1u);

  __break(1u);
  return result;
}

void sub_22B2000B4(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v53 = a2;
  v58 = a1;
  v57 = sub_22B35E37C();
  v61 = *(v57 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v57 - 8);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B35DE9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v51 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = &v45 - v13;
  v14 = sub_22B35D8BC();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v59 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x277D84F90];
  v55 = a4;
  v56 = a3;
  v19 = *(a3 + 2);
  v20 = *a4;
  v21 = *a4 < v19;
  v54 = v9;
  v49 = v16;
  if (v21)
  {
    v22 = v16 + 1;
    v23 = (v9 + 8);
    v24 = v20;
    v25 = v60;
    while ((v20 & 0x8000000000000000) == 0)
    {
      v26 = &v56[((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v24];
      v27 = v59;
      MEMORY[0x23188BC90](v17);
      sub_22B35D86C();
      (*v22)(v27, v14);
      sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578]);
      LOBYTE(v26) = sub_22B36074C();
      (*v23)(v25, v8);
      if (v26)
      {
        v20 = v24;
        goto LABEL_9;
      }

      *v55 = ++v24;
      if (v19 == v24)
      {
        return;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v21 = v19 <= v20;
    v28 = (v19 - v20);
    if (!v21)
    {
      v29 = 0;
      v50 = *(v61 + 16);
      v30 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v31 = *(v61 + 72);
      v32 = (v49 + 1);
      v45 = (v54 + 16);
      v46 = (v49 + 1);
      v61 += 16;
      v48 = (v54 + 8);
      v49 = (v61 - 8);
      v47 = v31;
      v33 = &v56[v30 + v20 * v31];
      v34 = v52;
      while (1)
      {
        v35 = v50(v34, v33, v57, v17);
        v36 = v59;
        MEMORY[0x23188BC90](v35);
        v37 = v60;
        sub_22B35D89C();
        v56 = *v32;
        (v56)(v36, v14);
        sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578]);
        v38 = v53;
        v39 = sub_22B36074C();
        (*v48)(v37, v8);
        if ((v39 & 1) == 0)
        {
          break;
        }

        v54 = v29;
        v40 = *v45;
        (*v45)(v37, v58, v8);
        v55 = v28;
        v40(v51, v38, v8);
        sub_22B35D88C();
        v41 = sub_22B35E35C();
        MEMORY[0x28223BE20](v41);
        *(&v45 - 2) = v36;
        v29 = v54;
        sub_22B1DB41C(sub_22B201F54, (&v45 - 4), v42);
        sub_22B355188(v43);
        (*v49)(v34, v57);
        v44 = v55;
        v32 = v46;
        (v56)(v36, v14);
        v33 += v47;
        v28 = (v44 - 1);
        if (!v28)
        {
          return;
        }
      }

      (*v49)(v34, v57);
    }
  }
}

char *sub_22B200620(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v174 = a3;
  v155 = a1;
  v144 = sub_22B35D8BC();
  v6 = *(v144 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v144);
  v149 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_22B35DDBC();
  v9 = *(v172 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v172);
  v147 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v127 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v142 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v127 - v19;
  v154 = sub_22B35FF8C();
  v157 = *(v154 - 8);
  v21 = *(v157 + 64);
  MEMORY[0x28223BE20](v154 - 8);
  v128 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v141 = &v127 - v24;
  MEMORY[0x28223BE20](v25);
  v168 = &v127 - v26;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA788, &qword_22B365A18);
  v171 = *(v173 - 8);
  v27 = v171[8];
  MEMORY[0x28223BE20](v173);
  v153 = (&v127 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA790, &qword_22B365A20);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v167 = (&v127 - v34);
  v35 = type metadata accessor for CDTOUPeak();
  v176 = *(v35 - 8);
  v36 = *(v176 + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v127 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_22B35DE9C();
  v39 = *(*(v175 - 8) + 64);
  MEMORY[0x28223BE20](v175);
  v143 = &v127 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v134 = &v127 - v42;
  MEMORY[0x28223BE20](v43);
  v137 = &v127 - v44;
  MEMORY[0x28223BE20](v45);
  v148 = &v127 - v46;
  MEMORY[0x28223BE20](v47);
  v158 = &v127 - v48;
  MEMORY[0x28223BE20](v49);
  v145 = &v127 - v51;
  v177 = a2;
  v52 = *a4;
  v138 = *(a2 + 2);
  v161 = v20;
  v164 = v50;
  if (v52 >= v138)
  {
LABEL_8:
    if (v52 >= v138)
    {
      return MEMORY[0x277D84F90];
    }

    v163 = v14;
    v64 = 0;
    v132 = &v177[(*(v176 + 80) + 32) & ~*(v176 + 80)];
    v131 = *(v176 + 72);
    v151 = (v164 + 8);
    v156 = (v157 + 16);
    v166 = (v171 + 7);
    v165 = (v171 + 6);
    v162 = (v157 + 32);
    v169 = (v157 + 8);
    v170 = (v164 + 56);
    v171 = v9 + 1;
    v152 = (v164 + 32);
    v140 = (v164 + 16);
    v139 = (v6 + 1);
    v129 = MEMORY[0x277D84F90];
    v160 = v32;
    v130 = v35;
    v133 = v38;
LABEL_11:
    v135 = v52;
    sub_22B201F74(&v132[v131 * v52], v38, type metadata accessor for CDTOUPeak);
    v65 = *(v35 + 20);
    v66 = v145;
    sub_22B35D86C();
    v67 = sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578]);
    v68 = v175;
    v136 = v67;
    v69 = sub_22B36074C();
    v150 = *v151;
    v150(v66, v68);
    if ((v69 & 1) == 0)
    {
      sub_22B201FDC(v38, type metadata accessor for CDTOUPeak);
      return v129;
    }

    MEMORY[0x28223BE20](*&v38[*(v35 + 28)]);
    *(&v127 - 2) = v174;
    v178 = v70;

    sub_22B21AEB4(sub_22B202288, (&v127 - 4));
    v177 = v64;
    if (v64)
    {
      goto LABEL_56;
    }

    v71 = 0;
    v159 = v178;
    v72 = *(v178 + 16);
    v73 = v154;
    v74 = v168;
    v75 = v173;
    v164 = v72;
    if (v72)
    {
LABEL_14:
      if ((v71 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v71 < *(v159 + 16))
      {
        v76 = v71 + 1;
        v77 = v157;
        v78 = v159 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v71;
        v79 = *(v75 + 48);
        v80 = v153;
        *v153 = v71;
        (*(v77 + 16))(v80 + v79, v78, v73);
        sub_22B170CD0(v80, v32, &qword_27D8BA788, &qword_22B365A18);
        v81 = 0;
        v82 = v76;
        v74 = v168;
        goto LABEL_18;
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    while (1)
    {
      while (1)
      {
        v81 = 1;
        v82 = v72;
LABEL_18:
        (*v166)(v32, v81, 1, v75);
        v83 = v167;
        sub_22B170CD0(v32, v167, &qword_27D8BA790, &qword_22B365A20);
        if ((*v165)(v83, 1, v75) == 1)
        {
          v38 = v133;
          sub_22B201FDC(v133, type metadata accessor for CDTOUPeak);

          v52 = v135 + 1;
          v35 = v130;
          v64 = v177;
          if (v135 + 1 == v138)
          {
            return v129;
          }

          goto LABEL_11;
        }

        v176 = v82;
        v84 = *v83;
        v85 = *v162;
        (*v162)(v74, v83 + *(v75 + 48), v73);
        v86 = v163;
        sub_22B35F55C();
        sub_22B35FF7C();
        v87 = v73;
        v88 = v161;
        v89 = v177;
        sub_22B35DD9C();
        if (!v89)
        {
          break;
        }

        (*v171)(v86, v172);
        (*v169)(v74, v87);
        (*v170)(v88, 1, 1, v175);
        sub_22B123284(v88, &qword_27D8BA340, &qword_22B363FB0);
        v177 = 0;
        v73 = v87;
LABEL_21:
        v75 = v173;
        v32 = v160;
        v72 = v164;
        v71 = v176;
        if (v176 != v164)
        {
          goto LABEL_14;
        }
      }

      v146 = v85;
      v90 = v86;
      v91 = v88;
      v92 = *v171;
      (*v171)(v90, v172);

      v93 = *v170;
      v94 = v175;
      (*v170)(v91, 0, 1, v175);
      v95 = *v152;
      (*v152)(v158, v91, v94);
      v96 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        goto LABEL_52;
      }

      v97 = v159;
      if (v96 >= *(v159 + 16))
      {
        v177 = 0;
        v104 = v148;
        sub_22B35D86C();
        v73 = v154;
        v74 = v168;
        v75 = v173;
      }

      else
      {
        sub_22B35F55C();
        v98 = v154;
        if ((v96 & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }

        if (v96 >= *(v97 + 16))
        {
          goto LABEL_54;
        }

        v99 = v157;
        v100 = v97 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v96;
        v101 = v141;
        (*(v157 + 16))(v141, v100, v154);
        sub_22B35FF7C();
        (*(v99 + 8))(v101, v98);
        v102 = v142;
        v103 = v147;
        sub_22B35DD9C();
        v177 = 0;
        v92(v103, v172);

        v94 = v175;
        v93(v102, 0, 1, v175);
        v105 = v137;
        v95(v137, v102, v94);
        v106 = sub_22B35DDEC();
        v75 = v173;
        if (v106)
        {
          v107 = v134;
          sub_22B35D86C();
          v108 = sub_22B36074C();
          v73 = v154;
          if (v108)
          {
            v150(v105, v94);
            v104 = v148;
            v109 = v148;
            v110 = v107;
          }

          else
          {
            v150(v107, v94);
            v104 = v148;
            v109 = v148;
            v110 = v105;
          }

          v95(v109, v110, v94);
        }

        else
        {
          v150(v105, v94);
          v73 = v154;
          v104 = v148;
          sub_22B35D86C();
        }

        v74 = v168;
      }

      v111 = v158;
      v112 = sub_22B35DDEC();
      v113 = v149;
      if (v112)
      {
        v114 = *v140;
        (*v140)(v145, v111, v94);
        v114(v143, v104, v94);
        sub_22B35D88C();
        if (sub_22B35D83C())
        {
          (*v156)(v128, v168, v73);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = sub_22B32D1C8(0, *(v129 + 2) + 1, 1, v129);
          }

          v117 = v148;
          v119 = *(v129 + 2);
          v118 = *(v129 + 3);
          if (v119 >= v118 >> 1)
          {
            v129 = sub_22B32D1C8(v118 > 1, v119 + 1, 1, v129);
          }

          (*v139)();
          v120 = v117;
          v121 = v175;
          v122 = v150;
          v150(v120, v175);
          v122(v158, v121);
          v123 = v157;
          v124 = v168;
          (*(v157 + 8))(v168, v73);
          v125 = v129;
          *(v129 + 2) = v119 + 1;
          v74 = v124;
          v146(&v125[((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v119], v128, v73);
          goto LABEL_21;
        }

        (*v139)(v113, v144);
        v115 = v150;
        v150(v104, v94);
        v115(v111, v94);
        v74 = v168;
        (*v169)(v168, v73);
        v75 = v173;
      }

      else
      {
        v116 = v150;
        v150(v104, v94);
        v116(v111, v94);
        (*v169)(v74, v73);
      }

      v72 = v164;
      v71 = v176;
      v32 = v160;
      if (v176 != v164)
      {
        goto LABEL_14;
      }
    }
  }

  v53 = a4;
  v169 = v9;
  v170 = v6;
  v133 = v38;
  v54 = v35;
  v163 = v14;
  v55 = (v50 + 8);
  v129 = MEMORY[0x277D84F90];
  v56 = v52;
  while ((v52 & 0x8000000000000000) == 0)
  {
    v57 = v32;
    v58 = v52;
    v59 = &v177[((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v56];
    v60 = *(v54 + 24);
    v61 = v145;
    sub_22B35D89C();
    sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578]);
    v62 = v175;
    v63 = sub_22B36074C();
    (*v55)(v61, v62);
    if (v63)
    {
      v52 = v56;
      v14 = v163;
      v35 = v54;
      v38 = v133;
      v32 = v57;
      v9 = v169;
      v6 = v170;
      goto LABEL_8;
    }

    *v53 = ++v56;
    v52 = v58;
    v32 = v57;
    if (v138 == v56)
    {
      return v129;
    }
  }

LABEL_55:
  __break(1u);
LABEL_56:

  __break(1u);
  return result;
}