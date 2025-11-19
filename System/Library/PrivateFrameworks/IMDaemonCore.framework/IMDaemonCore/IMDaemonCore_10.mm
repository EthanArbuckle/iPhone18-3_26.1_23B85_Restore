uint64_t sub_22B728794()
{
  v0[31] = *(*(v0[19] + 160) + 16);
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_22B728834;
  v2 = v0[19];

  return sub_22B798834();
}

uint64_t sub_22B728834()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B728944, v2, 0);
}

uint64_t sub_22B728944()
{
  v77 = v0;
  v1 = *(v0 + 48);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    if (*(v0 + 321) != 1)
    {
      goto LABEL_4;
    }

LABEL_18:
    if (qword_28141F398 != -1)
    {
LABEL_48:
      swift_once();
    }

    v27 = *(v0 + 48);
    v28 = sub_22B7DB2B8();
    sub_22B4CFA74(v28, qword_281422680);

    v29 = sub_22B7DB298();
    v30 = sub_22B7DBCB8();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 152);
    if (v31)
    {
      v34 = *(v0 + 128);
      v33 = *(v0 + 136);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v76 = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_22B4CFAAC(v34, v33, &v76);
      _os_log_impl(&dword_22B4CC000, v29, v30, "[%{public}s] finished batch, has more work to do, but is throttled", v35, 0xCu);
      sub_22B4CFB78(v36);
      MEMORY[0x231898D60](v36, -1, -1);
      MEMORY[0x231898D60](v35, -1, -1);
    }

    else
    {
      v38 = *(v0 + 152);
    }

    v37 = 4;
    goto LABEL_44;
  }

  v2 = *(v0 + 321);
  v3 = *(v0 + 48);
  v4 = *(v1 + 184);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 24))(v3, ObjectType, v4);
  swift_unknownObjectRelease();
  if (v2 & 1) != 0 || (v6)
  {
    goto LABEL_18;
  }

LABEL_4:
  v7 = *(v0 + 144);
  if (v7 >= 4)
  {
    type metadata accessor for IMPersistentTaskLane(0);
    *(v0 + 16) = v7;

    return sub_22B7DC548();
  }

  v8 = *(&off_2787089E8 + v7);
  *(v0 + 264) = v8;
  v9 = *(v8 + 16);
  *(v0 + 272) = v9;
  if (!v9)
  {
LABEL_11:

    if (v7 == 3 || (sub_22B7DAE68(), sub_22B7DAE58(), v16 = sub_22B7DAE38(), , (v16 & 1) == 0))
    {
      if (sub_22B7DBAB8())
      {
        if (qword_28141F398 != -1)
        {
          swift_once();
        }

        v40 = *(v0 + 48);
        v41 = sub_22B7DB2B8();
        sub_22B4CFA74(v41, qword_281422680);

        v42 = sub_22B7DB298();
        v43 = sub_22B7DBCB8();

        v44 = os_log_type_enabled(v42, v43);
        v45 = *(v0 + 152);
        if (v44)
        {
          v47 = *(v0 + 128);
          v46 = *(v0 + 136);
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v76 = v49;
          *v48 = 136446210;
          *(v48 + 4) = sub_22B4CFAAC(v47, v46, &v76);
          _os_log_impl(&dword_22B4CC000, v42, v43, "[%{public}s] finished batch, has more work to do, but is cancelled", v48, 0xCu);
          sub_22B4CFB78(v49);
          MEMORY[0x231898D60](v49, -1, -1);
          MEMORY[0x231898D60](v48, -1, -1);
        }

        else
        {
          v67 = *(v0 + 152);
        }

        v37 = 3;
      }

      else
      {
        if (qword_28141F398 != -1)
        {
          swift_once();
        }

        v57 = *(v0 + 48);
        v58 = sub_22B7DB2B8();
        sub_22B4CFA74(v58, qword_281422680);

        v59 = sub_22B7DB298();
        v60 = sub_22B7DBCB8();

        v61 = os_log_type_enabled(v59, v60);
        v62 = *(v0 + 152);
        if (v61)
        {
          v64 = *(v0 + 128);
          v63 = *(v0 + 136);
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v76 = v66;
          *v65 = 136446210;
          *(v65 + 4) = sub_22B4CFAAC(v64, v63, &v76);
          _os_log_impl(&dword_22B4CC000, v59, v60, "[%{public}s] finished batch, has more work to do, yielding", v65, 0xCu);
          sub_22B4CFB78(v66);
          MEMORY[0x231898D60](v66, -1, -1);
          MEMORY[0x231898D60](v65, -1, -1);
        }

        else
        {
          v68 = *(v0 + 152);
        }

        v37 = 2;
      }
    }

    else
    {
      if (qword_28141F398 != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 48);
      v18 = sub_22B7DB2B8();
      sub_22B4CFA74(v18, qword_281422680);

      v19 = sub_22B7DB298();
      v20 = sub_22B7DBCB8();

      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 152);
      if (v21)
      {
        v24 = *(v0 + 128);
        v23 = *(v0 + 136);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v76 = v26;
        *v25 = 136446210;
        *(v25 + 4) = sub_22B4CFAAC(v24, v23, &v76);
        _os_log_impl(&dword_22B4CC000, v19, v20, "[%{public}s] finished batch, has more work to do, but blocked by low power mode", v25, 0xCu);
        sub_22B4CFB78(v26);
        MEMORY[0x231898D60](v26, -1, -1);
        MEMORY[0x231898D60](v25, -1, -1);
      }

      else
      {
        v69 = *(v0 + 152);
      }

      v37 = 6;
    }

LABEL_44:
    v70 = *(v0 + 248);
    v71 = *(v0 + 104);
    v72 = *(v0 + 80);
    v73 = *(v0 + 56);

    v74 = *(v0 + 8);

    return v74(v37, v70);
  }

  v10 = 0;
  while (1)
  {
    *(v0 + 280) = v10;
    v11 = *(v0 + 264);
    if (v10 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_48;
    }

    v12 = *(v0 + 48);
    v13 = *(v11 + 8 * v10 + 32);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 288) = Strong;
    if (Strong)
    {
      break;
    }

    v10 = *(v0 + 280) + 1;
    if (v10 == *(v0 + 272))
    {
      v15 = *(v0 + 264);
      v7 = *(v0 + 144);
      goto LABEL_11;
    }
  }

  v50 = *(v0 + 48);
  v51 = *(v50 + 184);
  v52 = swift_getObjectType();
  v53 = *(v50 + 120);
  v54 = *(v51 + 80);
  v75 = (v54 + *v54);
  v55 = v54[1];
  v56 = swift_task_alloc();
  *(v0 + 296) = v56;
  *v56 = v0;
  v56[1] = sub_22B729128;

  return v75(v53, v13, v52, v51);
}

uint64_t sub_22B729128(uint64_t a1)
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 304) = a1;

  return MEMORY[0x2822009F8](sub_22B729240, v3, 0);
}

uint64_t sub_22B729240()
{
  v83 = v0;
  v1 = v0[38];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_52:
    v3 = sub_22B7DC1C8();
    v4 = v0[38];
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[38];
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  while (v3 != v5)
  {
    if (v6)
    {
      v8 = MEMORY[0x231895C80](v5, v0[38]);
    }

    else
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_50;
      }

      v8 = *(v7 + 8 * v5);
    }

    v1 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v9 = [v8 isEmpty];

    ++v5;
    if ((v9 & 1) == 0)
    {
      v25 = v0[38];
      v26 = v0[36];
      v27 = v0[33];

      swift_unknownObjectRelease();
      if (qword_28141F398 != -1)
      {
        swift_once();
      }

      v28 = v0[6];
      v29 = sub_22B7DB2B8();
      sub_22B4CFA74(v29, qword_281422680);

      v30 = sub_22B7DB298();
      v31 = sub_22B7DBCB8();

      v32 = os_log_type_enabled(v30, v31);
      v33 = v0[19];
      if (v32)
      {
        v35 = v0[16];
        v34 = v0[17];
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v82 = v37;
        *v36 = 136446210;
        *(v36 + 4) = sub_22B4CFAAC(v35, v34, &v82);
        _os_log_impl(&dword_22B4CC000, v30, v31, "[%{public}s] finished batch, has more work to do, but has higher priority work", v36, 0xCu);
        sub_22B4CFB78(v37);
        MEMORY[0x231898D60](v37, -1, -1);
        MEMORY[0x231898D60](v36, -1, -1);
      }

      else
      {
        v52 = v0[19];
      }

      v38 = 5;
      goto LABEL_46;
    }
  }

  v10 = v0[38];
  v11 = v0[36];

  swift_unknownObjectRelease();
  while (1)
  {
    v12 = v0[35] + 1;
    if (v12 == v0[34])
    {
      break;
    }

    v0[35] = v12;
    v13 = v0[33];
    if (v12 >= *(v13 + 16))
    {
      goto LABEL_51;
    }

    v14 = v0[6];
    v15 = *(v13 + 8 * v12 + 32);
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[36] = Strong;
    if (Strong)
    {
      v17 = v0[6];
      v18 = *(v17 + 184);
      ObjectType = swift_getObjectType();
      v20 = *(v17 + 120);
      v21 = *(v18 + 80);
      v81 = (v21 + *v21);
      v22 = v21[1];
      v23 = swift_task_alloc();
      v0[37] = v23;
      *v23 = v0;
      v23[1] = sub_22B729128;

      return v81(v20, v15, ObjectType, v18);
    }
  }

  v39 = v0[33];
  v40 = v0[18];

  if (v40 == 3 || (sub_22B7DAE68(), sub_22B7DAE58(), v41 = sub_22B7DAE38(), , (v41 & 1) == 0))
  {
    if (sub_22B7DBAB8())
    {
      if (qword_28141F398 != -1)
      {
        swift_once();
      }

      v53 = v0[6];
      v54 = sub_22B7DB2B8();
      sub_22B4CFA74(v54, qword_281422680);

      v55 = sub_22B7DB298();
      v56 = sub_22B7DBCB8();

      v57 = os_log_type_enabled(v55, v56);
      v58 = v0[19];
      if (v57)
      {
        v60 = v0[16];
        v59 = v0[17];
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v82 = v62;
        *v61 = 136446210;
        *(v61 + 4) = sub_22B4CFAAC(v60, v59, &v82);
        _os_log_impl(&dword_22B4CC000, v55, v56, "[%{public}s] finished batch, has more work to do, but is cancelled", v61, 0xCu);
        sub_22B4CFB78(v62);
        MEMORY[0x231898D60](v62, -1, -1);
        MEMORY[0x231898D60](v61, -1, -1);
      }

      else
      {
        v73 = v0[19];
      }

      v38 = 3;
    }

    else
    {
      if (qword_28141F398 != -1)
      {
        swift_once();
      }

      v63 = v0[6];
      v64 = sub_22B7DB2B8();
      sub_22B4CFA74(v64, qword_281422680);

      v65 = sub_22B7DB298();
      v66 = sub_22B7DBCB8();

      v67 = os_log_type_enabled(v65, v66);
      v68 = v0[19];
      if (v67)
      {
        v70 = v0[16];
        v69 = v0[17];
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v82 = v72;
        *v71 = 136446210;
        *(v71 + 4) = sub_22B4CFAAC(v70, v69, &v82);
        _os_log_impl(&dword_22B4CC000, v65, v66, "[%{public}s] finished batch, has more work to do, yielding", v71, 0xCu);
        sub_22B4CFB78(v72);
        MEMORY[0x231898D60](v72, -1, -1);
        MEMORY[0x231898D60](v71, -1, -1);
      }

      else
      {
        v74 = v0[19];
      }

      v38 = 2;
    }
  }

  else
  {
    if (qword_28141F398 != -1)
    {
      swift_once();
    }

    v42 = v0[6];
    v43 = sub_22B7DB2B8();
    sub_22B4CFA74(v43, qword_281422680);

    v44 = sub_22B7DB298();
    v45 = sub_22B7DBCB8();

    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[19];
    if (v46)
    {
      v49 = v0[16];
      v48 = v0[17];
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v82 = v51;
      *v50 = 136446210;
      *(v50 + 4) = sub_22B4CFAAC(v49, v48, &v82);
      _os_log_impl(&dword_22B4CC000, v44, v45, "[%{public}s] finished batch, has more work to do, but blocked by low power mode", v50, 0xCu);
      sub_22B4CFB78(v51);
      MEMORY[0x231898D60](v51, -1, -1);
      MEMORY[0x231898D60](v50, -1, -1);
    }

    else
    {
      v75 = v0[19];
    }

    v38 = 6;
  }

LABEL_46:
  v76 = v0[31];
  v77 = v0[13];
  v78 = v0[10];
  v79 = v0[7];

  v80 = v0[1];

  return v80(v38, v76);
}

uint64_t sub_22B729A30()
{
  v40 = v0;
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v6 = v0[6];

  v7 = v2;
  v8 = sub_22B7DB298();
  v9 = sub_22B7DBC98();

  if (!os_log_type_enabled(v8, v9))
  {
    v10 = v0[25];
    v20 = v0[26];

    goto LABEL_6;
  }

  v10 = v0[25];
  v12 = v0[16];
  v11 = v0[17];
  v13 = swift_slowAlloc();
  v1 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v39 = v6;
  *v13 = 136446722;
  *(v13 + 4) = sub_22B4CFAAC(v12, v11, &v39);
  *(v13 + 12) = 2048;
  if (v10 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22B7DC1C8())
  {
    v15 = v0[29];
    v16 = v0[25];
    v17 = v0[26];
    *(v13 + 14) = i;

    *(v13 + 22) = 2112;
    v18 = v15;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v19;
    *v1 = v19;
    _os_log_impl(&dword_22B4CC000, v8, v9, "[%{public}s] failed to run %ld with error %@", v13, 0x20u);
    sub_22B4D0D64(v1, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v1, -1, -1);
    sub_22B4CFB78(v6);
    MEMORY[0x231898D60](v6, -1, -1);
    MEMORY[0x231898D60](v13, -1, -1);

LABEL_6:
    v21 = v0[25];
    if (v21 >> 62)
    {
      if (v21 < 0)
      {
        v32 = v0[25];
      }

      v13 = sub_22B7DC1C8();
      if (!v13)
      {
LABEL_20:
        v33 = v0[25];
        v34 = v0[26];

        v23 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }
    }

    else
    {
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_20;
      }
    }

    v39 = MEMORY[0x277D84F90];
    v8 = &v39;
    sub_22B7AB8C4(0, v13 & ~(v13 >> 63), 0);
    if ((v13 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    if (v0[25] < 0)
    {
      v36 = v0[25];
    }
  }

  v22 = 0;
  v23 = v39;
  v24 = v10 & 0xC000000000000001;
  v38 = v0[25] + 32;
  do
  {
    if (v24)
    {
      v25 = MEMORY[0x231895C80](v22, v0[25]);
    }

    else
    {
      v25 = *(v38 + 8 * v22);
    }

    v26 = v25;
    v27 = [v25 rowID];

    v39 = v23;
    v29 = *(v23 + 16);
    v28 = *(v23 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_22B7AB8C4((v28 > 1), v29 + 1, 1);
      v23 = v39;
    }

    ++v22;
    *(v23 + 16) = v29 + 1;
    *(v23 + 8 * v29 + 32) = v27;
  }

  while (v13 != v22);
  v30 = v0[25];
  v31 = v0[26];

LABEL_21:
  v0[39] = v23;
  v35 = v0[19];

  return MEMORY[0x2822009F8](sub_22B729D90, v35, 0);
}

uint64_t sub_22B729D90()
{
  v1 = v0[39];
  v2 = v0[19];
  v3 = v0[6];
  sub_22B79B2B4(MEMORY[0x277D84F90]);
  sub_22B79B2B4(v1);

  return MEMORY[0x2822009F8](sub_22B729E20, v3, 0);
}

uint64_t sub_22B729E20()
{
  v1 = *(v0 + 152);
  *(v0 + 321) = 1;

  return MEMORY[0x2822009F8](sub_22B728794, v1, 0);
}

uint64_t sub_22B729E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_22B7DC3E8();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_22B729F90, 0, 0);
}

uint64_t sub_22B729F90()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_22B7DC408();
  v7 = sub_22B72A348(&qword_28141EFC0, MEMORY[0x277D85928]);
  sub_22B7DC588();
  sub_22B72A348(&qword_28141EFC8, MEMORY[0x277D858F8]);
  sub_22B7DC418();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_22B72A120;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_22B72A120()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B72A2DC, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_22B72A2DC()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_22B72A348(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B72A39C(uint64_t a1, void *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_22B6F0D94;

  return sub_22B725D48(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_22B72A498()
{
  v55 = v0;
  if (qword_28141F398 != -1)
  {
LABEL_34:
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_22B7DB2B8();
  v0[4] = sub_22B4CFA74(v2, qword_281422680);

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v54 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_22B4CFAAC(*(v5 + 248), *(v5 + 256), &v54);
    _os_log_impl(&dword_22B4CC000, v3, v4, "[%{public}s] Validating resume request for persistent task", v6, 0xCu);
    sub_22B4CFB78(v7);
    MEMORY[0x231898D60](v7, -1, -1);
    MEMORY[0x231898D60](v6, -1, -1);
  }

  v8 = v0[3];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = v0[3];
    v10 = *(v8 + 184);
    ObjectType = swift_getObjectType();
    LOBYTE(v9) = (*(v10 + 24))(v9, ObjectType, v10);
    swift_unknownObjectRelease();
    if (v9)
    {
      v12 = v0[3];

      v13 = sub_22B7DB298();
      v14 = sub_22B7DBCB8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = v0[3];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v54 = v17;
        *v16 = 136446210;
        *(v16 + 4) = sub_22B4CFAAC(*(v15 + 248), *(v15 + 256), &v54);
        _os_log_impl(&dword_22B4CC000, v13, v14, "[%{public}s] Ignoring request to resume task because it is throttled", v16, 0xCu);
        sub_22B4CFB78(v17);
        MEMORY[0x231898D60](v17, -1, -1);
        MEMORY[0x231898D60](v16, -1, -1);
      }

      v18 = 0;
      v19 = 4;
LABEL_27:
      v45 = v0[1];

      return v45(v19, v18);
    }
  }

  v20 = *(v0[3] + 112);
  v0[5] = v20;
  if (v20 >= 4)
  {
    type metadata accessor for IMPersistentTaskLane(0);
    v0[2] = v20;

    return sub_22B7DC548();
  }

  else
  {
    v21 = *(&off_278708A08 + v20);
    v0[6] = v21;
    v22 = *(v21 + 16);
    v0[7] = v22;
    if (!v22)
    {
LABEL_16:

      if (v20 == 3 || (sub_22B7DAE68(), sub_22B7DAE58(), v29 = sub_22B7DAE38(), , (v29 & 1) == 0))
      {
        v39 = v0[3];
        v38 = v0[4];

        v40 = sub_22B7DB298();
        v41 = sub_22B7DBCB8();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = v0[3];
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v54 = v44;
          *v43 = 136446210;
          *(v43 + 4) = sub_22B4CFAAC(*(v42 + 248), *(v42 + 256), &v54);
          _os_log_impl(&dword_22B4CC000, v40, v41, "[%{public}s] Resume request for persistent task is allowed to proceed", v43, 0xCu);
          sub_22B4CFB78(v44);
          MEMORY[0x231898D60](v44, -1, -1);
          MEMORY[0x231898D60](v43, -1, -1);
        }

        v19 = 0;
        v18 = 1;
      }

      else
      {
        v31 = v0[3];
        v30 = v0[4];

        v32 = sub_22B7DB298();
        v33 = sub_22B7DBCB8();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = v0[3];
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v54 = v36;
          *v35 = 136446210;
          *(v35 + 4) = sub_22B4CFAAC(*(v34 + 248), *(v34 + 256), &v54);
          _os_log_impl(&dword_22B4CC000, v32, v33, "[%{public}s] Ignoring request to resume task because it is blocked by low power mode", v35, 0xCu);
          sub_22B4CFB78(v36);
          MEMORY[0x231898D60](v36, -1, -1);
          MEMORY[0x231898D60](v35, -1, -1);
        }

        v18 = 0;
        v19 = 6;
      }

      goto LABEL_27;
    }

    v23 = 0;
    while (1)
    {
      v0[8] = v23;
      v24 = v0[6];
      if (v23 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      v25 = v0[3];
      v26 = *(v24 + 8 * v23 + 32);
      Strong = swift_unknownObjectWeakLoadStrong();
      v0[9] = Strong;
      if (Strong)
      {
        break;
      }

      v23 = v0[8] + 1;
      if (v23 == v0[7])
      {
        v20 = v0[5];
        v28 = v0[6];
        goto LABEL_16;
      }
    }

    v46 = v0[3];
    v47 = *(v46 + 184);
    v48 = swift_getObjectType();
    v49 = *(v46 + 120);
    v50 = *(v47 + 80);
    v53 = (v50 + *v50);
    v51 = v50[1];
    v52 = swift_task_alloc();
    v0[10] = v52;
    *v52 = v0;
    v52[1] = sub_22B72AAF4;

    return v53(v49, v26, v48, v47);
  }
}

uint64_t sub_22B72AAF4(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_22B72AC0C, v3, 0);
}

uint64_t sub_22B72AC0C()
{
  v58 = v0;
  v1 = v0[11];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_36:
    v3 = sub_22B7DC1C8();
    v4 = v0[11];
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[11];
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  while (v3 != v5)
  {
    if (v6)
    {
      v8 = MEMORY[0x231895C80](v5, v0[11]);
    }

    else
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_34;
      }

      v8 = *(v7 + 8 * v5);
    }

    v1 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v9 = [v8 isEmpty];

    ++v5;
    if ((v9 & 1) == 0)
    {
      v25 = v0[11];
      v26 = v0[9];
      v27 = v0[6];
      v29 = v0[3];
      v28 = v0[4];

      swift_unknownObjectRelease();

      v30 = sub_22B7DB298();
      v31 = sub_22B7DBCB8();

      if (os_log_type_enabled(v30, v31))
      {
        v33 = v0[3];
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v57 = v35;
        *v34 = 136446210;
        *(v34 + 4) = sub_22B4CFAAC(*(v33 + 248), *(v33 + 256), &v57);
        _os_log_impl(&dword_22B4CC000, v30, v31, "[%{public}s] Ignoring request to resume task because it has higher priority work", v34, 0xCu);
        sub_22B4CFB78(v35);
        MEMORY[0x231898D60](v35, -1, -1);
        MEMORY[0x231898D60](v34, -1, -1);
      }

      v36 = 0;
      v37 = 5;
      goto LABEL_30;
    }
  }

  v10 = v0[11];
  v11 = v0[9];

  swift_unknownObjectRelease();
  while (1)
  {
    v12 = v0[8] + 1;
    if (v12 == v0[7])
    {
      break;
    }

    v0[8] = v12;
    v13 = v0[6];
    if (v12 >= *(v13 + 16))
    {
      goto LABEL_35;
    }

    v14 = v0[3];
    v15 = *(v13 + 8 * v12 + 32);
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[9] = Strong;
    if (Strong)
    {
      v17 = v0[3];
      v18 = *(v17 + 184);
      ObjectType = swift_getObjectType();
      v20 = *(v17 + 120);
      v21 = *(v18 + 80);
      v56 = (v21 + *v21);
      v22 = v21[1];
      v23 = swift_task_alloc();
      v0[10] = v23;
      *v23 = v0;
      v23[1] = sub_22B72AAF4;

      return v56(v20, v15, ObjectType, v18);
    }
  }

  v39 = v0[5];
  v38 = v0[6];

  if (v39 == 3 || (sub_22B7DAE68(), sub_22B7DAE58(), v40 = sub_22B7DAE38(), , (v40 & 1) == 0))
  {
    v49 = v0[3];
    v48 = v0[4];

    v50 = sub_22B7DB298();
    v51 = sub_22B7DBCB8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = v0[3];
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v57 = v54;
      *v53 = 136446210;
      *(v53 + 4) = sub_22B4CFAAC(*(v52 + 248), *(v52 + 256), &v57);
      _os_log_impl(&dword_22B4CC000, v50, v51, "[%{public}s] Resume request for persistent task is allowed to proceed", v53, 0xCu);
      sub_22B4CFB78(v54);
      MEMORY[0x231898D60](v54, -1, -1);
      MEMORY[0x231898D60](v53, -1, -1);
    }

    v37 = 0;
    v36 = 1;
  }

  else
  {
    v42 = v0[3];
    v41 = v0[4];

    v43 = sub_22B7DB298();
    v44 = sub_22B7DBCB8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = v0[3];
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v57 = v47;
      *v46 = 136446210;
      *(v46 + 4) = sub_22B4CFAAC(*(v45 + 248), *(v45 + 256), &v57);
      _os_log_impl(&dword_22B4CC000, v43, v44, "[%{public}s] Ignoring request to resume task because it is blocked by low power mode", v46, 0xCu);
      sub_22B4CFB78(v47);
      MEMORY[0x231898D60](v47, -1, -1);
      MEMORY[0x231898D60](v46, -1, -1);
    }

    v36 = 0;
    v37 = 6;
  }

LABEL_30:
  v55 = v0[1];

  return v55(v37, v36);
}

uint64_t sub_22B72B164()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B72B1F4;

  return sub_22B72A478();
}

uint64_t sub_22B72B1F4(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v5 = *(*v2 + 16);
  v7 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 96) = a2;

  return MEMORY[0x2822009F8](sub_22B72B310, v5, 0);
}

uint64_t sub_22B72B310()
{
  v30 = v0;
  if (*(v0 + 96))
  {
    if (qword_28141F398 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 16);
    v2 = sub_22B7DB2B8();
    *(v0 + 40) = sub_22B4CFA74(v2, qword_281422680);

    v3 = sub_22B7DB298();
    v4 = sub_22B7DBCB8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 16);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v29 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_22B4CFAAC(*(v5 + 248), *(v5 + 256), &v29);
      _os_log_impl(&dword_22B4CC000, v3, v4, "[%{public}s] Resuming task", v6, 0xCu);
      sub_22B4CFB78(v7);
      MEMORY[0x231898D60](v7, -1, -1);
      MEMORY[0x231898D60](v6, -1, -1);
    }

    v8 = *(v0 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 48) = Strong;
    if (Strong)
    {
      v10 = *(v8 + 184);
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 72);
      v28 = (v12 + *v12);
      v13 = v12[1];
      v14 = swift_task_alloc();
      *(v0 + 56) = v14;
      *v14 = v0;
      v14[1] = sub_22B72B6F4;
      v15 = *(v0 + 16);

      return v28(v15, ObjectType, v10);
    }

    else
    {
      v19 = *(v0 + 40);
      v20 = *(v0 + 16);

      v21 = sub_22B7DB298();
      v22 = sub_22B7DBC88();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = *(v0 + 16);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v29 = v25;
        *v24 = 136446210;
        *(v24 + 4) = sub_22B4CFAAC(*(v23 + 248), *(v23 + 256), &v29);
        _os_log_impl(&dword_22B4CC000, v21, v22, "[%{public}s] Finished notifying delegate of resume", v24, 0xCu);
        sub_22B4CFB78(v25);
        MEMORY[0x231898D60](v25, -1, -1);
        MEMORY[0x231898D60](v24, -1, -1);
      }

      *(v0 + 64) = 0;
      v26 = swift_task_alloc();
      *(v0 + 72) = v26;
      *v26 = v0;
      v26[1] = sub_22B72B994;
      v27 = *(v0 + 16);

      return sub_22B726D90(100);
    }
  }

  else
  {
    v17 = *(v0 + 32);
    v18 = *(v0 + 8);

    return v18(v17, 0);
  }
}

uint64_t sub_22B72B6F4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 16);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22B72B820, v3, 0);
}

uint64_t sub_22B72B820()
{
  v12 = v0;
  v1 = v0[5];
  v2 = v0[2];

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBC88();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_22B4CFAAC(*(v5 + 248), *(v5 + 256), &v11);
    _os_log_impl(&dword_22B4CC000, v3, v4, "[%{public}s] Finished notifying delegate of resume", v6, 0xCu);
    sub_22B4CFB78(v7);
    MEMORY[0x231898D60](v7, -1, -1);
    MEMORY[0x231898D60](v6, -1, -1);
  }

  v0[8] = 0;
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_22B72B994;
  v9 = v0[2];

  return sub_22B726D90(100);
}

uint64_t sub_22B72B994(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 16);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;

  return MEMORY[0x2822009F8](sub_22B72BAAC, v5, 0);
}

void sub_22B72BAAC()
{
  v33 = v0;
  v1 = v0[11];
  v2 = v0[8];
  v3 = v2 + v1;
  if (__OFADD__(v2, v1))
  {
    __break(1u);
  }

  else
  {
    v4 = v0[5];
    v5 = v0[2];

    v6 = sub_22B7DB298();
    v7 = sub_22B7DBCB8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[2];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v32 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_22B4CFAAC(*(v8 + 248), *(v8 + 256), &v32);
      *(v9 + 12) = 2048;
      *(v9 + 14) = v3;
      _os_log_impl(&dword_22B4CC000, v6, v7, "[%{public}s] Total completed is now %ld", v9, 0x16u);
      sub_22B4CFB78(v10);
      MEMORY[0x231898D60](v10, -1, -1);
      MEMORY[0x231898D60](v9, -1, -1);
    }

    if (v0[10] != 2 || (v11 = v0[2], swift_unknownObjectWeakLoadStrong()) && (v12 = v0[2], v13 = *(v12 + 184), ObjectType = swift_getObjectType(), LOBYTE(v12) = (*(v13 + 24))(v12, ObjectType, v13), swift_unknownObjectRelease(), (v12 & 1) != 0))
    {
      v15 = v0[5];
      v16 = v0[2];

      v17 = sub_22B7DB298();
      v18 = sub_22B7DBCB8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = v0[10];
        v20 = v0[2];
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v32 = v22;
        *v21 = 136446466;
        *(v21 + 4) = sub_22B4CFAAC(*(v20 + 248), *(v20 + 256), &v32);
        *(v21 + 12) = 2080;
        v23 = NSStringFromIMPersistentTaskRunResult();
        v24 = sub_22B7DB6A8();
        v26 = v25;

        v27 = sub_22B4CFAAC(v24, v26, &v32);

        *(v21 + 14) = v27;
        _os_log_impl(&dword_22B4CC000, v17, v18, "[%{public}s] Batch result %s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x231898D60](v22, -1, -1);
        MEMORY[0x231898D60](v21, -1, -1);
      }

      v28 = v0[10];
      v29 = v0[1];

      v29(v28, v3);
    }

    else
    {
      v0[8] = v3;
      v30 = swift_task_alloc();
      v0[9] = v30;
      *v30 = v0;
      v30[1] = sub_22B72B994;
      v31 = v0[2];

      sub_22B726D90(100);
    }
  }
}

uint64_t sub_22B72BE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22B7DB368();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B72BEE4, v3, 0);
}

uint64_t sub_22B72BEE4()
{
  v55 = v0;
  v1 = v0[2];
  if ((v1 - 4) < 3)
  {
    if (qword_28141F398 != -1)
    {
      swift_once();
    }

    v2 = v0[5];
    v3 = sub_22B7DB2B8();
    sub_22B4CFA74(v3, qword_281422680);

    v4 = sub_22B7DB298();
    v5 = sub_22B7DBCB8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[5];
      v7 = v0[2];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v54 = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_22B4CFAAC(*(v6 + 248), *(v6 + 256), &v54);
      *(v8 + 12) = 2082;
      v10 = NSStringFromIMPersistentTaskRunResult();
      v11 = sub_22B7DB6A8();
      v13 = v12;

      v14 = sub_22B4CFAAC(v11, v13, &v54);

      *(v8 + 14) = v14;
      _os_log_impl(&dword_22B4CC000, v4, v5, "[%{public}s] blocked due to %{public}s, expiring with infinite delay", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v9, -1, -1);
      MEMORY[0x231898D60](v8, -1, -1);
    }

    v16 = v0[7];
    v15 = v0[8];
    v18 = v0[5];
    v17 = v0[6];
    v19 = v0[4];
    *(v18 + 216) = 1;
    v20 = swift_allocObject();
    v0[12] = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    (*(v16 + 104))(v15, *MEMORY[0x277D851B8], v17);
    v21 = sub_22B72C7F4;

    v22 = v19;
LABEL_13:

    return MEMORY[0x2822009F8](v21, 0, 0);
  }

  if (v1 == 1)
  {
    if (qword_28141F398 != -1)
    {
      swift_once();
    }

    v23 = v0[5];
    v24 = sub_22B7DB2B8();
    sub_22B4CFA74(v24, qword_281422680);

    v25 = sub_22B7DB298();
    v26 = sub_22B7DBCB8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v0[5];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_22B4CFAAC(*(v27 + 248), *(v27 + 256), &v54);
      _os_log_impl(&dword_22B4CC000, v25, v26, "[%{public}s] finished, marking completed", v28, 0xCu);
      sub_22B4CFB78(v29);
      MEMORY[0x231898D60](v29, -1, -1);
      MEMORY[0x231898D60](v28, -1, -1);
    }

    v31 = v0[7];
    v30 = v0[8];
    v32 = v0[6];
    v33 = v0[4];
    v34 = swift_allocObject();
    v0[9] = v34;
    *(v34 + 16) = v33;
    (*(v31 + 104))(v30, *MEMORY[0x277D851B8], v32);
    v21 = sub_22B72C4A8;
    v35 = v33;
    goto LABEL_13;
  }

  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v36 = v0[5];
  v37 = sub_22B7DB2B8();
  sub_22B4CFA74(v37, qword_281422680);

  v38 = sub_22B7DB298();
  v39 = sub_22B7DBCB8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = v0[5];
    v41 = v0[2];
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v54 = v43;
    *v42 = 136446466;
    *(v42 + 4) = sub_22B4CFAAC(*(v40 + 248), *(v40 + 256), &v54);
    *(v42 + 12) = 2082;
    v44 = NSStringFromIMPersistentTaskRunResult();
    v45 = sub_22B7DB6A8();
    v47 = v46;

    v48 = sub_22B4CFAAC(v45, v47, &v54);

    *(v42 + 14) = v48;
    _os_log_impl(&dword_22B4CC000, v38, v39, "[%{public}s] %{public}s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v43, -1, -1);
    MEMORY[0x231898D60](v42, -1, -1);
  }

  v49 = swift_task_alloc();
  v0[15] = v49;
  *v49 = v0;
  v49[1] = sub_22B72CAAC;
  v50 = v0[5];
  v52 = v0[2];
  v51 = v0[3];

  return sub_22B7266A4(v52, v51);
}

uint64_t sub_22B72C4A8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = swift_task_alloc();
  v0[10] = v3;
  v3[2] = v2;
  v3[3] = sub_22B72DC04;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_22B72C5B0;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B72DC18, v3, v6);
}

uint64_t sub_22B72C5B0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 40);
  v9 = *v0;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_22B72C75C, v7, 0);
}

uint64_t sub_22B72C75C()
{
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_22B72CAAC;
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  return sub_22B7266A4(v4, v3);
}

uint64_t sub_22B72C7F4()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = swift_task_alloc();
  v0[13] = v3;
  v3[2] = v2;
  v3[3] = sub_22B72DBF0;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_22B72C900;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B72DBF8, v3, v6);
}

uint64_t sub_22B72C900()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 40);
  v9 = *v0;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_22B72DC14, v7, 0);
}

uint64_t sub_22B72CAAC()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_22B72CBBC(void *a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v19[0] = 0;
  v3 = [a1 setTaskExpiredWithRetryAfter:v19 error:64000000.0];
  v4 = v19[0];
  if (v3)
  {
    v5 = *MEMORY[0x277D85DE8];

    v6 = v4;
  }

  else
  {
    v7 = v19[0];
    v8 = sub_22B7DA6F8();

    swift_willThrow();
    if (qword_28141F398 != -1)
    {
      swift_once();
    }

    v9 = sub_22B7DB2B8();
    sub_22B4CFA74(v9, qword_281422680);

    v10 = v8;
    v11 = sub_22B7DB298();
    v12 = sub_22B7DBC98();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19[0] = v15;
      *v13 = 136446466;
      *(v13 + 4) = sub_22B4CFAAC(*(a2 + 248), *(a2 + 256), v19);
      *(v13 + 12) = 2112;
      v16 = v8;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v17;
      *v14 = v17;
      _os_log_impl(&dword_22B4CC000, v11, v12, "[%{public}s] failed to defer with error %@", v13, 0x16u);
      sub_22B708A24(v14);
      MEMORY[0x231898D60](v14, -1, -1);
      sub_22B4CFB78(v15);
      MEMORY[0x231898D60](v15, -1, -1);
      MEMORY[0x231898D60](v13, -1, -1);
    }

    else
    {
    }

    v18 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_22B72CE34(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_22B72CE54, v1, 0);
}

uint64_t sub_22B72CE54()
{
  v37 = v0;
  v1 = v0[9];
  v2 = *(v1 + 200);
  v0[10] = v2;
  if (v2)
  {
    v3 = qword_28141F398;

    if (v3 != -1)
    {
      swift_once();
      v34 = v0[9];
    }

    v4 = sub_22B7DB2B8();
    sub_22B4CFA74(v4, qword_281422680);

    v5 = sub_22B7DB298();
    v6 = sub_22B7DBCB8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[9];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v36 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_22B4CFAAC(*(v7 + 248), *(v7 + 256), &v36);
      _os_log_impl(&dword_22B4CC000, v5, v6, "[%{public}s] already running?? waiting for existing task to finish", v8, 0xCu);
      sub_22B4CFB78(v9);
      MEMORY[0x231898D60](v9, -1, -1);
      MEMORY[0x231898D60](v8, -1, -1);
    }

    v10 = *(MEMORY[0x277D857D0] + 4);
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_22B72D250;
    v12 = MEMORY[0x277D84A98];
    v13 = MEMORY[0x277D84AC0];
    v14 = v0 + 5;
    v15 = v2;
  }

  else
  {
    v16 = v0[8];
    v17 = *(v1 + 192);
    *(v1 + 192) = v16;
    v18 = v16;

    if (qword_28141F398 != -1)
    {
      swift_once();
    }

    v19 = v0[9];
    v20 = sub_22B7DB2B8();
    sub_22B4CFA74(v20, qword_281422680);

    v21 = sub_22B7DB298();
    v22 = sub_22B7DBCB8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v0[9];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_22B4CFAAC(*(v23 + 248), *(v23 + 256), &v36);
      _os_log_impl(&dword_22B4CC000, v21, v22, "[%{public}s] resuming execution", v24, 0xCu);
      sub_22B4CFB78(v25);
      MEMORY[0x231898D60](v25, -1, -1);
      MEMORY[0x231898D60](v24, -1, -1);
    }

    v27 = v0[8];
    v26 = v0[9];
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;

    v29 = v27;
    v30 = sub_22B73FAFC(&unk_22B7FA658, v28);
    v0[12] = v30;

    v31 = *(v26 + 200);
    *(v26 + 200) = v30;
    swift_retain_n();

    v32 = *(MEMORY[0x277D857D0] + 4);
    v33 = swift_task_alloc();
    v0[13] = v33;
    *v33 = v0;
    v33[1] = sub_22B72D5C4;
    v12 = MEMORY[0x277D84A98];
    v13 = MEMORY[0x277D84AC0];
    v14 = v0 + 2;
    v15 = v30;
  }

  return MEMORY[0x282200440](v14, v15, &_s11BatchResultVN, v12, v13);
}

uint64_t sub_22B72D250()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B72D360, v2, 0);
}

uint64_t sub_22B72D360()
{
  v25 = v0;
  v1 = v0[10];

  v3 = v0[8];
  v2 = v0[9];
  v4 = *(v2 + 192);
  *(v2 + 192) = v3;
  v5 = v3;

  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v6 = v0[9];
  v7 = sub_22B7DB2B8();
  sub_22B4CFA74(v7, qword_281422680);

  v8 = sub_22B7DB298();
  v9 = sub_22B7DBCB8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_22B4CFAAC(*(v10 + 248), *(v10 + 256), &v24);
    _os_log_impl(&dword_22B4CC000, v8, v9, "[%{public}s] resuming execution", v11, 0xCu);
    sub_22B4CFB78(v12);
    MEMORY[0x231898D60](v12, -1, -1);
    MEMORY[0x231898D60](v11, -1, -1);
  }

  v14 = v0[8];
  v13 = v0[9];
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;

  v16 = v14;
  v17 = sub_22B73FAFC(&unk_22B7FA658, v15);
  v0[12] = v17;

  v18 = *(v13 + 200);
  *(v13 + 200) = v17;
  swift_retain_n();

  v19 = *(MEMORY[0x277D857D0] + 4);
  v20 = swift_task_alloc();
  v0[13] = v20;
  *v20 = v0;
  v20[1] = sub_22B72D5C4;
  v21 = MEMORY[0x277D84A98];
  v22 = MEMORY[0x277D84AC0];

  return MEMORY[0x282200440](v0 + 2, v17, &_s11BatchResultVN, v21, v22);
}

uint64_t sub_22B72D5C4()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22B72D6F0, v3, 0);
}

uint64_t sub_22B72D6F0()
{
  v1 = v0[9];
  v2 = v0[12];
  if (*(v1 + 200))
  {
    v3 = *(v1 + 200);

    v4 = sub_22B7DBA68();

    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    v5 = v0[9];
    v6 = *(v5 + 200);
    *(v5 + 200) = 0;
  }

LABEL_5:
  v7 = v0[9];
  v8 = *(v7 + 192);
  if (v8)
  {
    v9 = v0[8] == v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    *(v7 + 192) = 0;
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_22B72D7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  if (qword_281420630 != -1)
  {
    swift_once();
  }

  v3[5] = qword_281422748;
  v4 = swift_task_alloc();
  v3[6] = v4;
  *v4 = v3;
  v4[1] = sub_22B72D8A4;

  return sub_22B72B164();
}

uint64_t sub_22B72D8A4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *v2;
  v5[7] = a1;
  v5[8] = a2;

  v8 = swift_task_alloc();
  v5[9] = v8;
  *v8 = v7;
  v8[1] = sub_22B72DA14;
  v9 = v5[4];
  v10 = v5[3];

  return sub_22B72BE20(a1, a2, v9);
}

uint64_t sub_22B72DA14()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B72DB24, v2, 0);
}

uint64_t sub_22B72DB44(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F0D94;

  return sub_22B72D7D0(a1, v5, v4);
}

uint64_t sub_22B72DC1C(uint64_t a1, char a2)
{
  **(*(*sub_22B4D2BCC((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_22B72DC78()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F5B8);
  sub_22B4CFA74(v0, qword_28141F5B8);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B72DDA8()
{
  v1[46] = v0;
  sub_22B7DBA18();
  v1[47] = sub_22B7DBA08();
  v3 = sub_22B7DB9C8();
  v1[48] = v3;
  v1[49] = v2;

  return MEMORY[0x2822009F8](sub_22B72DE40, v3, v2);
}

id sub_22B72DE40()
{
  v1 = v0[46];
  v2 = OBJC_IVAR___IMDBatchMessageSimulator_batch;
  v0[50] = OBJC_IVAR___IMDBatchMessageSimulator_messages;
  v0[51] = v2;
  swift_beginAccess();
  v3 = *(v0[46] + v0[50]);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v83 = *(v0[46] + v0[50]);
    }

    if (sub_22B7DC1C8())
    {
LABEL_3:
      v4 = v0[50];
      v5 = v0[46];
      swift_beginAccess();
      sub_22B72F844();
      v7 = v6;
      v0[52] = v6;
      swift_endAccess();
      v8 = &off_278709000;
      v9 = [v7 item];
      sub_22B731884(v9);
      v11 = v10;
      v0[53] = v10;

      if (v11)
      {
        v12 = [v11 session];
        v0[54] = v12;
        if (v12)
        {
          v13 = v12;
          v14 = v7;
          sub_22B732544(v13, v14, v14);
          v16 = v15;
          v0[55] = v15;

          if (v16)
          {
            v17 = [v14 item];
            [v17 setSkipIndexing_];

            v18 = [v14 item];
            v19 = [v16 chatIdentifier];
            [v18 setRoomName_];

            v20 = [v14 item];
            LODWORD(v19) = [v20 isFromMe];

            if (v19 && [v16 style] == 45)
            {
              result = [v16 service];
              if (!result)
              {
                __break(1u);
                return result;
              }

              v22 = result;
              v23 = [result supportsCapability_];

              if (v23)
              {
                v24 = [v14 item];
                [v24 setFlags_];
              }
            }

            v25 = [v11 aliases];
            v26 = sub_22B7DB918();

            if (v26[2])
            {
              v28 = v26[4];
              v27 = v26[5];
            }

            else
            {
              v27 = 0;
            }

            objc_opt_self();
            v57 = swift_dynamicCastObjCClass();
            if (v57)
            {
              v58 = v57;
              v59 = v11;
              v60 = [v58 idsAccount];
              if (v60)
              {
                v61 = v60;
                v62 = [v60 displayName];
                if (v62)
                {
                  v63 = v62;
                  sub_22B7DB6A8();
                  v65 = v64;

                  v8 = &off_278709000;

                  v27 = v65;
                }

                else
                {
                  v71 = [v61 aliasStrings];
                  if (v71)
                  {
                    v72 = v71;
                    v73 = sub_22B7DB918();

                    if (v73[2])
                    {
                      v74 = v73[4];
                      v75 = v73[5];

                      v27 = v75;
                    }

                    else
                    {

                      v27 = 0;
                    }

                    v8 = &off_278709000;
                  }

                  else
                  {
                  }
                }
              }

              else
              {
              }
            }

            v0[56] = v27;
            v76 = [v14 lastAddressedHandle];
            if (v76)
            {
              v77 = v76;
              sub_22B7DB6A8();
            }

            else
            {
              if (!v27)
              {
                v78 = 0;
                goto LABEL_50;
              }
            }

            v78 = sub_22B7DB678();

LABEL_50:
            v79 = v0[51];
            v80 = v0[46];
            [v16 updateLastAddressedHandle_];

            v81 = [v14 v8[505]];
            v0[57] = v81;
            swift_beginAccess();
            v82 = swift_task_alloc();
            v0[58] = v82;
            *v82 = v0;
            v82[1] = sub_22B72E9DC;

            return sub_22B72F91C(v16, v11, v81);
          }

          v47 = v0[47];

          if (qword_28141F5B0 != -1)
          {
            swift_once();
          }

          v48 = sub_22B7DB2B8();
          sub_22B4CFA74(v48, qword_28141F5B8);
          v49 = sub_22B7DB298();
          v50 = sub_22B7DBC98();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&dword_22B4CC000, v49, v50, "Couldn't generate a chat for simulated message :(", v51, 2u);
            MEMORY[0x231898D60](v51, -1, -1);
          }

          v52 = [v14 item];
          v53 = [v52 guid];

          if (v53)
          {
            v54 = sub_22B7DB6A8();
            v56 = v55;
          }

          else
          {
            v54 = 0x3E6C696E3CLL;
            v56 = 0xE500000000000000;
          }

          sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
          inited = swift_initStackObject();
          *(inited + 32) = 0x6567617373656DLL;
          *(inited + 16) = xmmword_22B7F93A0;
          *(inited + 40) = 0xE700000000000000;
          sub_22B7DC2E8();

          MEMORY[0x231895140](v54, v56);
          v67 = MEMORY[0x277D837D0];
          *(inited + 48) = 0xD000000000000021;
          *(inited + 56) = 0x800000022B80F320;
          *(inited + 72) = v67;
          *(inited + 80) = 0x476567617373656DLL;
          *(inited + 120) = v67;
          *(inited + 88) = 0xEB00000000444955;
          *(inited + 96) = v54;
          *(inited + 104) = v56;
          sub_22B71DF98(inited);
          swift_setDeallocating();
          sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
          swift_arrayDestroy();
          v68 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v69 = sub_22B7DB678();
          v70 = sub_22B7DB568();

          [v68 initWithDomain:v69 code:0 userInfo:v70];

          swift_willThrow();
          goto LABEL_22;
        }
      }

      v29 = v0[47];

      if (qword_28141F5B0 != -1)
      {
        swift_once();
      }

      v30 = sub_22B7DB2B8();
      sub_22B4CFA74(v30, qword_28141F5B8);
      v31 = sub_22B7DB298();
      v32 = sub_22B7DBC98();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_22B4CC000, v31, v32, "Couldn't find an account/session for simulated message :(", v33, 2u);
        MEMORY[0x231898D60](v33, -1, -1);
      }

      v34 = [v7 item];
      v35 = [v34 guid];

      if (v35)
      {
        v36 = sub_22B7DB6A8();
        v38 = v37;
      }

      else
      {
        v36 = 0x3E6C696E3CLL;
        v38 = 0xE500000000000000;
      }

      sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
      v39 = swift_initStackObject();
      *(v39 + 16) = xmmword_22B7F93A0;
      v40 = *MEMORY[0x277CCA470];
      *(v39 + 32) = sub_22B7DB6A8();
      *(v39 + 40) = v41;
      sub_22B7DC2E8();

      MEMORY[0x231895140](v36, v38);
      v42 = MEMORY[0x277D837D0];
      *(v39 + 48) = 0xD000000000000025;
      *(v39 + 56) = 0x800000022B80F2F0;
      *(v39 + 72) = v42;
      *(v39 + 80) = 0x476567617373656DLL;
      *(v39 + 120) = v42;
      *(v39 + 88) = 0xEB00000000444955;
      *(v39 + 96) = v36;
      *(v39 + 104) = v38;
      sub_22B71DF98(v39);
      swift_setDeallocating();
      sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
      swift_arrayDestroy();
      v43 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v44 = sub_22B7DB678();
      v45 = sub_22B7DB568();

      [v43 initWithDomain:v44 code:0 userInfo:v45];

      swift_willThrow();
LABEL_22:

      v46 = v0[1];

      return v46();
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v84 = v0[51];
  v85 = v0[46];
  swift_beginAccess();
  v86 = swift_task_alloc();
  v0[59] = v86;
  *v86 = v0;
  v86[1] = sub_22B72F6B4;

  return sub_22B730130();
}

uint64_t sub_22B72E9DC()
{
  v1 = *v0;
  v2 = *(*v0 + 464);
  v3 = *(*v0 + 456);
  v7 = *v0;

  swift_endAccess();

  v4 = *(v1 + 392);
  v5 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_22B72EB20, v5, v4);
}

id sub_22B72EB20()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v4 = *(v0 + 424);
  v3 = *(v0 + 432);

  v5 = *(*(v0 + 368) + *(v0 + 400));
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v85 = *(*(v0 + 368) + *(v0 + 400));
    }

    if (sub_22B7DC1C8())
    {
LABEL_3:
      v6 = *(v0 + 400);
      v7 = *(v0 + 368);
      swift_beginAccess();
      sub_22B72F844();
      v9 = v8;
      *(v0 + 416) = v8;
      swift_endAccess();
      v10 = &off_278709000;
      v11 = [v9 item];
      sub_22B731884(v11);
      v13 = v12;
      *(v0 + 424) = v12;

      if (v13)
      {
        v14 = [v13 session];
        *(v0 + 432) = v14;
        if (v14)
        {
          v15 = v14;
          v16 = v9;
          sub_22B732544(v15, v16, v16);
          v18 = v17;
          *(v0 + 440) = v17;

          if (v18)
          {
            v19 = [v16 item];
            [v19 setSkipIndexing_];

            v20 = [v16 item];
            v21 = [v18 chatIdentifier];
            [v20 setRoomName_];

            v22 = [v16 item];
            LODWORD(v21) = [v22 isFromMe];

            if (v21 && [v18 style] == 45)
            {
              result = [v18 service];
              if (!result)
              {
                __break(1u);
                return result;
              }

              v24 = result;
              v25 = [result supportsCapability_];

              if (v25)
              {
                v26 = [v16 item];
                [v26 setFlags_];
              }
            }

            v27 = [v13 aliases];
            v28 = sub_22B7DB918();

            if (v28[2])
            {
              v30 = v28[4];
              v29 = v28[5];
            }

            else
            {
              v29 = 0;
            }

            objc_opt_self();
            v59 = swift_dynamicCastObjCClass();
            if (v59)
            {
              v60 = v59;
              v61 = v13;
              v62 = [v60 idsAccount];
              if (v62)
              {
                v63 = v62;
                v64 = [v62 displayName];
                if (v64)
                {
                  v65 = v64;
                  sub_22B7DB6A8();
                  v67 = v66;

                  v10 = &off_278709000;

                  v29 = v67;
                }

                else
                {
                  v73 = [v63 aliasStrings];
                  if (v73)
                  {
                    v74 = v73;
                    v75 = sub_22B7DB918();

                    if (v75[2])
                    {
                      v76 = v75[4];
                      v77 = v75[5];

                      v29 = v77;
                    }

                    else
                    {

                      v29 = 0;
                    }

                    v10 = &off_278709000;
                  }

                  else
                  {
                  }
                }
              }

              else
              {
              }
            }

            *(v0 + 448) = v29;
            v78 = [v16 lastAddressedHandle];
            if (v78)
            {
              v79 = v78;
              sub_22B7DB6A8();
            }

            else
            {
              if (!v29)
              {
                v80 = 0;
                goto LABEL_50;
              }
            }

            v80 = sub_22B7DB678();

LABEL_50:
            v81 = *(v0 + 408);
            v82 = *(v0 + 368);
            [v18 updateLastAddressedHandle_];

            v83 = [v16 v10[505]];
            *(v0 + 456) = v83;
            swift_beginAccess();
            v84 = swift_task_alloc();
            *(v0 + 464) = v84;
            *v84 = v0;
            v84[1] = sub_22B72E9DC;

            return sub_22B72F91C(v18, v13, v83);
          }

          v49 = *(v0 + 376);

          if (qword_28141F5B0 != -1)
          {
            swift_once();
          }

          v50 = sub_22B7DB2B8();
          sub_22B4CFA74(v50, qword_28141F5B8);
          v51 = sub_22B7DB298();
          v52 = sub_22B7DBC98();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 0;
            _os_log_impl(&dword_22B4CC000, v51, v52, "Couldn't generate a chat for simulated message :(", v53, 2u);
            MEMORY[0x231898D60](v53, -1, -1);
          }

          v54 = [v16 item];
          v55 = [v54 guid];

          if (v55)
          {
            v56 = sub_22B7DB6A8();
            v58 = v57;
          }

          else
          {
            v56 = 0x3E6C696E3CLL;
            v58 = 0xE500000000000000;
          }

          sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
          inited = swift_initStackObject();
          *(inited + 32) = 0x6567617373656DLL;
          *(inited + 16) = xmmword_22B7F93A0;
          *(inited + 40) = 0xE700000000000000;
          sub_22B7DC2E8();

          MEMORY[0x231895140](v56, v58);
          v69 = MEMORY[0x277D837D0];
          *(inited + 48) = 0xD000000000000021;
          *(inited + 56) = 0x800000022B80F320;
          *(inited + 72) = v69;
          *(inited + 80) = 0x476567617373656DLL;
          *(inited + 120) = v69;
          *(inited + 88) = 0xEB00000000444955;
          *(inited + 96) = v56;
          *(inited + 104) = v58;
          sub_22B71DF98(inited);
          swift_setDeallocating();
          sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
          swift_arrayDestroy();
          v70 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v71 = sub_22B7DB678();
          v72 = sub_22B7DB568();

          [v70 initWithDomain:v71 code:0 userInfo:v72];

          swift_willThrow();
          goto LABEL_22;
        }
      }

      v31 = *(v0 + 376);

      if (qword_28141F5B0 != -1)
      {
        swift_once();
      }

      v32 = sub_22B7DB2B8();
      sub_22B4CFA74(v32, qword_28141F5B8);
      v33 = sub_22B7DB298();
      v34 = sub_22B7DBC98();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_22B4CC000, v33, v34, "Couldn't find an account/session for simulated message :(", v35, 2u);
        MEMORY[0x231898D60](v35, -1, -1);
      }

      v36 = [v9 item];
      v37 = [v36 guid];

      if (v37)
      {
        v38 = sub_22B7DB6A8();
        v40 = v39;
      }

      else
      {
        v38 = 0x3E6C696E3CLL;
        v40 = 0xE500000000000000;
      }

      sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
      v41 = swift_initStackObject();
      *(v41 + 16) = xmmword_22B7F93A0;
      v42 = *MEMORY[0x277CCA470];
      *(v41 + 32) = sub_22B7DB6A8();
      *(v41 + 40) = v43;
      sub_22B7DC2E8();

      MEMORY[0x231895140](v38, v40);
      v44 = MEMORY[0x277D837D0];
      *(v41 + 48) = 0xD000000000000025;
      *(v41 + 56) = 0x800000022B80F2F0;
      *(v41 + 72) = v44;
      *(v41 + 80) = 0x476567617373656DLL;
      *(v41 + 120) = v44;
      *(v41 + 88) = 0xEB00000000444955;
      *(v41 + 96) = v38;
      *(v41 + 104) = v40;
      sub_22B71DF98(v41);
      swift_setDeallocating();
      sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
      swift_arrayDestroy();
      v45 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v46 = sub_22B7DB678();
      v47 = sub_22B7DB568();

      [v45 initWithDomain:v46 code:0 userInfo:v47];

      swift_willThrow();
LABEL_22:

      v48 = *(v0 + 8);

      return v48();
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v86 = *(v0 + 408);
  v87 = *(v0 + 368);
  swift_beginAccess();
  v88 = swift_task_alloc();
  *(v0 + 472) = v88;
  *v88 = v0;
  v88[1] = sub_22B72F6B4;

  return sub_22B730130();
}

uint64_t sub_22B72F6B4()
{
  v1 = *v0;
  v2 = *(*v0 + 472);
  v6 = *v0;

  swift_endAccess();
  v3 = *(v1 + 392);
  v4 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_22B72F7E0, v4, v3);
}

uint64_t sub_22B72F7E0()
{
  v1 = *(v0 + 376);

  v2 = *(v0 + 8);

  return v2();
}

void sub_22B72F844()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x231895C80](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v4 = *v0;
  }

  else
  {
    v4 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_22B7DC1C8())
  {
    goto LABEL_20;
  }

  if (!sub_22B7DC1C8())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    *(v1 + 32);
    if (!v2)
    {
LABEL_6:
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v3 = sub_22B7DC1C8();
LABEL_16:
    if (v3)
    {
      sub_22B6FC250(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_22B72F91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_22B7DBA18();
  v4[6] = sub_22B7DBA08();
  v6 = sub_22B7DB9C8();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_22B72F9B8, v6, v5);
}

uint64_t sub_22B72F9B8()
{
  v1 = *(v0[5] + 8);
  if (!v1)
  {
    goto LABEL_13;
  }

  v2 = v0[2];
  sub_22B4D01A0(0, &qword_28141EFF0, off_2786FF950);
  v3 = v2;
  v4 = v1;
  v5 = sub_22B7DBFD8();

  if ((v5 & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(v0[5] + 16);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v0[3];
  sub_22B4D01A0(0, &qword_28141F298, off_2786FF850);
  v8 = v7;
  v9 = v6;
  v10 = sub_22B7DBFD8();

  if (v10)
  {
    v11 = v0[5];
    v12 = *(v11 + 24);
    if (v12 >> 62)
    {
      v13 = sub_22B7DC1C8();
      v11 = v0[5];
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13 < [*v11 daemonBatchSize])
    {
      v14 = v0[6];

      v16 = v0[4];
      v15 = v0[5];
      v18 = v0[2];
      v17 = v0[3];
      v19 = v15[1];
      v20 = v18;

      v15[1] = v18;
      v21 = v15[2];
      v22 = v17;

      v15[2] = v17;
      MEMORY[0x231895260](v16);
      if (*((v15[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = v0[5] + 24;
        v31 = *((v15[3] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22B7DB938();
      }

      v23 = v0[4];
      v24 = v0[5] + 24;
      sub_22B7DB968();
      v25 = v0[1];

      return v25();
    }

    v27 = swift_task_alloc();
    v0[10] = v27;
    *v27 = v0;
    v28 = sub_22B72FF20;
  }

  else
  {
LABEL_13:
    v27 = swift_task_alloc();
    v0[9] = v27;
    *v27 = v0;
    v28 = sub_22B72FC54;
  }

  v27[1] = v28;
  v29 = v0[5];

  return sub_22B730130();
}

uint64_t sub_22B72FC54()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_22B72FD74, v4, v3);
}

uint64_t sub_22B72FD74()
{
  v1 = v0[5];
  v2 = *(v1 + 24);
  if (v2 >> 62)
  {
    v3 = sub_22B7DC1C8();
    v1 = v0[5];
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 >= [*v1 daemonBatchSize])
  {
    v17 = swift_task_alloc();
    v0[10] = v17;
    *v17 = v0;
    v17[1] = sub_22B72FF20;
    v18 = v0[5];

    return sub_22B730130();
  }

  else
  {
    v4 = v0[6];

    v6 = v0[4];
    v5 = v0[5];
    v8 = v0[2];
    v7 = v0[3];
    v9 = v5[1];
    v10 = v8;

    v5[1] = v8;
    v11 = v5[2];
    v12 = v7;

    v5[2] = v7;
    MEMORY[0x231895260](v6);
    if (*((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = v0[5] + 24;
      v20 = *((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22B7DB938();
    }

    v13 = v0[4];
    v14 = v0[5] + 24;
    sub_22B7DB968();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_22B72FF20()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_22B730040, v4, v3);
}

uint64_t sub_22B730040()
{
  v1 = v0[6];

  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = v2[1];
  v7 = v5;

  v2[1] = v5;
  v8 = v2[2];
  v9 = v4;

  v2[2] = v4;
  MEMORY[0x231895260](v3);
  if (*((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v14 = v0[5] + 24;
    v15 = *((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22B7DB938();
  }

  v10 = v0[4];
  v11 = v0[5] + 24;
  sub_22B7DB968();
  v12 = v0[1];

  return v12();
}

uint64_t sub_22B730130()
{
  v1[26] = v0;
  sub_22B7DBA18();
  v1[27] = sub_22B7DBA08();
  v3 = sub_22B7DB9C8();
  v1[28] = v3;
  v1[29] = v2;

  return MEMORY[0x2822009F8](sub_22B7301C8, v3, v2);
}

uint64_t sub_22B7301C8()
{
  v36 = v0;
  v1 = v0[26];
  v3 = (v1 + 8);
  v2 = *(v1 + 8);
  v0[30] = v2;
  if (v2 && (v4 = *(v1 + 16), (v0[31] = v4) != 0))
  {
    v5 = v4;
    v6 = v2;
    v7 = [v5 session];
    v0[32] = v7;
    if (v7)
    {
      v8 = v7;
      v9 = v0[26];

      *v3 = 0;
      v3[1] = 0;
      v10 = *(v9 + 24);
      v0[33] = v10;
      if (v10 >> 62)
      {
        if (sub_22B7DC1C8())
        {
          v11 = sub_22B7DC1C8();
LABEL_6:
          if (qword_28141F5B0 != -1)
          {
            swift_once();
          }

          v12 = sub_22B7DB2B8();
          v0[34] = sub_22B4CFA74(v12, qword_28141F5B8);
          v13 = v6;
          v14 = sub_22B7DB298();
          v15 = sub_22B7DBC78();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v35 = v33;
            *v16 = 134218242;
            *(v16 + 4) = v11;
            *(v16 + 12) = 2080;
            v17 = [v13 guid];
            v34 = v13;

            if (!v17)
            {
              goto LABEL_26;
            }

            v19 = sub_22B7DB6A8();
            v21 = v20;

            v22 = sub_22B4CFAAC(v19, v21, &v35);

            *(v16 + 14) = v22;
            _os_log_impl(&dword_22B4CC000, v14, v15, "Inserting %ld messages into %s", v16, 0x16u);
            sub_22B4CFB78(v33);
            MEMORY[0x231898D60](v33, -1, -1);
            MEMORY[0x231898D60](v16, -1, -1);

            v13 = v34;
          }

          else
          {
          }

          sub_22B4D01A0(0, &qword_28141F288, 0x277D1AA70);

          v25 = sub_22B7DB8F8();
          v0[35] = v25;
          v18 = [v13 chatIdentifier];
          v0[36] = v18;
          if (v18)
          {
            v26 = v18;
            v27 = [v13 style];
            v28 = sub_22B7DB678();
            v0[37] = v28;
            v0[2] = v0;
            v0[7] = v0 + 43;
            v0[3] = sub_22B730618;
            v29 = swift_continuation_init();
            v0[25] = sub_22B6F0AD4(&unk_27D8CD7F0, &qword_22B7F98F8);
            v0[18] = MEMORY[0x277D85DD0];
            v0[19] = 1107296256;
            v0[20] = sub_22B72DC1C;
            v0[21] = &unk_283F1D040;
            v0[22] = v29;
            [v8 didReceiveMessages:v25 forChat:v26 style:v27 account:v5 fromIDSID:v28 completion:v0 + 18];
            v18 = v0 + 2;

            return MEMORY[0x282200938](v18);
          }

          __break(1u);
LABEL_26:
          __break(1u);
          return MEMORY[0x282200938](v18);
        }
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v11)
        {
          goto LABEL_6;
        }
      }

      v30 = v0[27];
    }

    else
    {
      v24 = v0[27];
    }
  }

  else
  {
    v23 = v0[27];
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_22B730618()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B730720, v2, v1);
}

uint64_t sub_22B730720()
{
  v2 = *(v0 + 288);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);

  if (v4 >> 62 || (v5 = *(*(v0 + 208) + 24), (swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0))
  {
    v8 = *(v0 + 208);
    v9 = *(v8 + 24);
    if (v9 >> 62)
    {
      if (v9 < 0)
      {
        v46 = *(v8 + 24);
      }

      v47 = sub_22B7DC1C8();
      v31 = sub_22B7DC1C8();
      if (v31 < 0)
      {
        goto LABEL_43;
      }

      v31 = sub_22B7DC1C8();
      if (v47 < 0)
      {
        goto LABEL_44;
      }

      v10 = v47;
      if (v31 < v47)
      {
        goto LABEL_44;
      }

      v8 = *(v0 + 208);
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    }

    v11 = sub_22B75ADDC(0, v10);

    *(v8 + 24) = v11;
    goto LABEL_9;
  }

  v6 = *(*(v0 + 208) + 24);
  if (v6 >> 62)
  {
    goto LABEL_39;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_22B6FC264(0, v7);
LABEL_9:
    v12 = *(v0 + 240);
    v13 = *(v0 + 208);
    v14 = [objc_opt_self() contextWithReason_];
    *(v0 + 304) = v14;
    v15 = [objc_opt_self() sharedInstance];
    v16 = [v15 _shouldCheckPriorityForChat_];

    [v14 setNeedsPriorityCheck_];
    v17 = *v13;
    *(v0 + 312) = *v13;
    [v14 setIgnoreThrottle_];
    [v14 setForceDeferral_];
    v18 = [objc_opt_self() indexingQueryProvider];
    *(v0 + 320) = v18;
    v19 = *(v0 + 264);
    if (!v18)
    {
      break;
    }

    v20 = v18;
    if (v19 >> 62)
    {
      if (v19 < 0)
      {
        v42 = *(v0 + 264);
      }

      v21 = sub_22B7DC1C8();
      v49 = v14;
      if (!v21)
      {
LABEL_29:
        v43 = *(v0 + 264);

        v44 = sub_22B7DB8F8();
        *(v0 + 328) = v44;

        *(v0 + 80) = v0;
        *(v0 + 88) = sub_22B730C2C;
        v45 = swift_continuation_init();
        *(v0 + 200) = sub_22B6F0AD4(&qword_27D8CE618, &qword_22B7FA6A0);
        *(v0 + 144) = MEMORY[0x277D85DD0];
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = sub_22B731620;
        *(v0 + 168) = &unk_283F1D068;
        *(v0 + 176) = v45;
        [v20 addMessageGUIDs:v44 context:v49 completionHandler:v0 + 144];

        return MEMORY[0x282200938](v0 + 80);
      }
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v49 = v14;
      if (!v21)
      {
        goto LABEL_29;
      }
    }

    v51 = MEMORY[0x277D84F90];
    sub_22B7AB6B4(0, v21 & ~(v21 >> 63), 0);
    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = 0;
      v23 = *(v0 + 264);
      v24 = v23 & 0xC000000000000001;
      v50 = v23 + 32;
      while (1)
      {
        v25 = v24 ? MEMORY[0x231895C80](v22, *(v0 + 264)) : *(v50 + 8 * v22);
        v1 = v25;
        v26 = [v1 guid];
        if (!v26)
        {
          break;
        }

        v27 = v26;
        v28 = sub_22B7DB6A8();
        v30 = v29;

        if (!v30)
        {
          goto LABEL_42;
        }

        v33 = *(v51 + 16);
        v32 = *(v51 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_22B7AB6B4((v32 > 1), v33 + 1, 1);
        }

        ++v22;
        *(v51 + 16) = v33 + 1;
        v34 = v51 + 16 * v33;
        *(v34 + 32) = v28;
        *(v34 + 40) = v30;
        if (v21 == v22)
        {
          goto LABEL_29;
        }
      }

LABEL_41:

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    __break(1u);
LABEL_39:
    v31 = sub_22B7DC1C8();
    if (v31 < 0)
    {
      __break(1u);
      goto LABEL_41;
    }

LABEL_45:
    v7 = v31;
    v48 = *(v0 + 208);
  }

  v36 = *(v0 + 248);
  v35 = *(v0 + 256);
  v37 = v14;
  v38 = *(v0 + 240);
  v39 = *(v0 + 216);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_22B730C2C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 336) = v3;
  v4 = *(v1 + 232);
  v5 = *(v1 + 224);
  if (v3)
  {
    v6 = sub_22B730DFC;
  }

  else
  {
    v6 = sub_22B730D5C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_22B730D5C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 240);
  v6 = *(v0 + 216);

  swift_unknownObjectRelease();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22B730DFC()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 216);

  swift_willThrow();
  swift_unknownObjectRelease();

  if (([v3 indexImmediately] & 1) != 0 || (v6 = *(v0 + 336), v7 = sub_22B7DA6E8(), v8 = IMDIndexingErrorRequestWasDeferred(), v7, !v8))
  {
    v13 = *(v0 + 336);
    v14 = *(v0 + 272);
    v15 = v13;
    v16 = sub_22B7DB298();
    v17 = sub_22B7DBC98();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 336);
    v20 = *(v0 + 304);
    v22 = *(v0 + 248);
    v21 = *(v0 + 256);
    v23 = *(v0 + 240);
    if (v18)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v19;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_22B4CC000, v16, v17, "Failed to index messages: %@", v24, 0xCu);
      sub_22B708A24(v25);
      MEMORY[0x231898D60](v25, -1, -1);
      MEMORY[0x231898D60](v24, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v9 = *(v0 + 304);
    v11 = *(v0 + 248);
    v10 = *(v0 + 256);
    v12 = *(v0 + 240);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_22B731174(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_22B7DBA18();
  v2[4] = sub_22B7DBA08();
  v4 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B73120C, v4, v3);
}

uint64_t sub_22B73120C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_22B7312BC;
  v6 = v0[3];

  return sub_22B72DDA8();
}

uint64_t sub_22B7312BC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *v1;

  if (v0)
  {
    if (v4)
    {
      v7 = *(v2 + 40);
      v8 = sub_22B7DA6E8();

      (v7)[2](v7, v8);
      _Block_release(v7);
    }

    else
    {
    }
  }

  else if (v4)
  {
    v9 = *(v2 + 40);
    v9[2](v9, 0);
    _Block_release(v9);
  }

  v10 = *(v6 + 8);

  return v10();
}

void __swiftcall IMDBatchMessageSimulator.init()(IMDBatchMessageSimulator *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_22B731574()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B6F12E8;

  return sub_22B731174(v2, v3);
}

uint64_t sub_22B731620(uint64_t a1, void *a2)
{
  v3 = sub_22B4D2BCC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_22B7316CC(uint64_t result, uint64_t a2)
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
    sub_22B7DC668();

    sub_22B7DB758();
    v17 = sub_22B7DC6B8();
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
      if (v22 || (sub_22B7DC518() & 1) != 0)
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

void sub_22B731884(void *a1)
{
  v2 = [a1 accountID];
  if (!v2)
  {
    goto LABEL_37;
  }

  v3 = v2;
  v4 = [objc_opt_self() sharedAccountController];
  if (!v4)
  {
LABEL_31:

    __break(1u);
    goto LABEL_32;
  }

  v5 = v4;
  v6 = [v4 accountForAccountID_];

  if (!v6)
  {
LABEL_37:
    v7 = [a1 service];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() sharedController];
      v10 = [v9 serviceWithName_];

      if (v10)
      {
        v11 = [objc_opt_self() sharedAccountController];
        if (!v11)
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v12 = v11;
        v13 = [v11 activeAccountsForService_];

        if (!v13)
        {
LABEL_34:
          __break(1u);
          return;
        }

        sub_22B4D01A0(0, &qword_28141F298, off_2786FF850);
        v3 = sub_22B7DB918();

        if (v3 >> 62)
        {
          if (sub_22B7DC1C8())
          {
LABEL_10:
            if ((v3 & 0xC000000000000001) == 0)
            {
              if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v14 = *(v3 + 32);
LABEL_13:

                return;
              }

              __break(1u);
              goto LABEL_31;
            }

LABEL_29:
            MEMORY[0x231895C80](0, v3);
            goto LABEL_13;
          }
        }

        else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_10;
        }
      }
    }

    v15 = [objc_opt_self() sharedAccountController];
    if (!v15)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v16 = v15;
    v3 = [v15 activeAccounts];

    if (v3)
    {
      sub_22B4D01A0(0, &qword_28141F298, off_2786FF850);
      v10 = sub_22B7DB918();

      if (v10 >> 62)
      {
        if (sub_22B7DC1C8())
        {
LABEL_20:
          if ((v10 & 0xC000000000000001) != 0)
          {
            MEMORY[0x231895C80](0, v10);
          }

          else
          {
            if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_29;
            }

            v17 = *(v10 + 32);
          }

          return;
        }
      }

      else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }
    }
  }
}

void sub_22B731B74(void *a1, char a2, id a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [a3 chatGUID];
  if (v6)
  {
    v7 = v6;
    IMComponentsFromChatGUID();
  }

  if (a2 == 45)
  {
    v8 = [a3 handles];
    v9 = sub_22B7DB918();

    if (!v9[2])
    {
      __break(1u);
    }

    v10 = v9[4];
    v11 = v9[5];

    goto LABEL_8;
  }

  v12 = [objc_opt_self() sharedInstance];
  v13 = [a1 account];
  v14 = [v12 generateUnusedChatIdentifierForGroupChatWithAccount_];

  if (v14)
  {
    sub_22B7DB6A8();

LABEL_8:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  __break(1u);
}

id sub_22B731D14(void *a1, id a2)
{
  v2 = a2;
  v3 = [a2 groupID];
  v4 = &selRef_setFirstSyncDateToNow;
  v71 = v2;
  if (v3)
  {
    v5 = v3;
    v6 = [objc_opt_self() sharedInstance];
    v7 = [v6 existingChatsWithGroupID_];

    sub_22B4D01A0(0, &qword_28141EFF0, off_2786FF950);
    v8 = sub_22B7DB918();

    if (v8 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22B7DC1C8())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x231895C80](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v14 = [v11 service];
        v15 = [a1 service];
        v16 = v15;
        if (!v14)
        {
          if (!v15)
          {
            goto LABEL_36;
          }

          goto LABEL_6;
        }

        if (!v15)
        {
          v16 = v14;
LABEL_6:

          goto LABEL_7;
        }

        sub_22B4D01A0(0, &qword_28141F290, off_2786FFBC8);
        v17 = sub_22B7DBFD8();

        if (v17)
        {
          goto LABEL_36;
        }

LABEL_7:

        ++v10;
        if (v13 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:

    v4 = &selRef_setFirstSyncDateToNow;
    v2 = v71;
  }

  v18 = [v2 chatGUID];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_opt_self() sharedInstance];
    v12 = [v20 existingChatWithGUID_];

    if (v12)
    {
      return v12;
    }
  }

  v21 = [v2 handles];
  v22 = sub_22B7DB918();

  v23 = *(v22 + 16);

  if (v23 <= 1)
  {
    v24 = 45;
  }

  else
  {
    v24 = 43;
  }

  v25 = objc_opt_self();
  v26 = [v25 sharedInstance];
  v27 = [v2 handles];
  if (!v27)
  {
    sub_22B7DB918();
    v27 = sub_22B7DB8F8();
  }

  v28 = [a1 service];
  v29 = [v2 groupID];
  v30 = [v26 existingChatsForIDs:v27 onService:v28 displayName:0 groupID:v29 style:v24];

  sub_22B4D01A0(0, &qword_28141EFF0, off_2786FF950);
  v31 = sub_22B7DB918();

  if (!(v31 >> 62))
  {
    result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = v71;
    if (result)
    {
      goto LABEL_32;
    }

LABEL_38:

    v70 = v24;
    sub_22B731B74(a1, v24, v33);
    v35 = [v33 handles];
    v36 = sub_22B7DB918();

    v37 = *(v36 + 16);
    if (!v37)
    {

      v38 = MEMORY[0x277D84F90];
LABEL_49:
      v62 = sub_22B7DB678();
      v63 = [v33 groupID];
      sub_22B796DBC(v38);

      v64 = sub_22B7DB8F8();

      v65 = [a1 account];
      LOBYTE(v69) = 0;
      [a1 didJoinChat:v62 style:v70 displayName:0 groupID:v63 handleInfo:v64 account:v65 isBlackholed:v69];

      v66 = [v25 v4[437]];
      v67 = sub_22B7DB678();

      v68 = [a1 account];
      v12 = [v66 existingChatWithIdentifier:v67 account:v68];

      return v12;
    }

    v82 = MEMORY[0x277D84F90];
    sub_22B7AB924(0, v37, 0);
    v38 = v82;
    v73 = *MEMORY[0x277D192F8];
    v72 = *MEMORY[0x277D193A8];
    sub_22B6F0AD4(&qword_27D8CDB58, &qword_22B7FA358);
    v39 = (v36 + 40);
    while (1)
    {
      v41 = *(v39 - 1);
      v40 = *v39;
      v78[0] = sub_22B7DB6A8();
      v78[1] = v42;
      v80 = MEMORY[0x277D849A8];
      v79 = 2;
      v81[0] = sub_22B7DB6A8();
      v81[1] = v43;
      v81[5] = MEMORY[0x277D837D0];
      v81[2] = v41;
      v81[3] = v40;
      v44 = sub_22B7DC488();
      sub_22B732DB0(v78, &v75);
      v46 = v75;
      v45 = v76;

      v31 = v44;
      v47 = sub_22B723648(v46, v45);
      if (v48)
      {
        break;
      }

      *(v44 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v47;
      v49 = (v44[6] + 16 * v47);
      *v49 = v46;
      v49[1] = v45;
      sub_22B4D7F04(v77, (v44[7] + 32 * v47));
      v50 = v44[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_52;
      }

      v44[2] = v52;
      sub_22B732DB0(v81, &v75);
      v53 = v75;
      v54 = v76;
      v31 = v44;
      v55 = sub_22B723648(v75, v76);
      if (v56)
      {
        goto LABEL_53;
      }

      *(v44 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v55;
      v57 = (v44[6] + 16 * v55);
      *v57 = v53;
      v57[1] = v54;
      sub_22B4D7F04(v77, (v44[7] + 32 * v55));
      v58 = v44[2];
      v51 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v51)
      {
        goto LABEL_54;
      }

      v44[2] = v59;

      sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
      swift_arrayDestroy();
      v82 = v38;
      v61 = *(v38 + 16);
      v60 = *(v38 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_22B7AB924((v60 > 1), v61 + 1, 1);
        v38 = v82;
      }

      *(v38 + 16) = v61 + 1;
      *(v38 + 8 * v61 + 32) = v44;
      v39 += 2;
      if (!--v37)
      {

        v4 = &selRef_setFirstSyncDateToNow;
        v33 = v71;
        goto LABEL_49;
      }
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

  result = sub_22B7DC1C8();
  v33 = v71;
  if (!result)
  {
    goto LABEL_38;
  }

LABEL_32:
  if ((v31 & 0xC000000000000001) != 0)
  {
LABEL_55:
    v34 = MEMORY[0x231895C80](0, v31);
LABEL_35:
    v12 = v34;
LABEL_36:

    return v12;
  }

  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v31 + 32);
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

void sub_22B732544(unint64_t a1, void *a2, void *a3)
{
  v6 = sub_22B7DA968();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B731D14(a1, a2);
  v12 = v11;
  if (!v11)
  {
    return;
  }

  if ([v11 style] != 43)
  {
    return;
  }

  v13 = [a2 handles];
  v14 = sub_22B7DB918();

  v15 = *(v14 + 16);

  if (v15 < 2)
  {
    return;
  }

  v92 = a3;
  v94 = v10;
  v95 = v12;
  v16 = [v12 participants];
  if (!v16)
  {
    goto LABEL_71;
  }

  v17 = v16;
  v96 = a2;
  v89 = v7;
  v90 = v6;
  v93 = sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
  v18 = sub_22B7DB918();

  if (v18 >> 62)
  {
    v19 = sub_22B7DC1C8();
    v91 = a1;
    if (v19)
    {
LABEL_7:
      v97 = MEMORY[0x277D84F90];
      sub_22B7AB6B4(0, v19 & ~(v19 >> 63), 0);
      if (v19 < 0)
      {
        goto LABEL_39;
      }

      v20 = 0;
      v21 = v97;
      while (1)
      {
        v22 = (v18 & 0xC000000000000001) != 0 ? MEMORY[0x231895C80](v20, v18) : *(v18 + 8 * v20 + 32);
        v23 = v22;
        v24 = [v23 ID];
        if (!v24)
        {
          break;
        }

        v25 = v24;
        v26 = sub_22B7DB6A8();
        v28 = v27;

        if (!v28)
        {
          goto LABEL_67;
        }

        v97 = v21;
        v30 = *(v21 + 16);
        v29 = *(v21 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_22B7AB6B4((v29 > 1), v30 + 1, 1);
          v21 = v97;
        }

        ++v20;
        *(v21 + 16) = v30 + 1;
        v31 = v21 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        if (v19 == v20)
        {

          goto LABEL_20;
        }
      }

LABEL_66:

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v91 = a1;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_20:
  v32 = sub_22B77A2DC(v21);

  v98 = v32;

  v33 = v96;
  v34 = [v96 handles];
  v35 = sub_22B7DB918();

  v36 = sub_22B77A2DC(v35);

  v97 = v36;

  LOBYTE(v34) = sub_22B7316CC(v32, v36);

  v37 = v95;
  if (v34)
  {

    return;
  }

  v38 = [v33 handles];
  v39 = sub_22B7DB918();

  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = (v39 + 40);
    do
    {
      v42 = *(v41 - 1);
      v43 = *v41;

      sub_22B711D50(v42, v43);

      v41 += 2;
      --v40;
    }

    while (v40);
  }

  v44 = [v37 participants];
  if (!v44)
  {
    goto LABEL_72;
  }

  v45 = v44;
  a1 = sub_22B7DB918();

  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22B7DC1C8())
  {
    v47 = 0;
    v96 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (v96)
      {
        v48 = MEMORY[0x231895C80](v47, a1);
      }

      else
      {
        if (v47 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v48 = *(a1 + 8 * v47 + 32);
      }

      v49 = v48;
      v50 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      v51 = [v48 ID];
      if (!v51)
      {
        goto LABEL_68;
      }

      v52 = v51;
      v53 = sub_22B7DB6A8();
      v55 = v54;

      sub_22B711D50(v53, v55);

      ++v47;
      if (v50 == i)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_41:

  v56 = [v92 item];
  v57 = [v56 time];

  if (!v57)
  {
    goto LABEL_73;
  }

  sub_22B7DA928();

  v58 = 0;
  v59 = v98;
  v60 = v98 + 56;
  v61 = 1 << *(v98 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & *(v98 + 56);
  v64 = (v61 + 63) >> 6;
  v65 = v91;
  if (v63)
  {
    while (1)
    {
      v23 = v58;
LABEL_49:
      v66 = (*(v59 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v63)))));
      v67 = *v66;
      v68 = v66[1];

      v69 = sub_22B7DB678();
      v70 = [v95 chatIdentifier];
      if (!v70)
      {
        goto LABEL_69;
      }

      v71 = v70;
      v63 &= v63 - 1;

      v72 = [v65 account];
      v73 = sub_22B7DA8B8();
      LOBYTE(v88) = 43;

      v58 = v23;
      if (!v63)
      {
        goto LABEL_46;
      }
    }
  }

  while (1)
  {
LABEL_46:
    v23 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v23 >= v64)
    {
      break;
    }

    v63 = *(v60 + 8 * v23);
    ++v58;
    if (v63)
    {
      goto LABEL_49;
    }
  }

  v74 = 0;
  v75 = v97;
  v76 = 1 << *(v97 + 32);
  v77 = -1;
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  v78 = v77 & *(v97 + 56);
  v79 = (v76 + 63) >> 6;
  if (!v78)
  {
LABEL_56:
    while (1)
    {
      v23 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        goto LABEL_65;
      }

      if (v23 >= v79)
      {
        (*(v89 + 8))(v94, v90);

        return;
      }

      v78 = *(v75 + 56 + 8 * v23);
      ++v74;
      if (v78)
      {
        goto LABEL_59;
      }
    }
  }

  while (1)
  {
    v23 = v74;
LABEL_59:
    v80 = (*(v75 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v78)))));
    v81 = *v80;
    v82 = v80[1];

    v83 = sub_22B7DB678();
    v84 = [v95 chatIdentifier];
    if (!v84)
    {
      break;
    }

    v85 = v84;
    v78 &= v78 - 1;

    v86 = [v65 account];
    v87 = sub_22B7DA8B8();
    LOBYTE(v88) = 43;

    v74 = v23;
    if (!v78)
    {
      goto LABEL_56;
    }
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

uint64_t sub_22B732DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B732E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v16 = *MEMORY[0x277D85DE8];
  *(v8 + 200) = a8;
  *(v8 + 208) = v18;
  *(v8 + 313) = a7;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 176) = a4;
  v9 = sub_22B7DB2B8();
  *(v8 + 216) = v9;
  v10 = *(v9 - 8);
  *(v8 + 224) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  sub_22B7DBA18();
  *(v8 + 240) = sub_22B7DBA08();
  v12 = sub_22B7DB9C8();
  *(v8 + 248) = v12;
  *(v8 + 256) = v13;
  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B732F64, v12, v13);
}

uint64_t sub_22B732F64()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B7DAE28();
  v0[33] = sub_22B7DAE18();
  v1 = *(MEMORY[0x277D19618] + 4);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_22B733040;
  v3 = v0[22];
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282173A60](v3);
}

uint64_t sub_22B733040()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 272);
  v11 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = v2[31];
    v5 = v2[32];
    v6 = sub_22B733748;
  }

  else
  {
    v7 = v2[33];

    v4 = v2[31];
    v5 = v2[32];
    v6 = sub_22B733190;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_22B733190()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 313);
  v4 = *(v0 + 184);
  v5 = sub_22B7DB678();
  *(v0 + 168) = v5;
  *(v0 + 312) = v3;
  [v2 canonicalizeChatIdentifier:v0 + 168 style:v0 + 312];
  v6 = *(v0 + 168);
  *(v0 + 288) = v6;
  v7 = v6;

  v8 = [v2 chatForChatIdentifier:v7 style:*(v0 + 312)];
  *(v0 + 296) = v8;

  if (v8)
  {
    v9 = *(v0 + 208);
    v10 = objc_opt_self();
    sub_22B733994();
    v11 = sub_22B7DB8F8();
    *(v0 + 304) = v11;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_22B73355C;
    v12 = swift_continuation_init();
    *(v0 + 136) = sub_22B6F0AD4(&qword_27D8CF570, &qword_22B7FA6B8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_22B7973C0;
    *(v0 + 104) = &unk_283F1D0B8;
    *(v0 + 112) = v12;
    [v10 translateMessageItems:v11 forChat:v8 incoming:1 completion:v0 + 80];
    v13 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v15 = *(v0 + 232);
    v14 = *(v0 + 240);

    sub_22B7DB288();
    sub_22B7DB2A8();
    v16 = sub_22B7DB298();
    v17 = sub_22B7DBC98();
    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 224);
    v19 = *(v0 + 232);
    v21 = *(v0 + 216);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32[0] = v23;
      *v22 = 136315394;
      v24 = sub_22B7DB6A8();
      v31 = v19;
      v26 = sub_22B4CFAAC(v24, v25, v32);

      *(v22 + 4) = v26;
      *(v22 + 12) = 256;
      swift_beginAccess();
      *(v22 + 14) = *(v0 + 312);
      _os_log_impl(&dword_22B4CC000, v16, v17, "Failed to get chat for identifier: %s style: %hhu", v22, 0xFu);
      sub_22B4CFB78(v23);
      MEMORY[0x231898D60](v23, -1, -1);
      MEMORY[0x231898D60](v22, -1, -1);

      (*(v20 + 8))(v31, v21);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
    }

    v27 = *(v0 + 232);

    v28 = *(v0 + 8);
    v29 = *MEMORY[0x277D85DE8];

    return v28();
  }
}

uint64_t sub_22B73355C()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D85DE8];
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22B733690, v2, v1);
}

uint64_t sub_22B733690()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 240);

  v4 = *(v0 + 232);

  v5 = *(v0 + 8);
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_22B733748()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[30];

  v4 = v0[1];
  v5 = v0[35];
  v6 = *MEMORY[0x277D85DE8];

  return v4();
}

unint64_t sub_22B733994()
{
  result = qword_28141F288;
  if (!qword_28141F288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28141F288);
  }

  return result;
}

uint64_t sub_22B7339E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 56);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_22B6F0D94;

  return sub_22B732E28(a1, v4, v5, v6, v7, v8, v11, v9);
}

void sub_22B733B34(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&qword_27D8CE650, qword_22B7FA7B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  v7 = [objc_opt_self() sharedInstance];
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v6, v2);
  aBlock[4] = sub_22B7369B4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B733D88;
  aBlock[3] = &unk_283F1D220;
  v10 = _Block_copy(aBlock);

  [v7 fetchCloudKitAccountStatusAndUpdateEligibilityAndNeedsRepairStatusWithCompletion_];
  _Block_release(v10);
}

uint64_t sub_22B733D08(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    sub_22B6F0AD4(&qword_27D8CE650, qword_22B7FA7B0);
    return sub_22B7DB9D8();
  }

  else
  {
    sub_22B6F0AD4(&qword_27D8CE650, qword_22B7FA7B0);
    return sub_22B7DB9E8();
  }
}

void sub_22B733D88(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_22B733E00()
{
  *(v1 + 24) = v0;
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  type metadata accessor for IMDCKAccountStatus(0);
  *v3 = v1;
  v3[1] = sub_22B733EE0;

  return MEMORY[0x2822008A0](v1 + 16, 0, 0, 0xD000000000000044, 0x800000022B80F4D0, sub_22B733B34, 0, v4);
}

uint64_t sub_22B733EE0()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_22B733FF4;
  }

  else
  {
    v3 = sub_22B734360;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B733FF4()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 syncState];

  v5 = [v4 isEligibleForTruthZone];
  v6 = v1;
  v7 = sub_22B7DB298();
  v8 = sub_22B7DBCB8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[5];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v5;
    _os_log_impl(&dword_22B4CC000, v7, v8, "Account status check got error, %@, using cached value from Sync State %{BOOL}d", v11, 0x12u);
    sub_22B4D0D64(v12, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v12, -1, -1);
    MEMORY[0x231898D60](v11, -1, -1);

    if ((v5 & 1) == 0)
    {
LABEL_3:
      v15 = v0[3] + OBJC_IVAR____TtC12IMDaemonCore17IMDPreReqsChecker_logger;
      v16 = sub_22B7DB298();
      v17 = sub_22B7DBCB8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_22B4CC000, v16, v17, "Account does not support device to device encryption, aborting sync", v18, 2u);
        MEMORY[0x231898D60](v18, -1, -1);
      }

      goto LABEL_9;
    }
  }

  else
  {

    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v19 = objc_opt_self();
  v20 = [v19 sharedInstance];
  v21 = *MEMORY[0x277D19A08];
  [v20 setValue:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A78]];

  v22 = [v19 sharedInstance];
  [v22 setValue:0 forDomain:v21 forKey:*MEMORY[0x277D19A80]];

  v23 = [objc_opt_self() sharedInstance];
  LODWORD(v20) = [v23 iCloudAccountMatchesiMessageAccount];

  if (v20)
  {
    v24 = v0[1];
    goto LABEL_10;
  }

LABEL_9:
  [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D08] code:2 userInfo:0];
  swift_willThrow();
  v24 = v0[1];
LABEL_10:

  return v24();
}

uint64_t sub_22B734360()
{
  if (v0[2] == 4)
  {
    v1 = objc_opt_self();
    v2 = [v1 sharedInstance];
    v3 = *MEMORY[0x277D19A08];
    [v2 setValue:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A78]];

    v4 = [v1 sharedInstance];
    [v4 setValue:0 forDomain:v3 forKey:*MEMORY[0x277D19A80]];

    v5 = [objc_opt_self() sharedInstance];
    LODWORD(v2) = [v5 iCloudAccountMatchesiMessageAccount];

    if (v2)
    {
      v6 = v0[1];
      goto LABEL_8;
    }
  }

  else
  {
    v7 = v0[3] + OBJC_IVAR____TtC12IMDaemonCore17IMDPreReqsChecker_logger;
    v8 = sub_22B7DB298();
    v9 = sub_22B7DBCB8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v8, v9, "Account does not support device to device encryption, aborting sync", v10, 2u);
      MEMORY[0x231898D60](v10, -1, -1);
    }
  }

  [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D08] code:2 userInfo:0];
  swift_willThrow();
  v6 = v0[1];
LABEL_8:

  return v6();
}

void sub_22B734564(uint64_t a1, void *a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = [objc_opt_self() sharedInstance];
  if (v9)
  {
    v10 = v9;
    (*(v5 + 16))(v8, a1, v4);
    v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    (*(v5 + 32))(v12 + v11, v8, v4);
    aBlock[4] = sub_22B73686C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B734DE0;
    aBlock[3] = &unk_283F1D1D0;
    v13 = _Block_copy(aBlock);
    v14 = a2;

    [v10 exitRecordDateWithCompletion_];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

id sub_22B734750(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v54 - v9;
  v11 = sub_22B7DA968();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  v58 = &v54 - v17;
  if (a2)
  {
    v56 = v12;
    v19 = a2;
    v20 = sub_22B7366AC();
    v21 = a2;
    v22 = sub_22B7DB298();
    v23 = sub_22B7DBCB8();

    v24 = os_log_type_enabled(v22, v23);
    if (v20)
    {
      if (v24)
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = a2;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_22B4CC000, v22, v23, "Error fetching exit record %@, aborting", v25, 0xCu);
        sub_22B4D0D64(v26, &unk_27D8CEC60, &qword_22B7F9E20);
        MEMORY[0x231898D60](v26, -1, -1);
        MEMORY[0x231898D60](v25, -1, -1);
      }

      v59 = a2;
      sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
      return sub_22B7DB9D8();
    }

    if (v24)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v57 = a4;
      v32 = v31;
      *v30 = 138412290;
      v33 = a2;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_22B4CC000, v22, v23, "Error fetching exit record %@, ignoring", v30, 0xCu);
      sub_22B4D0D64(v32, &unk_27D8CEC60, &qword_22B7F9E20);
      v35 = v32;
      a4 = v57;
      MEMORY[0x231898D60](v35, -1, -1);
      MEMORY[0x231898D60](v30, -1, -1);
    }

    v12 = v56;
    v18 = v58;
  }

  sub_22B7368FC(a1, v10);
  if ((*(v12 + 6))(v10, 1, v11) == 1)
  {
    sub_22B4D0D64(v10, &unk_27D8CF790, &qword_22B7F9578);
    sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
    return sub_22B7DB9E8();
  }

  else
  {
    v57 = a4;
    (*(v12 + 4))(v18, v10, v11);
    v36 = *(v12 + 2);
    v36(v16, v18, v11);
    v37 = sub_22B7DB298();
    v38 = sub_22B7DBCB8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = v36;
      v59 = v55;
      *v39 = 136315138;
      sub_22B73696C(&qword_27D8CD8D0, MEMORY[0x277CC9578]);
      v40 = sub_22B7DC4E8();
      v41 = v12;
      v43 = v42;
      v44 = v41[1];
      v44(v16, v11);
      v45 = sub_22B4CFAAC(v40, v43, &v59);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_22B4CC000, v37, v38, "Entered exit state on %s. Aborting sync, downloading all attachments!", v39, 0xCu);
      v46 = v55;
      sub_22B4CFB78(v55);
      v36 = v56;
      MEMORY[0x231898D60](v46, -1, -1);
      MEMORY[0x231898D60](v39, -1, -1);

      v47 = v44;
    }

    else
    {

      v47 = *(v12 + 1);
      v47(v16, v11);
    }

    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v48 = result;
      [result scheduleAttachmentAssetDownload];

      type metadata accessor for PreReqsError(0);
      sub_22B73696C(&qword_27D8CE620, type metadata accessor for PreReqsError);
      v49 = swift_allocError();
      v51 = v50;
      v52 = v58;
      v36(v50, v58, v11);
      v53 = sub_22B6F0AD4(&qword_27D8CE628, &unk_22B7FA700);
      (*(*(v53 - 8) + 56))(v51, 0, 2, v53);
      v59 = v49;
      sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
      sub_22B7DB9D8();
      return (v47)(v52, v11);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22B734DE0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_22B7DA928();
    v12 = sub_22B7DA968();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_22B7DA968();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_22B4D0D64(v9, &unk_27D8CF790, &qword_22B7F9578);
}

void sub_22B734F34(uint64_t a1, void *a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = [objc_opt_self() sharedInstance];
  if (v9)
  {
    v10 = v9;
    (*(v5 + 16))(v8, a1, v4);
    v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    (*(v5 + 32))(v12 + v11, v8, v4);
    aBlock[4] = sub_22B73661C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B7353C8;
    aBlock[3] = &unk_283F1D180;
    v13 = _Block_copy(aBlock);
    v14 = a2;

    [v10 fetchLatestRecordKeyFromCKAndCreateIfKeyDoesNotExistWithCompletion_];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22B735120(char a1, id a2)
{
  if (a1)
  {
    sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
    return sub_22B7DB9E8();
  }

  if (a2)
  {
    v4 = a2;
    v5 = sub_22B7DB298();
    v6 = sub_22B7DBCB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_22B4CC000, v5, v6, "Error fetching salt record %@, aborting", v7, 0xCu);
      sub_22B4D0D64(v8, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v8, -1, -1);
      MEMORY[0x231898D60](v7, -1, -1);
    }

    if (sub_22B7366AC())
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = sub_22B7DB298();
    v12 = sub_22B7DBCB8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22B4CC000, v11, v12, "No salt record fetched, aborting", v13, 2u);
      MEMORY[0x231898D60](v13, -1, -1);
    }
  }

  type metadata accessor for PreReqsError(0);
  sub_22B73696C(&qword_27D8CE620, type metadata accessor for PreReqsError);
  swift_allocError();
  v15 = v14;
  v16 = sub_22B6F0AD4(&qword_27D8CE628, &unk_22B7FA700);
  (*(*(v16 - 8) + 56))(v15, 2, 2, v16);
LABEL_13:
  sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
  return sub_22B7DB9D8();
}

void sub_22B7353C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_22B735440(char a1)
{
  *(v2 + 16) = v1;
  if (a1)
  {

    return MEMORY[0x2822009F8](sub_22B735510, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 24) = v3;
    *v3 = v2;
    v3[1] = sub_22B7356C8;
    v4 = *(v2 + 16);

    return sub_22B733E00();
  }
}

uint64_t sub_22B735510()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 cloudKitSyncingEnabled];

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    v3[1] = sub_22B7356C8;
    v4 = v0[2];

    return sub_22B733E00();
  }

  else
  {
    type metadata accessor for PreReqsError(0);
    sub_22B73696C(&qword_27D8CE620, type metadata accessor for PreReqsError);
    swift_allocError();
    v7 = v6;
    v8 = sub_22B6F0AD4(&qword_27D8CE628, &unk_22B7FA700);
    (*(*(v8 - 8) + 56))(v7, 1, 2, v8);
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22B7356C8()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B7357F8, 0, 0);
  }
}

uint64_t sub_22B7357F8()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_22B7358EC;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD00000000000001DLL, 0x800000022B80F3F0, sub_22B735CF8, v2, v5);
}

uint64_t sub_22B7358EC()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_22B735C18;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_22B735A08;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B735A08()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_22B735AFC;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000017, 0x800000022B80F410, sub_22B735D00, v2, v5);
}

uint64_t sub_22B735AFC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_22B735C94;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_22B735C7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B735C18()
{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22B735C94()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22B735EAC(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_22B735F68;

  return sub_22B735440(a1);
}

uint64_t sub_22B735F68()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_22B7DA6E8();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

id IMDPreReqsChecker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IMDPreReqsChecker.init()()
{
  sub_22B7DB288();
  sub_22B7DB2A8();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMDPreReqsChecker(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

id IMDPreReqsChecker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMDPreReqsChecker(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B7362C8()
{
  result = sub_22B7DB2B8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of IMDPreReqsChecker.verifyAllPreReqs(requireEnablement:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F0D94;

  return v8(a1);
}

uint64_t sub_22B7364C8()
{
  sub_22B736520();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_22B736520()
{
  if (!qword_27D8CE640)
  {
    v0 = sub_22B7DA968();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8CE640);
    }
  }
}

uint64_t sub_22B736568()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B6F0D94;

  return sub_22B735EAC(v2, v4, v3);
}

uint64_t sub_22B73661C(char a1, void *a2)
{
  v5 = *(*(sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8) - 8) + 80);
  v6 = *(v2 + 16);

  return sub_22B735120(a1, a2);
}

uint64_t sub_22B7366AC()
{
  v0 = sub_22B7DA6E8();
  v1 = [v0 domain];
  v2 = sub_22B7DB6A8();
  v4 = v3;

  v5 = *MEMORY[0x277CBBF50];
  if (v2 == sub_22B7DB6A8() && v4 == v6)
  {
  }

  else
  {
    v8 = sub_22B7DC518();

    if ((v8 & 1) == 0)
    {

      LOBYTE(v9) = 0;
      return v9 & 1;
    }
  }

  v10 = [v0 code];

  v9 = 0x80002C8u >> v10;
  if (v10 >= 0x1C)
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_22B73679C()
{
  v1 = sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_22B73686C(uint64_t a1, void *a2)
{
  v5 = *(sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_22B734750(a1, a2, v6, v7);
}

uint64_t sub_22B7368FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B73696C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B7369B4(int a1, void *a2)
{
  v4 = *(*(sub_22B6F0AD4(&qword_27D8CE650, qword_22B7FA7B0) - 8) + 80);

  return sub_22B733D08(a1, a2);
}

uint64_t sub_22B736A50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v38 = a2;
  v37 = a3;
  v4 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - v6;
  v8 = sub_22B7DA968();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 properties];
  if (!v13)
  {
    v42 = 0u;
    v43 = 0u;
    v24 = *MEMORY[0x277D19960];
    goto LABEL_10;
  }

  v14 = v13;
  v15 = sub_22B7DB588();

  v16 = *MEMORY[0x277D19960];
  v39 = sub_22B7DB6A8();
  v40 = v17;
  sub_22B7DC248();
  if (!*(v15 + 16) || (v18 = sub_22B4D7EC0(v41), (v19 & 1) == 0))
  {

    sub_22B4DA138(v41);
    v42 = 0u;
    v43 = 0u;
LABEL_10:
    sub_22B4D0D64(&v42, &unk_27D8CCDC0, &qword_22B7F9580);
    v21 = *(v9 + 56);
    v21(v7, 1, 1, v8);
    goto LABEL_11;
  }

  sub_22B4D1F68(*(v15 + 56) + 32 * v18, &v42);
  sub_22B4DA138(v41);

  if (!*(&v43 + 1))
  {
    goto LABEL_10;
  }

  v20 = swift_dynamicCast();
  v21 = *(v9 + 56);
  v21(v7, v20 ^ 1u, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_11:
    v25 = v38;
    sub_22B4D0D64(v7, &unk_27D8CF790, &qword_22B7F9578);
    goto LABEL_12;
  }

  v36 = *(v9 + 32);
  v36(v12, v7, v8);
  if (sub_22B7DA8C8())
  {
    v22 = v37;
    v36(v37, v12, v8);
    return (v21)(v22, 0, 1, v8);
  }

  (*(v9 + 8))(v12, v8);
  v25 = v38;
LABEL_12:
  sub_22B6F0AD4(&unk_27D8CE9F0, &qword_22B7F98C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B7F93B0;
  v41[0] = sub_22B7DB6A8();
  v41[1] = v27;
  sub_22B7DC248();
  *(inited + 96) = v8;
  v28 = sub_22B6FC8CC((inited + 72));
  v29 = *(v9 + 16);
  v29(v28, v25, v8);
  sub_22B4D7D1C(inited);
  swift_setDeallocating();
  sub_22B4D0D64(inited + 32, &unk_27D8CD7D0, &qword_22B7FA3F0);
  v30 = sub_22B7DB568();

  v31 = [a1 updateProperties_];

  if (v31)
  {
    v32 = v37;
    v29(v37, v25, v8);
    v33 = v32;
    v34 = 0;
  }

  else
  {
    v33 = v37;
    v34 = 1;
  }

  return (v21)(v33, v34, 1, v8);
}

void sub_22B736F34(uint64_t a1)
{
  v3 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v121 - v5;
  v7 = sub_22B7DA968();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v121 - v13;
  v15 = *(a1 + 16);
  if (!v15)
  {
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v90 = sub_22B7DB2B8();
    sub_22B4CFA74(v90, qword_281422620);
    v146 = sub_22B7DB298();
    v91 = sub_22B7DBC98();
    if (os_log_type_enabled(v146, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_22B4CC000, v146, v91, "Tried to update chats with priority, but there were no messages provided.", v92, 2u);
      MEMORY[0x231898D60](v92, -1, -1);
    }

LABEL_56:
    v100 = v146;

    return;
  }

  v16 = [objc_opt_self() sharedProvider];
  if (!v16)
  {
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v93 = sub_22B7DB2B8();
    sub_22B4CFA74(v93, qword_281422620);

    v146 = sub_22B7DB298();
    v94 = sub_22B7DBC98();

    if (os_log_type_enabled(v146, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v147[0] = v96;
      *v95 = 136315394;
      *(v95 + 4) = sub_22B4CFAAC(0xD00000000000002BLL, 0x800000022B80F590, v147);
      *(v95 + 12) = 2080;
      v97 = MEMORY[0x2318952A0](a1, MEMORY[0x277D837D0]);
      v99 = sub_22B4CFAAC(v97, v98, v147);

      *(v95 + 14) = v99;
      _os_log_impl(&dword_22B4CC000, v146, v94, "%s No broadcaster for messages with GUIDs %s", v95, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v96, -1, -1);
      MEMORY[0x231898D60](v95, -1, -1);

      return;
    }

    goto LABEL_56;
  }

  v17 = [v16 broadcasterForChatListeners];
  swift_unknownObjectRelease();
  v18 = objc_opt_self();
  if (([v18 isFilterUnknownSendersEnabled] & 1) == 0 || (objc_msgSend(v18, sel_timeSensitivePriorityEnabled) & 1) == 0)
  {

    swift_unknownObjectRelease();
    return;
  }

  v140 = v12;
  v133 = v6;
  v134 = v17;
  v19 = MEMORY[0x277D84F90];
  v139 = sub_22B71DF84(MEMORY[0x277D84F90]);
  v143 = sub_22B71E4E0(v19);
  v20 = [v18 personalPriorityEnabled];
  v21 = [v18 transactionsPriorityEnabled];
  v22 = [v18 promotionsPriorityEnabled];
  v132 = v20;
  v136 = v20 & v21 & v22 ^ 1;
  v146 = objc_opt_self();
  v142 = 0;
  v126 = v21 ^ 1;
  v131 = (v8 + 48);
  v125 = *MEMORY[0x277D19960];
  v124 = (v8 + 16);
  v144 = (v8 + 8);
  v127 = a1;
  v23 = (a1 + 40);
  *&v24 = 136315138;
  v123 = v24;
  v135 = xmmword_22B7F93B0;
  v141 = v19;
  v145 = v7;
  while (1)
  {
    v25 = *(v23 - 1);
    v26 = *v23;

    v27 = [v146 sharedInstance];
    v28 = sub_22B7DB678();
    v29 = [v27 messageWithGUID:v28];

    if (!v29)
    {
      goto LABEL_7;
    }

    if (([v29 isTimeSensitive] & 1) == 0)
    {
      v30 = [v29 time];
      if (v30)
      {
        break;
      }
    }

LABEL_7:

LABEL_8:
    v23 += 2;
    if (!--v15)
    {
      if (v142)
      {
        v101 = [v146 sharedInstance];
        [v101 rebuildUnreadMessageCount];
      }

      v102 = v134;
      v103 = v141;
      if (*(v139 + 16))
      {
        if (*(v141 + 2))
        {
          v104 = [v146 sharedInstance];
          sub_22B796ED0(v103);

          v105 = sub_22B7DB8F8();

          [v104 postUrgentNotificationsForMessageGUIDs:v105];
        }

        else
        {
        }

        sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
        v111 = sub_22B7DB568();

        sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
        v112 = sub_22B7DB568();
        [v102 updatedPriorityForChatsWithGUIDsAndProperties:v111 chatsAndMessageGUIDs:v112];

        if (qword_28141F370 != -1)
        {
          swift_once();
        }

        v113 = sub_22B7DB2B8();
        sub_22B4CFA74(v113, qword_281422620);
        v114 = v127;

        v107 = sub_22B7DB298();
        v115 = sub_22B7DBC78();

        if (!os_log_type_enabled(v107, v115))
        {
          goto LABEL_74;
        }

        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v147[0] = v117;
        *v116 = 136315394;
        *(v116 + 4) = sub_22B4CFAAC(0xD00000000000002BLL, 0x800000022B80F590, v147);
        *(v116 + 12) = 2080;
        v118 = MEMORY[0x2318952A0](v114, MEMORY[0x277D837D0]);
        v120 = sub_22B4CFAAC(v118, v119, v147);

        *(v116 + 14) = v120;
        _os_log_impl(&dword_22B4CC000, v107, v115, "%s Broadcasted messagesUpdated for GUIDs %s", v116, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x231898D60](v117, -1, -1);
        v110 = v116;
      }

      else
      {

        if (qword_28141F370 != -1)
        {
          swift_once();
        }

        v106 = sub_22B7DB2B8();
        sub_22B4CFA74(v106, qword_281422620);
        v107 = sub_22B7DB298();
        v108 = sub_22B7DBC98();
        if (!os_log_type_enabled(v107, v108))
        {
          goto LABEL_74;
        }

        v109 = swift_slowAlloc();
        *v109 = 0;
        _os_log_impl(&dword_22B4CC000, v107, v108, "There were no chats to update after processing the priorities.", v109, 2u);
        v110 = v109;
      }

      MEMORY[0x231898D60](v110, -1, -1);
LABEL_74:

      swift_unknownObjectRelease();

      return;
    }
  }

  v31 = v30;
  sub_22B7DA928();

  v32 = [v146 sharedInstance];
  v33 = sub_22B7DB678();
  v34 = [v32 chatForMessageGUID:v33];

  if (!v34)
  {
    (*v144)(v14, v145);

    goto LABEL_8;
  }

  v35 = [v34 filterCategory];
  v36 = v145;
  if (v35 == 3 || [v34 filterCategory] == 2)
  {
    (*v144)(v14, v36);

    goto LABEL_7;
  }

  v37 = [v34 filterCategory] == 1;
  if (v37 & v132)
  {
    v38 = 0;
  }

  else
  {
    v39 = [v34 filterCategory];
    v38 = v136;
    if (v39 == 4)
    {
      v38 = v126 & v136;
    }
  }

  v40 = [v29 isRead];
  v138 = v1;
  v137 = v14;
  v136 = v38;
  if (v40 & 1) == 0 && (v38)
  {

    v41 = v141;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_22B71BD80(0, *(v41 + 2) + 1, 1, v41);
    }

    v42 = v41;
    v43 = *(v41 + 2);
    v141 = v42;
    v44 = *(v42 + 3);
    if (v43 >= v44 >> 1)
    {
      v141 = sub_22B71BD80((v44 > 1), v43 + 1, 1, v141);
    }

    v45 = v141;
    *(v141 + 2) = v43 + 1;
    v46 = &v45[16 * v43];
    *(v46 + 4) = v25;
    *(v46 + 5) = v26;
    v36 = v145;
  }

  v130 = [v29 isTimeSensitive];
  [v29 setIsTimeSensitive_];
  v47 = [v146 sharedInstance];

  IMSharedHelperMessagePriorityTimeout();
  v48 = v140;
  sub_22B7DA8A8();
  v49 = v133;
  sub_22B736A50(v34, v48, v133);
  LODWORD(v47) = (*v131)(v49, 1, v36);
  sub_22B4D0D64(v49, &unk_27D8CF790, &qword_22B7F9578);
  if (v47 == 1)
  {
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v50 = sub_22B7DB2B8();
    sub_22B4CFA74(v50, qword_281422620);
    v51 = v34;
    v52 = sub_22B7DB298();
    v53 = sub_22B7DBC98();
    if (os_log_type_enabled(v52, v53))
    {
      LODWORD(v128) = v53;
      v129 = v52;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v147[0] = v55;
      *v54 = v123;
      v56 = [v51 guid];
      v57 = v51;
      v58 = v56;

      if (!v58)
      {
        goto LABEL_78;
      }

      v122 = sub_22B7DB6A8();
      v60 = v59;

      v61 = sub_22B4CFAAC(v122, v60, v147);

      *(v54 + 4) = v61;
      v52 = v129;
      _os_log_impl(&dword_22B4CC000, v129, v128, "Failed to update priority property on chat with guid %s.", v54, 0xCu);
      sub_22B4CFB78(v55);
      MEMORY[0x231898D60](v55, -1, -1);
      MEMORY[0x231898D60](v54, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v62 = [v34 guid];
    if (!v62)
    {
      goto LABEL_77;
    }

    v63 = v62;
    v64 = sub_22B7DB6A8();
    v66 = v65;

    sub_22B6F0AD4(&unk_27D8CE9F0, &qword_22B7F98C0);
    inited = swift_initStackObject();
    *(inited + 16) = v135;
    v147[0] = sub_22B7DB6A8();
    v147[1] = v68;
    sub_22B7DC248();
    *(inited + 96) = v36;
    v69 = sub_22B6FC8CC((inited + 72));
    (*v124)(v69, v140, v36);
    v70 = sub_22B4D7D1C(inited);
    swift_setDeallocating();
    sub_22B4D0D64(inited + 32, &unk_27D8CD7D0, &qword_22B7FA3F0);
    v71 = v139;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v147[0] = v71;
    sub_22B768860(v70, v64, v66, isUniquelyReferenced_nonNull_native);

    v139 = v147[0];
  }

  v73 = [v34 guid];
  if (!v73)
  {
    goto LABEL_76;
  }

  v74 = v73;
  v128 = sub_22B7DB6A8();
  v129 = v75;

  v76 = [v34 guid];
  if (v76)
  {
    v77 = v76;
    v78 = sub_22B7DB6A8();
    v80 = v79;

    v81 = v143;
    if (*(v143 + 16))
    {
      v122 = sub_22B723648(v78, v80);
      v83 = v82;

      v84 = MEMORY[0x277D84F90];
      if (v83)
      {
        v84 = *(*(v81 + 56) + 8 * v122);
      }
    }

    else
    {

      v84 = MEMORY[0x277D84F90];
    }

    v142 |= v130 ^ 1;
    sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
    v85 = swift_initStackObject();
    *(v85 + 16) = v135;
    *(v85 + 32) = v25;
    *(v85 + 40) = v26;
    v147[0] = v84;
    sub_22B79B3A0(v85);
    v86 = v147[0];
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v147[0] = v81;
    sub_22B768E38(v86, v128, v129, v87);

    v143 = v147[0];
    v88 = *v144;
    v89 = v145;
    (*v144)(v140, v145);
    v14 = v137;
    v88(v137, v89);
    v1 = v138;
    goto LABEL_8;
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
}

uint64_t sub_22B738124()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_2814225E8);
  sub_22B4CFA74(v0, qword_2814225E8);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

void _sSo19IMDChorosControllerC12IMDaemonCoreE17recordOffGridTime3forySo13CTStewieStateC_tFZ_0(void *a1)
{
  v2 = sub_22B7DA968();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - v9;
  if ([a1 isAnyServicesAvailable])
  {
    v11 = objc_opt_self();
    v12 = [v11 messagesAppDomain];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 objectForKey_];

      if (v14)
      {
        sub_22B7DC118();
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0u;
        v32 = 0u;
      }

      v33 = v31;
      v34 = v32;
      if (*(&v32 + 1))
      {
        v21 = swift_dynamicCast();
        (*(v3 + 56))(v10, v21 ^ 1u, 1, v2);
        if ((*(v3 + 48))(v10, 1, v2) != 1)
        {
LABEL_27:
          sub_22B4D0D64(v10, &unk_27D8CF790, &qword_22B7F9578);
          return;
        }

LABEL_20:
        v22 = [v11 messagesAppDomain];
        if (v22)
        {
          v23 = v22;
          sub_22B7DA958();
          v24 = sub_22B7DA8B8();
          (*(v3 + 8))(v6, v2);
          [v23 setObject:v24 forKey:*MEMORY[0x277D19F18]];
        }

        if (qword_28141F1D8 != -1)
        {
          swift_once();
        }

        v25 = sub_22B7DB2B8();
        sub_22B4CFA74(v25, qword_2814225E8);
        v26 = sub_22B7DB298();
        v27 = sub_22B7DBC78();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_22B4CC000, v26, v27, "Recorded device starting in offgrid.", v28, 2u);
          MEMORY[0x231898D60](v28, -1, -1);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    sub_22B4D0D64(&v33, &unk_27D8CCDC0, &qword_22B7F9580);
    (*(v3 + 56))(v10, 1, 1, v2);
    goto LABEL_20;
  }

  v15 = [objc_opt_self() messagesAppDomain];
  if (v15)
  {
    v16 = v15;
    [v15 removeObjectForKey_];
  }

  if (qword_28141F1D8 != -1)
  {
    swift_once();
  }

  v17 = sub_22B7DB2B8();
  sub_22B4CFA74(v17, qword_2814225E8);
  v30 = sub_22B7DB298();
  v18 = sub_22B7DBC78();
  if (os_log_type_enabled(v30, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_22B4CC000, v30, v18, "Recorded device no longer in offgrid.", v19, 2u);
    MEMORY[0x231898D60](v19, -1, -1);
  }

  v20 = v30;
}

uint64_t sub_22B738680(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 sub_22B73869C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22B7386B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22B7386F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22B73873C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22B738764(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "ied";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "suspended due to throttling";
      v4 = 0xD000000000000025;
    }

    else
    {
      v5 = " higher priority work";
      v4 = 0xD00000000000002DLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD00000000000001BLL;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3)
    {
      v5 = "suspended by DAS";
    }

    else
    {
      v5 = "ied";
    }
  }

  if (a2 > 1u)
  {
    v2 = "suspended due to throttling";
    v6 = " higher priority work";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000025;
    }

    else
    {
      v8 = 0xD00000000000002DLL;
    }
  }

  else
  {
    v6 = "suspended by DAS";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD00000000000001BLL;
    }

    else
    {
      v8 = 0xD000000000000010;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_22B7DC518();
  }

  return v10 & 1;
}

id sub_22B7388A0(void *a1)
{
  [a1 setScheduleAfter_];

  return [a1 setTrySchedulingBefore_];
}

uint64_t sub_22B73891C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22B740BE0();
  *a2 = result;
  return result;
}

void sub_22B73894C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "ied";
  v4 = "suspended due to throttling";
  v5 = 0xD000000000000025;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000002DLL;
    v4 = " higher priority work";
  }

  if (*v1)
  {
    v2 = 0xD00000000000001BLL;
    v3 = "suspended by DAS";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_22B7389C4()
{
  v1 = *v0;
  sub_22B7DC668();
  sub_22B7DB758();

  return sub_22B7DC6B8();
}

uint64_t sub_22B738A7C()
{
  *v0;
  *v0;
  *v0;
  sub_22B7DB758();
}

uint64_t sub_22B738B20()
{
  v1 = *v0;
  sub_22B7DC668();
  sub_22B7DB758();

  return sub_22B7DC6B8();
}

void sub_22B738BD4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[20];
  v5 = a1[21];
  sub_22B4D2BCC(a1 + 17, v4);
  v6 = (*(v5 + 8))(a1[31], a1[32], v4, v5);
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      *a2 = v8;
      return;
    }
  }

  *a2 = 0;
}

uint64_t sub_22B738C6C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22B738C8C, v1, 0);
}

uint64_t sub_22B738C8C()
{
  v1 = v0[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v3 = *(v0[3] + 184);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v18 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_22B738EE0;
    v8 = v0[3];

    return v18(v8, ObjectType, v3);
  }

  else
  {
    v10 = v0[2];

    if (v10 >> 62)
    {
LABEL_21:
      v11 = sub_22B7DC1C8();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    do
    {
      v13 = v12;
      if (v11 == v12)
      {
        break;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x231895C80](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v15 = v14;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v16 = [v14 isEmpty];

      v12 = v13 + 1;
    }

    while ((v16 & 1) != 0);

    v17 = v0[1];

    return v17(v11 != v13);
  }
}

uint64_t sub_22B738EE0(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 48) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22B739014, v4, 0);
}

uint64_t sub_22B739014()
{
  v31 = v0;
  v1 = v0[2];
  v30 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22B7DC1C8())
  {
    v3 = 0;
    v4 = v0[6];
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v7 = v0[2] + 32;
    v8 = v4 + 56;
    v0 = i;
    while (1)
    {
      if (v5)
      {
        v10 = MEMORY[0x231895C80](v3, v29[2]);
      }

      else
      {
        if (v3 >= *(v6 + 16))
        {
          goto LABEL_20;
        }

        v10 = *(v7 + 8 * v3);
      }

      v11 = v10;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v13 = [v10 reason];
      if (*(v4 + 16) && (v1 = v13, v14 = *(v4 + 40), v15 = sub_22B7DC658(), v16 = -1 << *(v4 + 32), v17 = v15 & ~v16, ((*(v8 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
      {
        v18 = ~v16;
        while (*(*(v4 + 48) + 8 * v17) != v1)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v8 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
LABEL_4:
        sub_22B7DC358();
        v9 = *(v30 + 16);
        sub_22B7DC398();
        sub_22B7DC3A8();
        v1 = &v30;
        sub_22B7DC368();
      }

      if (v3 == v0)
      {
        v0 = v29;
        v19 = v30;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_23:
  v20 = v0[6];

  if (v19 >> 62)
  {
LABEL_39:
    v21 = sub_22B7DC1C8();
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = 0;
  do
  {
    v23 = v22;
    if (v21 == v22)
    {
      break;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x231895C80](v22, v19);
    }

    else
    {
      if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v24 = *(v19 + 8 * v22 + 32);
    }

    v25 = v24;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v26 = [v24 isEmpty];

    v22 = v23 + 1;
  }

  while ((v26 & 1) != 0);

  v27 = v0[1];

  return v27(v21 != v23);
}

uint64_t sub_22B7392B8(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_22B7DB368();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B739378, v1, 0);
}

uint64_t sub_22B7393A0()
{
  v1 = v0[10];
  v2 = v0[7];
  (*(v0[9] + 104))(v1, *MEMORY[0x277D851B8], v0[8]);

  v3 = swift_task_alloc();
  v0[12] = v3;
  v3[2] = v1;
  v3[3] = sub_22B7408BC;
  v3[4] = v2;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  v6 = sub_22B6F0AD4(&qword_27D8CE658, &qword_22B7FA8F0);
  *v5 = v0;
  v5[1] = sub_22B7394E8;

  return MEMORY[0x2822007B8](v0 + 4, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B7408C4, v3, v6);
}

uint64_t sub_22B7394E8()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v6 = *(*v0 + 64);
  v7 = *(*v0 + 56);
  v8 = *v0;

  v1[14] = v1[4];
  (*(v5 + 8))(v4, v6);
  v9 = swift_task_alloc();
  v1[15] = v9;
  *v9 = v8;
  v9[1] = sub_22B7396E4;
  v10 = v1[7];
  v11 = v1[6];

  return sub_22B738C6C(v11);
}

uint64_t sub_22B7396E4(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 24) = a1;
  *(v3 + 16) = v1;
  v4 = *(v2 + 120);
  v5 = *(v2 + 56);
  v7 = *v1;

  return MEMORY[0x2822009F8](sub_22B7397FC, v5, 0);
}

uint64_t sub_22B7397FC()
{
  v1 = *(v0 + 88);
  if (v1 >= 4)
  {
    type metadata accessor for IMPersistentTaskLane(0);
    *(v0 + 40) = v1;

    return sub_22B7DC548();
  }

  else
  {
    result = *(&off_278708A28 + v1);
    *(v0 + 128) = result;
    v3 = *(result + 16);
    *(v0 + 136) = v3;
    if (v3)
    {
      v4 = 0;
      while (1)
      {
        *(v0 + 144) = v4;
        v5 = *(v0 + 128);
        if (v4 >= *(v5 + 16))
        {
          __break(1u);
          return result;
        }

        v6 = *(v0 + 56);
        v7 = *(v5 + 8 * v4 + 32);
        result = swift_unknownObjectWeakLoadStrong();
        *(v0 + 152) = result;
        if (result)
        {
          break;
        }

        v4 = *(v0 + 144) + 1;
        if (v4 == *(v0 + 136))
        {
          v8 = *(v0 + 128);
          goto LABEL_8;
        }
      }

      v14 = *(v0 + 56);
      v15 = *(v14 + 184);
      ObjectType = swift_getObjectType();
      v17 = *(v14 + 120);
      v18 = *(v15 + 80);
      v35 = (v18 + *v18);
      v19 = v18[1];
      v20 = swift_task_alloc();
      *(v0 + 160) = v20;
      *v20 = v0;
      v20[1] = sub_22B739B34;

      return v35(v17, v7, ObjectType, v15);
    }

    else
    {
LABEL_8:
      v9 = *(v0 + 56);

      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v0 + 56);
        v11 = *(v10 + 184);
        v12 = swift_getObjectType();
        LOBYTE(v10) = (*(v11 + 24))(v10, v12, v11);
        swift_unknownObjectRelease();
        if (v10)
        {
          v13 = 0x10000;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v21 = *(v0 + 56);
      v22 = *(v21 + 200);
      v23 = *(v21 + 216);
      if (*(v0 + 88) == 3)
      {
        v24 = 0;
      }

      else
      {
        sub_22B7DAE68();
        sub_22B7DAE58();
        v25 = sub_22B7DAE38();

        if (v25)
        {
          v24 = 0x10000000000;
        }

        else
        {
          v24 = 0;
        }
      }

      v26 = *(v0 + 24);
      v27 = *(v0 + 80);
      v28 = *(v0 + 48);
      v29 = v22 != 0;

      v30 = 0x100000000;
      if (!v23)
      {
        v30 = 0;
      }

      v31 = *(v0 + 8);
      v32 = *(v0 + 112);
      v33 = *(v0 + 88);
      v34 = *(v0 + 48);

      return v31(v33, v34, v32, v13 | (v29 << 24) | v30 | v24 | v26);
    }
  }
}

uint64_t sub_22B739B34(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_22B739C4C, v3, 0);
}

uint64_t sub_22B739C4C()
{
  v1 = *(v0 + 168);
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_38:
    v3 = sub_22B7DC1C8();
    v4 = *(v0 + 168);
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 168);
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  while (v3 != v5)
  {
    if (v6)
    {
      v8 = MEMORY[0x231895C80](v5, *(v0 + 168));
    }

    else
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_36;
      }

      v8 = *(v7 + 8 * v5);
    }

    v1 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v9 = [v8 isEmpty];

    ++v5;
    if ((v9 & 1) == 0)
    {
      v25 = *(v0 + 168);
      v26 = *(v0 + 152);

      swift_unknownObjectRelease();
      v27 = 256;
LABEL_20:
      v28 = *(v0 + 128);
      v29 = *(v0 + 56);

      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v0 + 56);
        v31 = *(v30 + 184);
        ObjectType = swift_getObjectType();
        LOBYTE(v30) = (*(v31 + 24))(v30, ObjectType, v31);
        swift_unknownObjectRelease();
        if (v30)
        {
          v33 = 0x10000;
        }

        else
        {
          v33 = 0;
        }
      }

      else
      {
        v33 = 0;
      }

      v34 = *(v0 + 56);
      v35 = *(v34 + 200);
      v36 = *(v34 + 216);
      if (*(v0 + 88) == 3)
      {
        v37 = 0;
      }

      else
      {
        sub_22B7DAE68();
        sub_22B7DAE58();
        v38 = sub_22B7DAE38();

        if (v38)
        {
          v37 = 0x10000000000;
        }

        else
        {
          v37 = 0;
        }
      }

      v39 = *(v0 + 24);
      v40 = *(v0 + 80);
      v41 = *(v0 + 48);
      v42 = v35 != 0;

      v43 = 0x100000000;
      if (!v36)
      {
        v43 = 0;
      }

      v44 = *(v0 + 8);
      v45 = *(v0 + 112);
      v46 = *(v0 + 88);
      v47 = *(v0 + 48);

      return v44(v46, v47, v45, v33 | v27 | (v42 << 24) | v43 | v37 | v39);
    }
  }

  v10 = *(v0 + 168);
  v11 = *(v0 + 152);

  swift_unknownObjectRelease();
  do
  {
    v12 = *(v0 + 144) + 1;
    if (v12 == *(v0 + 136))
    {
      v27 = 0;
      goto LABEL_20;
    }

    *(v0 + 144) = v12;
    v13 = *(v0 + 128);
    if (v12 >= *(v13 + 16))
    {
      goto LABEL_37;
    }

    v14 = *(v0 + 56);
    v15 = *(v13 + 8 * v12 + 32);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 152) = Strong;
  }

  while (!Strong);
  v17 = *(v0 + 56);
  v18 = *(v17 + 184);
  v19 = swift_getObjectType();
  v20 = *(v17 + 120);
  v21 = *(v18 + 80);
  v48 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  *(v0 + 160) = v23;
  *v23 = v0;
  v23[1] = sub_22B739B34;

  return v48(v20, v15, v19, v18);
}

uint64_t sub_22B739FF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  if (!a3)
  {
    return v5;
  }

  if ((a4 & 0x10000010100) == 0)
  {
    if ((a4 & 0x100000000) != 0)
    {
      *(v4 + 216) = 0;
      v15 = a3;
      v8 = sub_22B71C1DC(0, 1, 1, MEMORY[0x277D84F90]);
      v17 = *(v8 + 2);
      v16 = *(v8 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v30 = sub_22B71C1DC((v16 > 1), v17 + 1, 1, v8);
        v18 = v17 + 1;
        v8 = v30;
      }

      *(v8 + 2) = v18;
      v12 = &v8[32 * v17];
      *(v12 + 4) = 0x6E65707375736E75;
      *(v12 + 5) = 0xE900000000000064;
      v13 = sub_22B7388A0;
      goto LABEL_16;
    }

    v14 = a3;
LABEL_12:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v7 = a3;
  if ((a4 & 0x101000000) != 0x1000000)
  {
    goto LABEL_12;
  }

  *(v4 + 216) = 1;
  v8 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_22B71C1DC(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    v29 = sub_22B71C1DC((v9 > 1), v10 + 1, 1, v8);
    v11 = v10 + 1;
    v8 = v29;
  }

  *(v8 + 2) = v11;
  v12 = &v8[32 * v10];
  *(v12 + 4) = 0xD000000000000014;
  *(v12 + 5) = 0x800000022B80F5F0;
  v13 = sub_22B738888;
LABEL_16:
  *(v12 + 6) = v13;
  *(v12 + 7) = 0;
LABEL_17:
  sub_22B7DBF98();
  v19 = *(v4 + 120);
  v20 = sub_22B7DBF78();
  v21 = [v5 backlogged];
  if (v20)
  {
    if ((v21 & 1) == 0)
    {
      v22 = sub_22B7388F0;
      v23 = 0xE700000000000000;
      v24 = 0x676F6C6B636162;
LABEL_22:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_22B71C1DC(0, *(v8 + 2) + 1, 1, v8);
      }

      v26 = *(v8 + 2);
      v25 = *(v8 + 3);
      if (v26 >= v25 >> 1)
      {
        v8 = sub_22B71C1DC((v25 > 1), v26 + 1, 1, v8);
      }

      *(v8 + 2) = v26 + 1;
      v27 = &v8[32 * v26];
      *(v27 + 4) = v24;
      *(v27 + 5) = v23;
      *(v27 + 6) = v22;
      *(v27 + 7) = 0;
    }
  }

  else if (v21)
  {
    v22 = sub_22B738900;
    v23 = 0xE900000000000067;
    v24 = 0x6F6C6B6361626E75;
    goto LABEL_22;
  }

  if (!*(v8 + 2))
  {

    return 1;
  }

  return v5;
}

uint64_t sub_22B73A300(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_22B73A398;

  return sub_22B7392B8(a1);
}

uint64_t sub_22B73A398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 64);
  v7 = *(*v4 + 56);
  v9 = *v4;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  *(v5 + 88) = a3;
  *(v5 + 96) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 44) = WORD2(a4);
  *(v5 + 40) = a4;

  return MEMORY[0x2822009F8](sub_22B73A4C8, v7, 0);
}

uint64_t sub_22B73A4C8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  if (v2)
  {
    if ((v1 & 1) == 0 && (*(v0 + 42) & 1) == 0 && (*(v0 + 45) & 1) == 0)
    {
      sub_22B74088C(v0 + 16);
      v3 = 0;
      v4 = 0;
      v5 = 4;
      goto LABEL_36;
    }
  }

  else if ((v1 & 1) != 0 && (*(v0 + 41) & 1) == 0 && (*(v0 + 45) & 1) == 0)
  {
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    sub_22B7DBF98();
    v19 = *(v17 + 120);
    if (sub_22B7DBF78())
    {
      v3 = sub_22B71C1DC(0, 1, 1, MEMORY[0x277D84F90]);
      v21 = *(v3 + 16);
      v20 = *(v3 + 24);
      if (v21 >= v20 >> 1)
      {
        v3 = sub_22B71C1DC((v20 > 1), v21 + 1, 1, v3);
      }

      sub_22B74088C(v0 + 16);
      *(v3 + 16) = v21 + 1;
      v22 = (v3 + 32 * v21);
      v22[4] = 0x676F6C6B636162;
      v22[5] = 0xE700000000000000;
      v22[6] = sub_22B7388F0;
      v22[7] = 0;
    }

    else
    {
      sub_22B74088C(v0 + 16);
      v3 = MEMORY[0x277D84F90];
    }

    v4 = 0;
    v5 = 0;
    goto LABEL_36;
  }

  v6 = *(v0 + 44);
  if ((v6 & 1) != 0 || *(v0 + 43) != 1)
  {
    goto LABEL_18;
  }

  if (*(v0 + 42))
  {
    sub_22B74088C(v0 + 16);
    v4 = 0;
    v5 = 2;
    v3 = 1;
    goto LABEL_36;
  }

  if (*(v0 + 41) == 1)
  {
    sub_22B74088C(v0 + 16);
    v4 = 0;
    v3 = 2;
    v5 = 2;
    goto LABEL_36;
  }

  if (*(v0 + 45) == 1)
  {
    sub_22B74088C(v0 + 16);
    v4 = 0;
    v5 = 2;
    v3 = 3;
  }

  else
  {
LABEL_18:
    if (((v2 != 0) & v1) == 1 && (*(v0 + 43) & 1) == 0)
    {
      v7 = *(v0 + 56);
      v8 = 257;
      if (!*(v0 + 41))
      {
        v8 = 1;
      }

      v9 = 0x10000;
      if (!*(v0 + 42))
      {
        v9 = 0;
      }

      v10 = v6 == 0;
      v11 = 0x100000000;
      if (v10)
      {
        v11 = 0;
      }

      v12 = 0x10000000000;
      if (!*(v0 + 45))
      {
        v12 = 0;
      }

      v3 = sub_22B739FF8(*(v0 + 72), *(v0 + 80), v2, v8 | v11 | v9 | v12);
      v14 = v13;
      v16 = v15;
      sub_22B74088C(v0 + 16);
      v5 = v16;
      v4 = v14;
    }

    else
    {
      v3 = v2 != 0;
      sub_22B74088C(v0 + 16);
      v4 = 0;
      v5 = 3;
    }
  }

LABEL_36:
  v23 = *(v0 + 8);

  return v23(v3, v4, v5);
}

void sub_22B73A768(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v6 = sub_22B7DB2B8();
  sub_22B4CFA74(v6, qword_281422680);

  v7 = sub_22B7DB298();
  v8 = sub_22B7DBC88();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_22B4CFAAC(a1[31], a1[32], &v15);
    _os_log_impl(&dword_22B4CC000, v7, v8, "[%{public}s] Updating task request", v9, 0xCu);
    sub_22B4CFB78(v10);
    MEMORY[0x231898D60](v10, -1, -1);
    MEMORY[0x231898D60](v9, -1, -1);
  }

  v11 = a1[20];
  v12 = a1[21];
  sub_22B4D2BCC(a1 + 17, v11);
  (*(v12 + 40))(a2, v11, v12);
  v13 = a1[16];
  a1[16] = a2;
  v14 = a2;

  *a3 = 1;
}

uint64_t sub_22B73AA4C(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B73AADC, v1, 0);
}

uint64_t sub_22B73AADC()
{
  v24 = v0;
  v23[1] = *MEMORY[0x277D85DE8];
  v1 = v0[10];
  v2 = *(v1 + 200);
  v0[11] = v2;
  if (v2 && (v3 = *(v1 + 192), (v0[12] = v3) != 0) && ((v4 = v0[9]) != 0 ? (v5 = v3 == v4) : (v5 = 1), v5))
  {
    v6 = qword_28141F398;

    v7 = v3;
    if (v6 != -1)
    {
      swift_once();
      v21 = v0[10];
    }

    v8 = sub_22B7DB2B8();
    v0[13] = sub_22B4CFA74(v8, qword_281422680);

    v9 = sub_22B7DB298();
    v10 = sub_22B7DBCB8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[10];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_22B4CFAAC(*(v11 + 248), *(v11 + 256), v23);
      _os_log_impl(&dword_22B4CC000, v9, v10, "[%{public}s] Cancelling task", v12, 0xCu);
      sub_22B4CFB78(v13);
      MEMORY[0x231898D60](v13, -1, -1);
      MEMORY[0x231898D60](v12, -1, -1);
    }

    v14 = MEMORY[0x277D84A98];
    v15 = MEMORY[0x277D84AC0];
    sub_22B7DBA88();
    v16 = *(MEMORY[0x277D857D0] + 4);
    v17 = swift_task_alloc();
    v0[14] = v17;
    *v17 = v0;
    v17[1] = sub_22B73AD94;
    v18 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200440](v0 + 2, v2, &_s11BatchResultVN, v14, v15);
  }

  else
  {
    v19 = v0[1];
    v20 = *MEMORY[0x277D85DE8];

    return v19();
  }
}

uint64_t sub_22B73AD94()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B73AED0, v2, 0);
}

uint64_t sub_22B73AED0()
{
  v18 = v0;
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = v0[13];
  v2 = v0[10];

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17[0] = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_22B4CFAAC(*(v5 + 248), *(v5 + 256), v17);
    _os_log_impl(&dword_22B4CC000, v3, v4, "[%{public}s] Finished cancelling task", v6, 0xCu);
    sub_22B4CFB78(v7);
    MEMORY[0x231898D60](v7, -1, -1);
    MEMORY[0x231898D60](v6, -1, -1);
  }

  v8 = v0[10];
  v9 = v0[11];
  v10 = *(v8 + 200);
  *(v8 + 200) = 0;

  v11 = *(MEMORY[0x277D857D0] + 4);
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_22B73B09C;
  v13 = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277D84A98];
  v15 = MEMORY[0x277D84AC0];

  return MEMORY[0x282200440](v0 + 5, v9, &_s11BatchResultVN, v14, v15);
}

uint64_t sub_22B73B09C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B73B1D8, v2, 0);
}

uint64_t sub_22B73B1D8(uint64_t a1)
{
  v43 = v1;
  v42[1] = *MEMORY[0x277D85DE8];
  if (*(v1 + 56))
  {
    v2 = *MEMORY[0x277D85DE8];
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];

    return MEMORY[0x2821FECA8](a1, v3, v4);
  }

  if (*(v1 + 40) == 3)
  {
    v5 = *(v1 + 104);
    v6 = *(v1 + 96);
    v7 = sub_22B7DB298();
    v8 = sub_22B7DBC78();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v1 + 96);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v42[0] = v11;
      *v10 = 136446210;
      v12 = [v9 identifier];
      v13 = sub_22B7DB6A8();
      v15 = v14;

      v16 = sub_22B4CFAAC(v13, v15, v42);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_22B4CC000, v7, v8, "[%{public}s] setting expired with retry after 300s", v10, 0xCu);
      sub_22B4CFB78(v11);
      MEMORY[0x231898D60](v11, -1, -1);
      MEMORY[0x231898D60](v10, -1, -1);
    }

    v17 = *(v1 + 96);
    *(v1 + 64) = 0;
    v18 = [v17 setTaskExpiredWithRetryAfter:v1 + 64 error:300.0];
    v19 = *(v1 + 64);
    if (v18)
    {
      v20 = *(v1 + 88);
      v21 = *(v1 + 96);
      v22 = v19;

LABEL_14:

      goto LABEL_15;
    }

    v24 = *(v1 + 104);
    v25 = *(v1 + 80);
    v26 = v19;
    v27 = sub_22B7DA6F8();

    swift_willThrow();

    v28 = v27;
    v21 = sub_22B7DB298();
    v29 = sub_22B7DBCA8();

    v30 = os_log_type_enabled(v21, v29);
    v31 = *(v1 + 88);
    v32 = *(v1 + 96);
    if (!v30)
    {

      goto LABEL_14;
    }

    v33 = *(v1 + 80);
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42[0] = v36;
    *v34 = 136446466;
    *(v34 + 4) = sub_22B4CFAAC(*(v33 + 248), *(v33 + 256), v42);
    *(v34 + 12) = 2112;
    v37 = v27;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 14) = v38;
    *v35 = v38;
    _os_log_impl(&dword_22B4CC000, v21, v29, "[%{public}s] Failed to expire: %@", v34, 0x16u);
    sub_22B708A24(v35);
    MEMORY[0x231898D60](v35, -1, -1);
    sub_22B4CFB78(v36);
    MEMORY[0x231898D60](v36, -1, -1);
    MEMORY[0x231898D60](v34, -1, -1);
  }

  else
  {
    v23 = *(v1 + 88);
  }

LABEL_15:
  v39 = *(v1 + 8);
  v40 = *MEMORY[0x277D85DE8];

  return v39();
}

uint64_t sub_22B73B5B4()
{
  v1[2] = v0;
  v2 = sub_22B7DB368();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_22B7DB2B8();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v1[8] = *(v6 + 64);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B73B6D8, v0, 0);
}

uint64_t sub_22B73B6D8()
{
  v1 = v0[2];
  v2 = v1[16];
  v0[10] = v2;
  v18 = v1[31];
  v19 = v1[32];
  v3 = qword_28141F398;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
    v1 = v0[2];
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[4];
  v17 = v0[5];
  v10 = v0[3];
  v11 = sub_22B4CFA74(v7, qword_281422680);
  v0[11] = v11;
  (*(v8 + 16))(v5, v11, v7);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v0[12] = v14;
  *(v14 + 16) = v1;
  (*(v8 + 32))(v14 + v12, v5, v7);
  v15 = (v14 + v13);
  *v15 = v18;
  v15[1] = v19;
  (*(v9 + 104))(v17, *MEMORY[0x277D851B8], v10);

  return MEMORY[0x2822009F8](sub_22B73B884, 0, 0);
}

uint64_t sub_22B73B884()
{
  v1 = v0[12];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[13] = v3;
  v3[2] = v2;
  v3[3] = sub_22B73FA4C;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_22B73B994;
  v6 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 15, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B73FAF0, v3, v6);
}

uint64_t sub_22B73B994()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v7 = *(*v0 + 24);
  v8 = *(*v0 + 16);
  v10 = *v0;

  *(v1 + 121) = *(v1 + 120);
  (*(v6 + 8))(v5, v7);

  return MEMORY[0x2822009F8](sub_22B73BB50, v8, 0);
}

uint64_t sub_22B73BB50()
{
  v19 = v0;
  if (*(v0 + 121))
  {
  }

  else
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 80);
    v3 = sub_22B7DB298();
    v4 = sub_22B7DBC98();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 80);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446210;
      v9 = [v6 identifier];
      v10 = sub_22B7DB6A8();
      v12 = v11;

      v13 = sub_22B4CFAAC(v10, v12, &v18);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_22B4CC000, v3, v4, "[%{public}s] failed to register with DAS", v7, 0xCu);
      sub_22B4CFB78(v8);
      MEMORY[0x231898D60](v8, -1, -1);
      MEMORY[0x231898D60](v7, -1, -1);
    }

    else
    {
    }
  }

  v14 = *(v0 + 72);
  v15 = *(v0 + 40);

  v16 = *(v0 + 8);

  return v16();
}

void sub_22B73BD00(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v38 = a3;
  v39 = a4;
  v37 = a2;
  v40 = a5;
  v6 = sub_22B7DB2B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = sub_22B7DB368();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v17 = *(a1 + 160);
  v35 = *(a1 + 168);
  v36 = v17;
  v34 = sub_22B4D2BCC((a1 + 136), v17);
  v18 = [*(a1 + 128) identifier];
  v32 = sub_22B7DB6A8();
  v33 = v19;

  v20 = *(a1 + 112);
  if (v20 > 3)
  {
    v21 = MEMORY[0x277D851A8];
  }

  else
  {
    v21 = qword_278708A48[v20];
  }

  (*(v10 + 104))(v14, *v21, v9);
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  (*(v10 + 32))(v16, v14, v9);
  v22 = sub_22B7DBD98();
  (*(v10 + 8))(v16, v9);
  v23 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v6);
  v24 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  (*(v7 + 32))(v25 + v24, &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v26 = (v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27 = v39;
  *v26 = v38;
  v26[1] = v27;
  v28 = v35;
  v29 = *(v35 + 32);

  v30 = v29(v32, v33, v22, sub_22B73FF74, v25, v36, v28);

  *v40 = v30 & 1;
}

void sub_22B73C06C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_22B7DB2B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  v52 = a3;
  v13 = sub_22B7DB298();
  if (Strong)
  {
    v48 = a1;
    v49 = v9;
    v14 = sub_22B7DBCB8();

    v15 = os_log_type_enabled(v13, v14);
    v47 = a5;
    v51 = a4;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v17 = v10;
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v16 = 136446210;
      *(v16 + 4) = sub_22B4CFAAC(a4, a5, aBlock);
      _os_log_impl(&dword_22B4CC000, v13, v14, "[%{public}s] DAS resumed", v16, 0xCu);
      sub_22B4CFB78(v18);
      v19 = v18;
      v10 = v17;
      MEMORY[0x231898D60](v19, -1, -1);
      MEMORY[0x231898D60](v16, -1, -1);
    }

    v20 = swift_allocObject();
    v45 = Strong;
    swift_weakInit();
    v46 = *(v10 + 16);
    v21 = v50;
    v22 = v49;
    v46(v50, v52);
    v23 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = v23;
    v44 = v24;
    v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
    v26 = v10;
    v27 = swift_allocObject();
    *(v27 + 16) = v20;
    v42 = *(v26 + 32);
    v28 = v27 + v23;
    v29 = v22;
    v42(v28, v21, v22);
    v30 = (v27 + v24);
    v31 = v47;
    v32 = v48;
    *v30 = v51;
    v30[1] = v31;
    *(v27 + v25) = v32;
    aBlock[4] = sub_22B740018;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B4D22C0;
    aBlock[3] = &unk_283F1D378;
    v33 = _Block_copy(aBlock);

    v34 = v32;

    [v34 setExpirationHandler_];
    _Block_release(v33);
    (v46)(v21, v52, v29);
    v35 = swift_allocObject();
    *(v35 + 16) = v45;
    v42(v35 + v43, v21, v29);
    v36 = (v35 + v44);
    *v36 = v51;
    v36[1] = v31;
    *(v35 + v25) = v34;

    v37 = v34;

    sub_22B73FB30(&unk_22B7FA888, v35, &unk_283F1D3D8, &unk_22B7FA8A0, sub_22B77E3D4);
  }

  else
  {
    v38 = sub_22B7DBC98();

    if (os_log_type_enabled(v13, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_22B4CFAAC(a4, a5, aBlock);
      _os_log_impl(&dword_22B4CC000, v13, v38, "[%{public}s] DAS resumed but executor free'd", v39, 0xCu);
      sub_22B4CFB78(v40);
      MEMORY[0x231898D60](v40, -1, -1);
      MEMORY[0x231898D60](v39, -1, -1);
    }
  }
}

void sub_22B73C550(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  v9 = sub_22B7DB298();
  if (Strong)
  {
    v10 = sub_22B7DBCB8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_22B4CFAAC(a3, a4, &v18);
      _os_log_impl(&dword_22B4CC000, v9, v10, "[%{public}s] DAS expired", v11, 0xCu);
      sub_22B4CFB78(v12);
      MEMORY[0x231898D60](v12, -1, -1);
      MEMORY[0x231898D60](v11, -1, -1);
    }

    v13 = swift_allocObject();
    *(v13 + 16) = Strong;
    *(v13 + 24) = a5;

    v14 = a5;
    sub_22B73FB30(&unk_22B7FA8C0, v13, &unk_283F1D3D8, &unk_22B7FA8A0, sub_22B77E3D4);
  }

  else
  {
    v15 = sub_22B7DBC98();

    if (os_log_type_enabled(v9, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_22B4CFAAC(a3, a4, &v18);
      _os_log_impl(&dword_22B4CC000, v9, v15, "[%{public}s] DAS expired task but executor was free'd", v16, 0xCu);
      sub_22B4CFB78(v17);
      MEMORY[0x231898D60](v17, -1, -1);
      MEMORY[0x231898D60](v16, -1, -1);
    }
  }
}

uint64_t sub_22B73C7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  if (qword_281420630 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v3[7] = qword_281422748;

  return MEMORY[0x2822009F8](sub_22B73C878, a2, 0);
}

uint64_t sub_22B73C878()
{
  v1 = v0[6];
  v0[8] = *(v0[5] + 200);

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_22B73C928;
  v3 = v0[5];

  return sub_22B73AA4C(v1);
}

uint64_t sub_22B73C928()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B73CA38, v2, 0);
}

uint64_t sub_22B73CA38()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[10] = swift_unknownObjectWeakLoadStrong();
  v0[11] = *(v2 + 184);

  return MEMORY[0x2822009F8](sub_22B73CAB4, v1, 0);
}

uint64_t sub_22B73CAB4()
{
  v1 = v0[8];
  if (v0[10])
  {
    if (v1)
    {
      v2 = *(MEMORY[0x277D857D0] + 4);
      v3 = v0[8];

      v4 = swift_task_alloc();
      v0[12] = v4;
      *v4 = v0;
      v4[1] = sub_22B73CCCC;
      v5 = MEMORY[0x277D84A98];
      v6 = MEMORY[0x277D84AC0];

      return MEMORY[0x282200440](v0 + 2, v1, &_s11BatchResultVN, v5, v6);
    }

    else
    {
      v18 = v0[11];
      ObjectType = swift_getObjectType();
      v10 = *(v18 + 32);
      v17 = (v10 + *v10);
      v11 = v10[1];
      v12 = swift_task_alloc();
      v0[13] = v12;
      *v12 = v0;
      v12[1] = sub_22B73CF54;
      v14 = v0[10];
      v13 = v0[11];
      v15 = v0[5];

      return (v17)(v15, 0, 0, ObjectType, v13);
    }
  }

  else
  {
    v7 = v0[8];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22B73CCCC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22B73CDF8, v3, 0);
}

uint64_t sub_22B73CDF8(uint64_t a1)
{
  if (*(v1 + 32))
  {
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];

    return MEMORY[0x2821FECA8](a1, v3, v4);
  }

  else
  {
    v5 = *(v1 + 24);
    v6 = *(v1 + 80);
    v16 = *(v1 + 88);
    ObjectType = swift_getObjectType();
    v8 = *(v16 + 32);
    v15 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v1 + 104) = v10;
    *v10 = v1;
    v10[1] = sub_22B73CF54;
    v12 = *(v1 + 80);
    v11 = *(v1 + 88);
    v13 = *(v1 + 40);

    return (v15)(v13, 0, v5, ObjectType, v11);
  }
}

uint64_t sub_22B73CF54()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 56);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22B73D080, v3, 0);
}

uint64_t sub_22B73D080()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B73D0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  if (qword_281420630 != -1)
  {
    v7 = a2;
    swift_once();
    a2 = v7;
  }

  v6[7] = qword_281422748;

  return MEMORY[0x2822009F8](sub_22B73D18C, a2, 0);
}

uint64_t sub_22B73D18C()
{
  v1 = v0[7];
  v0[8] = *(v0[2] + 208);

  return MEMORY[0x2822009F8](sub_22B73D204, v1, 0);
}

uint64_t sub_22B73D204()
{
  v20 = v0;
  if (v0[8])
  {
    v1 = v0[5];
    v2 = v0[3];

    v3 = sub_22B7DB298();
    v4 = sub_22B7DBCB8();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[4];
      v5 = v0[5];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_22B4CFAAC(v6, v5, &v19);
      _os_log_impl(&dword_22B4CC000, v3, v4, "[%{public}s] waiting for run lock", v7, 0xCu);
      sub_22B4CFB78(v8);
      MEMORY[0x231898D60](v8, -1, -1);
      MEMORY[0x231898D60](v7, -1, -1);
    }

    v9 = v0[8];
    v10 = *(MEMORY[0x277D857D0] + 4);
    v11 = swift_task_alloc();
    v0[9] = v11;
    *v11 = v0;
    v11[1] = sub_22B73D42C;
    v12 = MEMORY[0x277D84A98];
    v13 = MEMORY[0x277D84AC0];
    v14 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 11, v9, v14, v12, v13);
  }

  else
  {
    v15 = swift_task_alloc();
    v0[10] = v15;
    *v15 = v0;
    v15[1] = sub_22B73D6D8;
    v16 = v0[6];
    v17 = v0[2];

    return sub_22B72CE34(v16);
  }
}

uint64_t sub_22B73D42C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B73D53C, v2, 0);
}

uint64_t sub_22B73D53C()
{
  v16 = v0;
  v1 = v0[5];
  v2 = v0[3];

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v8 = v0[4];
    v7 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_22B4CFAAC(v8, v7, &v15);
    _os_log_impl(&dword_22B4CC000, v3, v4, "[%{public}s] run lock finished", v9, 0xCu);
    sub_22B4CFB78(v10);
    MEMORY[0x231898D60](v10, -1, -1);
    MEMORY[0x231898D60](v9, -1, -1);
  }

  else
  {
  }

  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_22B73D6D8;
  v12 = v0[6];
  v13 = v0[2];

  return sub_22B72CE34(v12);
}

uint64_t sub_22B73D6D8()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B73D7CC(uint64_t a1)
{
  v2[7] = v1;
  v4 = sub_22B7DB368();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[11] = v7;
  *v7 = v2;
  v7[1] = sub_22B73D8C0;

  return sub_22B73A300(a1);
}

uint64_t sub_22B73D8C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 88);
  v6 = *(*v3 + 56);
  v8 = *v3;
  *(v4 + 96) = a1;
  *(v4 + 104) = a2;
  *(v4 + 283) = a3;

  return MEMORY[0x2822009F8](sub_22B73D9DC, v6, 0);
}

uint64_t sub_22B73D9DC()
{
  v1 = *(v0 + 283);
  v2 = *(v0 + 56);
  v3 = *(v2 + 224);
  *(v0 + 112) = v3;
  v4 = *(v2 + 232);
  *(v0 + 120) = v4;
  v5 = *(v2 + 240);
  *(v0 + 284) = v5;
  *(v2 + 224) = *(v0 + 96);
  *(v2 + 240) = v1;
  if (v1 <= 1)
  {
    if (v1)
    {
      v18 = *(v0 + 104);
      v19 = *(v0 + 96);

      [v19 copy];
      sub_22B7DC118();
      swift_unknownObjectRelease();
      sub_22B4D01A0(0, &qword_28141F090, 0x277CF07C8);
      swift_dynamicCast();
      v20 = *(v0 + 48);
      *(v0 + 160) = v20;
      v21 = *(v18 + 16);
      if (v21)
      {
        v22 = (v18 + 56);
        do
        {
          v23 = *(v22 - 2);
          v24 = *(v22 - 1);
          v25 = *v22;
          v22 += 4;

          v24(v20);

          --v21;
        }

        while (v21);
      }

      v27 = *(v0 + 72);
      v26 = *(v0 + 80);
      v29 = *(v0 + 56);
      v28 = *(v0 + 64);
      v30 = swift_allocObject();
      *(v0 + 176) = v30;
      *(v30 + 16) = v29;
      *(v30 + 24) = v20;
      (*(v27 + 104))(v26, *MEMORY[0x277D851B8], v28);
      v13 = sub_22B73E4A8;

      v31 = v20;
    }

    else
    {
      v6 = *(v0 + 96);
      v7 = *(v0 + 104);
      v9 = *(v0 + 72);
      v8 = *(v0 + 80);
      v11 = *(v0 + 56);
      v10 = *(v0 + 64);
      *(v11 + 216) = 0;
      v12 = swift_allocObject();
      *(v0 + 128) = v12;
      *(v12 + 16) = v11;
      *(v12 + 24) = v6;
      (*(v9 + 104))(v8, *MEMORY[0x277D851B8], v10);
      sub_22B740840(v6, v7, 0);
      sub_22B740840(v6, v7, 0);
      v13 = sub_22B73DE8C;
    }

    return MEMORY[0x2822009F8](v13, 0, 0);
  }

  if (v1 == 2)
  {
    *(*(v0 + 56) + 216) = 1;
    v14 = swift_task_alloc();
    *(v0 + 216) = v14;
    *v14 = v0;
    v15 = sub_22B73EADC;
LABEL_10:
    v14[1] = v15;
    v16 = *(v0 + 56);

    return sub_22B73AA4C(0);
  }

  if (v1 != 3)
  {
    *(*(v0 + 56) + 216) = 0;
    v14 = swift_task_alloc();
    *(v0 + 224) = v14;
    *v14 = v0;
    v15 = sub_22B73EC58;
    goto LABEL_10;
  }

  if (v5 != 255)
  {
    sub_22B740788(v3, v4, v5);
    goto LABEL_25;
  }

  if ((*(v0 + 96) & 1) == 0 || (v32 = *(v0 + 56), Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 264) = Strong) == 0))
  {
LABEL_25:
    v40 = *(v0 + 80);

    v41 = *(v0 + 8);

    return v41();
  }

  v34 = *(*(v0 + 56) + 184);
  ObjectType = swift_getObjectType();
  v36 = *(v34 + 56);
  v42 = (v36 + *v36);
  v37 = v36[1];
  v38 = swift_task_alloc();
  *(v0 + 272) = v38;
  *v38 = v0;
  v38[1] = sub_22B73F360;
  v39 = *(v0 + 56);

  return v42(v39, 1, 1, ObjectType, v34);
}

uint64_t sub_22B73DE8C()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = swift_task_alloc();
  v0[17] = v3;
  v3[2] = v2;
  v3[3] = sub_22B740838;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_22B73DF9C;
  v6 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 282, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B740C2C, v3, v6);
}

uint64_t sub_22B73DF9C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v5 = *(*v0 + 80);
  v6 = *(*v0 + 72);
  v7 = *(*v0 + 64);
  v8 = *(*v0 + 56);
  v10 = *v0;

  *(v1 + 285) = *(v1 + 282);
  (*(v6 + 8))(v5, v7);

  return MEMORY[0x2822009F8](sub_22B73E158, v8, 0);
}

uint64_t sub_22B73E158()
{
  v1 = *(v0 + 56);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 152) = Strong;
  if (Strong)
  {
    v3 = *(*(v0 + 56) + 184);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 56);
    v15 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    *v7 = v0;
    v7[1] = sub_22B73E2FC;
    v8 = *(v0 + 285);
    v9 = *(v0 + 56);

    return (v15)(v9, v8, 0, ObjectType, v3);
  }

  else
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);
    sub_22B740788(*(v0 + 112), *(v0 + 120), *(v0 + 284));
    sub_22B74079C(v11, v12, 0);
    v13 = *(v0 + 80);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_22B73E2FC()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 56);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22B73E428, v3, 0);
}

uint64_t sub_22B73E428()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_22B740788(*(v0 + 112), *(v0 + 120), *(v0 + 284));
  sub_22B74079C(v1, v2, 0);
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B73E4A8()
{
  v1 = v0[22];
  v2 = v0[10];
  v3 = swift_task_alloc();
  v0[23] = v3;
  v3[2] = v2;
  v3[3] = sub_22B740830;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_22B73E5B8;
  v6 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 281, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B740C2C, v3, v6);
}

uint64_t sub_22B73E5B8()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v5 = *(*v0 + 80);
  v6 = *(*v0 + 72);
  v7 = *(*v0 + 64);
  v8 = *(*v0 + 56);
  v10 = *v0;

  *(v1 + 286) = *(v1 + 281);
  (*(v6 + 8))(v5, v7);

  return MEMORY[0x2822009F8](sub_22B73E774, v8, 0);
}

uint64_t sub_22B73E774()
{
  v1 = *(v0 + 56);

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 200) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 104);
    v4 = *(*(v0 + 56) + 184);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 48);
    v16 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 208) = v8;
    *v8 = v0;
    v8[1] = sub_22B73E930;
    v9 = *(v0 + 286);
    v10 = *(v0 + 56);

    return v16(v10, v9, v3, ObjectType, v4);
  }

  else
  {
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    sub_22B740788(*(v0 + 112), *(v0 + 120), *(v0 + 284));
    sub_22B74079C(v12, v13, 1);
    v14 = *(v0 + 80);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_22B73E930()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 56);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22B73EA5C, v3, 0);
}

uint64_t sub_22B73EA5C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_22B740788(*(v0 + 112), *(v0 + 120), *(v0 + 284));
  sub_22B74079C(v1, v2, 1);
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B73EADC()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B73EBEC, v2, 0);
}

uint64_t sub_22B73EBEC()
{
  sub_22B740788(*(v0 + 112), *(v0 + 120), *(v0 + 284));
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B73EC58()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B73ED68, v2, 0);
}

uint64_t sub_22B73ED68()
{
  v1 = v0[7];
  (*(v0[9] + 104))(v0[10], *MEMORY[0x277D851B8], v0[8]);

  return MEMORY[0x2822009F8](sub_22B73EDF8, 0, 0);
}

uint64_t sub_22B73EDF8()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = swift_task_alloc();
  v0[29] = v3;
  v3[2] = v1;
  v3[3] = sub_22B7407E8;
  v3[4] = v2;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_22B73EF08;
  v6 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 35, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B740C2C, v3, v6);
}

uint64_t sub_22B73EF08()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 232);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v6 = *(*v0 + 64);
  v7 = *(*v0 + 56);
  v9 = *v0;

  *(v1 + 287) = *(v1 + 280);
  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_22B73F0A8, v7, 0);
}

uint64_t sub_22B73F0A8()
{
  v1 = *(v0 + 56);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 248) = Strong;
  if (Strong)
  {
    v3 = *(*(v0 + 56) + 184);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 40);
    v13 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 256) = v7;
    *v7 = v0;
    v7[1] = sub_22B73F234;
    v8 = *(v0 + 287);
    v9 = *(v0 + 56);

    return v13(v9, v8, ObjectType, v3);
  }

  else
  {
    sub_22B740788(*(v0 + 112), *(v0 + 120), *(v0 + 284));
    v11 = *(v0 + 80);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_22B73F234()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 56);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22B740C30, v3, 0);
}

uint64_t sub_22B73F360()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 80);

  v5 = *(v7 + 8);

  return v5();
}

void sub_22B73F494(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v6 = sub_22B7DB2B8();
  sub_22B4CFA74(v6, qword_281422680);

  v7 = sub_22B7DB298();
  v8 = sub_22B7DBC88();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_22B4CFAAC(*(a1 + 248), *(a1 + 256), &v21);
    _os_log_impl(&dword_22B4CC000, v7, v8, "[%{public}s] Submitting task request", v9, 0xCu);
    sub_22B4CFB78(v10);
    MEMORY[0x231898D60](v10, -1, -1);
    MEMORY[0x231898D60](v9, -1, -1);
  }

  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (a2 + 56);
    do
    {
      v13 = *(v12 - 2);
      v14 = *(v12 - 1);
      v15 = *v12;
      v12 += 4;
      v16 = *(a1 + 128);

      v17 = v16;
      v14();

      --v11;
    }

    while (v11);
  }

  v18 = *(a1 + 168);
  sub_22B4D2BCC((a1 + 136), *(a1 + 160));
  v19 = *(v18 + 16);
  v20 = *(a1 + 128);
  v19();

  *a3 = 1;
}

uint64_t sub_22B73F7D0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_281422680);

  v5 = sub_22B7DB298();
  v6 = sub_22B7DBC88();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_22B4CFAAC(a1[31], a1[32], &v12);
    _os_log_impl(&dword_22B4CC000, v5, v6, "[%{public}s] Cancelling task request", v7, 0xCu);
    sub_22B4CFB78(v8);
    MEMORY[0x231898D60](v8, -1, -1);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  v9 = a1[20];
  v10 = a1[21];
  sub_22B4D2BCC(a1 + 17, v9);
  result = (*(v10 + 24))(a1[31], a1[32], v9, v10);
  *a2 = 1;
  return result;
}

void sub_22B73FA4C(_BYTE *a1@<X8>)
{
  v3 = *(sub_22B7DB2B8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  sub_22B73BD00(v5, v1 + v4, v7, v8, a1);
}

uint64_t sub_22B73FB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, char *, uint64_t, void *))
{
  v27 = a5;
  v9 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_22B7DBA58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  if (*(v5 + 112) == 3)
  {
    sub_22B7DBA38();
  }

  else
  {
    sub_22B7DBA28();
  }

  (*(v14 + 32))(v20, v18, v13);
  (*(v14 + 16))(v12, v20, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  if (qword_281420630 != -1)
  {
    swift_once();
  }

  v21 = qword_281422748;
  v22 = sub_22B7402E8();
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = a1;
  v23[5] = a2;

  v24 = v27(0, 0, v12, a4, v23);
  (*(v14 + 8))(v20, v13);
  return v24;
}

uint64_t sub_22B73FDA0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_22B6F0D94;

  return v9(a1);
}

uint64_t sub_22B73FE98()
{
  v1 = sub_22B7DB2B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_22B73FF74(void *a1)
{
  v3 = *(sub_22B7DB2B8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  sub_22B73C06C(a1, v5, v1 + v4, v7, v8);
}

void sub_22B740018()
{
  v1 = *(sub_22B7DB2B8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = v6[1];

  sub_22B73C550(v5, v0 + v2, v8, v9, v7);
}

uint64_t sub_22B7400B8()
{
  v1 = sub_22B7DB2B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_22B7401AC(uint64_t a1)
{
  v4 = *(sub_22B7DB2B8() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = (v1 + v6);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_22B6F0D94;

  return sub_22B73D0E0(a1, v8, v1 + v5, v10, v11, v12);
}

unint64_t sub_22B7402E8()
{
  result = qword_281420620;
  if (!qword_281420620)
  {
    type metadata accessor for BackgroundProcessingActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281420620);
  }

  return result;
}

uint64_t sub_22B740340(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B6F12E8;

  return sub_22B73FDA0(a1, v4, v5, v7);
}

uint64_t sub_22B74040C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 32) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 40) = v6;
  *v6 = v4;
  v6[1] = sub_22B740500;

  return v8(v4 + 16);
}

uint64_t sub_22B740500()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22B740610(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B6F12E8;

  return sub_22B74040C(a1, v4, v5, v7);
}

uint64_t sub_22B7406DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F12E8;

  return sub_22B73C7D4(a1, v5, v4);
}

void *sub_22B740788(void *result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22B74079C(result, a2, a3);
  }

  return result;
}

void *sub_22B74079C(void *result, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_22B7407F0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_22B740840(void *result, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

    v4 = result;
  }
}

__n128 sub_22B7408D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t sub_22B7408E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 30))
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

uint64_t sub_22B74092C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 30) = 1;
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

    *(result + 30) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s16SuspensionReasonOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16SuspensionReasonOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_22B740AE4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B740AF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22B740B38(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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