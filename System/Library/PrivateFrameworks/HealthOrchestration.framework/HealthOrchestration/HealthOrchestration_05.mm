uint64_t RequestedWorkExecutor.Planner.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22883BBA4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 32));
  sub_22883B7FC((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 32));
  return v3;
}

void sub_22883BBF8()
{
  if (!qword_27D852498)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_27D852498);
    }
  }
}

uint64_t sub_22883BC90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t _s19HealthOrchestration21RequestedWorkExecutorC7PlannerC13fetchCriteria10completionyySayAA08AnchoreddH0VGc_tF_0(void (*a1)(uint64_t))
{
  sub_22883BEF4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2288817D0;
  sub_22883BF44();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2288817D0;
  *(v3 + 56) = &type metadata for IdentityConfiguration;
  *(v3 + 64) = sub_228806834();
  v4 = swift_allocObject();
  *(v3 + 32) = v4;
  strcpy((v4 + 16), "RequestedWork");
  *(v4 + 30) = -4864;
  type metadata accessor for WorkCriteria();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v5 = swift_allocObject();
  strcpy((v5 + 16), "requested-work");
  *(v5 + 31) = -18;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = v3;
  *(v2 + 32) = v5;
  *(v2 + 40) = 0;
  a1(v2);
}

unint64_t sub_22883BE18()
{
  result = qword_27D8524A0;
  if (!qword_27D8524A0)
  {
    type metadata accessor for RequestedWorkExecutor.Planner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8524A0);
  }

  return result;
}

void sub_22883BEF4()
{
  if (!qword_27D8524A8)
  {
    v0 = sub_22887FBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8524A8);
    }
  }
}

void sub_22883BF44()
{
  if (!qword_2813CF270)
  {
    sub_22883BF9C();
    v0 = sub_22887FBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF270);
    }
  }
}

unint64_t sub_22883BF9C()
{
  result = qword_2813CFDF8[0];
  if (!qword_2813CFDF8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2813CFDF8);
  }

  return result;
}

uint64_t sub_22883C044(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v33 = MEMORY[0x277D84F90];
  sub_22881D984(0, v1, 0);
  v2 = v33;
  v4 = v3 + 64;
  result = sub_22887F830();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v26 = v3 + 72;
  v27 = v1;
  v28 = v8;
  v29 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v30 = v7;
    v11 = (*(v3 + 48) + 16 * v6);
    v12 = v11[1];
    v13 = (*(v3 + 56) + 16 * v6);
    v31 = *v13;
    v32 = *v11;
    v14 = v3;
    v15 = v13[1];
    v16 = *(v33 + 16);
    v17 = *(v33 + 24);

    if (v16 >= v17 >> 1)
    {
      result = sub_22881D984((v17 > 1), v16 + 1, 1);
    }

    *(v33 + 16) = v16 + 1;
    v18 = (v33 + 32 * v16);
    v18[4] = v32;
    v18[5] = v12;
    v18[6] = v31;
    v18[7] = v15;
    v9 = 1 << *(v14 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v14;
    v4 = v29;
    v19 = *(v29 + 8 * v10);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v28;
    if (v28 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (v26 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_22883F9F0(v6, v28, 0);
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_22883F9F0(v6, v28, 0);
    }

LABEL_4:
    v7 = v30 + 1;
    v6 = v9;
    if (v30 + 1 == v27)
    {
      return v2;
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

uint64_t sub_22883C2AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v34 = MEMORY[0x277D84F90];
  sub_22881D984(0, v1, 0);
  v2 = v34;
  v4 = a1 + 64;
  result = sub_22887F830();
  v6 = result;
  v7 = 0;
  v33 = *(a1 + 36);
  v29 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v33 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = *v10;
    v12 = v10[1];
    v13 = *(*(a1 + 56) + 8 * v6);

    v14 = sub_22883CB48(v11, v12, v13);
    v31 = v15;
    v32 = v14;
    v17 = v16;
    v30 = v18;

    v20 = *(v34 + 16);
    v19 = *(v34 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_22881D984((v19 > 1), v20 + 1, 1);
    }

    *(v34 + 16) = v20 + 1;
    v21 = (v34 + 32 * v20);
    v21[4] = v32;
    v21[5] = v31;
    v21[6] = v17;
    v21[7] = v30;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v22 = *(a1 + 64 + 8 * v9);
    if ((v22 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v33 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v23 = v22 & (-2 << (v6 & 0x3F));
    if (v23)
    {
      v8 = __clz(__rbit64(v23)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v9 << 6;
      v25 = v9 + 1;
      v26 = (a1 + 72 + 8 * v9);
      while (v25 < (v8 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_22883F9F0(v6, v33, 0);
          v8 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_22883F9F0(v6, v33, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v29)
    {
      return v2;
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

void *DebugSnapshot.__allocating_init(_:attributes:subObjects:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t DebugSnapshot.object.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *DebugSnapshot.init(_:attributes:subObjects:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

void *sub_22883C5D4()
{
  v1 = *(v0 + 32);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v25[0] = sub_22883C044(v1);

  sub_22883DC7C(v25);

  v2 = v25[0];
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  v3 = v2[2];
  if (v3)
  {
    v24 = MEMORY[0x277D84F90];
    sub_2287F2304(0, v3, 0);
    v4 = 0;
    v5 = v24;
    v6 = v2 + 7;
    v22 = v2;
    while (v4 < v2[2])
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);

      if (__OFADD__(sub_22887F3F0(), 2))
      {
        goto LABEL_14;
      }

      v9 = sub_22887F440();
      v11 = v10;
      v23[0] = v7;
      v23[1] = v8;

      MEMORY[0x22AAC0340](8250, 0xE200000000000000);
      MEMORY[0x22AAC0340](v9, v11);

      sub_228837590();
      v12 = sub_22887F7F0();
      v14 = v13;

      MEMORY[0x22AAC0340](v12, v14);

      v24 = v5;
      v16 = *(v5 + 16);
      v15 = *(v5 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2287F2304((v15 > 1), v16 + 1, 1);
        v5 = v24;
      }

      ++v4;
      *(v5 + 16) = v16 + 1;
      v17 = v5 + 16 * v16;
      *(v17 + 32) = v7;
      *(v17 + 40) = v8;
      v6 += 4;
      v2 = v22;
      if (v3 == v4)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);

    __break(1u);

    __break(1u);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
LABEL_12:
    v23[0] = v5;

    sub_22883DC10(v23);

    sub_22883F2C0();
    sub_22883F708(&qword_2813CF598, 255, sub_22883F2C0);
    v19 = sub_22887F350();
    v21 = v20;

    MEMORY[0x22AAC0340](v19, v21);

    return v25[0];
  }

  return result;
}

void *sub_22883C910()
{
  v1 = *(v0 + 40);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v18[0] = sub_22883C2AC(v1);

  sub_22883DC7C(v18);

  v2 = v18[0];
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  v3 = v2[2];
  if (v3)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2287F2304(0, v3, 0);
    v4 = 0;
    v5 = v2 + 7;
    while (v4 < v2[2])
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v15 = *(v5 - 3);
      v16 = *(v5 - 2);
      swift_bridgeObjectRetain_n();

      MEMORY[0x22AAC0340](2618, 0xE200000000000000);
      MEMORY[0x22AAC0340](v6, v7);

      v9 = *(v17 + 16);
      v8 = *(v17 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2287F2304((v8 > 1), v9 + 1, 1);
      }

      ++v4;
      *(v17 + 16) = v9 + 1;
      v10 = v17 + 16 * v9;
      *(v10 + 32) = v15;
      *(v10 + 40) = v16;
      v5 += 4;
      if (v3 == v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_10:

    sub_22883F2C0();
    sub_22883F708(&qword_2813CF598, 255, sub_22883F2C0);
    v12 = sub_22887F350();
    v14 = v13;

    MEMORY[0x22AAC0340](v12, v14);

    return v18[0];
  }

  return result;
}

char *sub_22883CB48(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  if (a3 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22887FA20())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v48 = MEMORY[0x277D84F90];
    result = sub_2287F2304(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v35[0] = a1;
    v35[1] = a2;
    v9 = 0;
    a2 = 0;
    v10 = v48;
    v39 = i;
    v40 = v3 & 0xC000000000000001;
    v36 = v3 + 32;
    v37 = v3 & 0xFFFFFFFFFFFFFF8;
    a1 = 0xE400000000000000;
    v38 = v3;
    while (!__OFADD__(v9, 1))
    {
      v44 = v9 + 1;
      if (v40)
      {
        v11 = MEMORY[0x22AAC07F0]();
      }

      else
      {
        if (v9 >= *(v37 + 16))
        {
          goto LABEL_25;
        }

        v11 = *(v36 + 8 * v9);
      }

      v12 = DebugSnapshot.description.getter();
      v46 = 10;
      v47 = 0xE100000000000000;
      MEMORY[0x28223BE20](v12);
      v34[2] = &v46;
      v15 = sub_22883DCE8(0x7FFFFFFFFFFFFFFFLL, 1, sub_22883F9FC, v34, v13, v14, v35);
      v16 = *(v15 + 16);
      if (v16)
      {
        v41 = v11;
        v42 = a2;
        v43 = v10;
        v45 = v7;
        sub_2287F2304(0, v16, 0);
        v7 = v45;
        v17 = (v15 + 56);
        do
        {
          v18 = *(v17 - 3);
          v19 = *(v17 - 2);
          v20 = *(v17 - 1);
          v21 = *v17;
          v46 = 538976288;
          v47 = 0xE400000000000000;

          v22 = MEMORY[0x22AAC0300](v18, v19, v20, v21);
          MEMORY[0x22AAC0340](v22);

          v23 = v46;
          v24 = v47;
          v45 = v7;
          v26 = *(v7 + 16);
          v25 = *(v7 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_2287F2304((v25 > 1), v26 + 1, 1);
            v7 = v45;
          }

          *(v7 + 16) = v26 + 1;
          v27 = v7 + 16 * v26;
          *(v27 + 32) = v23;
          *(v27 + 40) = v24;
          v17 += 4;
          --v16;
        }

        while (v16);

        v3 = v38;
        a2 = v42;
        v10 = v43;
      }

      else
      {
      }

      v46 = v7;
      sub_22883F2C0();
      sub_22883F708(&qword_2813CF598, 255, sub_22883F2C0);
      v28 = sub_22887F350();
      v30 = v29;

      v48 = v10;
      v32 = *(v10 + 16);
      v31 = *(v10 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_2287F2304((v31 > 1), v32 + 1, 1);
        v10 = v48;
      }

      *(v10 + 16) = v32 + 1;
      v33 = v10 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      v9 = v44;
      v7 = MEMORY[0x277D84F90];
      if (v44 == v39)
      {
        a1 = v35[0];
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_23:
  v46 = v10;
  sub_22883F2C0();
  sub_22883F708(&qword_2813CF598, 255, sub_22883F2C0);
  sub_22887F350();

  return a1;
}

uint64_t DebugSnapshot.description.getter()
{
  v1 = sub_22887EFD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  v62 = *(v0 + 16);
  v63 = v5;

  v6 = sub_22883C5D4();
  if (v7)
  {
    v60 = 10;
    v61 = 0xE100000000000000;
    v58 = 10;
    v59 = 0xE100000000000000;
    MEMORY[0x28223BE20](v6);
    v52[-2] = &v58;
    v10 = sub_22883DCE8(0x7FFFFFFFFFFFFFFFLL, 1, sub_22883F9FC, &v52[-4], v8, v9, v52);
    v11 = *(v10 + 16);
    if (v11)
    {
      v52[1] = v0;
      v53 = 0;
      v54 = v4;
      v55 = v2;
      v56 = v1;
      v57 = MEMORY[0x277D84F90];
      sub_2287F2304(0, v11, 0);
      v12 = v57;
      v52[0] = v10;
      v13 = (v10 + 56);
      do
      {
        v14 = *(v13 - 3);
        v15 = *(v13 - 2);
        v17 = *(v13 - 1);
        v16 = *v13;
        v58 = 538976380;
        v59 = 0xE400000000000000;

        v18 = MEMORY[0x22AAC0300](v14, v15, v17, v16);
        MEMORY[0x22AAC0340](v18);

        v19 = v58;
        v20 = v59;
        v57 = v12;
        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_2287F2304((v21 > 1), v22 + 1, 1);
          v12 = v57;
        }

        *(v12 + 16) = v22 + 1;
        v23 = v12 + 16 * v22;
        *(v23 + 32) = v19;
        *(v23 + 40) = v20;
        v13 += 4;
        --v11;
      }

      while (v11);

      v2 = v55;
      v1 = v56;
      v4 = v54;
    }

    else
    {

      v12 = MEMORY[0x277D84F90];
    }

    v58 = v12;
    sub_22883F2C0();
    sub_22883F708(&qword_2813CF598, 255, sub_22883F2C0);
    v24 = sub_22887F350();
    v26 = v25;

    MEMORY[0x22AAC0340](v24, v26);

    MEMORY[0x22AAC0340](v60, v61);
  }

  v27 = sub_22883C910();
  if (v28)
  {
    v60 = 10;
    v61 = 0xE100000000000000;
    v58 = 10;
    v59 = 0xE100000000000000;
    MEMORY[0x28223BE20](v27);
    v52[-2] = &v58;
    v31 = sub_22883DCE8(0x7FFFFFFFFFFFFFFFLL, 1, sub_22883F2A4, &v52[-4], v29, v30, v52);
    v32 = *(v31 + 16);
    if (v32)
    {
      v54 = v4;
      v55 = v2;
      v56 = v1;
      v57 = MEMORY[0x277D84F90];
      sub_2287F2304(0, v32, 0);
      v33 = v57;
      v53 = v31;
      v34 = (v31 + 56);
      do
      {
        v35 = *(v34 - 3);
        v36 = *(v34 - 2);
        v37 = *(v34 - 1);
        v38 = *v34;
        v58 = 538976380;
        v59 = 0xE400000000000000;

        v39 = MEMORY[0x22AAC0300](v35, v36, v37, v38);
        MEMORY[0x22AAC0340](v39);

        v40 = v58;
        v41 = v59;
        v57 = v33;
        v43 = *(v33 + 16);
        v42 = *(v33 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_2287F2304((v42 > 1), v43 + 1, 1);
          v33 = v57;
        }

        *(v33 + 16) = v43 + 1;
        v44 = v33 + 16 * v43;
        *(v44 + 32) = v40;
        *(v44 + 40) = v41;
        v34 += 4;
        --v32;
      }

      while (v32);

      v2 = v55;
      v1 = v56;
      v4 = v54;
    }

    else
    {

      v33 = MEMORY[0x277D84F90];
    }

    v58 = v33;
    sub_22883F2C0();
    sub_22883F708(&qword_2813CF598, 255, sub_22883F2C0);
    v45 = sub_22887F350();
    v47 = v46;

    MEMORY[0x22AAC0340](v45, v47);

    MEMORY[0x22AAC0340](v60, v61);
  }

  v60 = v62;
  v61 = v63;
  sub_22887EFC0();
  sub_228837590();
  v48 = sub_22887F7E0();
  v50 = v49;
  (*(v2 + 8))(v4, v1);

  v60 = v48;
  v61 = v50;

  MEMORY[0x22AAC0340](10, 0xE100000000000000);

  return v60;
}

uint64_t sub_22883D4BC()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 0x63656A624F627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463656A626FLL;
  }
}

uint64_t sub_22883D518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22883F8D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22883D54C(uint64_t a1)
{
  v2 = sub_22883F310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22883D588(uint64_t a1)
{
  v2 = sub_22883F310();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DebugSnapshot.deinit()
{

  return v0;
}

uint64_t DebugSnapshot.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DebugSnapshot.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22883F4FC(0, &qword_27D8524B0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22883F310();
  sub_22887FCF0();
  LOBYTE(v12) = 0;
  sub_22887FB20();
  if (!v2)
  {
    v12 = *(v3 + 32);
    HIBYTE(v11) = 1;
    sub_2287E9598();
    sub_22883F560(&qword_27D8524C0);
    sub_22887FB50();
    v12 = *(v3 + 40);
    HIBYTE(v11) = 2;
    sub_22883F364();
    sub_22883F444();
    sub_22887FB50();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t DebugSnapshot.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DebugSnapshot.init(from:)(a1);
  return v2;
}

void *DebugSnapshot.init(from:)(void *a1)
{
  sub_22883F4FC(0, &qword_27D8524E8, MEMORY[0x277D844C8]);
  v12 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22883F310();
  sub_22887FCE0();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v5;
    LOBYTE(v14) = 0;
    v9 = v12;
    v1[2] = sub_22887FAB0();
    v1[3] = v10;
    sub_2287E9598();
    v13 = 1;
    sub_22883F560(&qword_27D8524F0);
    sub_22887FAE0();
    v1[4] = v14;
    sub_22883F364();
    v13 = 2;
    sub_22883F5C0();
    sub_22887FAE0();
    (*(v8 + 8))(v7, v9);
    v1[5] = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void *sub_22883DB64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = DebugSnapshot.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_22883DC10(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_228863C28(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22883E0A8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22883DC7C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_228863C3C(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_22883E1A0(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_22883DCE8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22887F460();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_22882F9E0(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_22882F9E0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_22887F450();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_22887F400();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_22887F400();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_22887F460();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_22882F9E0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22887F460();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_22882F9E0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_22882F9E0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22887F400();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22883E0A8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22887FB90();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22887F500();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22883E43C(v7, v8, a1, v4);
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
    return sub_22883E29C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22883E1A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22887FB90();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22880F394();
        v5 = sub_22887F500();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22883EA18(v7, v8, a1, v4);
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
    return sub_22883E36C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22883E29C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_22887FBF0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22883E36C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_22887FBF0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v14 = *(v12 + 48);
      v15 = *(v12 + 56);
      v16 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v16;
      *v12 = result;
      *(v12 + 8) = v10;
      *(v12 + 16) = v14;
      *(v12 + 24) = v15;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22883E43C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_228863AEC(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22883EFFC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22887FBF0();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22887FBF0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22882F8B4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_22882F8B4((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_22883EFFC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_228863AEC(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_228863A60(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22887FBF0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_22883EA18(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v99;
    if (!*v99)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_228863AEC(v7);
      v7 = result;
    }

    v90 = v7 + 16;
    v91 = *(v7 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &v7[16 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_228834638((*a3 + 32 * *v92), (*a3 + 32 * *v94), (*a3 + 32 * v95), v8);
        if (v4)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_129;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_130;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_131;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      result = *v9;
      v10 = (*a3 + 32 * v8);
      if (*v9 == *v10 && v9[1] == v10[1])
      {
        v12 = 0;
      }

      else
      {
        result = sub_22887FBF0();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          result = v13[3];
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (result == *(v13 - 1) && v15 == *v13)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22887FBF0();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = (32 * v8) | 0x18;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = (v8 + a4);
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22882F8B4(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v45 = *(v7 + 2);
    v44 = *(v7 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_22882F8B4((v44 > 1), v45 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v46;
    v47 = &v7[16 * v45];
    *(v47 + 4) = v8;
    *(v47 + 5) = v6;
    v48 = *v99;
    if (!*v99)
    {
      goto LABEL_142;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 4);
          v51 = *(v7 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_74:
          if (v53)
          {
            goto LABEL_120;
          }

          v66 = &v7[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_123;
          }

          v72 = &v7[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_127;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v76 = &v7[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_88:
        if (v71)
        {
          goto LABEL_122;
        }

        v79 = &v7[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_125;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v87 = *&v7[16 * v8 + 32];
        v88 = *&v7[16 * v49 + 40];
        sub_228834638((*a3 + 32 * v87), (*a3 + 32 * *&v7[16 * v49 + 32]), (*a3 + 32 * v88), v48);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_228863AEC(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v89 = &v7[16 * v8];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        result = sub_228863A60(v49);
        v46 = *(v7 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v7[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_118;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_119;
      }

      v61 = &v7[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_121;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_124;
      }

      if (v65 >= v57)
      {
        v83 = &v7[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_128;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v97 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = v35 == *v38 && v36 == *(v38 + 8);
    if (v39 || (result = sub_22887FBF0(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v97;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 56);
    v42 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v42;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_22883EFFC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_22887FBF0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_22887FBF0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t _s19HealthOrchestration13DebugSnapshotC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_22887FBF0() & 1) == 0 || (sub_228817008(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a2[5];

  return sub_2288179FC(v5, v6);
}

void sub_22883F2C0()
{
  if (!qword_2813CF5A0)
  {
    v0 = sub_22887F550();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF5A0);
    }
  }
}

unint64_t sub_22883F310()
{
  result = qword_27D8524B8;
  if (!qword_27D8524B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8524B8);
  }

  return result;
}

void sub_22883F364()
{
  if (!qword_27D8524C8)
  {
    sub_22883F3CC();
    v0 = sub_22887F320();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8524C8);
    }
  }
}

void sub_22883F3CC()
{
  if (!qword_27D851A70)
  {
    type metadata accessor for DebugSnapshot();
    v0 = sub_22887F550();
    if (!v1)
    {
      atomic_store(v0, &qword_27D851A70);
    }
  }
}

unint64_t sub_22883F444()
{
  result = qword_27D8524D0;
  if (!qword_27D8524D0)
  {
    sub_22883F364();
    sub_22883F678(&qword_27D8524D8, &qword_27D8524E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8524D0);
  }

  return result;
}

void sub_22883F4FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22883F310();
    v7 = a3(a1, &type metadata for DebugSnapshot.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22883F560(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2287E9598();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22883F5C0()
{
  result = qword_27D8524F8;
  if (!qword_27D8524F8)
  {
    sub_22883F364();
    sub_22883F678(&qword_27D852500, &qword_27D852508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8524F8);
  }

  return result;
}

uint64_t sub_22883F678(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22883F3CC();
    sub_22883F708(a2, v5, type metadata accessor for DebugSnapshot);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22883F708(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_22883F7CC()
{
  result = qword_27D852510;
  if (!qword_27D852510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852510);
  }

  return result;
}

unint64_t sub_22883F824()
{
  result = qword_27D852518;
  if (!qword_27D852518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852518);
  }

  return result;
}

unint64_t sub_22883F87C()
{
  result = qword_27D852520;
  if (!qword_27D852520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852520);
  }

  return result;
}

uint64_t sub_22883F8D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_22887FBF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_22887FBF0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63656A624F627573 && a2 == 0xEA00000000007374)
  {

    return 2;
  }

  else
  {
    v6 = sub_22887FBF0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22883F9F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t RemoteRequestedWorkExecutor.__allocating_init(source:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_2287EC014(a1, v2 + 16);
  return v2;
}

void RemoteRequestedWorkExecutor.identifier.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "RequestedWork");
  *(a1 + 14) = -4864;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t RemoteRequestedWorkExecutor.run(_:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = v3[5];
  v10 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v9);
  v14[0] = v7;
  v14[1] = v6;
  v14[2] = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(v10 + 8);

  v12(v14, sub_22883FC28, v11, v9, v10);
}

void sub_22883FB98(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  if (*(a1 + 48))
  {
    v4 = sub_22887F010();
    a2();
  }

  else
  {
    (*(a1 + 32))(a2, a3);
  }
}

uint64_t RemoteRequestedWorkExecutor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22883FC90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = v3[5];
  v10 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v9);
  v14[0] = v7;
  v14[1] = v6;
  v14[2] = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(v10 + 8);

  v12(v14, sub_22883FDDC, v11, v9, v10);
}

uint64_t DirectDispatchTarget.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_22887FC90();
  MEMORY[0x22AAC0BD0](v1);
  return sub_22887FCD0();
}

uint64_t DirectDispatchTarget.__allocating_init(providers:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t DirectDispatchTarget.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_22883FF04()
{
  result = qword_27D852528;
  if (!qword_27D852528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852528);
  }

  return result;
}

uint64_t static EnvironmentalStateDescription.networkInexpensive()@<X0>(unint64_t *a1@<X8>)
{
  v2 = sub_2287E9944(MEMORY[0x277D84F90]);
  sub_2287E9658(0, &qword_2813CF208, &qword_2813CF640, sub_22880AC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2288817D0;
  *(inited + 32) = 0xD000000000000025;
  *(inited + 40) = 0x80000002288892A0;
  sub_22884196C(0, &unk_2813CF1F0, sub_228841360, MEMORY[0x277D84560]);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2288817D0;
  *(v4 + 32) = 0x7669736E65707845;
  *(v4 + 40) = 0xE900000000000065;
  v5 = sub_2288413E4(&unk_283BC7E18);
  sub_22884155C(&unk_283BC7E38);
  *(v4 + 48) = v5;
  v6 = sub_228809E90(v4);
  swift_setDeallocating();
  sub_2288415B0(v4 + 32, sub_228841360);
  *(inited + 48) = v6;
  v7 = sub_2287E9C2C(inited);
  swift_setDeallocating();
  result = sub_228841610(inited + 32, &qword_2813CF640, sub_22880AC30);
  *a1 = v2;
  a1[1] = v7;
  return result;
}

unint64_t sub_228840190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  sub_2287E9658(0, &qword_2813CF210, &qword_2813CF648, sub_2287E9598);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2288817D0;
  *(inited + 32) = 0xD000000000000025;
  *(inited + 40) = 0x80000002288892A0;
  v7 = sub_2287E97C0(a1);
  sub_2288415B0(a2, sub_22880F394);
  *(inited + 48) = v7;
  v8 = sub_2287E9944(inited);
  swift_setDeallocating();
  sub_228841610(inited + 32, &qword_2813CF648, sub_2287E9598);
  result = sub_2287E9C2C(MEMORY[0x277D84F90]);
  *a3 = v8;
  a3[1] = result;
  return result;
}

uint64_t *NetworkReachabilityStateComponent.__allocating_init(observer:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NetworkReachabilityStateComponent.NetworkReachabilityShim();
  v4 = swift_allocObject();
  sub_228841690();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(v4 + 16) = v5;
  v6 = swift_allocObject();

  return sub_228840C48(a1, a2, v4, v6);
}

uint64_t *NetworkReachabilityStateComponent.__allocating_init(observer:shim:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = sub_228841728(a1, a2, v9, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v10;
}

uint64_t *NetworkReachabilityStateComponent.init(observer:shim:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_228840FC0(a1, a2, v11, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v13;
}

uint64_t sub_2288404F4(void *a1)
{
  v2 = sub_22887F200();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    v13 = (*(v12 + 8))(v11, v12);
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    (*(v15 + 16))(v14, v15);
    (*(v3 + 104))(v6, *MEMORY[0x277CD8F78], v2);
    v16 = sub_22887F1F0();
    v17 = *(v3 + 8);
    v17(v6, v2);
    v17(v8, v2);
    v18 = *(v10 + 80);
    os_unfair_lock_lock((v18 + 24));
    if (v16)
    {
      v19 = 0x6C62616863616572;
    }

    else
    {
      v19 = 0x6168636165726E75;
    }

    if (v16)
    {
      v20 = 0xE900000000000065;
    }

    else
    {
      v20 = 0xEB00000000656C62;
    }

    sub_228847428(v19, v20, 0x6962616863616552, 0xEC0000007974696CLL);
    if (v13)
    {
      v21 = 0x7669736E65707865;
    }

    else
    {
      v21 = 0x657078652D746F6ELL;
    }

    if (v13)
    {
      v22 = 0xE900000000000065;
    }

    else
    {
      v22 = 0xED0000657669736ELL;
    }

    sub_228847428(v21, v22, 0x7669736E65707845, 0xE900000000000065);
    v23 = *(v18 + 16);

    os_unfair_lock_unlock((v18 + 24));
    v24 = *(v10 + 32);
    ObjectType = swift_getObjectType();
    v26 = *(v24 + 8);
    swift_unknownObjectRetain();

    v26(v23, v10, &protocol witness table for NetworkReachabilityStateComponent, ObjectType, v24);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t NetworkReachabilityStateComponent.currentState.getter()
{
  v1 = *(v0 + 80);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

Swift::Void __swiftcall NetworkReachabilityStateComponent.stopObserving()()
{
  v1 = v0[8];
  v2 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t sub_2288408B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22887F1D0();
  swift_allocObject();
  sub_22887F1C0();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a2;
  v7[4] = a3;

  sub_22887F1A0();

  sub_22887F1B0();
  v8 = *(v3 + 16);
  os_unfair_lock_lock((v8 + 24));
  sub_2288418D8((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
}

uint64_t sub_2288409D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v6 = sub_22887F220();
    v8[3] = v6;
    v8[4] = &protocol witness table for NWPath;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, a1, v6);
    a3(v8);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return result;
}

void sub_228840ABC()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));

  *(v1 + 16) = 0;

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t NetworkReachabilityStateComponent.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return v0;
}

uint64_t NetworkReachabilityStateComponent.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_228840BAC()
{
  v1 = *(v0 + 80);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t sub_228840BEC()
{
  v1 = v0[8];
  v2 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t *sub_228840C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v24 = a1;
  v25 = a2;
  v26 = *a4;
  v6 = sub_22887F6F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22887F6E0();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22887F270();
  MEMORY[0x28223BE20](v11 - 8);
  v28[3] = type metadata accessor for NetworkReachabilityStateComponent.NetworkReachabilityShim();
  v28[4] = &off_283BCAE10;
  v28[0] = a3;
  sub_22880AA7C();
  sub_22887F260();
  v27 = MEMORY[0x277D84F90];
  sub_228841914();
  sub_22884196C(0, &qword_2813CF590, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22880AB10();
  sub_22887F820();
  (*(v7 + 104))(v9, *MEMORY[0x277D85260], v6);
  a4[2] = sub_22887F710();
  v12 = sub_2287E97C0(MEMORY[0x277D84F90]);
  sub_2288419D0();
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  a4[10] = v13;
  sub_2287E766C(v28, (a4 + 5));
  v14 = v25;
  a4[3] = v24;
  a4[4] = v14;
  v15 = a4[8];
  v16 = a4[9];
  __swift_project_boxed_opaque_existential_1(a4 + 5, v15);
  v17 = a4[2];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v20 = v26;
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  v21 = *(v16 + 8);
  swift_unknownObjectRetain();

  v21(v17, sub_228841AA4, v19, v15, v16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v28);

  return a4;
}

uint64_t *sub_228840FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v29 = a1;
  v30 = a2;
  v31 = *a4;
  v28 = sub_22887F6F0();
  v10 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22887F6E0();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22887F270();
  MEMORY[0x28223BE20](v14 - 8);
  v33[3] = a5;
  v33[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  sub_22880AA7C();
  sub_22887F260();
  v16 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
  sub_228841914();
  sub_22884196C(0, &qword_2813CF590, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22880AB10();
  sub_22887F820();
  (*(v10 + 104))(v12, *MEMORY[0x277D85260], v28);
  a4[2] = sub_22887F710();
  v17 = sub_2287E97C0(v16);
  sub_2288419D0();
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = v17;
  a4[10] = v18;
  sub_2287E766C(v33, (a4 + 5));
  v19 = v30;
  a4[3] = v29;
  a4[4] = v19;
  v20 = a4[8];
  v21 = a4[9];
  __swift_project_boxed_opaque_existential_1(a4 + 5, v20);
  v22 = a4[2];
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v25 = v31;
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  v26 = *(v21 + 8);
  swift_unknownObjectRetain();

  v26(v22, sub_228841A38, v24, v20, v21);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v33);

  return a4;
}

void sub_228841360()
{
  if (!qword_2813CF628)
  {
    sub_228841A40(255, &qword_2813CF540, MEMORY[0x277D83B48]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813CF628);
    }
  }
}

uint64_t sub_2288413E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_228841A40(0, &qword_2813CF4A0, MEMORY[0x277D84098]);
    v3 = sub_22887F870();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_22887FC90();

      sub_22887F3E0();
      result = sub_22887FCD0();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_22887FBF0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
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

uint64_t sub_2288415B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228841610(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2287E9B64(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_228841690()
{
  if (!qword_27D852530)
  {
    sub_22884196C(255, &qword_27D852538, MEMORY[0x277CD8E78], MEMORY[0x277D83D88]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_27D852530);
    }
  }
}

uint64_t *sub_228841728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a3, a5);
  return sub_228840FC0(a1, a2, v13, v14, a5, a6);
}

uint64_t sub_2288418D8(void *a1)
{

  *a1 = v1;
}

unint64_t sub_228841914()
{
  result = qword_2813CF510;
  if (!qword_2813CF510)
  {
    sub_22887F6E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813CF510);
  }

  return result;
}

void sub_22884196C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2288419D0()
{
  if (!qword_27D852540)
  {
    sub_2287E9598();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_27D852540);
    }
  }
}

void sub_228841A40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

HealthOrchestration::PriorityRuleSet::Priority_optional __swiftcall PriorityRuleSet.Priority.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22887FA80();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PriorityRuleSet.Priority.rawValue.getter()
{
  v1 = 0x6669636570736E75;
  v2 = 0x616E65746E69616DLL;
  if (*v0 != 2)
  {
    v2 = 0x64656B636F6C62;
  }

  if (*v0)
  {
    v1 = 0x746E65677275;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_228841BC8()
{
  sub_22887FC90();
  sub_22887F3E0();

  return sub_22887FCD0();
}

uint64_t sub_228841C98()
{
  sub_22887F3E0();
}

uint64_t sub_228841D54()
{
  sub_22887FC90();
  sub_22887F3E0();

  return sub_22887FCD0();
}

void sub_228841E2C(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = 0xEB0000000065636ELL;
  v5 = 0x616E65746E69616DLL;
  if (*v1 != 2)
  {
    v5 = 0x64656B636F6C62;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x746E65677275;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t PriorityRuleSet.Rule.descriptions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_228842004()
{
  if (*v0)
  {
    return 0x797469726F697270;
  }

  else
  {
    return 0x7470697263736564;
  }
}

uint64_t sub_228842048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7470697263736564 && a2 == 0xEC000000736E6F69;
  if (v6 || (sub_22887FBF0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22887FBF0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_228842128(uint64_t a1)
{
  v2 = sub_2288423E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228842164(uint64_t a1)
{
  v2 = sub_2288423E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PriorityRuleSet.Rule.encode(to:)(void *a1)
{
  sub_2288446D8(0, &qword_27D852548, sub_2288423E4, &type metadata for PriorityRuleSet.Rule.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v12 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2288423E4();

  sub_22887FCF0();
  v17 = v8;
  v16 = 0;
  sub_228844914(0, &qword_27D852558, &type metadata for EnvironmentalStateDescription, MEMORY[0x277D83940]);
  sub_228842780(&qword_27D852560, sub_228842438);
  v9 = v13;
  sub_22887FB50();

  if (!v9)
  {
    v15 = v12;
    v14 = 1;
    sub_22884248C();
    sub_22887FB50();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2288423E4()
{
  result = qword_27D852550;
  if (!qword_27D852550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852550);
  }

  return result;
}

unint64_t sub_228842438()
{
  result = qword_27D852568;
  if (!qword_27D852568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852568);
  }

  return result;
}

unint64_t sub_22884248C()
{
  result = qword_27D852570;
  if (!qword_27D852570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852570);
  }

  return result;
}

uint64_t PriorityRuleSet.Rule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2288446D8(0, &qword_27D852578, sub_2288423E4, &type metadata for PriorityRuleSet.Rule.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2288423E4();
  sub_22887FCE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v14;
  sub_228844914(0, &qword_27D852558, &type metadata for EnvironmentalStateDescription, MEMORY[0x277D83940]);
  v17 = 0;
  sub_228842780(&qword_27D852580, sub_228842810);
  sub_22887FAE0();
  v11 = v18;
  v15 = 1;
  sub_228842864();
  sub_22887FAE0();
  (*(v9 + 8))(v8, v5);
  v12 = v16;
  *v10 = v11;
  *(v10 + 8) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_228842780(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_228844914(255, &qword_27D852558, &type metadata for EnvironmentalStateDescription, MEMORY[0x277D83940]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_228842810()
{
  result = qword_27D852588;
  if (!qword_27D852588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852588);
  }

  return result;
}

unint64_t sub_228842864()
{
  result = qword_27D852590;
  if (!qword_27D852590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852590);
  }

  return result;
}

char *static PriorityRuleSet.constant(_:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = v2;
  return result;
}

uint64_t static PriorityRuleSet.require(_:priority:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v7 = MEMORY[0x277D84560];
  sub_228844914(0, &qword_2813CF2B8, &type metadata for PriorityRuleSet.Rule, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2288817D0;
  sub_228844914(0, &qword_27D852598, &type metadata for EnvironmentalStateDescription, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2288817D0;
  *(v9 + 32) = v5;
  *(v9 + 40) = v4;
  *(v8 + 32) = v9;
  *(v8 + 40) = v6;
  *a3 = v8;
  *(a3 + 8) = 3;
}

__n128 static PriorityRuleSet.requireAll(_:priority:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = MEMORY[0x277D84F90];
  v7 = sub_2287E9944(MEMORY[0x277D84F90]);
  v8 = sub_2287E9C2C(v6);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (a1 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v7;
      sub_228843B70(v12, sub_228844C30, 0, isUniquelyReferenced_nonNull_native, &v19);

      v7 = v19;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v19 = v8;
      sub_228844318(v11, sub_228844C30, 0, v14, &v19);

      swift_bridgeObjectRelease_n();
      v8 = v19;
      v10 += 2;
      --v9;
    }

    while (v9);
  }

  v15 = MEMORY[0x277D84560];
  sub_228844914(0, &qword_2813CF2B8, &type metadata for PriorityRuleSet.Rule, MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2288817D0;
  sub_228844914(0, &qword_27D852598, &type metadata for EnvironmentalStateDescription, v15);
  v17 = swift_allocObject();
  result = xmmword_2288817D0;
  *(v17 + 16) = xmmword_2288817D0;
  *(v17 + 32) = v7;
  *(v17 + 40) = v8;
  *(v16 + 32) = v17;
  *(v16 + 40) = v5;
  *a3 = v16;
  *(a3 + 8) = 3;
  return result;
}

uint64_t static PriorityRuleSet.requireAny(_:priority:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_228844914(0, &qword_2813CF2B8, &type metadata for PriorityRuleSet.Rule, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2288817D0;
  *(v6 + 32) = a1;
  *(v6 + 40) = v5;
  *a3 = v6;
  *(a3 + 8) = 3;
}

uint64_t sub_228842CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_2287ECD4C(v3, v4);
}

uint64_t sub_228842D4C()
{
  if (*v0)
  {
    return 0x6F69725065736162;
  }

  else
  {
    return 0x526465726564726FLL;
  }
}

uint64_t sub_228842D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x526465726564726FLL && a2 == 0xEC00000073656C75;
  if (v6 || (sub_22887FBF0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69725065736162 && a2 == 0xEC00000079746972)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22887FBF0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_228842E7C(uint64_t a1)
{
  v2 = sub_228844630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228842EB8(uint64_t a1)
{
  v2 = sub_228844630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PriorityRuleSet.encode(to:)(void *a1)
{
  sub_2288446D8(0, &qword_27D8525A0, sub_228844630, &type metadata for PriorityRuleSet.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v12 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228844630();

  sub_22887FCF0();
  v17 = v8;
  v16 = 0;
  sub_228844914(0, &qword_27D8525B0, &type metadata for PriorityRuleSet.Rule, MEMORY[0x277D83940]);
  sub_228844740(&qword_27D8525B8, sub_228844684);
  v9 = v13;
  sub_22887FB50();

  if (!v9)
  {
    v15 = v12;
    v14 = 1;
    sub_22884248C();
    sub_22887FB50();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t PriorityRuleSet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2288446D8(0, &qword_27D8525C8, sub_228844630, &type metadata for PriorityRuleSet.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228844630();
  sub_22887FCE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v14;
  sub_228844914(0, &qword_27D8525B0, &type metadata for PriorityRuleSet.Rule, MEMORY[0x277D83940]);
  v17 = 0;
  sub_228844740(&qword_27D8525D0, sub_2288447D0);
  sub_22887FAE0();
  v11 = v18;
  v15 = 1;
  sub_228842864();
  sub_22887FAE0();
  (*(v9 + 8))(v8, v5);
  v12 = v16;
  *v10 = v11;
  *(v10 + 8) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2288433F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_2287ECD4C(v5, v6);
}

uint64_t PriorityRuleSet.description.getter()
{
  v1 = *v0;
  v2 = v0[8];
  v3 = *(*v0 + 16);
  if (v3)
  {
    v19 = v0[8];
    v25 = MEMORY[0x277D84F90];
    v20 = v1;
    sub_2287F2304(0, v3, 0);
    v4 = v20;
    v5 = 0;
    v6 = v25;
    v7 = (v20 + 40);
    while (v5 < *(v4 + 16))
    {
      v8 = *v7;
      v21 = *(v7 - 1);
      v22 = v8;

      sub_2288437D8(&v21, &v23);

      v10 = v23;
      v9 = v24;
      v25 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2287F2304((v11 > 1), v12 + 1, 1);
        v4 = v20;
        v6 = v25;
      }

      ++v5;
      *(v6 + 16) = v12 + 1;
      v13 = v6 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v7 += 16;
      if (v3 == v5)
      {
        v23 = 0;
        v24 = 0xE000000000000000;
        sub_22887F8A0();
        MEMORY[0x22AAC0340](60, 0xE100000000000000);
        v21 = v6;
        v14 = MEMORY[0x277D837D0];
        sub_228844914(0, &qword_2813CF5A0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        sub_2288448BC(&qword_2813CF598, &qword_2813CF5A0, v14);
        v15 = sub_22887F350();
        v17 = v16;

        MEMORY[0x22AAC0340](v15, v17);

        MEMORY[0x22AAC0340](0x77726568746F202CLL, 0xEC00000020657369);
        LOBYTE(v21) = v19;
        goto LABEL_9;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    MEMORY[0x22AAC0340](0x6E6174736E6F433CLL, 0xEB00000000203A74);
    LOBYTE(v21) = v2;
LABEL_9:
    sub_22887F9D0();
    MEMORY[0x22AAC0340](62, 0xE100000000000000);
    return v23;
  }

  return result;
}

uint64_t sub_2288437D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x22AAC0340](10331, 0xE200000000000000);
  v4 = *(v3 + 16);
  if (v4)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2287F2304(0, v4, 0);
    v5 = v3 + 40;
    do
    {
      if (*(*v5 + 16))
      {

        sub_22887F8A0();

        sub_2287E9598();
        v6 = sub_22887F300();
        MEMORY[0x22AAC0340](v6);

        MEMORY[0x22AAC0340](0x6964756C63786520, 0xEB0000000020676ELL);
        sub_22880AC30(0);
        v7 = sub_22887F300();
        MEMORY[0x22AAC0340](v7);

        MEMORY[0x22AAC0340](62, 0xE100000000000000);

        v8 = 60;
        v9 = 0xE100000000000000;
      }

      else
      {
        sub_2287E9598();

        v8 = sub_22887F300();
        v9 = v10;
      }

      v12 = *(v19 + 16);
      v11 = *(v19 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2287F2304((v11 > 1), v12 + 1, 1);
      }

      *(v19 + 16) = v12 + 1;
      v13 = v19 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v9;
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  v14 = MEMORY[0x277D837D0];
  sub_228844914(0, &qword_2813CF5A0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2288448BC(&qword_2813CF598, &qword_2813CF5A0, v14);
  v15 = sub_22887F350();
  v17 = v16;

  MEMORY[0x22AAC0340](v15, v17);

  MEMORY[0x22AAC0340](0x203E2D2029, 0xE500000000000000);
  sub_22887F9D0();
  result = MEMORY[0x22AAC0340](93, 0xE100000000000000);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_228843B28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_228843B70(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v6 = a1;
  v75 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v74 = (63 - v7) >> 6;

  v10 = 0;
  v69 = v6;
  v12 = v74;
  v11 = v75;
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_7:
  v13 = v10;
  do
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v14 >= v12)
    {
      sub_2287EF604();
    }

    v9 = *(v11 + 8 * v14);
    ++v13;
  }

  while (!v9);
  while (1)
  {
    v15 = v9;
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(v6 + 56) + 8 * v16);
    v85[0] = *v17;
    v85[1] = v18;
    v85[2] = v19;

    a2(&v82, v85);

    v20 = v82;
    v21 = v83;
    v86 = v84;
    v22 = *a5;
    v24 = sub_2287E5E2C(v82, v83);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    v76 = v21;
    if (v22[3] >= v27)
    {
      v31 = v15;
      if ((a4 & 1) == 0)
      {
        v67 = v24;
        sub_2288537D0();
        v24 = v67;
      }
    }

    else
    {
      sub_228851498(v27, a4 & 1);
      v29 = sub_2287E5E2C(v20, v21);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_52;
      }

      v24 = v29;
      v31 = v15;
    }

    v9 = (v31 - 1) & v31;
    v32 = *a5;
    if (v28)
    {
      v71 = v24;
      v72 = v9;
      v70 = *a5;
      v33 = *(v32[7] + 8 * v24);
      swift_bridgeObjectRetain_n();
      v34 = v86;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85[0] = v33;
      v36 = v34 + 64;
      v37 = -1 << *(v34 + 32);
      if (-v37 < 64)
      {
        v38 = ~(-1 << -v37);
      }

      else
      {
        v38 = -1;
      }

      v39 = v38 & *(v34 + 64);
      v40 = (63 - v37) >> 6;

      v41 = 0;
      v77 = v40;
      v78 = v34 + 64;
      while (v39)
      {
        v81 = isUniquelyReferenced_nonNull_native;
        v43 = v41;
LABEL_33:
        v45 = (v43 << 10) | (16 * __clz(__rbit64(v39)));
        v46 = (*(v86 + 48) + v45);
        v48 = *v46;
        v47 = v46[1];
        v49 = (*(v86 + 56) + v45);
        v50 = v49[1];
        v80 = *v49;

        v52 = sub_2287E5E2C(v48, v47);
        v53 = v33[2];
        v54 = (v51 & 1) == 0;
        v55 = v53 + v54;
        if (__OFADD__(v53, v54))
        {
          goto LABEL_48;
        }

        v56 = v51;
        if (v33[3] >= v55)
        {
          if ((v81 & 1) == 0)
          {
            sub_2287E6134();
          }
        }

        else
        {
          sub_2288511A0(v55, v81 & 1);
          v57 = sub_2287E5E2C(v48, v47);
          if ((v56 & 1) != (v58 & 1))
          {
            goto LABEL_52;
          }

          v52 = v57;
        }

        v39 &= v39 - 1;
        v33 = v85[0];
        if (v56)
        {

          v42 = (v33[7] + 16 * v52);
          *v42 = v80;
          v42[1] = v50;
        }

        else
        {
          *(v85[0] + 8 * (v52 >> 6) + 64) |= 1 << v52;
          v59 = (v33[6] + 16 * v52);
          *v59 = v48;
          v59[1] = v47;
          v60 = (v33[7] + 16 * v52);
          *v60 = v80;
          v60[1] = v50;
          v61 = v33[2];
          v62 = __OFADD__(v61, 1);
          v63 = v61 + 1;
          if (v62)
          {
            goto LABEL_49;
          }

          v33[2] = v63;
        }

        isUniquelyReferenced_nonNull_native = 1;
        v41 = v43;
        v40 = v77;
        v36 = v78;
      }

      v44 = v41;
      while (1)
      {
        v43 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          __break(1u);
          goto LABEL_47;
        }

        if (v43 >= v40)
        {
          break;
        }

        v39 = *(v36 + 8 * v43);
        ++v44;
        if (v39)
        {
          v81 = isUniquelyReferenced_nonNull_native;
          goto LABEL_33;
        }
      }

      sub_2287EF604();

      swift_bridgeObjectRelease_n();
      *(v70[7] + 8 * v71) = v33;

      a4 = 1;
      v10 = v14;
      v6 = v69;
      v9 = v72;
      v12 = v74;
      v11 = v75;
      if (v72)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    v32[(v24 >> 6) + 8] |= 1 << v24;
    v64 = (v32[6] + 16 * v24);
    *v64 = v20;
    v64[1] = v76;
    *(v32[7] + 8 * v24) = v86;
    v65 = v32[2];
    v62 = __OFADD__(v65, 1);
    v66 = v65 + 1;
    if (v62)
    {
      goto LABEL_51;
    }

    v32[2] = v66;
    a4 = 1;
    v10 = v14;
    v12 = v74;
    v11 = v75;
    if (!v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    v14 = v10;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_22887FC20();
  __break(1u);
  return result;
}

uint64_t sub_22884406C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v46 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v38 = v6;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v45[0] = *v17;
    v45[1] = v18;
    v45[2] = v19;

    a2(&v42, v45);

    v20 = v42;
    v21 = v43;
    v22 = v44;
    v23 = *v46;
    v25 = sub_2287E5E2C(v42, v43);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_25;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((v41 & 1) == 0)
      {
        sub_228853C80();
      }
    }

    else
    {
      sub_228851CD4(v28, v41 & 1);
      v30 = sub_2287E5E2C(v20, v21);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_27;
      }

      v25 = v30;
    }

    v9 &= v9 - 1;
    v32 = *v46;
    if (v29)
    {
      v12 = *(v32[7] + 8 * v25);

      v13 = sub_22885780C(v22, v12);

      *(v32[7] + 8 * v25) = v13;
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      v33 = (v32[6] + 16 * v25);
      *v33 = v20;
      v33[1] = v21;
      *(v32[7] + 8 * v25) = v22;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v11 = v14;
    v6 = v38;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_2287EF604();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22887FC20();
  __break(1u);
  return result;
}

uint64_t sub_228844318(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v38 = v6;
  while (v9)
  {
    v42 = a4;
    v16 = v11;
LABEL_15:
    v18 = __clz(__rbit64(v9)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(*(a1 + 56) + 8 * v18);
    v46[0] = *v19;
    v46[1] = v20;
    v46[2] = v21;

    a2(&v43, v46);

    v22 = v43;
    v23 = v44;
    v24 = v45;
    v25 = *v47;
    v27 = sub_2287E5E2C(v43, v44);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_26;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((v42 & 1) == 0)
      {
        sub_2288537B0();
      }
    }

    else
    {
      sub_228851478(v30, v42 & 1);
      v32 = sub_2287E5E2C(v22, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_28;
      }

      v27 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v47;
    if (v31)
    {
      v35 = *(v34[7] + 8 * v27);
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46[0] = v35;
      sub_22884406C(v24, sub_228843B28, 0, isUniquelyReferenced_nonNull_native, v46);
      if (v40)
      {
        goto LABEL_29;
      }

      swift_bridgeObjectRelease_n();
      *(v34[7] + 8 * v27) = v46[0];
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v12 = (v34[6] + 16 * v27);
      *v12 = v22;
      v12[1] = v23;
      *(v34[7] + 8 * v27) = v24;
      v13 = v34[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_27;
      }

      v34[2] = v15;
    }

    a4 = 1;
    v11 = v16;
    v6 = v38;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      sub_2287EF604();
    }

    v9 = *(v6 + 8 * v16);
    ++v17;
    if (v9)
    {
      v42 = a4;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_22887FC20();
  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

unint64_t sub_228844630()
{
  result = qword_27D8525A8;
  if (!qword_27D8525A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8525A8);
  }

  return result;
}

unint64_t sub_228844684()
{
  result = qword_27D8525C0;
  if (!qword_27D8525C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8525C0);
  }

  return result;
}

void sub_2288446D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_228844740(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_228844914(255, &qword_27D8525B0, &type metadata for PriorityRuleSet.Rule, MEMORY[0x277D83940]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2288447D0()
{
  result = qword_27D8525D8;
  if (!qword_27D8525D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8525D8);
  }

  return result;
}

unint64_t sub_228844824()
{
  result = qword_27D8525E0;
  if (!qword_27D8525E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8525E0);
  }

  return result;
}

uint64_t sub_2288448BC(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_228844914(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228844914(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2288449A8()
{
  result = qword_27D8525F8;
  if (!qword_27D8525F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8525F8);
  }

  return result;
}

unint64_t sub_228844A00()
{
  result = qword_27D852600;
  if (!qword_27D852600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852600);
  }

  return result;
}

unint64_t sub_228844A58()
{
  result = qword_27D852608;
  if (!qword_27D852608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852608);
  }

  return result;
}

unint64_t sub_228844AB0()
{
  result = qword_27D852610;
  if (!qword_27D852610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852610);
  }

  return result;
}

unint64_t sub_228844B08()
{
  result = qword_27D852618;
  if (!qword_27D852618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852618);
  }

  return result;
}

unint64_t sub_228844B60()
{
  result = qword_27D852620;
  if (!qword_27D852620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852620);
  }

  return result;
}

unint64_t sub_228844BB4()
{
  result = qword_27D852628;
  if (!qword_27D852628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852628);
  }

  return result;
}

void *LocaleInputSignal.__allocating_init(observer:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocaleInputSignal.BuiltinLocaleProvider();
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() autoupdatingCurrentLocale];
  sub_22887F100();

  v8 = swift_allocObject();
  v8[7] = v4;
  v8[8] = &off_283BCB3D0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8 + 4);
  sub_228811CD0(v6, boxed_opaque_existential_1);
  sub_228845DDC();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  v8[9] = v10;
  v8[2] = a1;
  v8[3] = a2;
  sub_228811D34(v6);
  return v8;
}

uint64_t type metadata accessor for LocaleInputSignal.BuiltinLocaleProvider()
{
  result = qword_2813D0F48;
  if (!qword_2813D0F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228844DB4(uint64_t a1)
{
  v2 = sub_22887EFF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_22887EFE0();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t static InputSignalSet.LookupKey.locale.getter@<X0>(void *a1@<X8>)
{
  if (qword_2813D0EC8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_2813D0ED8;
  v3 = qword_2813D0EE0;
  v2 = qword_2813D0EE8;
  *a1 = qword_2813D0ED0;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
}

void __swiftcall LocaleInputSignal.Anchor.init(localeIdentifier:decimalSeparator:groupingSeparator:)(HealthOrchestration::LocaleInputSignal::Anchor *__return_ptr retstr, Swift::String localeIdentifier, Swift::String_optional decimalSeparator, Swift::String_optional groupingSeparator)
{
  retstr->localeIdentifier = localeIdentifier;
  retstr->decimalSeparator = decimalSeparator;
  retstr->groupingSeparator = groupingSeparator;
}

uint64_t LocaleInputSignal.Anchor.localeIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LocaleInputSignal.Anchor.localeIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LocaleInputSignal.Anchor.decimalSeparator.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LocaleInputSignal.Anchor.decimalSeparator.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t LocaleInputSignal.Anchor.groupingSeparator.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t LocaleInputSignal.Anchor.groupingSeparator.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

Swift::Bool __swiftcall LocaleInputSignal.Anchor.hasDifference(from:for:)(HealthOrchestration::LocaleInputSignal::Anchor_optional *from, HealthOrchestration::LocaleInputSignal::Configuration a2)
{
  countAndFlagsBits = from->value.localeIdentifier._countAndFlagsBits;
  object = from->value.localeIdentifier._object;
  v6 = from->value.groupingSeparator.value._countAndFlagsBits;
  v5 = from->value.groupingSeparator.value._object;
  v7 = *a2.rawValue;
  v8 = *v2;
  v9 = v2[1];
  v11 = v2[4];
  v10 = v2[5];
  if ((*a2.rawValue & 2) == 0)
  {
    if ((v7 & 1) == 0)
    {
      if ((v7 & 4) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    if (!object)
    {
      goto LABEL_38;
    }

    goto LABEL_15;
  }

  v25 = from->value.groupingSeparator.value._object;
  v12 = v2[4];
  v13 = v2[3];
  if (!object)
  {
    v17 = v13 == 0;
    if (v7)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

  v23 = v2[5];
  v24 = from->value.groupingSeparator.value._countAndFlagsBits;
  v14 = from->value.decimalSeparator.value._countAndFlagsBits;
  v15 = from->value.decimalSeparator.value._object;
  v16 = v2[2];

  if (v13)
  {
    if (v15)
    {
      if (v16 == v14 && v13 == v15)
      {

        goto LABEL_23;
      }

      v17 = sub_22887FBF0();

      v10 = v23;
      v6 = v24;
      if (v7)
      {
        goto LABEL_14;
      }

LABEL_26:
      v19 = v17 ^ 1;
      v11 = v12;
      v5 = v25;
      goto LABEL_27;
    }

LABEL_21:
    v17 = 0;
    v10 = v23;
    v6 = v24;
    if (v7)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

  if (v15)
  {

    goto LABEL_21;
  }

LABEL_23:
  v17 = 1;
  v10 = v23;
  v6 = v24;
  if ((v7 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_14:
  v18 = v17 & (object != 0);
  v11 = v12;
  v5 = v25;
  if ((v18 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_15:
  if (v8 == countAndFlagsBits && object == v9)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_22887FBF0() ^ 1;
  }

LABEL_27:
  v20 = (v7 >> 2) & 1 | v19;
  if (v7 & 4) == 0 || (v19)
  {
    return v20 & 1;
  }

LABEL_29:
  if (!object)
  {
    LOBYTE(v20) = v10 != 0;
    return v20 & 1;
  }

  if (!v10)
  {
    if (!v5)
    {
LABEL_39:
      LOBYTE(v20) = 0;
      return v20 & 1;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
LABEL_38:
    LOBYTE(v20) = 1;
    return v20 & 1;
  }

  if (v11 == v6 && v10 == v5)
  {

    LOBYTE(v20) = 0;
  }

  else
  {
    v21 = sub_22887FBF0();

    LOBYTE(v20) = v21 ^ 1;
  }

  return v20 & 1;
}

void __swiftcall LocaleInputSignal.Anchor.merged(with:)(HealthOrchestration::LocaleInputSignal::Anchor *__return_ptr retstr, HealthOrchestration::LocaleInputSignal::Anchor *with)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 40);
  retstr->localeIdentifier._countAndFlagsBits = *v2;
  retstr->localeIdentifier._object = v3;
  retstr->decimalSeparator.value._countAndFlagsBits = v4;
  *&retstr->decimalSeparator.value._object = *(v2 + 24);
  retstr->groupingSeparator.value._object = v5;
}

unint64_t sub_228845348()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_228845398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22884652C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2288453C0(uint64_t a1)
{
  v2 = sub_228846474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2288453FC(uint64_t a1)
{
  v2 = sub_228846474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocaleInputSignal.Anchor.encode(to:)(void *a1)
{
  sub_2288464C8(0, &qword_2813CF2F0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = v1[2];
  v12[3] = v1[3];
  v12[4] = v8;
  v9 = v1[4];
  v12[1] = v1[5];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228846474();
  sub_22887FCF0();
  v15 = 0;
  v10 = v12[5];
  sub_22887FB20();
  if (!v10)
  {
    v14 = 1;
    sub_22887FB00();
    v13 = 2;
    sub_22887FB00();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t LocaleInputSignal.Anchor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2288464C8(0, &unk_2813CF310, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228846474();
  sub_22887FCE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v10 = sub_22887FAB0();
  v12 = v11;
  v25 = v10;
  v27 = 1;
  v13 = sub_22887FA90();
  v15 = v14;
  v24 = v13;
  v26 = 2;
  v16 = sub_22887FA90();
  v19 = v18;
  v20 = *(v7 + 8);
  v23 = v16;
  v20(v9, v6);
  v21 = v24;
  *a2 = v25;
  a2[1] = v12;
  a2[2] = v21;
  a2[3] = v15;
  a2[4] = v23;
  a2[5] = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_22884585C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v4;
}

uint64_t sub_228845928@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_2288459DC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_228845A0C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_228845A38@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_228845B10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_228845B2C()
{
  v1 = *v0;
  sub_22887FC90();
  MEMORY[0x22AAC0BD0](v1);
  return sub_22887FCD0();
}

uint64_t sub_228845BA0()
{
  v1 = *v0;
  sub_22887FC90();
  MEMORY[0x22AAC0BD0](v1);
  return sub_22887FCD0();
}

void sub_228845C08()
{
  qword_2813D0ED0 = 0xD000000000000011;
  *algn_2813D0ED8 = 0x8000000228885500;
  qword_2813D0EE0 = 0;
  qword_2813D0EE8 = 0;
}

void *LocaleInputSignal.__allocating_init(observer:provider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = sub_228846654(a1, a2, v9, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v10;
}

void *LocaleInputSignal.init(observer:provider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_2288463BC(a1, a2, v11, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v13;
}

void sub_228845DDC()
{
  if (!qword_2813CF480)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF480);
    }
  }
}

Swift::Void __swiftcall LocaleInputSignal.stopObservation()()
{
  v1 = *(v0 + 72);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];

    swift_unknownObjectRelease();
    *(v1 + 16) = 0;
    swift_unknownObjectRelease();
  }

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_228845EF4(void *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = *MEMORY[0x277CBE620];
  v4 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_228847060;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_228844DB4;
  v8[3] = &block_descriptor_8;
  v5 = _Block_copy(v8);

  v6 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v5];
  _Block_release(v5);

  result = swift_unknownObjectRelease();
  *a1 = v6;
  return result;
}

uint64_t sub_22884603C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);
    v2 = result;
    ObjectType = swift_getObjectType();
    v3 = v2[7];
    v4 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
    v5 = (*(v4 + 8))(v3, v4);
    v7 = v6;
    v8 = v2[7];
    v9 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v8);
    v10 = (*(v9 + 16))(v8, v9);
    v12 = v11;
    v14 = v2[7];
    v13 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v14);
    v15 = (*(v13 + 24))(v14, v13);
    v22[0] = v5;
    v22[1] = v7;
    v22[2] = v10;
    v22[3] = v12;
    v22[4] = v15;
    v22[5] = v16;
    v21 = v2;
    v17 = *(v1 + 8);
    v18 = type metadata accessor for LocaleInputSignal();
    v19 = sub_228847020(&qword_2813D0E68);
    v17(v22, &v21, v18, v19, ObjectType, v1);
  }

  return result;
}

uint64_t LocaleInputSignal.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return v0;
}

uint64_t LocaleInputSignal.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

void sub_228846288()
{
  v1 = *(*v0 + 72);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];

    swift_unknownObjectRelease_n();
    *(v1 + 16) = 0;
  }

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_228846330()
{
  if (qword_2813D0EC8 != -1)
  {
    swift_once();
  }

  if (qword_2813D0EE8)
  {
    v0 = qword_2813D0EE0;
  }

  else
  {
    v0 = qword_2813D0ED0;
  }

  return v0;
}

void *sub_2288463BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v15 = a5;
  v16 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  sub_228845DDC();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = 0;
  a4[9] = v12;
  a4[2] = a1;
  a4[3] = a2;
  sub_2287EC014(&v14, (a4 + 4));
  return a4;
}

unint64_t sub_228846474()
{
  result = qword_2813D0EA8;
  if (!qword_2813D0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0EA8);
  }

  return result;
}

void sub_2288464C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228846474();
    v7 = a3(a1, &type metadata for LocaleInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22884652C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002288893F0 == a2 || (sub_22887FBF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000228889410 == a2 || (sub_22887FBF0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000228889430 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_22887FBF0();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_228846654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a3, a5);
  return sub_2288463BC(a1, a2, v13, v14, a5, a6);
}

uint64_t _s19HealthOrchestration17LocaleInputSignalC16beginObservation4from14configurationsyAC6AnchorVSg_SayAC13ConfigurationVGtF_0()
{
  v24 = *v0;
  v1 = v0[9];
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];

    swift_unknownObjectRelease();
    *(v1 + 16) = 0;
    swift_unknownObjectRelease();
  }

  os_unfair_lock_unlock((v1 + 24));
  os_unfair_lock_lock((v1 + 24));
  sub_228847004((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  v5 = v0[3];
  ObjectType = swift_getObjectType();
  v6 = v0[7];
  v7 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;
  v11 = v0[7];
  v12 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v11);
  v13 = (*(v12 + 16))(v11, v12);
  v15 = v14;
  v16 = v0[7];
  v17 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v16);
  v18 = (*(v17 + 24))(v16, v17);
  v26[0] = v8;
  v26[1] = v10;
  v26[2] = v13;
  v26[3] = v15;
  v26[4] = v18;
  v26[5] = v19;
  v25 = v0;
  v20 = *(v5 + 8);
  v21 = sub_228847020(&qword_2813D0E68);
  v20(v26, &v25, v24, v21, ObjectType, v5);
}

unint64_t sub_2288469A0()
{
  result = qword_27D852630;
  if (!qword_27D852630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852630);
  }

  return result;
}

unint64_t sub_2288469F4(void *a1)
{
  a1[1] = sub_228846A2C();
  a1[2] = sub_228846A80();
  result = sub_228846AD4();
  a1[3] = result;
  return result;
}

unint64_t sub_228846A2C()
{
  result = qword_2813D0E80;
  if (!qword_2813D0E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0E80);
  }

  return result;
}

unint64_t sub_228846A80()
{
  result = qword_2813D0E90;
  if (!qword_2813D0E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0E90);
  }

  return result;
}

unint64_t sub_228846AD4()
{
  result = qword_2813D0E88;
  if (!qword_2813D0E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0E88);
  }

  return result;
}

unint64_t sub_228846B2C()
{
  result = qword_27D852638;
  if (!qword_27D852638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852638);
  }

  return result;
}

unint64_t sub_228846B84()
{
  result = qword_27D852640;
  if (!qword_27D852640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852640);
  }

  return result;
}

unint64_t sub_228846BD8(uint64_t a1)
{
  result = sub_228846C00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_228846C00()
{
  result = qword_2813D0EB8;
  if (!qword_2813D0EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0EB8);
  }

  return result;
}

unint64_t sub_228846C54()
{
  result = qword_2813D0EB0;
  if (!qword_2813D0EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0EB0);
  }

  return result;
}

unint64_t sub_228846CAC()
{
  result = qword_27D852648;
  if (!qword_27D852648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852648);
  }

  return result;
}

unint64_t sub_228846D04()
{
  result = qword_2813D0E78;
  if (!qword_2813D0E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0E78);
  }

  return result;
}

uint64_t sub_228846D58(uint64_t a1)
{
  result = sub_228847020(&qword_2813D0E70);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_228846E90()
{
  result = sub_22887F110();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_228846F00()
{
  result = qword_27D852650;
  if (!qword_27D852650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852650);
  }

  return result;
}

unint64_t sub_228846F58()
{
  result = qword_2813D0E98;
  if (!qword_2813D0E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0E98);
  }

  return result;
}

unint64_t sub_228846FB0()
{
  result = qword_2813D0EA0;
  if (!qword_2813D0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0EA0);
  }

  return result;
}

uint64_t sub_228847020(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocaleInputSignal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *ProcessStateComponent.__allocating_init(for:observer:monitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = *(a4 + 24);
  v10 = *(a4 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_22884A240(a1, a2, a3, v13, v8, v9, v10);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v15;
}

uint64_t sub_2288471B0(uint64_t a1, uint64_t a2)
{
  sub_2287E975C(0, &qword_27D851F48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_22887F0C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    v12 = MEMORY[0x277CC9578];
    v13 = MEMORY[0x277D83D88];
    sub_22884A768(a1, &qword_27D851F48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    sub_22884875C(a2, v7);
    v14 = sub_22887F060();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_22884A768(v7, &qword_27D851F48, v12, v13);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_2288499C0(v11, a2, isUniquelyReferenced_nonNull_native);
    v17 = sub_22887F060();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v19;
  }

  return result;
}

uint64_t sub_228847428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_2287E5CDC(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_2287E5E2C(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_2287E6134();
        v16 = v18;
      }

      result = sub_228849460(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

unint64_t ProcessStateComponent.StateValues.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x696E6E7552746F6ELL;
  if (v1 != 3)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v2;
  }
}

uint64_t static EnvironmentalStateDescription.appNotForeground(bundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v12 = sub_2287E9944(MEMORY[0x277D84F90]);
  sub_2287E96B0(0, &qword_2813CF208, &qword_2813CF640, sub_22880AC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2288817D0;
  *(inited + 32) = 0xD00000000000001ELL;
  *(inited + 40) = 0x8000000228889450;
  sub_2287E96B0(0, &unk_2813CF1F0, &qword_2813CF628, sub_22880A600);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2288817D0;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_2288413E4(&unk_283BC7F58);
  sub_22884155C(&unk_283BC7F78);
  *(v7 + 48) = v8;
  v9 = sub_228809E90(v7);
  swift_setDeallocating();
  sub_2287E9B08(v7 + 32, &qword_2813CF628, sub_22880A600);
  *(inited + 48) = v9;
  v10 = sub_2287E9C2C(inited);
  swift_setDeallocating();
  result = sub_2287E9B08(inited + 32, &qword_2813CF640, sub_22880AC30);
  *a3 = v12;
  a3[1] = v10;
  return result;
}

uint64_t sub_2288477AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v14 = sub_2287E9944(MEMORY[0x277D84F90]);
  sub_2287E96B0(0, &qword_2813CF208, &qword_2813CF640, sub_22880AC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2288817D0;
  *(inited + 32) = 0xD00000000000001ELL;
  *(inited + 40) = 0x8000000228889450;
  sub_2287E96B0(0, &unk_2813CF1F0, &qword_2813CF628, sub_22880A600);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2288817D0;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_2288413E4(a3);
  swift_arrayDestroy();
  *(v9 + 48) = v10;
  v11 = sub_228809E90(v9);
  swift_setDeallocating();
  sub_2287E9B08(v9 + 32, &qword_2813CF628, sub_22880A600);
  *(inited + 48) = v11;
  v12 = sub_2287E9C2C(inited);
  swift_setDeallocating();
  result = sub_2287E9B08(inited + 32, &qword_2813CF640, sub_22880AC30);
  *a4 = v14;
  a4[1] = v12;
  return result;
}

HealthOrchestration::ProcessStateComponent::StateValues_optional __swiftcall ProcessStateComponent.StateValues.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22887FA80();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2288479C0()
{
  sub_22887FC90();
  sub_22887F3E0();

  return sub_22887FCD0();
}

uint64_t sub_228847AB8()
{
  sub_22887F3E0();
}

uint64_t sub_228847B9C()
{
  sub_22887FC90();
  sub_22887F3E0();

  return sub_22887FCD0();
}

void sub_228847C9C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000676ELL;
  v4 = 0x696E6E7552746F6ELL;
  if (v2 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000002288883D0;
  }

  v5 = 0x80000002288883B0;
  if (*v1)
  {
    v5 = 0x80000002288883F0;
  }

  if (*v1 <= 1u)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v5;
  }

  *a1 = v6;
  a1[1] = v3;
}

void *ProcessStateComponent.init(for:observer:monitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v10 = *(a4 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_22884A240(a1, a2, a3, v13, v4, v9, v10);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v15;
}

unint64_t sub_228847E70(unint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return result;
  }

  v3 = result;
  for (i = (a2 + 40); ; i += 2)
  {
    v9 = *(i - 1);
    v8 = *i;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v24 = *v3;
    result = sub_2287E5E2C(v9, v8);
    v13 = v11[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v11[3] < v16)
    {
      sub_2288511A0(v16, isUniquelyReferenced_nonNull_native);
      result = sub_2287E5E2C(v9, v8);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = result;
    sub_2287E6134();
    result = v23;
    if (v17)
    {
LABEL_3:
      v5 = result;

      v6 = v24;
      v7 = (v24[7] + 16 * v5);
      *v7 = 0x6E776F6E6B6E75;
      v7[1] = 0xE700000000000000;

      goto LABEL_4;
    }

LABEL_11:
    v6 = v24;
    v24[(result >> 6) + 8] |= 1 << result;
    v19 = (v24[6] + 16 * result);
    *v19 = v9;
    v19[1] = v8;
    v20 = (v24[7] + 16 * result);
    *v20 = 0x6E776F6E6B6E75;
    v20[1] = 0xE700000000000000;
    v21 = v24[2];
    v15 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v15)
    {
      goto LABEL_17;
    }

    v24[2] = v22;
LABEL_4:
    *v3 = v6;
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_22887FC20();
  __break(1u);
  return result;
}

void sub_22884802C(void *a1)
{
  sub_22884A8F0(0, &qword_2813CF1C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228881930;

  sub_22887D838(v3);

  v4 = sub_22887F5D0();

  v5 = [objc_opt_self() predicateMatchingBundleIdentifiers_];

  *(v2 + 32) = v5;
  sub_22884A8A4();
  v6 = sub_22887F4C0();

  [a1 setPredicates_];

  v7 = [objc_allocWithZone(MEMORY[0x277D46FB0]) init];
  [v7 setValues_];
  sub_22884A8F0(0, &qword_2813CF220);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2288817D0;
  *(v8 + 32) = sub_22887F3A0();
  *(v8 + 40) = v9;
  v10 = sub_22887F4C0();

  [v7 setEndowmentNamespaces_];

  [a1 setStateDescriptor_];
  v11 = swift_allocObject();
  swift_weakInit();
  v13[4] = sub_2287E5858;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2287E57B8;
  v13[3] = &block_descriptor_15;
  v12 = _Block_copy(v13);

  [a1 setUpdateHandler_];
  _Block_release(v12);
}

uint64_t ProcessStateComponent.deinit()
{
  sub_22884A440(v0 + 24, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);

  sub_22884A768(v0 + 24, &qword_27D852658, sub_22884A4D4, type metadata accessor for UncheckedSendable);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ProcessStateComponent.__deallocating_deinit()
{
  sub_22884A440(v0 + 24, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);

  sub_22884A768(v0 + 24, &qword_27D852658, sub_22884A4D4, type metadata accessor for UncheckedSendable);
  swift_unknownObjectRelease();
  return swift_deallocClassInstance();
}

uint64_t ProcessStateComponent.currentState.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

Swift::Void __swiftcall ProcessStateComponent.stopObserving()()
{
  sub_22884A440(v0 + 24, v3);
  v1 = v4;
  v2 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_228848508()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t sub_228848548()
{
  sub_22884A440(v0 + 24, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 16))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_2288485B8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_22884A81C;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2288486F8;
  v9[3] = &block_descriptor_9;
  v7 = _Block_copy(v9);

  [v5 updateConfiguration_];
  _Block_release(v7);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2288486F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_22884875C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_228819CC0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_228852CCC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_22887F060();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_22887F0C0();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_228848B44(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_22887F0C0();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2288488FC(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_228819DA4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2288532B4();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 16 * v5);
  sub_228848E44(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_2288489C4(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_228819DA4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_228853458();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_228849074(v5, v7);
  *v2 = v7;
  return v8;
}

double sub_228848A80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_2287E5E2C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2288535E8();
      v10 = v14;
    }

    v11 = *(v10 + 56) + 48 * v8;
    v12 = *(v11 + 24);
    *a3 = *v11;
    *(a3 + 8) = *(v11 + 8);
    *(a3 + 24) = v12;
    *(a3 + 32) = *(v11 + 32);
    sub_2288492A4(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

unint64_t sub_228848B44(int64_t a1, uint64_t a2)
{
  v4 = sub_22887F060();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_22887F840();
    v14 = v12;
    v41 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v42 = *(v15 + 56);
    v39 = (v15 - 8);
    v40 = v16;
    do
    {
      v17 = v9;
      v18 = v42 * v11;
      v19 = v14;
      v20 = v15;
      v40(v8, *(a2 + 48) + v42 * v11, v4);
      sub_22884A7C4();
      v21 = sub_22887F330();
      result = (*v39)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v41)
      {
        if (v22 >= v41 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          v26 = v25 + v42 * a1;
          v27 = v25 + v18 + v42;
          v28 = v42 * a1 < v18 || v26 >= v27;
          v15 = v20;
          if (v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v42 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = *(a2 + 56);
          v30 = *(*(sub_22887F0C0() - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v11;
          v33 = v29 + v30 * v11 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v17;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v35 = v31 == v32;
            v9 = v17;
            v14 = v19;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v41 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_228848E44(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22887F840() + 1) & ~v5;
    v24 = v4;
    do
    {
      v9 = v2;
      v10 = v8;
      sub_22887FC90();

      sub_22887F3E0();
      sub_22887F3E0();
      v11 = sub_22887FCD0();

      v8 = v10;
      v12 = v11 & v7;
      if (v3 >= v10)
      {
        if (v12 < v10)
        {
          v4 = v24;
          v2 = v9;
        }

        else
        {
          v4 = v24;
          v2 = v9;
          if (v3 >= v12)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v24;
        v2 = v9;
        if (v12 >= v8 || v3 >= v12)
        {
LABEL_11:
          v13 = *(v2 + 48);
          v14 = (v13 + 48 * v3);
          v15 = (v13 + 48 * v6);
          if (v3 != v6 || v14 >= v15 + 3)
          {
            v16 = *v15;
            v17 = v15[2];
            v14[1] = v15[1];
            v14[2] = v17;
            *v14 = v16;
          }

          v18 = *(v2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(v2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v23;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_228849074(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22887F840() + 1) & ~v5;
    v24 = v4;
    do
    {
      v9 = v2;
      v10 = v8;
      sub_22887FC90();

      sub_22887F3E0();
      sub_22887F3E0();
      v11 = sub_22887FCD0();

      v8 = v10;
      v12 = v11 & v7;
      if (v3 >= v10)
      {
        if (v12 < v10)
        {
          v4 = v24;
          v2 = v9;
        }

        else
        {
          v4 = v24;
          v2 = v9;
          if (v3 >= v12)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v24;
        v2 = v9;
        if (v12 >= v8 || v3 >= v12)
        {
LABEL_11:
          v13 = *(v2 + 48);
          v14 = (v13 + 48 * v3);
          v15 = (v13 + 48 * v6);
          if (v3 != v6 || v14 >= v15 + 3)
          {
            v16 = *v15;
            v17 = v15[2];
            v14[1] = v15[1];
            v14[2] = v17;
            *v14 = v16;
          }

          v18 = *(v2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(v2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v23;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_2288492A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22887F840() + 1) & ~v5;
    do
    {
      sub_22887FC90();

      sub_22887F3E0();
      v11 = sub_22887FCD0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (v3 != v6 || v17 >= v18 + 3)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_228849460(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22887F840() + 1) & ~v5;
    do
    {
      sub_22887FC90();

      sub_22887F3E0();
      v9 = sub_22887FCD0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_228849610(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22887F840() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x22AAC0BB0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_228849784(unsigned int a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_228819D5C(a1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      sub_228852A0C();
      result = v17;
      goto LABEL_8;
    }

    sub_22884FB34(v14, a2 & 1);
    result = sub_228819D5C(a1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_22887FC20();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a3;
  }

  else
  {

    return sub_22885B728(result, a1, v19, a3);
  }

  return result;
}

uint64_t sub_228849898(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2287E5E2C(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      sub_228852B4C();
      result = v19;
      goto LABEL_8;
    }

    sub_22884FD90(v16, a3 & 1);
    result = sub_2287E5E2C(a1, a2);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_22887FC20();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
  }

  else
  {
    sub_22885B76C(result, a1, a2, v21, a4);
  }

  return result;
}

uint64_t sub_2288499C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22887F060();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_228819CC0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_228852CCC();
      goto LABEL_7;
    }

    sub_22885004C(v17, a3 & 1);
    v28 = sub_228819CC0(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_22885B7B4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_22887FC20();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_22887F0C0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_228849BC4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22887F060();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_228819CC0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_228853030();
      goto LABEL_7;
    }

    sub_2288504D0(v17, a3 & 1);
    v23 = sub_228819CC0(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_22885B8A8(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_22887FC20();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_228849D90(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_228819DA4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_228853458();
      v9 = v17;
      goto LABEL_8;
    }

    sub_228850B88(v14, a3 & 1);
    v9 = sub_228819DA4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_22887FC20();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {
    sub_22885B960(v9, a2, a1, v19);
    return sub_2287F56D8(a2, &v21);
  }
}

unint64_t sub_228849EC0(uint64_t a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_228819D5C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_228853E20();
      v9 = v17;
      goto LABEL_8;
    }

    sub_228851FAC(v14, a3 & 1);
    v9 = sub_228819D5C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_22887FC20();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {

    return sub_22885BAB4(v9, a2, a1, v19);
  }
}

unint64_t sub_228849FE4(uint64_t a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_228819D5C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_228853F8C();
      result = v17;
      goto LABEL_8;
    }

    sub_228852230(v14, a3 & 1);
    result = sub_228819D5C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_22887FC20();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return sub_22885BAB4(result, a2, a1, v19);
  }

  return result;
}

uint64_t sub_22884A0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2287E5E2C(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_228854268();
      v13 = v21;
      goto LABEL_8;
    }

    sub_228852760(v18, a5 & 1);
    v13 = sub_2287E5E2C(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_22887FC20();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_22885B9B8(v13, a3, a4, a1, a2, v23);
  }
}

void *sub_22884A240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20[3] = a6;
  v20[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  v13 = sub_2287E97C0(MEMORY[0x277D84F90]);
  sub_22884A844();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  v15 = (v14 + 24);
  *(v14 + 16) = v13;
  v16 = v14 + 16;
  a5[2] = v14;
  a5[8] = a2;
  a5[9] = a3;

  swift_unknownObjectRetain();
  os_unfair_lock_lock(v15);
  sub_228811E84(v16);
  os_unfair_lock_unlock(v15);

  v17 = sub_2287E766C(v20, (a5 + 3));
  MEMORY[0x28223BE20](v17);
  (*(a7 + 8))(sub_228811EA0);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return a5;
}

uint64_t sub_22884A440(uint64_t a1, uint64_t a2)
{
  sub_2287E975C(0, &qword_27D852658, sub_22884A4D4, type metadata accessor for UncheckedSendable);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22884A4D4()
{
  result = qword_27D852660;
  if (!qword_27D852660)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D852660);
  }

  return result;
}

unint64_t sub_22884A53C()
{
  result = qword_27D852668;
  if (!qword_27D852668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852668);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessStateComponent.StateValues(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessStateComponent.StateValues(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22884A768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_2287E975C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_22884A7C4()
{
  result = qword_27D851AC8;
  if (!qword_27D851AC8)
  {
    sub_22887F060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851AC8);
  }

  return result;
}

void sub_22884A844()
{
  if (!qword_2813CF458)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF458);
    }
  }
}

unint64_t sub_22884A8A4()
{
  result = qword_2813CF4D8;
  if (!qword_2813CF4D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813CF4D8);
  }

  return result;
}

void sub_22884A8F0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22887FBB0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_22884A948(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v24 = MEMORY[0x277D84F90];
  sub_22881DA5C(0, v1, 0);
  v2 = v24;
  v21 = a1 + 56;
  result = sub_22887F830();
  v5 = result;
  v6 = 0;
  v20 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v21 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    sub_22881B930(*(a1 + 48) + 40 * v5, v22);
    sub_2287E766C(v22, v23);
    sub_22881B98C(v22);
    v24 = v2;
    v12 = *(v2 + 16);
    v11 = *(v2 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_22881DA5C((v11 > 1), v12 + 1, 1);
      v2 = v24;
    }

    *(v2 + 16) = v12 + 1;
    result = sub_2287EC014(v23, v2 + 40 * v12 + 32);
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v13 = *(v21 + 8 * v9);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v7 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v20;
    }

    else
    {
      v15 = v9 << 6;
      v16 = v9 + 1;
      v8 = v20;
      v17 = (a1 + 64 + 8 * v9);
      while (v16 < (v7 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_22883F9F0(v5, v10, 0);
          v7 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_22883F9F0(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
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

uint64_t sub_22884AB8C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v38 = MEMORY[0x277D84F90];
    sub_2287F6AD8(0, v2, 0);
    v4 = v38;
    v5 = v1 + 56;
    result = sub_22887F830();
    v6 = result;
    v7 = 0;
    v28 = v1 + 64;
    v29 = v2;
    v30 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v31 = v7;
      v32 = *(v1 + 36);
      sub_22881B930(*(v1 + 48) + 40 * v6, v33);
      v10 = v34;
      v11 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      (*(v11 + 16))(v36, v10, v11);
      result = sub_22881B98C(v33);
      v13 = v36[0];
      v12 = v36[1];
      v14 = v37;
      v15 = v4;
      v38 = v4;
      v16 = v1;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        v27 = v37;
        result = sub_2287F6AD8((v17 > 1), v18 + 1, 1);
        v14 = v27;
        v15 = v38;
      }

      *(v15 + 16) = v18 + 1;
      v19 = v15 + 32 * v18;
      *(v19 + 32) = v13;
      *(v19 + 40) = v12;
      *(v19 + 48) = v14;
      v8 = 1 << *(v16 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v30;
      v20 = *(v30 + 8 * v9);
      if ((v20 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v16;
      v4 = v15;
      if (v32 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v6 & 0x3F));
      if (v21)
      {
        v8 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v9 << 6;
        v23 = v9 + 1;
        v24 = (v28 + 8 * v9);
        while (v23 < (v8 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_22883F9F0(v6, v32, 0);
            v8 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_22883F9F0(v6, v32, 0);
      }

LABEL_4:
      v7 = v31 + 1;
      v6 = v8;
      if (v31 + 1 == v29)
      {
        return v4;
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

uint64_t InputSignalObservationManager.__allocating_init(context:providers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  InputSignalObservationManager.init(context:providers:)(a1, a2, a3);
  return v6;
}

uint64_t InputSignalObservationManager.observer.setter()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 8);
  sub_2288552F8(&v1[4]);
  os_unfair_lock_unlock(v1 + 8);
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall InputSignalObservationManager.stop()()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_22880EEF8((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t InputSignalObservationManager.register(for:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_22884D5E8((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t InputSignalObservationManager.observer.getter()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 8);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v1 + 8);
  return Strong;
}

void sub_22884AFCC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 32);
  os_unfair_lock_lock((v3 + 32));
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  os_unfair_lock_unlock((v3 + 32));
  *a2 = Strong;
  a2[1] = v5;
}

void sub_22884B020(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 32);
  os_unfair_lock_lock(v2 + 8);
  sub_2288552F8(&v2[4]);
  os_unfair_lock_unlock(v2 + 8);
}

uint64_t (*InputSignalObservationManager.observer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 32);
  a1[2] = v3;
  os_unfair_lock_lock((v3 + 32));
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  os_unfair_lock_unlock((v3 + 32));
  *a1 = Strong;
  a1[1] = v5;
  return sub_22884B108;
}

uint64_t sub_22884B108(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {
    swift_unknownObjectRetain();
    os_unfair_lock_lock(v2 + 8);
    sub_2288552F8(&v2[4]);
    os_unfair_lock_unlock(v2 + 8);
    swift_unknownObjectRelease();
  }

  else
  {
    os_unfair_lock_lock(v2 + 8);
    sub_2288552F8(&v2[4]);
    os_unfair_lock_unlock(v2 + 8);
  }

  return swift_unknownObjectRelease();
}

uint64_t InputSignalObservationManager.init(context:providers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_228809168(MEMORY[0x277D84F90]);
  sub_2287F36D8(0, &qword_2813CF410);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v7;
  v3[3] = v8;
  v62 = 0;
  swift_unknownObjectWeakInit();
  sub_2287F36D8(0, &qword_2813CF418);
  v9 = swift_allocObject();
  *(v9 + 32) = 0;
  sub_2288546EC(&v61, v9 + 16);
  v3[4] = v9;
  v3[6] = a1;
  v3[7] = a2;
  type metadata accessor for InputSignalObservationManager.InputSignalObserverShim();
  v10 = swift_allocObject();
  v62 = 0;
  swift_unknownObjectWeakInit();
  sub_2287F36D8(0, &qword_2813CF420);
  v11 = swift_allocObject();
  *(v11 + 32) = 0;
  sub_228854748(&v61, v11 + 16);
  *(v10 + 16) = v11;
  v53 = v3;
  v3[5] = v10;
  v12 = *(a3 + 16);
  v56 = v10;
  v57 = a1;
  if (!v12)
  {
    swift_unknownObjectRetain();

    v27 = MEMORY[0x277D84F90];
LABEL_20:
    v55 = v27[2];
    if (!v55)
    {
      v30 = MEMORY[0x277D84F98];
LABEL_37:

      v53[2] = v30;
      v51 = *(v53[5] + 16);
      MEMORY[0x28223BE20](v50);

      os_unfair_lock_lock(v51 + 8);
      sub_228854780(&v51[4]);
      os_unfair_lock_unlock(v51 + 8);

      swift_unknownObjectRelease();

      return v53;
    }

    v28 = 0;
    v29 = (v27 + 4);
    v30 = MEMORY[0x277D84F98];
    v54 = v27;
    while (1)
    {
      if (v28 >= v27[2])
      {
        goto LABEL_40;
      }

      v58 = v29;
      sub_2287E766C(v29, &v61);
      v32 = v63;
      v33 = v64;
      __swift_project_boxed_opaque_existential_1(&v61, v63);
      (*(v33 + 40))(v60, v32, v33);
      v35 = v60[0];
      v34 = v60[1];
      v37 = v60[2];
      v36 = v60[3];
      sub_2287E766C(&v61, v59);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = sub_2287E6768(v35, v34, v37, v36);
      v41 = v30[2];
      v42 = (v39 & 1) == 0;
      v43 = v41 + v42;
      if (__OFADD__(v41, v42))
      {
        goto LABEL_41;
      }

      v44 = v39;
      if (v30[3] >= v43)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v39)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_2287EC594(&qword_2813CF3C8, &qword_2813D1578, &protocol descriptor for InputSignal, sub_2287EC014);
          if (v44)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        sub_2287F3E24(v43, isUniquelyReferenced_nonNull_native, &qword_2813CF3C8, &qword_2813D1578, &protocol descriptor for InputSignal, sub_2287EC014);
        v45 = sub_2287E6768(v35, v34, v37, v36);
        if ((v44 & 1) != (v46 & 1))
        {
          goto LABEL_45;
        }

        v40 = v45;
        if (v44)
        {
LABEL_22:

          v31 = v30[7] + 40 * v40;
          __swift_destroy_boxed_opaque_existential_1(v31);
          sub_2287EC014(v59, v31);
          goto LABEL_23;
        }
      }

      v30[(v40 >> 6) + 8] |= 1 << v40;
      v47 = (v30[6] + 32 * v40);
      *v47 = v35;
      v47[1] = v34;
      v47[2] = v37;
      v47[3] = v36;
      sub_2287EC014(v59, v30[7] + 40 * v40);
      v48 = v30[2];
      v25 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v25)
      {
        goto LABEL_43;
      }

      v30[2] = v49;
LABEL_23:
      ++v28;
      __swift_destroy_boxed_opaque_existential_1(&v61);
      v29 = v58 + 40;
      v27 = v54;
      if (v55 == v28)
      {
        goto LABEL_37;
      }
    }
  }

  v13 = a3 + 32;
  swift_unknownObjectRetain();

  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2287E766C(v13, &v61);
    v15 = v63;
    v16 = v64;
    __swift_project_boxed_opaque_existential_1(&v61, v63);
    v17 = (*(v16 + 8))(v57, a2, v56, &off_283BCB820, v15, v16);
    __swift_destroy_boxed_opaque_existential_1(&v61);
    v18 = *(v17 + 16);
    v19 = v14[2];
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      break;
    }

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v14;
    if (v21 && v20 <= v14[3] >> 1)
    {
      if (*(v17 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v19 <= v20)
      {
        v23 = v19 + v18;
      }

      else
      {
        v23 = v19;
      }

      v22 = sub_22882FD84(v21, v23, 1, v14);
      if (*(v17 + 16))
      {
LABEL_14:
        if ((v22[3] >> 1) - v22[2] < v18)
        {
          goto LABEL_42;
        }

        v14 = v22;
        sub_2287E670C(0, &qword_2813D1578);
        swift_arrayInitWithCopy();

        if (v18)
        {
          v24 = v14[2];
          v25 = __OFADD__(v24, v18);
          v26 = v24 + v18;
          if (v25)
          {
            goto LABEL_44;
          }

          v14[2] = v26;
        }

        goto LABEL_4;
      }
    }

    v14 = v22;

    if (v18)
    {
      goto LABEL_39;
    }

LABEL_4:
    v13 += 40;
    if (!--v12)
    {

      v27 = v14;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_22887FC20();
  __break(1u);
  return result;
}

uint64_t sub_22884B7BC@<X0>(__int128 **a1@<X0>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_22884B800(a2, a1);
  *a3 = result;
  return result;
}

uint64_t sub_22884B800(unint64_t a1, __int128 **a2)
{
  v223 = a2;
  v230 = sub_22887F180();
  v224 = *(v230 - 8);
  v4 = MEMORY[0x28223BE20](v230);
  v6 = &v219 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v219 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v225 = &v219 - v11;
  MEMORY[0x28223BE20](v10);
  v229 = &v219 - v12;
  v220 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_182:
    *&v244 = sub_22887FA20();
  }

  else
  {
    *&v244 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v232 = v9;
  v221 = v6;
  v238 = a1;
  v239 = v2;
  if (!v244)
  {
    goto LABEL_26;
  }

  v6 = 0;
  v2 = (v238 & 0xC000000000000001);
  a1 = MEMORY[0x277D84F90];
  v9 = (v238 & 0xFFFFFFFFFFFFFF8);
  while (v2)
  {
    v13 = MEMORY[0x22AAC07F0](v6, v238);
    v14 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_25;
    }

LABEL_10:
    v15 = *(v13 + 136);
    os_unfair_lock_lock((v15 + 68));
    v16 = *(v15 + 16);

    os_unfair_lock_unlock((v15 + 68));

    v17 = *(v16 + 48);

    v18 = *(v17 + 16);
    v19 = *(a1 + 16);
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      goto LABEL_173;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v20 <= *(a1 + 24) >> 1)
    {
      if (*(v17 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v19 <= v20)
      {
        v22 = v19 + v18;
      }

      else
      {
        v22 = v19;
      }

      a1 = sub_2288305B0(isUniquelyReferenced_nonNull_native, v22, 1, a1);
      if (*(v17 + 16))
      {
LABEL_19:
        if ((*(a1 + 24) >> 1) - *(a1 + 16) < v18)
        {
          goto LABEL_177;
        }

        sub_2287E670C(0, qword_2813CFDF8);
        swift_arrayInitWithCopy();

        if (v18)
        {
          v23 = *(a1 + 16);
          v24 = __OFADD__(v23, v18);
          v25 = v23 + v18;
          if (v24)
          {
            goto LABEL_179;
          }

          *(a1 + 16) = v25;
        }

        goto LABEL_6;
      }
    }

    if (v18)
    {
      goto LABEL_174;
    }

LABEL_6:
    ++v6;
    if (v14 == v244)
    {
      goto LABEL_27;
    }
  }

  if (v6 >= *(v9 + 2))
  {
    goto LABEL_172;
  }

  v13 = *(v238 + 8 * v6 + 32);

  v14 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    goto LABEL_10;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  a1 = MEMORY[0x277D84F90];
LABEL_27:
  v26 = sub_22884E000(a1);

  v27 = *(v26 + 16);
  v222 = v26;
  v240 = v27;
  if (v27)
  {
    v242 = 0;
    v6 = v26 + 32;
    v241 = MEMORY[0x277D84F98];
    do
    {
      sub_2288054D8(v6, v259);
      v28 = v260;
      v29 = v261;
      __swift_project_boxed_opaque_existential_1(v259, v260);
      (*(v29 + 5))(&v250, v28, v29);
      v30 = v250;
      v31 = v251;
      v9 = v252;
      sub_2287E766C(v259, &v254);
      v32 = v242;
      v33 = sub_22884AB8C(v263);
      v242 = v32;
      a1 = sub_22887D6C4(v33);

      *(&v256 + 1) = a1;
      v245 = v254;
      v246 = v255;
      v247 = v256;
      v2 = v241;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v266[0] = v2;
      v35 = sub_2287E6768(v30, *(&v30 + 1), v31, v9);
      v37 = *(v2 + 2);
      v38 = (v36 & 1) == 0;
      v24 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v24)
      {
        goto LABEL_171;
      }

      a1 = v36;
      if (*(v2 + 3) >= v39)
      {
        if ((v34 & 1) == 0)
        {
          v41 = v35;
          sub_228853AB8();
          v35 = v41;
        }
      }

      else
      {
        sub_2288519F4(v39, v34);
        v35 = sub_2287E6768(v30, *(&v30 + 1), v31, v9);
        if ((a1 & 1) != (v40 & 1))
        {
          goto LABEL_184;
        }
      }

      v241 = v266[0];
      if (a1)
      {
        sub_228854C54(&v245, v266[0][7] + 48 * v35);
      }

      else
      {
        sub_22885BA54(v35, v30, *(&v30 + 1), v31, v9, &v245, v266[0]);
      }

      sub_228805534(v259);
      v6 += 56;
      --v27;
    }

    while (v27);
  }

  else
  {
    v242 = 0;
    v241 = MEMORY[0x277D84F98];
  }

  if (v220)
  {
    v42 = sub_22887FA20();
  }

  else
  {
    v42 = *((v238 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v239;
  v9 = v229;
  v43 = MEMORY[0x277D84F90];
  if (!v42)
  {
LABEL_60:
    v62 = 0;
    v63 = 0;
    v2 = *(v43 + 16);
    a1 = 1;
    while (v2 != v63)
    {
      v64 = v63;
      if (v63 >= *(v43 + 16))
      {
        __break(1u);
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      v65 = *(v43 + 8 * v63 + 32);
      if (v62)
      {
        v63 = (v63 + 1);
        if (v65)
        {
          v231 = v64;
          v233 = v2;
          v236 = v62;
          v237 = v65;
          v2 = *(v62 + 16);
          v9 = (v2 + 4);
          v66 = 1 << *(v2 + 32);
          if (v66 < 64)
          {
            v67 = ~(-1 << v66);
          }

          else
          {
            v67 = -1;
          }

          v68 = v67 & v2[4];
          v69 = (v66 + 63) >> 6;

          *&v244 = v2;

          v70 = 0;
          p_os_unfair_lock_opaque = MEMORY[0x277D84F90];
          *&v235 = v69;
          i = v2 + 4;
          while (1)
          {
            v71 = v70;
            if (!v68)
            {
              break;
            }

LABEL_73:
            v72 = __clz(__rbit64(v68)) | (v70 << 6);
            v73 = (*(v244 + 48) + 32 * v72);
            v74 = *v73;
            v75 = v73[1];
            v76 = v73[2];
            a1 = v73[3];
            sub_2287E766C(*(v244 + 56) + 40 * v72, &v261);
            v259[0] = v74;
            v259[1] = v75;
            v259[2] = v76;
            v260 = a1;
            v2 = *(v237 + 16);
            v77 = *(v2 + 2);

            if (v77 && (v78 = sub_2287E6768(v74, v75, v76, a1), (v79 & 1) != 0))
            {
              sub_2287E766C(*(v2 + 7) + 40 * v78, &v250);
              sub_2287EC014(&v250, &v245);
              *&v254 = v74;
              *(&v254 + 1) = v75;
              *&v255 = v76;
              *(&v255 + 1) = a1;
              v80 = v264;
              v81 = v265;
              v82 = __swift_project_boxed_opaque_existential_1(&v261, v264);
              *(&v257 + 1) = v80;
              v258 = v81;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v256);

              v84 = v80;
              v2 = v82;
              sub_228805888(&v245, v84, v81, boxed_opaque_existential_1);
              __swift_destroy_boxed_opaque_existential_1(&v245);
            }

            else
            {
              v254 = 0u;
              v255 = 0u;
              v256 = 0u;
              v257 = 0u;
              v258 = 0;
            }

            v6 = v239;
            v68 &= v68 - 1;
            sub_2287F124C(v259, sub_2287EC514);
            v9 = i;
            v69 = v235;
            if (*(&v254 + 1))
            {
              v247 = v256;
              v248 = v257;
              v249 = v258;
              v245 = v254;
              v246 = v255;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                p_os_unfair_lock_opaque = sub_22883086C(0, p_os_unfair_lock_opaque[2] + 1, 1, p_os_unfair_lock_opaque);
              }

              v85 = p_os_unfair_lock_opaque;
              a1 = p_os_unfair_lock_opaque[2];
              v86 = p_os_unfair_lock_opaque[3];
              v2 = (a1 + 1);
              if (a1 >= v86 >> 1)
              {
                v85 = sub_22883086C((v86 > 1), a1 + 1, 1, p_os_unfair_lock_opaque);
              }

              v85[2] = v2;
              p_os_unfair_lock_opaque = v85;
              v87 = &v85[9 * a1];
              *(v87 + 2) = v245;
              v88 = v246;
              v89 = v247;
              v90 = v248;
              v87[12] = v249;
              *(v87 + 4) = v89;
              *(v87 + 5) = v90;
              *(v87 + 3) = v88;
            }

            else
            {
              sub_228854B24(&v254, &unk_2813D04E8, sub_22880A4D4, MEMORY[0x277D83D88], sub_228854B84);
            }
          }

          while (1)
          {
            v70 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
              break;
            }

            if (v70 >= v69)
            {

              v92 = sub_2287F21F4(MEMORY[0x277D84F90]);
              v93 = p_os_unfair_lock_opaque[2];
              if (v93)
              {
                *&v235 = v43;
                v94 = p_os_unfair_lock_opaque + 4;
                do
                {
                  sub_22880A470(v94, v259);
                  sub_22880A470(v259, &v254);
                  v95 = *(&v254 + 1);
                  v96 = *(&v255 + 1);
                  i = v255;
                  *&v244 = v254;
                  sub_22880A470(v259, &v245);

                  sub_2287EC014(&v247, &v250);
                  v97 = swift_isUniquelyReferenced_nonNull_native();
                  v266[0] = v92;
                  v98 = v252;
                  v99 = v253;
                  v100 = __swift_mutable_project_boxed_opaque_existential_1(&v250, v252);
                  MEMORY[0x28223BE20](v100);
                  v102 = &v219 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
                  (*(v103 + 16))(v102);
                  sub_2287F37DC(v102, v244, v95, i, v96, v97, v266, v98, v99);

                  sub_2287F124C(v259, sub_22880A4D4);
                  __swift_destroy_boxed_opaque_existential_1(&v250);
                  v92 = v266[0];
                  __swift_destroy_boxed_opaque_existential_1(&v256);
                  v94 += 9;
                  --v93;
                }

                while (v93);

                v6 = v239;
                v43 = v235;
              }

              else
              {
              }

              type metadata accessor for InputSignalAnchorSet();
              v91 = swift_allocObject();
              *(v91 + 16) = v92;
              v9 = v229;
              v2 = v233;
              a1 = 1;
              v64 = v231;
              goto LABEL_91;
            }

            v68 = *&v9[8 * v70];
            ++v71;
            if (v68)
            {
              goto LABEL_73;
            }
          }

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
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
          goto LABEL_181;
        }
      }

      else
      {

LABEL_91:
        v63 = (v64 + 1);
        v62 = v91;
      }
    }

    v236 = v62;

    v105 = *(v6 + 48);
    v104 = *(v6 + 56);
    ObjectType = swift_getObjectType();
    v107 = v104[5];
    v233 = (v104 + 5);
    p_os_unfair_lock_opaque = v104;
    v231 = v107;
    (v107)(ObjectType, v104);
    swift_retain_n();
    swift_bridgeObjectRetain_n();

    v108 = sub_22887F160();
    v109 = v9;
    v9 = sub_22887F6B0();
    v110 = os_log_type_enabled(v108, v9);
    i = ObjectType;
    if (v110)
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v259[0] = v112;
      *v111 = 136315906;
      *&v254 = v105;
      swift_unknownObjectRetain();
      v113 = sub_22887F3B0();
      v115 = sub_2287E64D8(v113, v114, v259);

      *(v111 + 4) = v115;
      *(v111 + 12) = 2048;
      if (v220)
      {
        v116 = sub_22887FA20();
      }

      else
      {
        v116 = *((v238 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v111 + 14) = v116;

      *(v111 + 22) = 2048;
      v119 = *(v241 + 2);

      *(v111 + 24) = v119;

      *(v111 + 32) = 2048;
      v120 = *(*(v239 + 2) + 16);

      *(v111 + 34) = v120;

      _os_log_impl(&dword_2287E4000, v108, v9, "[%s]: Beginning registration of %ld criteria at %ld of %ld sources", v111, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1(v112);
      MEMORY[0x22AAC1440](v112, -1, -1);
      MEMORY[0x22AAC1440](v111, -1, -1);

      v117 = *(v224 + 8);
      v118 = v229;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v117 = *(v224 + 8);
      v118 = v109;
    }

    v229 = v117;
    (v117)(v118, v230);
    v121 = v222;
    a1 = *(v222 + 16);
    v122 = MEMORY[0x277D84F90];
    v237 = v105;
    if (a1)
    {
      *&v245 = MEMORY[0x277D84F90];
      sub_22881DA94(0, a1, 0);
      v122 = v245;
      v9 = (v121 + 32);
      do
      {
        v123 = v122;
        sub_2288054D8(v9, v259);
        v124 = v260;
        v125 = v261;
        __swift_project_boxed_opaque_existential_1(v259, v260);
        (*(v125 + 5))(&v254, v124, v125);
        v126 = v262;
        *&v256 = v262;

        sub_228805534(v259);
        v122 = v123;
        v127 = v254;
        v128 = v255;
        *&v245 = v123;
        v130 = *(v123 + 16);
        v129 = *(v123 + 24);
        if (v130 >= v129 >> 1)
        {
          v244 = v255;
          sub_22881DA94((v129 > 1), v130 + 1, 1);
          v128 = v244;
          v122 = v245;
        }

        *(v122 + 16) = v130 + 1;
        v131 = v122 + 40 * v130;
        *(v131 + 32) = v127;
        *(v131 + 48) = v128;
        *(v131 + 64) = v126;
        v9 += 56;
        --a1;
      }

      while (a1);
      v105 = v237;
    }

    v132 = i;
    v241 = *(v122 + 16);
    if (v241)
    {
      v133 = 0;
      v6 = v122 + 64;
      v2 = MEMORY[0x277D84F98];
      *&v235 = v122;
      while (1)
      {
        if (v133 >= *(v122 + 16))
        {
          goto LABEL_175;
        }

        *&v244 = v133;
        a1 = *(v6 - 32);
        v9 = *(v6 - 24);
        v136 = *(v6 - 16);
        v135 = *(v6 - 8);
        v137 = *v6;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v138 = swift_isUniquelyReferenced_nonNull_native();
        v259[0] = v2;
        v139 = sub_2287E6768(a1, v9, v136, v135);
        v141 = *(v2 + 2);
        v142 = (v140 & 1) == 0;
        v24 = __OFADD__(v141, v142);
        v143 = v141 + v142;
        if (v24)
        {
          goto LABEL_176;
        }

        v144 = v140;
        if (*(v2 + 3) < v143)
        {
          break;
        }

        if (v138)
        {
          goto LABEL_114;
        }

        v149 = v139;
        sub_228853934(sub_228854EC8);
        v139 = v149;
        v105 = v237;
        if (v144)
        {
LABEL_106:
          a1 = v139;

          v134 = v259[0];
          *(*(v259[0] + 56) + 8 * a1) = v137;

          v2 = v134;
          goto LABEL_107;
        }

LABEL_115:
        v2 = v259[0];
        *(v259[0] + 8 * (v139 >> 6) + 64) |= 1 << v139;
        v146 = (*(v2 + 6) + 32 * v139);
        *v146 = a1;
        v146[1] = v9;
        v146[2] = v136;
        v146[3] = v135;
        *(*(v2 + 7) + 8 * v139) = v137;

        v147 = *(v2 + 2);
        v24 = __OFADD__(v147, 1);
        v148 = v147 + 1;
        if (v24)
        {
          goto LABEL_178;
        }

        *(v2 + 2) = v148;
LABEL_107:
        v132 = i;
        v133 = v244 + 1;
        v6 += 40;
        v122 = v235;
        if (v241 == (v244 + 1))
        {
          goto LABEL_120;
        }
      }

      sub_228851734(v143, v138, sub_228854EC8);
      v139 = sub_2287E6768(a1, v9, v136, v135);
      if ((v144 & 1) != (v145 & 1))
      {
        goto LABEL_184;
      }

LABEL_114:
      v105 = v237;
      if (v144)
      {
        goto LABEL_106;
      }

      goto LABEL_115;
    }

    v2 = MEMORY[0x277D84F98];
LABEL_120:
    v226 = v2;

    v151 = v240;
    if (!v240)
    {
LABEL_147:
      v192 = *v223;
      v6 = (*v223 + 4);
      v193 = 1 << *(*v223 + 32);
      v194 = -1;
      if (v193 < 64)
      {
        v194 = ~(-1 << v193);
      }

      v195 = v194 & (*v223)[4];
      v2 = ((v193 + 63) >> 6);
      v240 = v224 + 8;
      *&v244 = v192;

      v196 = 0;
      *&v197 = 136315394;
      v235 = v197;
      for (i = v2; v195; v2 = i)
      {
LABEL_156:
        while (1)
        {
          v199 = __clz(__rbit64(v195));
          v195 &= v195 - 1;
          v200 = *(v244 + 48) + ((v196 << 11) | (32 * v199));
          v201 = *v200;
          v202 = *(v200 + 8);
          v9 = *(v200 + 16);
          v203 = *(v200 + 24);
          a1 = *(v226 + 2);

          if (!a1 || (sub_2287E6768(v201, v202, v9, v203), (v204 & 1) == 0))
          {
            v241 = v201;
            v205 = *(v239 + 2);
            if (*(v205 + 16))
            {
              v206 = sub_2287E6768(v241, v202, v9, v203);
              if (v207)
              {
                break;
              }
            }
          }

          v2 = i;
          if (!v195)
          {
            goto LABEL_152;
          }
        }

        sub_2287E766C(*(v205 + 56) + 40 * v206, &v254);
        sub_2287EC014(&v254, v259);
        v232 = swift_getObjectType();
        (v231)(v232, p_os_unfair_lock_opaque);

        v208 = sub_22887F160();
        v209 = sub_22887F6B0();

        if (os_log_type_enabled(v208, v209))
        {
          LODWORD(v228) = v209;
          v210 = swift_slowAlloc();
          *&v227 = swift_slowAlloc();
          *&v254 = v227;
          *v210 = v235;
          *&v245 = v237;
          swift_unknownObjectRetain();
          v211 = sub_22887F3B0();
          v232 = sub_2287E64D8(v211, v212, &v254);
          v213 = v210;

          *(v210 + 4) = v232;
          *(v210 + 12) = 2080;
          if (!v203)
          {

            v9 = v241;
            v203 = v202;
          }

          v214 = sub_2287E64D8(v9, v203, &v254);

          *(v213 + 14) = v214;
          _os_log_impl(&dword_2287E4000, v208, v228, "[%s]: Stopping observation of %s", v213, 0x16u);
          v215 = v227;
          swift_arrayDestroy();
          MEMORY[0x22AAC1440](v215, -1, -1);
          MEMORY[0x22AAC1440](v213, -1, -1);
        }

        else
        {
        }

        (v229)(v221, v230);
        a1 = v260;
        v9 = v261;
        __swift_project_boxed_opaque_existential_1(v259, v260);
        (*(v9 + 8))(a1, v9);
        __swift_destroy_boxed_opaque_existential_1(v259);
      }

LABEL_152:
      while (1)
      {
        v198 = v196 + 1;
        if (__OFADD__(v196, 1))
        {
          goto LABEL_169;
        }

        if (v198 >= v2)
        {

          v216 = v222;
          *v223 = v226;
          v217 = sub_22884EAC0(v238, v216);

          return v217;
        }

        v195 = *(v6 + 8 * v198);
        ++v196;
        if (v195)
        {
          v196 = v198;
          goto LABEL_156;
        }
      }
    }

    v152 = *v223;
    v153 = v222 + 32;
    *&v235 = v224 + 8;
    *&v150 = 136315394;
    v227 = v150;
    v241 = v152;
    while (1)
    {
      v240 = v151;
      *&v244 = v153;
      sub_2288054D8(v153, v259);
      v157 = v260;
      v158 = v261;
      __swift_project_boxed_opaque_existential_1(v259, v260);
      (*(v158 + 5))(&v254, v157, v158);
      v159 = v254;
      v160 = *(&v255 + 1);
      v161 = v255;
      if (v236)
      {
        v162 = *(v236 + 16);
        if (*(v162 + 16))
        {

          v163 = sub_2287E6768(v159, *(&v159 + 1), v161, v160);
          if (v164)
          {
            sub_2287E766C(*(v162 + 56) + 40 * v163, &v245);

            if (!*(v152 + 2))
            {
              goto LABEL_136;
            }

            goto LABEL_133;
          }
        }
      }

      *&v247 = 0;
      v245 = 0u;
      v246 = 0u;
      if (!*(v152 + 2))
      {
        goto LABEL_136;
      }

LABEL_133:
      sub_2287E6768(v159, *(&v159 + 1), v161, v160);
      if ((v165 & 1) == 0)
      {
LABEL_136:
        v228 = v159;
        swift_getObjectType();
        v167 = v232;
        v231();

        v168 = sub_22887F160();
        v169 = sub_22887F6B0();

        if (os_log_type_enabled(v168, v169))
        {
          v170 = v105;
          v171 = swift_slowAlloc();
          v172 = swift_slowAlloc();
          *&v254 = v172;
          *v171 = v227;
          *&v250 = v170;
          swift_unknownObjectRetain();
          v173 = sub_22887F3B0();
          v175 = sub_2287E64D8(v173, v174, &v254);

          *(v171 + 4) = v175;
          *(v171 + 12) = 2080;
          if (!v160)
          {

            v161 = v228;
            v160 = *(&v159 + 1);
          }

          v176 = sub_2287E64D8(v161, v160, &v254);

          *(v171 + 14) = v176;
          _os_log_impl(&dword_2287E4000, v168, v169, "[%s]: Beginning observation of %s", v171, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAC1440](v172, -1, -1);
          MEMORY[0x22AAC1440](v171, -1, -1);

          (v229)(v232, v230);
          v105 = v237;
        }

        else
        {

          (v229)(v167, v230);
        }

        v152 = v241;
        v154 = v260;
        v155 = v261;
        __swift_project_boxed_opaque_existential_1(v259, v260);
        a1 = v242;
        v9 = sub_22884A948(v262);
        v242 = a1;
        sub_22884E684(&v245, v9, v154, v155);
        v132 = i;
        v156 = v244;
        goto LABEL_124;
      }

      v9 = v262;

      a1 = sub_228815FD8(v166, v9);

      if (a1)
      {
        v156 = v244;
        goto LABEL_125;
      }

      v177 = v225;
      (v231)(v132, p_os_unfair_lock_opaque);
      sub_2288054D8(v259, &v254);

      v178 = sub_22887F160();
      v179 = sub_22887F6B0();

      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        v266[0] = v181;
        *v180 = v227;
        *&v250 = v105;
        swift_unknownObjectRetain();
        v182 = sub_22887F3B0();
        v184 = sub_2287E64D8(v182, v183, v266);

        *(v180 + 4) = v184;
        *(v180 + 12) = 2080;
        v185 = *(&v255 + 1);
        v186 = v256;
        __swift_project_boxed_opaque_existential_1(&v254, *(&v255 + 1));
        (*(v186 + 40))(&v250, v185, v186);
        v187 = v252;
        if (v252)
        {
          v188 = v251;
        }

        else
        {
          v188 = v250;
        }

        sub_228805534(&v254);
        v189 = sub_2287E64D8(v188, v187, v266);

        *(v180 + 14) = v189;
        _os_log_impl(&dword_2287E4000, v178, v179, "[%s]: Updating observation of %s", v180, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAC1440](v181, -1, -1);
        MEMORY[0x22AAC1440](v180, -1, -1);

        (v229)(v225, v230);
        v105 = v237;
      }

      else
      {

        (v229)(v177, v230);
        sub_228805534(&v254);
      }

      v156 = v244;
      v190 = v260;
      v191 = v261;
      __swift_project_boxed_opaque_existential_1(v259, v260);
      a1 = v242;
      v9 = sub_22884A948(v9);
      v242 = a1;
      sub_22884E684(&v245, v9, v190, v191);
      v132 = i;
      v152 = v241;
LABEL_124:

LABEL_125:
      sub_228854DB8(&v245, &qword_2813D0F80, qword_2813D0F88, &protocol descriptor for InputSignalAnchor);
      sub_228805534(v259);
      v153 = v156 + 56;
      v151 = v240 - 1;
      if (v240 == 1)
      {
        goto LABEL_147;
      }
    }
  }

  *&v250 = MEMORY[0x277D84F90];
  v2 = &v250;
  sub_22887F960();
  if ((v42 & 0x8000000000000000) == 0)
  {
    v44 = 0;
    v231 = (v238 & 0xC000000000000001);
    v226 = (v238 + 32);
    *&v227 = v238 & 0xFFFFFFFFFFFFFF8;
    v228 = v42;
    do
    {
      if (v231)
      {
        v47 = MEMORY[0x22AAC07F0](v44, v238);
      }

      else
      {
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_180;
        }

        if (v44 >= *(v227 + 16))
        {
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        v47 = *(v226 + v44);
      }

      v46 = *(v47 + 136);
      os_unfair_lock_lock(v46 + 17);
      v48 = *&v46[8]._os_unfair_lock_opaque;
      if (v48)
      {
        p_os_unfair_lock_opaque = &v46->_os_unfair_lock_opaque;
        v236 = v47;
        v237 = v44;
        type metadata accessor for InputSignalAnchorSet();
        *&v235 = swift_allocObject();
        v49 = *(v48 + 16);
        v233 = v48;
        if (v49)
        {
          v50 = v48 + 32;

          v45 = MEMORY[0x277D84F98];
          do
          {
            sub_2287E766C(v50, v259);
            v51 = v260;
            v52 = v261;
            __swift_project_boxed_opaque_existential_1(v259, v260);
            (*(v52 + 6))(&v245, v51, v52);
            v53 = *(&v245 + 1);
            v54 = *(&v246 + 1);
            i = v246;
            *&v244 = v245;
            sub_2287E766C(v259, &v254);
            v55 = swift_isUniquelyReferenced_nonNull_native();
            v266[0] = v45;
            v56 = *(&v255 + 1);
            v57 = v256;
            v58 = __swift_mutable_project_boxed_opaque_existential_1(&v254, *(&v255 + 1));
            MEMORY[0x28223BE20](v58);
            v60 = &v219 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v61 + 16))(v60);
            sub_2287F37DC(v60, v244, v53, i, v54, v55, v266, v56, v57);

            __swift_destroy_boxed_opaque_existential_1(&v254);
            v45 = v266[0];
            __swift_destroy_boxed_opaque_existential_1(v259);
            v50 += 40;
            --v49;
          }

          while (v49);
        }

        else
        {

          v45 = MEMORY[0x277D84F98];
        }

        *(v235 + 16) = v45;

        v6 = v239;
        v42 = v228;
        v9 = v229;
        v44 = v237;
        v46 = p_os_unfair_lock_opaque;
      }

      ++v44;
      os_unfair_lock_unlock(v46 + 17);

      sub_22887F930();
      a1 = *(v250 + 16);
      sub_22887F970();
      sub_22887F980();
      v2 = &v250;
      sub_22887F940();
    }

    while (v44 != v42);
    v43 = v250;
    goto LABEL_60;
  }

  __break(1u);
LABEL_184:
  result = sub_22887FC20();
  __break(1u);
  return result;
}