uint64_t sub_22B943600(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *(*v3 + 208);
  v7 = *v3;
  *(v5 + 234) = a2;
  *(v5 + 216) = v2;

  if (v2)
  {
    sub_22B936C4C((v5 + 16));
    v8 = sub_22B943A58;
  }

  else
  {
    *(v5 + 224) = a1;
    sub_22B936C4C((v5 + 16));
    v8 = sub_22B94373C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22B94373C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 224);
  v5 = *(v3 + 184);
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (*(v3 + 232))
  {
    if (*(v3 + 232) == 1)
    {
      if (*(v3 + 234))
      {

        v7 = 1;
        goto LABEL_14;
      }

      v9 = sub_22BA10C6C();

      if (v9)
      {
        v7 = 1;
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    if (*(v3 + 234))
    {
      v8 = sub_22BA10C6C();

      if ((v8 & 1) == 0)
      {
LABEL_11:
        v7 = *(v3 + 233);
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v7 = 0;
LABEL_14:
  v10 = *(v3 + 192) + 1;
  if (v10 != *(v3 + 112))
  {
    *(v3 + 184) = v6;
    *(v3 + 192) = v10;
    *(v3 + 176) = v6;
    *(v3 + 233) = v7;
    v20 = *(v3 + 104);
    if (v10 < *(v20 + 16))
    {
      sub_22B935B38(v20 + 40 * v10 + 32, v3 + 16);
      v22 = *(v3 + 40);
      v21 = *(v3 + 48);
      sub_22B9358B4((v3 + 16), v22);
      v23 = swift_task_alloc();
      *(v3 + 208) = v23;
      *v23 = v3;
      v23[1] = sub_22B943600;
      v25 = *(v3 + 80);
      v24 = *(v3 + 88);

      return sub_22B97EDC0(v25, v24, v22, v21);
    }

LABEL_31:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v11 = *(v3 + 200);
  *(v3 + 120) = v11;
  v12 = *(v11 + 16);
  *(v3 + 128) = v12;
  if (v12)
  {
    v13 = *(v11 + 32);
    *(v3 + 136) = v13;
    if (v12 == 1)
    {
      v14 = v13;
      v15 = *(v3 + 136);
      v16 = *(v3 + 120);
      swift_willThrow();

      v17 = *(v3 + 136);
      v18 = *(v3 + 8);

      return v18();
    }

    v27 = *(v3 + 80);
    v28 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector;
    *(v3 + 144) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
    *(v3 + 152) = *(v27 + v28);
    v29 = v13;
    *(v3 + 160) = 1;
    v30 = *(v3 + 152);
    v31 = *(*(v3 + 120) + 40);
    *(v3 + 168) = v31;

    v32 = v31;
    a1 = sub_22B943268;
    a2 = v30;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v26 = *(v3 + 8);

  return v26(v6, v7);
}

uint64_t sub_22B943A58()
{
  if ((*(*(v0 + 96) + 96) & 1) == 0)
  {
    v15 = (v0 + 216);
    v19 = *(v0 + 216);
    v20 = *(v0 + 200);

    swift_willThrow();
    goto LABEL_11;
  }

  v1 = *(v0 + 200);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 200);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_22B97FA40(0, v5[2] + 1, 1, *(v0 + 200));
    v5 = isUniquelyReferenced_nonNull_native;
  }

  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_22B97FA40((v6 > 1), v7 + 1, 1, v5);
    v5 = isUniquelyReferenced_nonNull_native;
  }

  v8 = *(v0 + 216);
  v5[2] = v7 + 1;
  v9 = (v5 + 4);
  v5[v7 + 4] = v8;
  v10 = *(v0 + 192) + 1;
  if (v10 == *(v0 + 112))
  {
    v11 = *(v0 + 176);
    v12 = *(v0 + 233);
    *(v0 + 120) = v5;
    v13 = v5[2];
    *(v0 + 128) = v13;
    if (v13)
    {
      v14 = *v9;
      *(v0 + 136) = *v9;
      v15 = (v0 + 136);
      if (v13 == 1)
      {
        v16 = v14;
        v17 = *(v0 + 136);
        v18 = *(v0 + 120);
        swift_willThrow();

LABEL_11:
        v21 = *v15;
        v22 = *(v0 + 8);

        return v22();
      }

      v31 = *(v0 + 80);
      v32 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector;
      *(v0 + 144) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      *(v0 + 152) = *(v31 + v32);
      v33 = v14;
      *(v0 + 160) = 1;
      v34 = *(v0 + 152);
      v35 = *(*(v0 + 120) + 40);
      *(v0 + 168) = v35;

      v36 = v35;
      isUniquelyReferenced_nonNull_native = sub_22B943268;
      v3 = v34;
      v4 = 0;

      return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, v3, v4);
    }

    v30 = *(v0 + 8);

    return v30(v11, v12);
  }

  else
  {
    *(v0 + 192) = v10;
    *(v0 + 200) = v5;
    v24 = *(v0 + 104);
    if (v10 >= *(v24 + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, v3, v4);
    }

    sub_22B935B38(v24 + 40 * v10 + 32, v0 + 16);
    v26 = *(v0 + 40);
    v25 = *(v0 + 48);
    sub_22B9358B4((v0 + 16), v26);
    v27 = swift_task_alloc();
    *(v0 + 208) = v27;
    *v27 = v0;
    v27[1] = sub_22B943600;
    v29 = *(v0 + 80);
    v28 = *(v0 + 88);

    return sub_22B97EDC0(v29, v28, v26, v25);
  }
}

uint64_t sub_22B943D3C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_22B943D8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22B943E68;

  return sub_22B939430(a1, v4, v5, v6, (v1 + 5), v7, v8, v9);
}

uint64_t sub_22B943E68()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B943F5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[15];
  v8 = v1[16];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B943E68;

  return sub_22B939AA0(a1, v4, v5, v6, (v1 + 5), (v1 + 10), v7, v8);
}

unint64_t sub_22B944034()
{
  result = qword_281416BE0;
  if (!qword_281416BE0)
  {
    sub_22BA0FDCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416BE0);
  }

  return result;
}

uint64_t type metadata accessor for HandleErrorOutcome()
{
  result = qword_2814155F0;
  if (!qword_2814155F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B9440D8(uint64_t a1)
{
  v2 = type metadata accessor for HandleErrorOutcome();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B944134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandleErrorOutcome();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B944198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandleErrorOutcome();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22B9441FC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 isInternalInstall];

    if (v8)
    {
      v9 = *(*sub_22B9358B4(a1, a1[3]) + 24);
      v54 = a2;
      v55 = a3;
      v10 = v9;

      MEMORY[0x231899730](0x6E69616D6F64, 0xE600000000000000);
      v11 = sub_22BA0FFCC();

      v12 = [v10 stringForKey_];

      if (v12)
      {
        v52 = sub_22BA0FFFC();
        v14 = v13;
      }

      else
      {
        v52 = 0;
        v14 = 0;
      }

      v56 = v14;
      v15 = *(*sub_22B9358B4(a1, a1[3]) + 24);
      v54 = a2;
      v55 = a3;

      v16 = v15;
      MEMORY[0x231899730](1701080931, 0xE400000000000000);
      v17 = sub_22BA0FFCC();

      v51 = [v16 integerForKey_];

      v18 = *(*sub_22B9358B4(a1, a1[3]) + 24);
      v54 = a2;
      v55 = a3;

      v19 = v18;
      MEMORY[0x231899730](1868983913, 0xE400000000000000);
      v20 = sub_22BA0FFCC();

      v21 = [v19 dictionaryForKey_];

      if (v21)
      {
        v53 = sub_22BA0FF6C();
      }

      else
      {
        v53 = 0;
      }

      v22 = *(*sub_22B9358B4(a1, a1[3]) + 24);
      v54 = a2;
      v55 = a3;

      v23 = v22;
      MEMORY[0x231899730](0x746E756F63, 0xE500000000000000);
      v24 = sub_22BA0FFCC();

      v25 = [v23 integerForKey_];

      if (v56)
      {
        if (v25)
        {
          if (v25 >= 1)
          {
            v26 = *(*sub_22B9358B4(a1, a1[3]) + 24);
            v54 = a2;
            v55 = a3;

            v27 = v26;
            MEMORY[0x231899730](0x746E756F63, 0xE500000000000000);
            v28 = sub_22BA0FFCC();

            [v27 setInteger:v25 - 1 forKey:v28];

            if (qword_281414D30 != -1)
            {
              swift_once();
            }

            v29 = sub_22BA0FEFC();
            sub_22B936CA8(v29, qword_28141AD40);

            v30 = sub_22BA0FEDC();
            v31 = sub_22BA1046C();

            if (os_log_type_enabled(v30, v31))
            {
              v32 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v54 = v33;
              *v32 = 136315906;
              *(v32 + 4) = sub_22B99153C(v52, v56, &v54);
              *(v32 + 12) = 2048;
              *(v32 + 14) = v51;
              *(v32 + 22) = 2048;
              *(v32 + 24) = v25;
              *(v32 + 32) = 2048;
              *(v32 + 34) = v25 - 1;
              _os_log_impl(&dword_22B92A000, v30, v31, "Decremented error(%s: %ld) count from %ld to %ld", v32, 0x2Au);
              sub_22B936C4C(v33);
              MEMORY[0x23189ADD0](v33, -1, -1);
              MEMORY[0x23189ADD0](v32, -1, -1);
            }
          }

          v34 = sub_22BA0FFCC();

          if (v53)
          {
            v35 = sub_22BA0FF5C();
          }

          else
          {
            v35 = 0;
          }

          v43 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:v34 code:v51 userInfo:v35];

          if (qword_281414D30 != -1)
          {
            swift_once();
          }

          v44 = sub_22BA0FEFC();
          sub_22B936CA8(v44, qword_28141AD40);
          v45 = v43;
          v46 = sub_22BA0FEDC();
          v47 = sub_22BA1044C();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            *v48 = 138412290;
            *(v48 + 4) = v45;
            *v49 = v45;
            v50 = v45;
            _os_log_impl(&dword_22B92A000, v46, v47, "Throwing forced error %@, based on defaults in com.apple.madrid MiC.ForceJobError.*", v48, 0xCu);
            sub_22B936BEC(v49, &qword_27D8D4CD0, qword_22BA14360);
            MEMORY[0x23189ADD0](v49, -1, -1);
            MEMORY[0x23189ADD0](v48, -1, -1);
          }

          swift_willThrow();
        }

        else
        {

          if (qword_281414D30 != -1)
          {
            swift_once();
          }

          v36 = sub_22BA0FEFC();
          sub_22B936CA8(v36, qword_28141AD40);

          v37 = sub_22BA0FEDC();
          v38 = sub_22BA1044C();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = v56;
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v54 = v41;
            *v40 = 136315650;
            v42 = sub_22B99153C(v52, v39, &v54);

            *(v40 + 4) = v42;
            *(v40 + 12) = 2048;
            *(v40 + 14) = v51;
            *(v40 + 22) = 2048;
            *(v40 + 24) = 0;
            _os_log_impl(&dword_22B92A000, v37, v38, "Forced error (%s: %ld) found, but count is %ld, ignoring", v40, 0x20u);
            sub_22B936C4C(v41);
            MEMORY[0x23189ADD0](v41, -1, -1);
            MEMORY[0x23189ADD0](v40, -1, -1);
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
  }
}

uint64_t sub_22B94498C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B944A44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22B944A5C()
{
  result = qword_281416950;
  if (!qword_281416950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416950);
  }

  return result;
}

unint64_t sub_22B944AB0(unint64_t result)
{
  if (result >= 5)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_22B944AC0(unint64_t result)
{
  if (result >= 5)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_22B944AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[11];
  v9 = v1[12];
  v10 = v1[13];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22B945AC8;

  return sub_22B9407BC(a1, v4, v5, v6, v7, (v1 + 6), v8, v9);
}

uint64_t sub_22B944BBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 185) = a5;
  *(v5 + 184) = a4;
  *(v5 + 48) = a2;
  *(v5 + 56) = a3;
  *(v5 + 40) = a1;
  return MEMORY[0x2822009F8](sub_22B944BE8, 0, 0);
}

uint64_t sub_22B944BE8()
{
  v1 = *(v0 + 185);
  v2 = *(v0 + 56);
  v3 = v2[2];
  *(v0 + 64) = v3;
  if (v3)
  {
    v4 = MEMORY[0x277D84F90];
    *(v0 + 144) = 0;
    *(v0 + 152) = v4;
    *(v0 + 128) = 0;
    *(v0 + 136) = 0;
    *(v0 + 186) = v1 == 2;
    v6 = v2[7];
    v5 = v2[8];
    sub_22B9358B4(v2 + 4, v6);
    v7 = swift_task_alloc();
    *(v0 + 160) = v7;
    *v7 = v0;
    v7[1] = sub_22B9451C8;
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);

    return sub_22B97EDC0(v9, v8, v6, v5);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    *(v0 + 72) = MEMORY[0x277D84F90];
    *(v0 + 80) = v12;
    if (v12)
    {
      v13 = *(v11 + 32);
      *(v0 + 88) = v13;
      if (v12 == 1)
      {
        v14 = v13;
        v15 = *(v0 + 88);
        v16 = *(v0 + 72);
        swift_willThrow();

        v17 = *(v0 + 88);
        v18 = *(v0 + 8);

        return v18();
      }

      else
      {
        v21 = *(v0 + 40);
        v22 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector;
        *(v0 + 96) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
        *(v0 + 104) = *(v21 + v22);
        v23 = v13;
        *(v0 + 112) = 1;
        v24 = *(v0 + 104);
        v25 = *(*(v0 + 72) + 40);
        *(v0 + 120) = v25;

        v26 = v25;

        return MEMORY[0x2822009F8](sub_22B944E30, v24, 0);
      }
    }

    else
    {
      v19 = v1 == 2;

      v20 = *(v0 + 8);

      return v20(0, v19);
    }
  }
}

uint64_t sub_22B944E30()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 184);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 184) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v0 + 104);
    v2 = sub_22B97FA40(0, v2[2] + 1, 1, v2);
    *(v9 + 184) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_22B97FA40((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 120);
  v7 = *(v0 + 104);
  v2[2] = v5 + 1;
  v2[v5 + 4] = v6;
  *(v7 + 184) = v2;
  swift_endAccess();
  v8 = v6;

  return MEMORY[0x2822009F8](sub_22B944F44, 0, 0);
}

uint64_t sub_22B944F44()
{
  v30 = v0;
  v1 = (*(v0 + 40) + *(v0 + 96));
  v2 = sub_22B9358B4(v1, v1[3]);
  v3 = *(*v2 + 56);
  if (v3)
  {
    v4 = *(v0 + 120);
    v5 = *(v0 + 80);
    v6 = *(v0 + 112) + 1;
    v7 = *(*v2 + 56);
    swift_unknownObjectRetain();
    v8 = sub_22BA0FB5C();
    [v3 appendError_];
    swift_unknownObjectRelease();

    if (v6 == v5)
    {
LABEL_3:
      v9 = *(v0 + 72);

      v10 = *(v0 + 88);
      v11 = *(v0 + 72);
      swift_willThrow();

      v12 = *(v0 + 88);
      v13 = *(v0 + 8);

      return v13();
    }
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v15 = sub_22BA0FEFC();
    sub_22B936CA8(v15, qword_28141AD40);
    v16 = sub_22BA0FEDC();
    v17 = sub_22BA1044C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315138;
      v20 = sub_22B97D720();
      v22 = sub_22B99153C(v20, v21, &v29);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_22B92A000, v16, v17, "Encountered error setting sync date: %s", v18, 0xCu);
      sub_22B936C4C(v19);
      MEMORY[0x23189ADD0](v19, -1, -1);
      MEMORY[0x23189ADD0](v18, -1, -1);
    }

    v23 = *(v0 + 80);
    v24 = *(v0 + 112) + 1;

    if (v24 == v23)
    {
      goto LABEL_3;
    }
  }

  v25 = *(v0 + 104);
  v26 = *(v0 + 112) + 1;
  *(v0 + 112) = v26;
  v27 = *(*(v0 + 72) + 8 * v26 + 32);
  *(v0 + 120) = v27;
  v28 = v27;

  return MEMORY[0x2822009F8](sub_22B944E30, v25, 0);
}

uint64_t sub_22B9451C8(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *(*v3 + 160);
  v7 = *v3;
  *(v5 + 187) = a2;
  *(v5 + 168) = v2;

  if (v2)
  {
    v8 = sub_22B9455F4;
  }

  else
  {
    *(v5 + 176) = a1;
    v8 = sub_22B9452F4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22B9452F4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 176);
  v5 = *(v3 + 136);
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  if (*(v3 + 185))
  {
    if (*(v3 + 185) == 1)
    {
      if (*(v3 + 187))
      {

        v7 = 1;
        goto LABEL_14;
      }

      v9 = sub_22BA10C6C();

      if (v9)
      {
        v7 = 1;
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    if (*(v3 + 187))
    {
      v8 = sub_22BA10C6C();

      if ((v8 & 1) == 0)
      {
LABEL_11:
        v7 = *(v3 + 186);
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v7 = 0;
LABEL_14:
  v10 = *(v3 + 144) + 1;
  if (v10 == *(v3 + 64))
  {
    v11 = *(v3 + 152);
    *(v3 + 72) = v11;
    v12 = *(v11 + 16);
    *(v3 + 80) = v12;
    if (v12)
    {
      v13 = *(v11 + 32);
      *(v3 + 88) = v13;
      if (v12 == 1)
      {
        v14 = v13;
        v15 = *(v3 + 88);
        v16 = *(v3 + 72);
        swift_willThrow();

        v17 = *(v3 + 88);
        v18 = *(v3 + 8);

        return v18();
      }

      v27 = *(v3 + 40);
      v28 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector;
      *(v3 + 96) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      *(v3 + 104) = *(v27 + v28);
      v29 = v13;
      *(v3 + 112) = 1;
      v30 = *(v3 + 104);
      v31 = *(*(v3 + 72) + 40);
      *(v3 + 120) = v31;

      v32 = v31;
      a1 = sub_22B944E30;
      a2 = v30;
      a3 = 0;

      return MEMORY[0x2822009F8](a1, a2, a3);
    }

    v26 = *(v3 + 8);

    return v26(v6, v7);
  }

  else
  {
    *(v3 + 136) = v6;
    *(v3 + 144) = v10;
    *(v3 + 128) = v6;
    *(v3 + 186) = v7;
    v20 = (*(v3 + 56) + 40 * v10);
    v22 = v20[7];
    v21 = v20[8];
    sub_22B9358B4(v20 + 4, v22);
    v23 = swift_task_alloc();
    *(v3 + 160) = v23;
    *v23 = v3;
    v23[1] = sub_22B9451C8;
    v25 = *(v3 + 40);
    v24 = *(v3 + 48);

    return sub_22B97EDC0(v25, v24, v22, v21);
  }
}

uint64_t sub_22B9455F4()
{
  if ((*(v0 + 184) & 1) == 0)
  {
    v13 = (v0 + 168);
    v17 = *(v0 + 168);
    v18 = *(v0 + 152);

    swift_willThrow();
    goto LABEL_11;
  }

  v1 = *(v0 + 152);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 152);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_22B97FA40(0, v3[2] + 1, 1, *(v0 + 152));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_22B97FA40((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v0 + 168);
  v3[2] = v5 + 1;
  v7 = (v3 + 4);
  v3[v5 + 4] = v6;
  v8 = *(v0 + 144) + 1;
  if (v8 == *(v0 + 64))
  {
    v9 = *(v0 + 128);
    v10 = *(v0 + 186);
    *(v0 + 72) = v3;
    v11 = v3[2];
    *(v0 + 80) = v11;
    if (v11)
    {
      v12 = *v7;
      *(v0 + 88) = *v7;
      v13 = (v0 + 88);
      if (v11 == 1)
      {
        v14 = v12;
        v15 = *(v0 + 88);
        v16 = *(v0 + 72);
        swift_willThrow();

LABEL_11:
        v19 = *v13;
        v20 = *(v0 + 8);

        return v20();
      }

      v29 = *(v0 + 40);
      v30 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector;
      *(v0 + 96) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      *(v0 + 104) = *(v29 + v30);
      v31 = v12;
      *(v0 + 112) = 1;
      v32 = *(v0 + 104);
      v33 = *(*(v0 + 72) + 40);
      *(v0 + 120) = v33;

      v34 = v33;

      return MEMORY[0x2822009F8](sub_22B944E30, v32, 0);
    }

    else
    {

      v28 = *(v0 + 8);

      return v28(v9, v10);
    }
  }

  else
  {
    *(v0 + 144) = v8;
    *(v0 + 152) = v3;
    v22 = (*(v0 + 56) + 40 * v8);
    v24 = v22[7];
    v23 = v22[8];
    sub_22B9358B4(v22 + 4, v24);
    v25 = swift_task_alloc();
    *(v0 + 160) = v25;
    *v25 = v0;
    v25[1] = sub_22B9451C8;
    v27 = *(v0 + 40);
    v26 = *(v0 + 48);

    return sub_22B97EDC0(v27, v26, v24, v23);
  }
}

uint64_t sub_22B9458B8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_22B936C4C(v0 + 5);
  sub_22B936C4C(v0 + 10);
  if (v0[15])
  {
    v3 = v0[16];
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_22B945918(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[15];
  v8 = v1[16];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B945AC8;

  return sub_22B941244(a1, v4, v5, v6, (v1 + 5), (v1 + 10), v7, v8);
}

uint64_t sub_22B945A28()
{
  sub_22B945A80();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_22B945A80()
{
  if (!qword_281416C10)
  {
    v0 = sub_22BA0FD8C();
    if (!v1)
    {
      atomic_store(v0, &qword_281416C10);
    }
  }
}

uint64_t sub_22B945AD4()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_22B93E87C();
}

uint64_t sub_22B945B48()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (xpc_activity_get_state(Strong) != 4)
    {
      sub_22B946530();
      swift_allocError();
      *v3 = 3;
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_22B946530();
    swift_allocError();
    *v2 = 3;
    return swift_willThrow();
  }
}

uint64_t sub_22B945C0C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v12 = sub_22BA0FEFC();
    sub_22B936CA8(v12, qword_28141AD40);
    v13 = sub_22BA0FEDC();
    v14 = sub_22BA1044C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22B92A000, v13, v14, "Unexpected missing activity while deferring", v15, 2u);
      MEMORY[0x23189ADD0](v15, -1, -1);
    }

    return 0;
  }

  v1 = Strong;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD40);

  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1046C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = 7104878;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = xpc_activity_copy_identifier();
      if (v8)
      {
        v9 = v8;
        sub_22BA100DC();
        free(v9);
        swift_unknownObjectRelease();
        v5 = sub_22BA1005C();
        v11 = v10;
LABEL_15:
        v16 = sub_22B99153C(v5, v11, &v21);

        *(v6 + 4) = v16;
        _os_log_impl(&dword_22B92A000, v3, v4, "Marking xpc_activity state DEFER for %s", v6, 0xCu);
        sub_22B936C4C(v7);
        MEMORY[0x23189ADD0](v7, -1, -1);
        MEMORY[0x23189ADD0](v6, -1, -1);
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }

    v11 = 0xE300000000000000;
    goto LABEL_15;
  }

LABEL_16:

  if (xpc_activity_set_state(v1, 3))
  {
    swift_unknownObjectRelease();
    return 1;
  }

  v18 = sub_22BA0FEDC();
  v19 = sub_22BA1044C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22B92A000, v18, v19, "We did not set the state of activity to DEFER successfully", v20, 2u);
    MEMORY[0x23189ADD0](v20, -1, -1);
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_22B945F30()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v12 = sub_22BA0FEFC();
    sub_22B936CA8(v12, qword_28141AD40);
    v13 = sub_22BA0FEDC();
    v14 = sub_22BA1044C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22B92A000, v13, v14, "Unexpected missing activity while trying to mark DONE", v15, 2u);
      MEMORY[0x23189ADD0](v15, -1, -1);
    }

    return 0;
  }

  v1 = Strong;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD40);

  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1046C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = 7104878;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = v7;
    *v6 = 136315138;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = xpc_activity_copy_identifier();
      if (v8)
      {
        v9 = v8;
        sub_22BA100DC();
        free(v9);
        swift_unknownObjectRelease();
        v5 = sub_22BA1005C();
        v11 = v10;
LABEL_15:
        v16 = sub_22B99153C(v5, v11, &v31);

        *(v6 + 4) = v16;
        _os_log_impl(&dword_22B92A000, v3, v4, "Marking xpc_activity state DONE for %s", v6, 0xCu);
        sub_22B936C4C(v7);
        MEMORY[0x23189ADD0](v7, -1, -1);
        MEMORY[0x23189ADD0](v6, -1, -1);
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }

    v11 = 0xE300000000000000;
    goto LABEL_15;
  }

LABEL_16:

  if (xpc_activity_get_state(v1) == 5)
  {

    v17 = sub_22BA0FEDC();
    v18 = sub_22BA1044C();

    if (!os_log_type_enabled(v17, v18))
    {
LABEL_29:

      goto LABEL_30;
    }

    v19 = 7104878;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 136315138;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = xpc_activity_copy_identifier();
      if (v22)
      {
        v23 = v22;
        sub_22BA100DC();
        free(v23);
        swift_unknownObjectRelease();
        v19 = sub_22BA1005C();
        v25 = v24;
LABEL_28:
        v30 = sub_22B99153C(v19, v25, &v31);

        *(v20 + 4) = v30;
        _os_log_impl(&dword_22B92A000, v17, v18, "Tried to mark activity %s but activity is already marked as DONE", v20, 0xCu);
        sub_22B936C4C(v21);
        MEMORY[0x23189ADD0](v21, -1, -1);
        MEMORY[0x23189ADD0](v20, -1, -1);
        goto LABEL_29;
      }

      swift_unknownObjectRelease();
    }

    v25 = 0xE300000000000000;
    goto LABEL_28;
  }

  if (!xpc_activity_set_state(v1, 5))
  {
    v26 = sub_22BA0FEDC();
    v27 = sub_22BA1044C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22B92A000, v26, v27, "We did not set the state of activity to DONE successfully", v28, 2u);
      MEMORY[0x23189ADD0](v28, -1, -1);
    }

    swift_unknownObjectRelease();
    return 0;
  }

LABEL_30:
  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_22B9463A4()
{
  sub_22B946584(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22B94640C@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *a1 = v2;
  return result;
}

BOOL sub_22B9464E4()
{
  v1 = *v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  should_defer = xpc_activity_should_defer(Strong);
  swift_unknownObjectRelease();
  return should_defer;
}

unint64_t sub_22B946530()
{
  result = qword_27D8D4E10;
  if (!qword_27D8D4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4E10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCActivityError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for XPCActivityError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22B946700()
{
  result = qword_27D8D4E18;
  if (!qword_27D8D4E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4E18);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SyncProgress(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SyncProgress(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncProgress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_22B946810(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B946844(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_22B94685C(uint64_t a1, uint64_t a2)
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

uint64_t sub_22B946878(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B9468C0(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_22B94691C(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_22B94693C, 0, 0);
}

uint64_t sub_22B94693C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v0[20] = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v4 = (v1 + v3);
  v5 = sub_22B9358B4((v1 + v3), *(v1 + v3 + 24));
  v6 = *MEMORY[0x277D19BD0];
  v7 = [*(*v5 + 24) integerForKey_];
  [*(*sub_22B9358B4(v4 v4[3]) + 24)];
  if (v7 >= *v2)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v14 = sub_22BA0FEFC();
    sub_22B936CA8(v14, qword_28141AD40);
    v15 = sub_22BA0FEDC();
    v16 = sub_22BA1046C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22B92A000, v15, v16, "First sync after restore from backup, pro actively clearing sync state", v17, 2u);
      MEMORY[0x23189ADD0](v17, -1, -1);
    }

    v18 = v0[19];

    v19 = *(v18 + 48);
    [v19 clearSyncStateForAllRecordTypes];
    v0[2] = v0;
    v0[7] = v0 + 28;
    v0[3] = sub_22B946DD8;
    v20 = swift_continuation_init();
    v0[17] = sub_22B9349C8(&unk_27D8D4EE0, qword_22BA138F0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22BA0435C;
    v0[13] = &unk_283F52DA8;
    v0[14] = v20;
    [v19 ensureSaltIsAvailable_];
    v10 = (v0 + 2);

    return MEMORY[0x282200938](v10);
  }

  v8 = *(v0[19] + 40);
  v0[22] = v8;
  if (v8 >> 62)
  {
    v9 = sub_22BA1080C();
    v0[23] = v9;
    if (v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[23] = v9;
    if (v9)
    {
LABEL_4:
      v10 = sub_22BA102EC();
      v0[24] = v10;
      if (v9 >= 1)
      {
        v0[25] = 0;
        v11 = v0[22];
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x231899FA0](0);
          v13 = v0[24];
        }

        else
        {
          v21 = *(v11 + 32);
          v12 = swift_unknownObjectRetain();
        }

        v0[26] = v12;
        v0[27] = sub_22BA102DC();
        v23 = sub_22BA1029C();

        return MEMORY[0x2822009F8](sub_22B947058, v23, v22);
      }

      __break(1u);
      return MEMORY[0x282200938](v10);
    }
  }

  v24 = (v0[18] + v0[20]);
  v25 = *(*sub_22B9358B4(v24, v24[3]) + 24);
  v26 = sub_22BA0A634(0xBu, 0);
  v28 = v27;

  v29 = v0[19];
  if ((v28 & 1) == 0)
  {
    v30 = *(v29 + 8);
    if (v26 >= v30)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v30 = *(v29 + 8);
  if (v30 > 0)
  {
LABEL_21:
    v31 = (v0[18] + v0[20]);
    v32 = *sub_22B9358B4(v31, v31[3]);
    sub_22BA08CC8(0, 0xD000000000000013, 0x800000022BA1C4C0);
    v33 = *(*sub_22B9358B4(v31, v31[3]) + 24);
    v34 = sub_22BA0FFCC();
    [v33 setInteger:v30 forKey:v34];
  }

LABEL_22:
  v35 = v0[1];

  return v35(0, 0);
}

uint64_t sub_22B946DD8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_22B9472F0;
  }

  else
  {
    v3 = sub_22B946EE8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B946EE8()
{
  v1 = (v0[18] + v0[20]);
  v2 = *(*sub_22B9358B4(v1, v1[3]) + 24);
  v3 = sub_22BA0A634(0xBu, 0);
  v5 = v4;

  v6 = v0[19];
  if (v5)
  {
    v7 = *(v6 + 8);
    if (v7 <= 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = *(v6 + 8);
  if (v3 < v7)
  {
LABEL_3:
    v8 = (v0[18] + v0[20]);
    v9 = *sub_22B9358B4(v8, v8[3]);
    sub_22BA08CC8(0, 0xD000000000000013, 0x800000022BA1C4C0);
    v10 = *(*sub_22B9358B4(v8, v8[3]) + 24);
    v11 = sub_22BA0FFCC();
    [v10 setInteger:v7 forKey:v11];
  }

LABEL_4:
  v12 = v0[1];

  return v12(0, 0);
}

uint64_t sub_22B947058()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  [v2 resetLocalSyncStateIfAppropriate];

  return MEMORY[0x2822009F8](sub_22B9470D0, 0, 0);
}

uint64_t sub_22B9470D0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  swift_unknownObjectRelease();
  if (v2 + 1 == v3)
  {
    v4 = (v0[18] + v0[20]);
    v5 = *(*sub_22B9358B4(v4, v4[3]) + 24);
    v6 = sub_22BA0A634(0xBu, 0);
    v8 = v7;

    v9 = v0[19];
    if (v8)
    {
      v10 = *(v9 + 8);
      if (v10 <= 0)
      {
LABEL_5:
        v15 = v0[1];

        return v15(0, 0);
      }
    }

    else
    {
      v10 = *(v9 + 8);
      if (v6 >= v10)
      {
        goto LABEL_5;
      }
    }

    v11 = (v0[18] + v0[20]);
    v12 = *sub_22B9358B4(v11, v11[3]);
    sub_22BA08CC8(0, 0xD000000000000013, 0x800000022BA1C4C0);
    v13 = *(*sub_22B9358B4(v11, v11[3]) + 24);
    v14 = sub_22BA0FFCC();
    [v13 setInteger:v10 forKey:v14];

    goto LABEL_5;
  }

  v17 = v0[25] + 1;
  v0[25] = v17;
  v18 = v0[22];
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x231899FA0]();
  }

  else
  {
    v20 = *(v18 + 8 * v17 + 32);
    v19 = swift_unknownObjectRetain();
  }

  v0[26] = v19;
  v21 = v0[24];
  v0[27] = sub_22BA102DC();
  v23 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B947058, v23, v22);
}

uint64_t sub_22B9472F0()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2();
}

uint64_t sub_22B947364()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_22B930C20(v1);
  return v1;
}

uint64_t sub_22B947398(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  v5 = swift_task_alloc();
  *(v2 + 72) = v5;
  *v5 = v2;
  v5[1] = sub_22B947448;

  return sub_22B94691C(a1);
}

uint64_t sub_22B947448(uint64_t a1, char a2)
{
  v6 = *(*v3 + 72);
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    v10 = *(v7 + 8);

    return v10(a1, a2 & 1);
  }
}

__n128 sub_22B9475A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22B9475BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B947604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B947664()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_22B930C20(v1);
  return v1;
}

uint64_t sub_22B947698(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B943E68;

  return (sub_22B947BCC)(a1, a2);
}

uint64_t sub_22B94774C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 24);
  v6 = *(v2 + 32);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B947814;

  return (sub_22B947E44)(a1, a2, v7, v6);
}

uint64_t sub_22B947814(uint64_t a1, char a2)
{
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    v10 = *(v7 + 8);

    return v10(a1, a2 & 1);
  }
}

uint64_t sub_22B947958(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_22B947A44;

  return sub_22B9E81AC(a1, a2, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/ImportStep.swift", 102, 2);
}

uint64_t sub_22B947A44()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B947B40, 0, 0);
}

uint64_t sub_22B947B40()
{
  v1 = *sub_22B9358B4((*(v0 + 16) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 16) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v2 = sub_22BA09CBC();
  if (v2)
  {
    [v2 sendBroadcastToClient];
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22B947BCC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_22B947CB8;

  return sub_22B9E81AC(a1, a2, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/ImportStep.swift", 102, 2);
}

uint64_t sub_22B947CB8()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B947DB4, 0, 0);
}

uint64_t sub_22B947DB4()
{
  v1 = *(*sub_22B9358B4((*(v0 + 16) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 16) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24)) + 56);
  if (v1)
  {
    [v1 setSyncJobStateWithState_];
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B947E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_22B947E68, 0, 0);
}

uint64_t sub_22B947E68()
{
  v50 = v0;
  v1 = v0[6];
  v2 = *(v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_delegate);
  if (v2)
  {
    v49[0] = 0x2E636E7973;
    v49[1] = 0xE500000000000000;
    v3 = *sub_22B9358B4((v1 + 16), *(v1 + 40));
    v4 = sub_22B9B580C();
    MEMORY[0x231899730](v4);

    MEMORY[0x231899730](46, 0xE100000000000000);
    sub_22BA0FDCC();
    sub_22B944034();
    v5 = sub_22BA10C1C();
    MEMORY[0x231899730](v5);

    v6 = sub_22BA0FFCC();

    v7 = sub_22BA0FDAC();
    [v2 syncCoordinatorWaitingForImportToFinishWithName:v6 identifier:v7];
  }

  v8 = v0[8];
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 32);
    v11 = MEMORY[0x277D84F90];
    do
    {
      v13 = *v10++;
      v12 = v13;
      v14 = v13 == 5;
      v15 = 0x556567617373656DLL;
      if (v13 != 5)
      {
        v15 = 0x6E776F6E6B6E75;
      }

      v16 = 0xEF31566574616470;
      if (!v14)
      {
        v16 = 0xE700000000000000;
      }

      v17 = 0x656D686361747461;
      if (v12 != 3)
      {
        v17 = 0xD000000000000012;
      }

      v18 = 0x800000022BA1BA10;
      if (v12 == 3)
      {
        v18 = 0xEA0000000000746ELL;
      }

      if (v12 <= 4)
      {
        v15 = v17;
        v16 = v18;
      }

      v19 = 0x72636E4574616863;
      if (v12 != 1)
      {
        v19 = 0xD000000000000012;
      }

      v20 = 0xEF32766465747079;
      if (v12 != 1)
      {
        v20 = 0x800000022BA1B9F0;
      }

      if (!v12)
      {
        v19 = 0xD000000000000012;
        v20 = 0x800000022BA1B9C0;
      }

      if (v12 <= 2)
      {
        v21 = v19;
      }

      else
      {
        v21 = v15;
      }

      if (v12 <= 2)
      {
        v22 = v20;
      }

      else
      {
        v22 = v16;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_22B97FB74(0, *(v11 + 2) + 1, 1, v11);
      }

      v24 = *(v11 + 2);
      v23 = *(v11 + 3);
      if (v24 >= v23 >> 1)
      {
        v11 = sub_22B97FB74((v23 > 1), v24 + 1, 1, v11);
      }

      *(v11 + 2) = v24 + 1;
      v25 = &v11[16 * v24];
      *(v25 + 4) = v21;
      *(v25 + 5) = v22;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v0[5] = v11;
  sub_22B9349C8(&qword_27D8D4EF0, &qword_22BA13990);
  sub_22B9486FC();
  v26 = sub_22BA0FFAC();
  v28 = v27;

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v29 = v0[6];
  v30 = sub_22BA0FEFC();
  v0[10] = sub_22B936CA8(v30, qword_28141AD10);
  swift_unknownObjectRetain();

  v31 = sub_22BA0FEDC();
  v32 = sub_22BA1046C();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = v0[6];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v49[0] = v35;
    *v34 = 136315394;
    v36 = *sub_22B9358B4((v33 + 16), *(v33 + 40));
    v37 = sub_22B9B580C();
    v39 = sub_22B99153C(v37, v38, v49);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    v40 = sub_22B99153C(v26, v28, v49);

    *(v34 + 14) = v40;
    _os_log_impl(&dword_22B92A000, v31, v32, "Import Step start for job: %s types: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v35, -1, -1);
    MEMORY[0x23189ADD0](v34, -1, -1);
  }

  else
  {
  }

  if (qword_2814157A8 != -1)
  {
    swift_once();
  }

  v41 = qword_28141AD98;
  v0[11] = qword_28141AD98;
  swift_beginAccess();
  v42 = *(v41 + 16);
  *(v41 + 16) = MEMORY[0x277D84F98];

  v43 = swift_task_alloc();
  v0[12] = v43;
  *v43 = v0;
  v43[1] = sub_22B9483E8;
  v44 = v0[8];
  v45 = v0[9];
  v47 = v0[6];
  v46 = v0[7];

  return sub_22B9D75F4(v47, v46, v44);
}

uint64_t sub_22B9483E8()
{
  v2 = *(*v1 + 96);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B948518, 0, 0);
  }
}

uint64_t sub_22B948518()
{
  v25 = v0;
  v1 = v0[10];
  v2 = v0[6];
  swift_unknownObjectRetain();
  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1046C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315394;
    v9 = *sub_22B9358B4((v6 + 16), *(v6 + 40));
    v10 = sub_22B9B580C();
    v12 = sub_22B99153C(v10, v11, &v24);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v13 = *(v5 + 16);

    v15 = sub_22B9C3040(v14);
    v17 = v16;

    v18 = sub_22B99153C(v15, v17, &v24);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_22B92A000, v3, v4, "Import Step summary for job: %s, %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v8, -1, -1);
    MEMORY[0x23189ADD0](v7, -1, -1);
  }

  v19 = *(v0[11] + 16);

  v21 = sub_22B9C3254(v20);

  v22 = v0[1];

  return v22(v21, 0);
}

unint64_t sub_22B9486FC()
{
  result = qword_281414C28;
  if (!qword_281414C28)
  {
    sub_22B948760(&qword_27D8D4EF0, &qword_22BA13990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414C28);
  }

  return result;
}

uint64_t sub_22B948760(uint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for ChatAutoDonation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ChatAutoDonation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_22B948804(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000016;
  v3 = *a1;
  v4 = 0x800000022BA1BA50;
  if (v3 == 1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v3 == 1)
  {
    v6 = 0x800000022BA1BA50;
  }

  else
  {
    v6 = 0x800000022BA1BA70;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7250617461446F6ELL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xED0000746E657365;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v4 = 0x800000022BA1BA70;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x7250617461446F6ELL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xED0000746E657365;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22BA10C6C();
  }

  return v11 & 1;
}

uint64_t sub_22B9488EC()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B9489A8()
{
  *v0;
  *v0;
  sub_22BA1008C();
}

uint64_t sub_22B948A50()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B948B08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22B949188();
  *a2 = result;
  return result;
}

void sub_22B948B38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000746E657365;
  v4 = 0x800000022BA1BA50;
  v5 = 0xD000000000000018;
  if (v2 != 1)
  {
    v5 = 0xD000000000000016;
    v4 = 0x800000022BA1BA70;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7250617461446F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_22B948BB0()
{
  sub_22BA10D3C();
  sub_22BA1008C();
  return sub_22BA10D6C();
}

uint64_t sub_22B948C1C()
{
  sub_22BA10D3C();
  sub_22BA1008C();
  return sub_22BA10D6C();
}

uint64_t sub_22B948C6C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22BA10AAC();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_22B948CF4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22BA10AAC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_22B948D58(uint64_t a1)
{
  v2 = sub_22B9495F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B948D94(uint64_t a1)
{
  v2 = sub_22B9495F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B948DD0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = sub_22B9349C8(&qword_27D8D4F10, &unk_22BA13A60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v30 - v12;
  v14 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B9495F0();
  sub_22BA10D9C();
  v35 = MEMORY[0x277D83B88];
  *&v34 = a2;
  sub_22B936C98(&v34, v33);
  v15 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v15;
  sub_22B9BAE64(v33, 29811, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  v17 = v31;
  v32 = v31;
  if (a4)
  {
    sub_22B9EB6F0(25715, 0xE200000000000000, &v34);
    sub_22B949698(&v34);
  }

  else
  {
    v35 = MEMORY[0x277D84A28];
    *&v34 = a3;
    sub_22B936C98(&v34, v33);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v17;
    sub_22B9BAE64(v33, 25715, 0xE200000000000000, v18);
    v32 = v31;
  }

  v19 = objc_opt_self();
  v20 = sub_22BA0FF5C();

  *&v34 = 0;
  v21 = [v19 dataWithPropertyList:v20 format:200 options:0 error:&v34];

  v22 = v34;
  v23 = v8;
  if (v21)
  {
    v24 = sub_22BA0FCAC();
    v26 = v25;

    sub_22BA0FC9C();
    sub_22BA10BCC();
    (*(v9 + 8))(v13, v8);
    sub_22B9359BC(v24, v26);
  }

  else
  {
    v28 = v22;
    sub_22BA0FB6C();

    swift_willThrow();
    result = (*(v9 + 8))(v13, v23);
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_22B9490F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22B9491D4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_22B949144(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_22B949188()
{
  v0 = sub_22BA10AAC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void *sub_22B9491D4(uint64_t *a1)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v4 = sub_22B9349C8(&qword_27D8D4EF8, &unk_22BA13A50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v27[-1] - v8;
  v10 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B9495F0();
  sub_22BA10D8C();
  if (v1)
  {
    goto LABEL_15;
  }

  sub_22B9363C8();
  sub_22BA10B3C();
  v12 = v28[0];
  v11 = v28[1];
  v13 = objc_opt_self();
  v2 = sub_22BA0FC8C();
  v27[0] = 0;
  v14 = [v13 propertyListWithData:v2 options:0 format:0 error:v27];

  v15 = v27[0];
  if (!v14)
  {
    v21 = v15;
    sub_22BA0FB6C();

    swift_willThrow();
LABEL_14:
    swift_willThrow();
    sub_22B9359BC(v12, v11);
    (*(v5 + 8))(v9, v4);
    goto LABEL_15;
  }

  sub_22BA107AC();
  swift_unknownObjectRelease();
  sub_22B936B20(v28, v27);
  sub_22B9349C8(&qword_27D8D4F00, &qword_22BA16D50);
  v2 = MEMORY[0x277D84F70];
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_22B949644();
    swift_allocError();
    v23 = 1;
LABEL_13:
    *v22 = v23;
    swift_willThrow();
    sub_22B936C4C(v28);
    goto LABEL_14;
  }

  v16 = v26;
  if (!v26[2] || (v17 = sub_22B990A58(29811, 0xE200000000000000), (v18 & 1) == 0) || (sub_22B936B20(v16[7] + 32 * v17, v27), (swift_dynamicCast() & 1) == 0))
  {

    sub_22B949644();
    swift_allocError();
    v23 = 2;
    goto LABEL_13;
  }

  v2 = v26;
  if (v16[2] && (v19 = sub_22B990A58(25715, 0xE200000000000000), (v20 & 1) != 0))
  {
    sub_22B936B20(v16[7] + 32 * v19, v27);
    sub_22B9359BC(v12, v11);
    sub_22B936C4C(v28);
    (*(v5 + 8))(v9, v4);

    swift_dynamicCast();
  }

  else
  {
    sub_22B9359BC(v12, v11);

    sub_22B936C4C(v28);
    (*(v5 + 8))(v9, v4);
  }

LABEL_15:
  sub_22B936C4C(a1);
  v24 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_22B9495F0()
{
  result = qword_2814158F0[0];
  if (!qword_2814158F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814158F0);
  }

  return result;
}

unint64_t sub_22B949644()
{
  result = qword_27D8D4F08;
  if (!qword_27D8D4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4F08);
  }

  return result;
}

uint64_t sub_22B949698(uint64_t a1)
{
  v2 = sub_22B9349C8(&unk_27D8D5A30, qword_22BA13390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ChatAutoDonation.DecodingErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChatAutoDonation.DecodingErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B949864()
{
  result = qword_27D8D4F18;
  if (!qword_27D8D4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4F18);
  }

  return result;
}

unint64_t sub_22B9498BC()
{
  result = qword_27D8D4F20;
  if (!qword_27D8D4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4F20);
  }

  return result;
}

unint64_t sub_22B949914()
{
  result = qword_2814158E0;
  if (!qword_2814158E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814158E0);
  }

  return result;
}

unint64_t sub_22B94996C()
{
  result = qword_2814158E8;
  if (!qword_2814158E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814158E8);
  }

  return result;
}

__n128 sub_22B9499C0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_22B9499EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B949A34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B949AA0(unint64_t a1, void *a2)
{
  v32 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v5 = a1 & 0xC000000000000001;
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = a1;
    v30 = a1 + 32;
    v25 = MEMORY[0x277D84F90];
    v26 = a1 & 0xC000000000000001;
    v28 = a2;
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = v3;
    while (1)
    {
      if (v5)
      {
        a1 = MEMORY[0x231899FA0](v4, v24);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_24;
        }

        a1 = *(v30 + 8 * v4);
      }

      v7 = a1;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v9 = *a2;

      v10 = [v7 recordID];
      v11 = v10;
      if ((v9 & 0xC000000000000001) == 0)
      {
        if (*(v9 + 16))
        {
          sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
          v14 = *(v9 + 40);
          v15 = sub_22BA1071C();
          v16 = -1 << *(v9 + 32);
          v17 = v15 & ~v16;
          if ((*(v9 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
          {
            v18 = ~v16;
            while (1)
            {
              v19 = *(*(v9 + 48) + 8 * v17);
              v20 = sub_22BA1072C();

              if (v20)
              {
                break;
              }

              v17 = (v17 + 1) & v18;
              if (((*(v9 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            v3 = v27;
            a2 = v28;
            v5 = v26;
            v6 = v29;
            goto LABEL_5;
          }
        }

LABEL_18:

        v3 = v27;
        a2 = v28;
        v5 = v26;
        v6 = v29;
LABEL_19:
        sub_22B9FF448(&v31, [v7 recordID]);

        MEMORY[0x231899830]();
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v21 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22BA1022C();
          v6 = v29;
        }

        a1 = sub_22BA1026C();
        v25 = v32;
        goto LABEL_5;
      }

      v12 = v10;
      v13 = sub_22BA1083C();

      if ((v13 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_5:
      if (v4 == v3)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v22 = a1;
    v3 = sub_22BA1080C();
    a1 = v22;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22B949D8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22B949DB0, 0, 0);
}

uint64_t sub_22B949DB0()
{
  v1 = sub_22B9358B4((v0[4] + 24), *(v0[4] + 48));
  sub_22B9ECD18(*(v1 + 16));
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22B949EA8;
  v4 = v0[2];
  v3 = v0[3];

  return sub_22B9E81AC(v4, v3, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/RecordZoneWriter.swift", 108, 2);
}

uint64_t sub_22B949EA8()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B949FA4, 0, 0);
}

uint64_t sub_22B949FA4()
{
  v1 = v0[4];
  v2 = v1[11];
  v3 = v1[12];
  sub_22B9358B4(v1 + 8, v2);
  v4 = *(v3 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_22B94A0D4;
  v8 = v0[2];
  v7 = v0[3];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_22B94A0D4()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B94A1D0, 0, 0);
}

uint64_t sub_22B94A1D0()
{
  v1 = v0[2];
  sub_22B94A5B8();
  v2 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v0[7] = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  if ([*(*sub_22B9358B4((v1 + v2) *(v1 + v2 + 24)) + 24)] <= 0)
  {
    v9 = v0[2];
    v10 = v0[3];
    v11 = *(v9 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_attemptCount);
    v12 = swift_task_alloc();
    v0[8] = v12;
    *v12 = v0;
    v12[1] = sub_22B94A3DC;
    v14 = v0[2];
    v13 = v0[3];

    return sub_22B9E923C(v14, v13, v11, v9, v10, 0, 0, 1);
  }

  else
  {
    v3 = (v0[2] + v0[7]);
    v4 = sub_22B9358B4(v3, v3[3]);
    v5 = *(*v4 + 56);
    v7 = v0[2];
    v6 = v0[3];
    if (v5)
    {
      [*(*v4 + 56) startChanges];

      sub_22B951454(v8, v7);

      [v5 commitChanges];
    }

    else
    {
      v16 = *v4;

      sub_22B951454(v17, v7);
    }

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_22B94A3DC()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B94A4D8, 0, 0);
}

uint64_t sub_22B94A4D8()
{
  v1 = (v0[2] + v0[7]);
  v2 = sub_22B9358B4(v1, v1[3]);
  v3 = *(*v2 + 56);
  v5 = v0[2];
  v4 = v0[3];
  if (v3)
  {
    [*(*v2 + 56) startChanges];

    sub_22B951454(v6, v5);

    [v3 commitChanges];
  }

  else
  {
    v7 = *v2;

    sub_22B951454(v8, v5);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_22B94A5B8()
{
  result = sub_22B9BC494();
  if (result)
  {
    v2 = (v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
    v3 = sub_22B9358B4((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
    v4 = *MEMORY[0x277D19AB0];
    result = [*(*v3 + 24) integerForKey_];
    if (result <= 0)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v5 = sub_22BA0FEFC();
      sub_22B936CA8(v5, qword_28141AD40);
      v6 = sub_22BA0FEDC();
      v7 = sub_22BA1046C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_22B92A000, v6, v7, "User finished first full sync, and did not have a marker for first restore, setting marker", v8, 2u);
        MEMORY[0x23189ADD0](v8, -1, -1);
      }

      v9 = *(*sub_22B9358B4(v2, v2[3]) + 24);

      return [v9 setInteger:1 forKey:v4];
    }
  }

  return result;
}

void sub_22B94A730(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isInternalInstall];

    if (v4)
    {
      v5 = (a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
      v6 = *(*sub_22B9358B4(v5, v5[3]) + 24);
      v7 = sub_22BA0FFCC();
      v8 = [v6 objectForKey_];

      if (!v8)
      {
        v32 = 0u;
        v33 = 0u;
        sub_22B936BEC(&v32, &unk_27D8D5A30, qword_22BA13390);
        return;
      }

      sub_22BA107AC();
      swift_unknownObjectRelease();
      sub_22B936BEC(&v32, &unk_27D8D5A30, qword_22BA13390);
      v9 = *MEMORY[0x277D19D08];
      v10 = sub_22BA0FFFC();
      v12 = v11;
      v13 = *(*sub_22B9358B4(v5, v5[3]) + 24);
      v14 = sub_22BA0FFCC();
      v15 = [v13 objectForKey_];

      if (v15)
      {
        sub_22BA107AC();
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0u;
        v31 = 0u;
      }

      v32 = v30;
      v33 = v31;
      if (*(&v31 + 1))
      {
        if (swift_dynamicCast())
        {

          v10 = v28;
          v12 = v29;
        }
      }

      else
      {
        sub_22B936BEC(&v32, &unk_27D8D5A30, qword_22BA13390);
      }

      v16 = *(*sub_22B9358B4(v5, v5[3]) + 24);
      v17 = sub_22BA0FFCC();
      v18 = [v16 objectForKey_];

      if (v18)
      {
        sub_22BA107AC();
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0u;
        v31 = 0u;
      }

      v32 = v30;
      v33 = v31;
      if (*(&v31 + 1))
      {
        sub_22B951A54(0, &qword_281414A20, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v19 = [v28 integerValue];

LABEL_20:
          sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22BA13CB0;
          v21 = *MEMORY[0x277CCA450];
          *(inited + 32) = sub_22BA0FFFC();
          *(inited + 40) = v22;
          *&v32 = 0;
          *(&v32 + 1) = 0xE000000000000000;
          sub_22BA108FC();
          MEMORY[0x231899730](0xD00000000000001BLL, 0x800000022BA1C740);
          v23 = sub_22BA10C1C();
          MEMORY[0x231899730](v23);

          MEMORY[0x231899730](8250, 0xE200000000000000);
          MEMORY[0x231899730](v10, v12);
          MEMORY[0x231899730](0xD000000000000026, 0x800000022BA1C760);
          v24 = v32;
          *(inited + 72) = MEMORY[0x277D837D0];
          *(inited + 48) = v24;
          sub_22B9BBA8C(inited);
          swift_setDeallocating();
          sub_22B936BEC(inited + 32, &unk_27D8D5770, &qword_22BA135E0);
          v25 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v26 = sub_22BA0FFCC();

          v27 = sub_22BA0FF5C();

          [v25 initWithDomain:v26 code:v19 userInfo:v27];

          swift_willThrow();
          return;
        }
      }

      else
      {
        sub_22B936BEC(&v32, &unk_27D8D5A30, qword_22BA13390);
      }

      v19 = 1;
      goto LABEL_20;
    }
  }
}

uint64_t sub_22B94AC34(uint64_t a1, uint64_t a2)
{
  v3[118] = v2;
  v3[117] = a2;
  v3[116] = a1;
  v4 = *(*(sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0) - 8) + 64) + 15;
  v3[119] = swift_task_alloc();
  v5 = sub_22B9349C8(&unk_27D8D53D0, &qword_22BA13DB8);
  v3[120] = v5;
  v6 = *(v5 - 8);
  v3[121] = v6;
  v7 = *(v6 + 64) + 15;
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v8 = sub_22B9349C8(&qword_27D8D4F28, &qword_22BA13DC0);
  v3[124] = v8;
  v9 = *(v8 - 8);
  v3[125] = v9;
  v10 = *(v9 + 64) + 15;
  v3[126] = swift_task_alloc();
  v11 = sub_22B9349C8(&unk_27D8D53E0, &unk_22BA13DC8);
  v3[127] = v11;
  v12 = *(v11 - 8);
  v3[128] = v12;
  v13 = *(v12 + 64) + 15;
  v3[129] = swift_task_alloc();
  v3[130] = swift_task_alloc();
  v3[131] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B94AE34, 0, 0);
}

uint64_t sub_22B94AE34()
{
  v26 = v0;
  v1 = sub_22B9358B4((v0[118] + 24), *(v0[118] + 48));
  v2 = sub_22BA082E0(*(v1 + 16));
  v4 = v3;
  v0[132] = v2;
  v0[133] = v3;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v5 = v0[116];
  v6 = sub_22BA0FEFC();
  v0[134] = sub_22B936CA8(v6, qword_28141AD40);

  swift_unknownObjectRetain();
  v7 = sub_22BA0FEDC();
  v8 = sub_22BA1046C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[116];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_22B99153C(v2, v4, &v25);
    *(v10 + 12) = 2080;
    sub_22BA0FDCC();
    sub_22B951A00(&qword_281416BE0, MEMORY[0x277CC95F0]);
    v12 = sub_22BA10C1C();
    v14 = sub_22B99153C(v12, v13, &v25);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_22B92A000, v7, v8, "Starting write to %s (%s)", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v11, -1, -1);
    MEMORY[0x23189ADD0](v10, -1, -1);
  }

  v15 = v0[118];
  v16 = v15[11];
  v17 = v15[12];
  sub_22B9358B4(v15 + 8, v16);
  v18 = *v15;
  v19 = v15[2];
  v20 = *(v17 + 16);
  v24 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  v0[135] = v22;
  *v22 = v0;
  v22[1] = sub_22B94B15C;

  return v24(v18, v19, v16, v17);
}

uint64_t sub_22B94B15C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v3 + 1080);
  v6 = *v3;
  v6[136] = a1;
  v6[137] = v2;

  if (v2)
  {
    v7 = v6[133];

    v8 = v6[131];
    v9 = v6[130];
    v10 = v6[129];
    v11 = v6[126];
    v12 = v6[123];
    v13 = v6[122];
    v14 = v6[119];

    v15 = v6[1];

    return v15();
  }

  else
  {
    v6[138] = a2;

    return MEMORY[0x2822009F8](sub_22B94B318, 0, 0);
  }
}

uint64_t sub_22B94B318()
{
  v97 = v0;
  v1 = v0;
  v2 = v0[138];
  v3 = v0[136];

  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  v91 = v3;

  v12 = 0;
  v13 = MEMORY[0x277D84F98];
  v0[139] = MEMORY[0x277D84F98];
  if (v7)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v14);
    ++v12;
    if (v7)
    {
      while (1)
      {
        v15 = (v14 << 10) | (16 * __clz(__rbit64(v7)));
        v16 = *(*(v91 + 48) + v15 + 8);
        v17 = *(v91 + 56) + v15;
        v93 = *(v17 + 8);
        v18 = *v17;

        v19 = [v18 recordID];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v96[0] = v13;
        v9 = sub_22B990B14(v19);
        v21 = v13[2];
        v22 = (v10 & 1) == 0;
        v23 = __OFADD__(v21, v22);
        v24 = v21 + v22;
        if (v23)
        {
          break;
        }

        v25 = v10;
        if (v13[3] >= v24)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v29 = v9;
            sub_22B9EC3D4();
            v9 = v29;
            v13 = v96[0];
          }
        }

        else
        {
          sub_22B9D9050(v24, isUniquelyReferenced_nonNull_native);
          v13 = v96[0];
          v9 = sub_22B990B14(v19);
          if ((v25 & 1) != (v26 & 1))
          {
            sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);

            return sub_22BA10CBC();
          }
        }

        v7 &= v7 - 1;
        v1 = v0;
        if (v25)
        {
          *(v13[7] + 8 * v9) = v93;

          v12 = v14;
          v0[139] = v13;
          if (!v7)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v13[(v9 >> 6) + 8] |= 1 << v9;
          *(v13[6] + 8 * v9) = v19;
          *(v13[7] + 8 * v9) = v93;

          v27 = v13[2];
          v23 = __OFADD__(v27, 1);
          v28 = v27 + 1;
          if (v23)
          {
            goto LABEL_35;
          }

          v13[2] = v28;
          v12 = v14;
          v0[139] = v13;
          if (!v7)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v14 = v12;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return MEMORY[0x2822009F8](v9, v10, v11);
    }
  }

  v30 = v1[136];

  v31 = *(v30 + 16);
  v1[140] = v31;
  if (v31)
  {
    v32 = v1[137];
    v84 = v1 + 71;
    v85 = v1 + 809;
    v33 = v1[136];
    v86 = v1[131];
    v87 = v1[130];
    v34 = v1[128];
    v35 = v1[127];
    v36 = v1[125];
    v82 = v1[126];
    v83 = v1[124];
    v88 = v1[129];
    v89 = v1[123];
    v90 = v1[121];
    v92 = v1[120];
    v94 = v1[122];
    v37 = v1;
    v38 = v1[118];
    v39 = v37[117];
    v40 = v37[116];
    v41 = sub_22B9358B4((v38 + 24), *(v38 + 48));
    v42 = sub_22B94F2C4(v33);

    v43 = *v41;
    v44 = *(v41 + 2);
    *(v37 + 30) = *(v41 + 1);
    *(v37 + 31) = v44;
    *(v37 + 29) = v43;
    v45 = *(v41 + 3);
    v46 = *(v41 + 4);
    v47 = *(v41 + 5);
    v37[70] = v41[12];
    *(v37 + 33) = v46;
    *(v37 + 34) = v47;
    *(v37 + 32) = v45;
    v48 = sub_22B95064C(v40, v39, v42);
    v37[141] = v48;

    v49 = sub_22B9358B4((v38 + 24), *(v38 + 48));
    v50 = *v49;
    v51 = *(v49 + 2);
    *(v37 + 17) = *(v49 + 1);
    *(v37 + 18) = v51;
    *(v37 + 16) = v50;
    v52 = *(v49 + 3);
    v53 = *(v49 + 4);
    v54 = *(v49 + 5);
    v37[44] = v49[12];
    *(v37 + 20) = v53;
    *(v37 + 21) = v54;
    *(v37 + 19) = v52;
    v37[74] = &type metadata for SyncZoneInfo;
    v37[75] = &off_283F57268;
    v55 = swift_allocObject();
    v37[71] = v55;
    memmove((v55 + 16), v49, 0x68uLL);
    *(v37 + 809) = 0;
    v56 = swift_task_alloc();
    *(v56 + 16) = v48;
    *(v56 + 24) = 0;
    *(v56 + 32) = v85;
    *(v56 + 40) = v40;
    *(v56 + 48) = v39;
    *(v56 + 56) = v84;
    (*(v36 + 104))(v82, *MEMORY[0x277D858A0], v83);
    sub_22B951748((v37 + 32), (v37 + 45));
    sub_22BA1035C();

    (*(v34 + 32))(v87, v86, v35);
    sub_22B936C4C(v84);
    (*(v34 + 16))(v88, v87, v35);
    sub_22B95194C(&qword_281414C10, &unk_27D8D53E0, &unk_22BA13DC8);
    sub_22BA1032C();
    (*(v90 + 32))(v94, v89, v92);
    (*(v34 + 8))(v87, v35);
    v9 = sub_22B94BD94;
    *(v37 + 151) = 0u;
    *(v37 + 153) = 0u;
    v10 = 0;
    v11 = 0;

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  v57 = v1[136];
  v58 = v1[134];
  v59 = v1[133];
  v60 = v1[116];

  swift_unknownObjectRetain();
  v61 = sub_22BA0FEDC();
  v62 = sub_22BA1046C();

  swift_unknownObjectRelease();
  v63 = os_log_type_enabled(v61, v62);
  v64 = v1[133];
  if (v63)
  {
    v65 = v1[132];
    v66 = v1[116];
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v96[0] = v68;
    *v67 = 136315394;
    v69 = sub_22B99153C(v65, v64, v96);

    *(v67 + 4) = v69;
    *(v67 + 12) = 2080;
    sub_22BA0FDCC();
    sub_22B951A00(&qword_281416BE0, MEMORY[0x277CC95F0]);
    v70 = sub_22BA10C1C();
    v72 = sub_22B99153C(v70, v71, v96);

    *(v67 + 14) = v72;
    _os_log_impl(&dword_22B92A000, v61, v62, "Nothing more to sync for %s (%s)", v67, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v68, -1, -1);
    MEMORY[0x23189ADD0](v67, -1, -1);
  }

  else
  {
  }

  v73 = v1[118];
  v74 = v73[11];
  v75 = v73[12];
  sub_22B9358B4(v73 + 8, v74);
  v76 = *(v75 + 8);
  v95 = (v76 + *v76);
  v77 = v76[1];
  v78 = swift_task_alloc();
  v1[142] = v78;
  *v78 = v1;
  v78[1] = sub_22B94BB9C;
  v79 = v1[117];
  v80 = v1[116];

  return v95(v80, v79, v74, v75);
}

uint64_t sub_22B94BB9C()
{
  v1 = *v0;
  v2 = *(*v0 + 1136);
  v13 = *v0;

  v3 = v1[131];
  v4 = v1[130];
  v5 = v1[129];
  v6 = v1[126];
  v7 = v1[123];
  v8 = v1[122];
  v9 = v1[119];
  v10 = v1[140] != 0;

  v11 = *(v13 + 8);

  return v11(0, v10);
}

uint64_t sub_22B94BD94()
{
  v1 = v0[122];
  swift_beginAccess();
  v2 = sub_22B95194C(&qword_281414C20, &unk_27D8D53D0, &qword_22BA13DB8);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[143] = v4;
  *v4 = v0;
  v4[1] = sub_22B94BE80;
  v5 = v0[122];
  v6 = v0[120];

  return MEMORY[0x282200308](v0 + 99, v6, v2);
}

uint64_t sub_22B94BE80()
{
  v2 = *v1;
  v3 = *(*v1 + 1144);
  v6 = *v1;
  *(*v1 + 1152) = v0;

  if (v0)
  {
    v4 = sub_22B94C84C;
  }

  else
  {
    swift_endAccess();
    *(v2 + 1160) = *(v2 + 792);
    *(v2 + 1168) = *(v2 + 800);
    *(v2 + 810) = *(v2 + 808);
    v4 = sub_22B94BFB4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B94BFB4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v107 = v3;
  v4 = *(v3 + 810);
  if (v4 > 0xFD)
  {
    v5 = *(v3 + 1112);
    v6 = *(v3 + 1064);
    v7 = *(v3 + 976);
    v8 = *(v3 + 968);
    v9 = *(v3 + 960);

    (*(v8 + 8))(v7, v9);
    v10 = *(v3 + 1232);
    *(v3 + 1312) = v10;
    v11 = *(v3 + 1072);
    v12 = *(v3 + 944);
    sub_22B95186C(v12, v3 + 16);
    sub_22B95186C(v12, v3 + 136);
    v13 = sub_22BA0FEDC();
    v14 = sub_22BA1046C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v3 + 1208);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v106 = v17;
      *v16 = 136315906;
      v18 = sub_22B9358B4((v3 + 40), *(v3 + 64));
      v19 = sub_22BA082E0(*(v18 + 16));
      v21 = v20;
      sub_22B9518A4(v3 + 16);
      v22 = sub_22B99153C(v19, v21, &v106);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2048;
      *(v16 + 14) = v15;
      *(v16 + 22) = 2080;
      v23 = sub_22B9358B4((v3 + 160), *(v3 + 184));
      v24 = sub_22BA082E0(*(v23 + 16));
      v26 = v25;
      sub_22B9518A4(v3 + 136);
      v27 = sub_22B99153C(v24, v26, &v106);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2048;
      *(v16 + 34) = v10;
      _os_log_impl(&dword_22B92A000, v13, v14, "%s: %lld records %s written, %lld failures", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v17, -1, -1);
      MEMORY[0x23189ADD0](v16, -1, -1);
    }

    else
    {

      sub_22B9518A4(v3 + 136);
      sub_22B9518A4(v3 + 16);
    }

    v55 = *(v3 + 944);
    v56 = *(*(v3 + 928) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
    *(v3 + 1320) = v56;
    v57 = sub_22B9358B4((v55 + 24), *(v55 + 48));
    *(v3 + 811) = sub_22BA08430(*(v57 + 16));
    a1 = sub_22B94E718;
    a2 = v56;
    goto LABEL_13;
  }

  if (v4 > 0x3F)
  {
    sub_22B9518D4(*(v3 + 1160), *(v3 + 1168), *(v3 + 810));
LABEL_12:
    a1 = sub_22B94BD94;
    a2 = 0;
    goto LABEL_13;
  }

  if (v4)
  {
    v28 = *(v3 + 1168);
    v29 = *(v3 + 1160);
    v30 = *(*sub_22B9358B4((*(v3 + 928) + 16), *(*(v3 + 928) + 40)) + 24);
    sub_22B95190C(v29, v28, v4);
    v31 = v29;
    v32 = v28;
    swift_unknownObjectRetain();
    v33 = sub_22BA0FB5C();
    v34 = [v30 wasQuotaExceededInError_];

    swift_unknownObjectRelease();
    if (v34)
    {
      v35 = *(v3 + 1072);
      v36 = v31;
      v37 = v28;
      v38 = sub_22BA0FEDC();
      v39 = sub_22BA1044C();

      v40 = os_log_type_enabled(v38, v39);
      v41 = *(v3 + 810);
      v42 = *(v3 + 1168);
      v43 = *(v3 + 1160);
      if (v40)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v106 = v45;
        *v44 = 136315138;
        v104 = v42;
        v46 = [v36 recordName];
        v103 = v41;
        v47 = sub_22BA0FFFC();
        v102 = v43;
        v48 = v36;
        v50 = v49;

        v51 = sub_22B99153C(v47, v50, &v106);
        v36 = v48;

        *(v44 + 4) = v51;
        _os_log_impl(&dword_22B92A000, v38, v39, "Record %s failed to write because Quota Exceeded", v44, 0xCu);
        sub_22B936C4C(v45);
        MEMORY[0x23189ADD0](v45, -1, -1);
        MEMORY[0x23189ADD0](v44, -1, -1);

        sub_22B9518D4(v102, v104, v103);
        v52 = v102;
        v53 = v104;
        v54 = v103;
      }

      else
      {

        sub_22B9518D4(v43, v42, v41);
        v52 = v43;
        v53 = v42;
        v54 = v41;
      }

      sub_22B9518D4(v52, v53, v54);
      v94 = *(v3 + 1232);
      v95 = v94 + 1;
      if (!__OFADD__(v94, 1))
      {
        v96 = *(v3 + 1224);
        if (!v96)
        {
          v97 = v28;
          v96 = *(v3 + 1168);
        }

        *(v3 + 1224) = v96;
        *(v3 + 1232) = v95;
        goto LABEL_12;
      }

      goto LABEL_37;
    }

    v72 = *(v3 + 928);

    v73 = *(*sub_22B9358B4((v72 + 16), *(v72 + 40)) + 24);
    v74 = v31;
    v75 = v28;
    swift_unknownObjectRetain();
    v76 = sub_22BA0FB5C();
    v77 = [v73 wasRecordSizeFailure_];

    a1 = swift_unknownObjectRelease();
    if (v77)
    {
      if (*(*(v3 + 1112) + 16))
      {
        v78 = v74;
        v79 = sub_22B990B14(v78);
        if (v80)
        {
          v81 = *(v3 + 1072);
          v82 = *(*(*(v3 + 1112) + 56) + 8 * v79);
          *(v3 + 1360) = v82;
          v83 = v78;
          v84 = sub_22BA0FEDC();
          v85 = sub_22BA1044C();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v106 = v87;
            *v86 = 136315394;
            v88 = [v83 recordName];
            v89 = sub_22BA0FFFC();
            v91 = v90;

            v92 = sub_22B99153C(v89, v91, &v106);

            *(v86 + 4) = v92;
            *(v86 + 12) = 2048;
            *(v86 + 14) = v82;
            _os_log_impl(&dword_22B92A000, v84, v85, "Record %s exceeded maximum payload size, had size: %ld bytes", v86, 0x16u);
            sub_22B936C4C(v87);
            MEMORY[0x23189ADD0](v87, -1, -1);
            MEMORY[0x23189ADD0](v86, -1, -1);
          }

          a2 = *(*(v3 + 928) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
          *(v3 + 1368) = a2;
          v93 = sub_22B94F130;
          goto LABEL_35;
        }
      }
    }

    else
    {

      v98 = v74;
      a1 = v28;
    }

    v99 = *(v3 + 1232);
    *(v3 + 1240) = v99 + 1;
    if (__OFADD__(v99, 1))
    {
LABEL_38:
      __break(1u);
      return MEMORY[0x2822009F8](a1, a2, a3);
    }

    v100 = *(v3 + 928);
    v101 = *(v3 + 1168);
    a2 = *(v100 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
    *(v3 + 1248) = a2;
    v93 = sub_22B94D1D4;
LABEL_35:
    a1 = v93;
LABEL_13:
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v58 = *(v3 + 1216);
  v59 = *(v3 + 1160);
  *(v3 + 1176) = v58 + 1;
  if (__OFADD__(v58, 1))
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v60 = *(v3 + 1168);
  v61 = *(v3 + 944);
  v62 = v61[11];
  v63 = v61[12];
  sub_22B9358B4(v61 + 8, v62);
  sub_22B951920(v59, v60, v4);
  v64 = [v59 recordID];
  *(v3 + 1184) = v64;
  v65 = *(v63 + 24);
  v105 = (v65 + *v65);
  v66 = v65[1];
  v67 = swift_task_alloc();
  *(v3 + 1192) = v67;
  *v67 = v3;
  v67[1] = sub_22B94CDF0;
  v68 = *(v3 + 1160);
  v69 = *(v3 + 936);
  v70 = *(v3 + 928);

  return (v105)(v70, v69, v64, v68, 0, v62, v63);
}

uint64_t sub_22B94C84C()
{
  v1 = *(v0 + 1112);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22B94C8C0, 0, 0);
}

uint64_t sub_22B94C8C0()
{
  *(v0 + 880) = *(v0 + 1152);
  sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_22B94C950, 0, 0);
}

uint64_t sub_22B94C950()
{
  v1 = *(v0 + 1152);
  *(v0 + 1280) = *(v0 + 1232);
  *(v0 + 1272) = v1;
  v2 = *(v0 + 1072);
  v3 = *(v0 + 952);
  v4 = *(v0 + 944);
  v35 = *(v0 + 928);
  (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
  v5 = *(sub_22B9358B4((v4 + 24), *(v4 + 48)) + 16);
  v6 = sub_22BA1030C();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v5;
  *(v7 + 40) = v35;
  swift_unknownObjectRetain();
  sub_22B989028(0, 0, v3, &unk_22BA13DE0, v7);

  v8 = v1;
  v9 = sub_22BA0FEDC();
  v10 = sub_22BA1044C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_22B92A000, v9, v10, "Error handling batch completion with error %@", v11, 0xCu);
    sub_22B936BEC(v12, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v12, -1, -1);
    MEMORY[0x23189ADD0](v11, -1, -1);
  }

  v15 = *(v0 + 928);

  v16 = *(*sub_22B9358B4((v15 + 16), *(v15 + 40)) + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(v15) = sub_22B9819E8();
  swift_unknownObjectRelease();
  if (v15)
  {
    v17 = *(v0 + 1064);
    v18 = *(v0 + 1056);
    v19 = *(v0 + 944);
    sub_22BA108FC();

    MEMORY[0x231899730](v18, v17);

    MEMORY[0x231899730](8250, 0xE200000000000000);
    swift_getErrorValue();
    v20 = *(v0 + 648);
    v21 = sub_22B958118(*(v0 + 656), *(v0 + 664));
    MEMORY[0x231899730](v21);

    sub_22B975FD8(8, v1, 0xD000000000000026, 0x800000022BA1C620);

    v22 = v19[11];
    v23 = v19[12];
    sub_22B9358B4(v19 + 8, v22);
    v24 = *(v23 + 32);
    v25 = v1;
    v34 = (v24 + *v24);
    v26 = v24[1];
    v27 = swift_task_alloc();
    *(v0 + 1288) = v27;
    *v27 = v0;
    v27[1] = sub_22B94E0D4;
    v28 = *(v0 + 936);
    v29 = *(v0 + 928);

    return v34(v29, v28, v1, 1, v22, v23);
  }

  else
  {
    v31 = *(v0 + 1064);

    v32 = swift_task_alloc();
    *(v0 + 1304) = v32;
    *v32 = v0;
    v32[1] = sub_22B94E208;
    v33 = *(v0 + 928);

    return sub_22B97D504(v1);
  }
}

uint64_t sub_22B94CDF0()
{
  v2 = *v1;
  v3 = *(*v1 + 1192);
  v6 = *v1;
  *(*v1 + 1200) = v0;

  if (v0)
  {
    v4 = sub_22B94CF98;
  }

  else
  {

    v4 = sub_22B94CF0C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B94CF0C()
{
  sub_22B9518D4(*(v0 + 1160), *(v0 + 1168), *(v0 + 810));
  sub_22B9518D4(*(v0 + 1160), *(v0 + 1168), *(v0 + 810));
  v1 = *(v0 + 1176);
  *(v0 + 1216) = v1;
  *(v0 + 1208) = v1;

  return MEMORY[0x2822009F8](sub_22B94BD94, 0, 0);
}

uint64_t sub_22B94CF98()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 810);

  sub_22B95190C(v3, v2, v5);
  v6 = v1;
  v7 = sub_22BA0FEDC();
  v8 = sub_22BA1044C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1200);
  v11 = *(v0 + 810);
  v12 = *(v0 + 1168);
  v13 = *(v0 + 1160);
  if (v9)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    v16 = v10;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    *(v14 + 12) = 2112;
    v18 = [v13 recordID];
    sub_22B9518D4(v13, v12, v11);
    *(v14 + 14) = v18;
    v15[1] = v18;
    _os_log_impl(&dword_22B92A000, v7, v8, "Error handling record save: %@ for record ID: %@", v14, 0x16u);
    sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v15, -1, -1);
    MEMORY[0x23189ADD0](v14, -1, -1);

    sub_22B9518D4(v13, v12, v11);
  }

  else
  {

    sub_22B9518D4(v13, v12, v11);
    sub_22B9518D4(v13, v12, v11);
  }

  sub_22B9518D4(*(v0 + 1160), *(v0 + 1168), *(v0 + 810));
  v19 = *(v0 + 1176);
  *(v0 + 1216) = v19;
  *(v0 + 1208) = v19;

  return MEMORY[0x2822009F8](sub_22B94BD94, 0, 0);
}

uint64_t sub_22B94D1D4()
{
  v1 = *(v0 + 1248);
  swift_beginAccess();
  v2 = *(v1 + 184);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 184) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22B97FA40(0, v2[2] + 1, 1, v2);
    *(v1 + 184) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_22B97FA40((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 1168);
  v2[2] = v5 + 1;
  v2[v5 + 4] = v6;
  *(v1 + 184) = v2;
  swift_endAccess();
  v7 = v6;

  return MEMORY[0x2822009F8](sub_22B94D2E8, 0, 0);
}

char *sub_22B94D2E8()
{
  v1 = *sub_22B9358B4((*(v0 + 928) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 928) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v2 = sub_22BA09CBC();
  if (v2)
  {
    v3 = *(v0 + 1168);
    v4 = v2;
    swift_unknownObjectRetain();
    v5 = sub_22BA0FB5C();
    [v4 appendError_];
    swift_unknownObjectRelease();
  }

  v6 = *(v0 + 1168);
  v7 = *(*sub_22B9358B4((*(v0 + 928) + 16), *(*(v0 + 928) + 40)) + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(v6) = sub_22B9819E8();
  swift_unknownObjectRelease();
  if ((v6 & 1) == 0)
  {
    goto LABEL_18;
  }

  v8 = *(v0 + 1168);
  v9 = *(*sub_22B9358B4((*(v0 + 928) + 16), *(*(v0 + 928) + 40)) + 24);
  swift_unknownObjectRetain();
  v10 = sub_22BA0FB5C();
  v11 = [v9 isCKErrorPartialFailure_];

  swift_unknownObjectRelease();
  if (v11)
  {
    v12 = *(v0 + 1168);
    v13 = *(*sub_22B9358B4((*(v0 + 928) + 16), *(*(v0 + 928) + 40)) + 24);
    swift_unknownObjectRetain();
    v14 = sub_22BA0FB5C();
    v15 = [v13 errorsFromPartialFailure_];
    swift_unknownObjectRelease();

    if (v15)
    {
      v16 = sub_22BA101FC();

      v17 = sub_22B950540(v16);

      if (v17)
      {
        if (v17 >> 62)
        {
          v18 = sub_22BA1080C();
          if (v18)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v18)
          {
LABEL_9:
            v19 = (v0 + 904);
            *(v0 + 904) = MEMORY[0x277D84F90];
            result = sub_22B968100(0, v18 & ~(v18 >> 63), 0);
            if (v18 < 0)
            {
              __break(1u);
              return result;
            }

            v21 = *v19;
            v73 = v17;
            if ((v17 & 0xC000000000000001) != 0)
            {
              v22 = 0;
              do
              {
                MEMORY[0x231899FA0](v22, v73);
                v23 = sub_22B94F4DC();
                v25 = v24;
                swift_unknownObjectRelease();
                *v19 = v21;
                v27 = *(v21 + 16);
                v26 = *(v21 + 24);
                if (v27 >= v26 >> 1)
                {
                  sub_22B968100((v26 > 1), v27 + 1, 1);
                  v21 = *v19;
                }

                ++v22;
                *(v21 + 16) = v27 + 1;
                v28 = v21 + 16 * v27;
                *(v28 + 32) = v23;
                *(v28 + 40) = v25;
              }

              while (v18 != v22);
            }

            else
            {
              v49 = (v17 + 32);
              do
              {
                v50 = *v49;
                v51 = sub_22B94F4DC();
                v53 = v52;

                *v19 = v21;
                v55 = *(v21 + 16);
                v54 = *(v21 + 24);
                if (v55 >= v54 >> 1)
                {
                  sub_22B968100((v54 > 1), v55 + 1, 1);
                  v21 = *v19;
                }

                *(v21 + 16) = v55 + 1;
                v56 = v21 + 16 * v55;
                *(v56 + 32) = v51;
                *(v56 + 40) = v53;
                ++v49;
                --v18;
              }

              while (v18);
            }

LABEL_28:
            v57 = sub_22BA0197C(v21);

            v58 = *(v57 + 16);
            if (v58)
            {
              v59 = sub_22B9801C4(*(v57 + 16), 0);
              v60 = sub_22B954698((v0 + 608), v59 + 4, v58, v57);
              v61 = *(v0 + 608);
              v62 = *(v0 + 616);
              v63 = *(v0 + 624);
              v64 = *(v0 + 632);
              v65 = *(v0 + 640);

              sub_22B951944();
              if (v60 == v58)
              {
LABEL_32:
                v66 = *(v0 + 1152);
                *(v0 + 912) = v59;
                sub_22B950864((v0 + 912));
                if (v66)
                {

                  v67 = *(v0 + 912);
                }

                v29 = (v0 + 848);
                v68 = *(v0 + 1064);
                v69 = *(v0 + 1056);

                v33 = (v0 + 856);
                *(v0 + 920) = *(v0 + 912);
                sub_22B9349C8(&qword_27D8D4EF0, &qword_22BA13990);
                sub_22B95194C(&qword_281414C28, &qword_27D8D4EF0, &qword_22BA13990);
                v70 = sub_22BA0FFAC();

                *(v0 + 864) = 0;
                *(v0 + 872) = 0xE000000000000000;
                sub_22BA108FC();
                v71 = *(v0 + 872);
                *(v0 + 848) = *(v0 + 864);
                *(v0 + 856) = v71;
                MEMORY[0x231899730](0xD00000000000001DLL, 0x800000022BA1C650);
                MEMORY[0x231899730](v69, v68);
                MEMORY[0x231899730](0xD000000000000018, 0x800000022BA1C670);
                v36 = v70;
                goto LABEL_17;
              }

              __break(1u);
            }

            v59 = MEMORY[0x277D84F90];
            goto LABEL_32;
          }
        }

        v21 = MEMORY[0x277D84F90];
        goto LABEL_28;
      }
    }
  }

  v29 = (v0 + 816);
  v30 = *(v0 + 1168);
  v31 = *(v0 + 1064);
  v32 = *(v0 + 1056);
  v33 = (v0 + 824);
  *(v0 + 832) = 0;
  *(v0 + 840) = 0xE000000000000000;
  sub_22BA108FC();
  v34 = *(v0 + 840);

  *(v0 + 816) = 0xD00000000000001DLL;
  *(v0 + 824) = 0x800000022BA1C650;
  MEMORY[0x231899730](v32, v31);
  MEMORY[0x231899730](8250, 0xE200000000000000);
  swift_getErrorValue();
  v35 = *(v0 + 744);
  v36 = sub_22B958118(*(v0 + 752), *(v0 + 760));
LABEL_17:
  MEMORY[0x231899730](v36);

  sub_22B975FD8(8, *(v0 + 1168), *v29, *v33);

LABEL_18:
  v37 = *(v0 + 1168);
  v38 = *(v0 + 1160);
  v39 = *(v0 + 944);
  v40 = v39[11];
  v41 = v39[12];
  sub_22B9358B4(v39 + 8, v40);
  v42 = *(v41 + 24);
  v43 = v37;
  v72 = (v42 + *v42);
  v44 = v42[1];
  v45 = swift_task_alloc();
  *(v0 + 1256) = v45;
  *v45 = v0;
  v45[1] = sub_22B94DA18;
  v46 = *(v0 + 1168);
  v47 = *(v0 + 936);
  v48 = *(v0 + 928);

  return v72(v48, v47, v38, v46, 1, v40, v41);
}

uint64_t sub_22B94DA18()
{
  v2 = *v1;
  v3 = *(*v1 + 1256);
  v7 = *v1;
  *(*v1 + 1264) = v0;

  if (v0)
  {
    v4 = *(v2 + 1112);

    v5 = sub_22B94DBEC;
  }

  else
  {
    v5 = sub_22B94DB34;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B94DB34()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 810);

  sub_22B9518D4(v2, v1, v3);
  sub_22B9518D4(v2, v1, v3);
  *(v0 + 1232) = *(v0 + 1240);

  return MEMORY[0x2822009F8](sub_22B94BD94, 0, 0);
}

uint64_t sub_22B94DBEC()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 810);

  sub_22B9518D4(v2, v1, v3);
  sub_22B9518D4(v2, v1, v3);
  v4 = *(v0 + 1264);
  *(v0 + 1280) = *(v0 + 1240);
  *(v0 + 1272) = v4;
  v5 = *(v0 + 1072);
  v6 = *(v0 + 952);
  v7 = *(v0 + 944);
  v38 = *(v0 + 928);
  (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
  v8 = *(sub_22B9358B4((v7 + 24), *(v7 + 48)) + 16);
  v9 = sub_22BA1030C();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v8;
  *(v10 + 40) = v38;
  swift_unknownObjectRetain();
  sub_22B989028(0, 0, v6, &unk_22BA13DE0, v10);

  v11 = v4;
  v12 = sub_22BA0FEDC();
  v13 = sub_22BA1044C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v4;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_22B92A000, v12, v13, "Error handling batch completion with error %@", v14, 0xCu);
    sub_22B936BEC(v15, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v15, -1, -1);
    MEMORY[0x23189ADD0](v14, -1, -1);
  }

  v18 = *(v0 + 928);

  v19 = *(*sub_22B9358B4((v18 + 16), *(v18 + 40)) + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(v18) = sub_22B9819E8();
  swift_unknownObjectRelease();
  if (v18)
  {
    v20 = *(v0 + 1064);
    v21 = *(v0 + 1056);
    v22 = *(v0 + 944);
    sub_22BA108FC();

    MEMORY[0x231899730](v21, v20);

    MEMORY[0x231899730](8250, 0xE200000000000000);
    swift_getErrorValue();
    v23 = *(v0 + 648);
    v24 = sub_22B958118(*(v0 + 656), *(v0 + 664));
    MEMORY[0x231899730](v24);

    sub_22B975FD8(8, v4, 0xD000000000000026, 0x800000022BA1C620);

    v25 = v22[11];
    v26 = v22[12];
    sub_22B9358B4(v22 + 8, v25);
    v27 = *(v26 + 32);
    v28 = v4;
    v37 = (v27 + *v27);
    v29 = v27[1];
    v30 = swift_task_alloc();
    *(v0 + 1288) = v30;
    *v30 = v0;
    v30[1] = sub_22B94E0D4;
    v31 = *(v0 + 936);
    v32 = *(v0 + 928);

    return v37(v32, v31, v4, 1, v25, v26);
  }

  else
  {
    v34 = *(v0 + 1064);

    v35 = swift_task_alloc();
    *(v0 + 1304) = v35;
    *v35 = v0;
    v35[1] = sub_22B94E208;
    v36 = *(v0 + 928);

    return sub_22B97D504(v4);
  }
}

uint64_t sub_22B94E0D4()
{
  v2 = *v1;
  v3 = *(*v1 + 1288);
  v4 = *v1;
  *(*v1 + 1296) = v0;

  if (v0)
  {
    v5 = sub_22B94E638;
  }

  else
  {
    v5 = sub_22B94E558;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B94E208()
{
  v1 = *(*v0 + 1304);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B94E304, 0, 0);
}

uint64_t sub_22B94E304()
{
  v24 = v0;

  v1 = *(v0 + 1280);
  *(v0 + 1312) = v1;
  v2 = *(v0 + 1072);
  v3 = *(v0 + 944);
  sub_22B95186C(v3, v0 + 16);
  sub_22B95186C(v3, v0 + 136);
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1046C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1208);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315906;
    v9 = sub_22B9358B4((v0 + 40), *(v0 + 64));
    v10 = sub_22BA082E0(*(v9 + 16));
    v12 = v11;
    sub_22B9518A4(v0 + 16);
    v13 = sub_22B99153C(v10, v12, &v23);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2048;
    *(v7 + 14) = v6;
    *(v7 + 22) = 2080;
    v14 = sub_22B9358B4((v0 + 160), *(v0 + 184));
    v15 = sub_22BA082E0(*(v14 + 16));
    v17 = v16;
    sub_22B9518A4(v0 + 136);
    v18 = sub_22B99153C(v15, v17, &v23);

    *(v7 + 24) = v18;
    *(v7 + 32) = 2048;
    *(v7 + 34) = v1;
    _os_log_impl(&dword_22B92A000, v4, v5, "%s: %lld records %s written, %lld failures", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v8, -1, -1);
    MEMORY[0x23189ADD0](v7, -1, -1);
  }

  else
  {

    sub_22B9518A4(v0 + 136);
    sub_22B9518A4(v0 + 16);
  }

  v19 = *(v0 + 944);
  v20 = *(*(v0 + 928) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 1320) = v20;
  v21 = sub_22B9358B4((v19 + 24), *(v19 + 48));
  *(v0 + 811) = sub_22BA08430(*(v21 + 16));

  return MEMORY[0x2822009F8](sub_22B94E718, v20, 0);
}

uint64_t sub_22B94E558()
{
  v1 = v0[159];
  v2 = v0[153];
  v3 = v0[141];
  swift_willThrow();

  v4 = v0[159];
  v5 = v0[131];
  v6 = v0[130];
  v7 = v0[129];
  v8 = v0[126];
  v9 = v0[123];
  v10 = v0[122];
  v11 = v0[119];

  v12 = v0[1];

  return v12();
}

uint64_t sub_22B94E638()
{
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1128);

  v3 = *(v0 + 1296);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 1032);
  v7 = *(v0 + 1008);
  v8 = *(v0 + 984);
  v9 = *(v0 + 976);
  v10 = *(v0 + 952);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22B94E718()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 811);
  swift_beginAccess();
  v3 = sub_22B964498(v2);
  swift_endAccess();
  if (*(v3 + 16))
  {
    v4 = sub_22B990B64(1u);
    if (v5)
    {
      v7 = *(v0 + 1208);
      v8 = (*(v3 + 56) + 16 * v4);
      v9 = *v8 + v7;
      if (__OFADD__(*v8, v7))
      {
        __break(1u);
      }

      else
      {
        v10 = *(v0 + 1312);
        v11 = v8[1];
        v12 = v11 + v10;
        if (!__OFADD__(v11, v10))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v14 = v9;
          v15 = v12;
          goto LABEL_7;
        }
      }

      __break(1u);
      return MEMORY[0x2822009F8](v4, v5, v6);
    }
  }

  v16 = *(v0 + 1312);
  v17 = *(v0 + 1208);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v17;
  v15 = v16;
LABEL_7:
  sub_22B9BB0F8(v14, v15, 1, isUniquelyReferenced_nonNull_native);
  v18 = *(v0 + 1320);
  v19 = *(v0 + 811);

  sub_22B9645F8(v20, v19);

  v4 = sub_22B94E868;
  v5 = 0;
  v6 = 0;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22B94E868()
{
  v1 = v0[153];
  if (v1)
  {
    v2 = v0[134];
    v3 = v1;
    v4 = sub_22BA0FEDC();
    v5 = sub_22BA1044C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_22B92A000, v4, v5, "Aborting after finishing batch due to: %@", v6, 0xCu);
      sub_22B936BEC(v7, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v7, -1, -1);
      MEMORY[0x23189ADD0](v6, -1, -1);
    }

    v10 = v0[118];

    v11 = v10[11];
    v12 = v10[12];
    sub_22B9358B4(v10 + 8, v11);
    v13 = *(v12 + 32);
    v14 = v1;
    v31 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v0[168] = v16;
    *v16 = v0;
    v16[1] = sub_22B94EC94;
    v17 = v0[153];
    v18 = v0[117];
    v19 = v0[116];
    v20 = 1;
    v21 = v11;
    v22 = v12;
    v23 = v31;
  }

  else
  {
    v24 = v0[118];
    v25 = v24[11];
    v26 = v24[12];
    sub_22B9358B4(v24 + 8, v25);
    v27 = *(v26 + 32);
    v32 = (v27 + *v27);
    v28 = v27[1];
    v29 = swift_task_alloc();
    v0[166] = v29;
    *v29 = v0;
    v29[1] = sub_22B94EB80;
    v18 = v0[117];
    v19 = v0[116];
    v17 = 0;
    v20 = 0;
    v21 = v25;
    v22 = v26;
    v23 = v32;
  }

  return v23(v19, v18, v17, v20, v21, v22);
}

uint64_t sub_22B94EB80()
{
  v2 = *(*v1 + 1328);
  v5 = *v1;
  *(*v1 + 1336) = v0;

  if (v0)
  {
    v3 = sub_22B94F064;
  }

  else
  {
    v3 = sub_22B94EF70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B94EC94()
{
  v2 = *v1;
  v3 = *(*v1 + 1344);
  v4 = *v1;
  *(*v1 + 1352) = v0;

  if (v0)
  {
    v5 = sub_22B94EE9C;
  }

  else
  {
    v5 = sub_22B94EDC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B94EDC8()
{
  v1 = v0[153];
  v2 = v0[141];
  swift_willThrow();

  v3 = v0[153];
  v4 = v0[131];
  v5 = v0[130];
  v6 = v0[129];
  v7 = v0[126];
  v8 = v0[123];
  v9 = v0[122];
  v10 = v0[119];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22B94EE9C()
{
  v1 = *(v0 + 1128);

  v2 = *(v0 + 1352);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 1040);
  v5 = *(v0 + 1032);
  v6 = *(v0 + 1008);
  v7 = *(v0 + 984);
  v8 = *(v0 + 976);
  v9 = *(v0 + 952);

  v10 = *(v0 + 8);

  return v10();
}

void sub_22B94EF70()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1208);

  v3 = __OFADD__(v2, v1);
  v4 = v2 + v1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 1048);
    v6 = *(v0 + 1040);
    v7 = *(v0 + 1032);
    v8 = *(v0 + 1008);
    v9 = *(v0 + 984);
    v10 = *(v0 + 976);
    v11 = *(v0 + 952);
    v12 = *(v0 + 1120) != 0;

    v13 = *(v0 + 8);

    v13(v4, v12);
  }
}

uint64_t sub_22B94F064()
{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1008);
  v6 = *(v0 + 984);
  v7 = *(v0 + 976);
  v8 = *(v0 + 952);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22B94F130()
{
  v1 = *(v0 + 1368);
  swift_beginAccess();
  v2 = *(v1 + 192);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 192) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22B97FE58(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 192) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_22B97FE58((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 1360);
  *(v2 + 2) = v5 + 1;
  *&v2[8 * v5 + 32] = v6;
  *(v1 + 192) = v2;

  return MEMORY[0x2822009F8](sub_22B94F22C, 0, 0);
}

uint64_t sub_22B94F22C()
{
  v4 = *(v0 + 1232);
  *(v0 + 1240) = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 928);
    v6 = *(v0 + 1168);
    v2 = *(v5 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
    *(v0 + 1248) = v2;
    v1 = sub_22B94D1D4;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22B94F2C4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v23 = MEMORY[0x277D84F90];
    sub_22BA109CC();
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = sub_22BA107CC();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v20 = v1 + 72;
    v21 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = *(*(v1 + 56) + 16 * v6);
      sub_22BA1099C();
      v12 = *(v23 + 16);
      sub_22BA109DC();
      v1 = v21;
      sub_22BA109EC();
      result = sub_22BA109AC();
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v10);
      if ((v13 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v6 & 0x3F));
      if (v14)
      {
        v9 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v10 << 6;
        v16 = v10 + 1;
        v17 = (v20 + 8 * v10);
        while (v16 < (v9 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_22B951A48(v6, v8, 0);
            v9 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_22B951A48(v6, v8, 0);
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return v23;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_22B94F4DC()
{
  sub_22B951A54(0, &qword_281414A88, 0x277CCA9B8);
  sub_22B951998();
  v1 = v0;
  v2 = sub_22BA10C3C();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = swift_allocError();
    *v4 = v1;
  }

  v5 = sub_22BA0FB5C();

  v6 = [v5 userInfo];
  v7 = sub_22BA0FF6C();

  v49 = v5;
  type metadata accessor for CKError(0);
  v8 = v5;
  if (swift_dynamicCast())
  {

    v9 = [v8 userInfo];
    v10 = sub_22BA0FF6C();

    v11 = *MEMORY[0x277CCA7E8];
    v12 = sub_22BA0FFFC();
    if (*(v10 + 16))
    {
      v14 = sub_22B990A58(v12, v13);
      v16 = v15;

      if (v16)
      {
        sub_22B936B20(*(v10 + 56) + 32 * v14, &v49);

        type metadata accessor for CKUnderlyingError(0);
        if (swift_dynamicCast())
        {
          [v8 code];
          v49 = sub_22BA10C1C();
          v50 = v17;
          MEMORY[0x231899730](47, 0xE100000000000000);
          sub_22B951A00(&qword_281414CA0, type metadata accessor for CKUnderlyingError);
          sub_22BA0FB2C();
          v18 = sub_22BA10C1C();
          MEMORY[0x231899730](v18);

          v20 = v49;
          v19 = v50;
          v49 = v48;
          sub_22BA0FB2C();
          v21 = stringForCKUnderlyingErrorCode();
          v22 = sub_22BA0FFFC();
          v24 = v23;

LABEL_17:
          v38 = [v8 domain];
          v39 = sub_22BA0FFFC();
          v41 = v40;

          v49 = v39;
          v50 = v41;
          MEMORY[0x231899730](10272, 0xE200000000000000);
          MEMORY[0x231899730](v20, v19);

          MEMORY[0x231899730](2112041, 0xE300000000000000);
          MEMORY[0x231899730](v22, v24);

          goto LABEL_18;
        }

LABEL_16:
        v49 = [v8 code];
        v20 = sub_22BA10C1C();
        v19 = v36;
        v49 = v48;
        sub_22B951A00(&unk_281414CE8, type metadata accessor for CKError);
        sub_22BA0FB2C();
        v21 = stringForCKErrorCode();
        v22 = sub_22BA0FFFC();
        v24 = v37;
        goto LABEL_17;
      }
    }

    else
    {
    }

    goto LABEL_16;
  }

  v25 = *MEMORY[0x277CCA450];
  v26 = sub_22BA0FFFC();
  if (!*(v7 + 16))
  {

    goto LABEL_19;
  }

  v28 = sub_22B990A58(v26, v27);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  sub_22B936B20(*(v7 + 56) + 32 * v28, &v49);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v42 = [v8 domain];
    v43 = sub_22BA0FFFC();
    v45 = v44;

    v49 = v43;
    v50 = v45;
    MEMORY[0x231899730](10272, 0xE200000000000000);
    [v8 code];
    v46 = sub_22BA10C1C();
    MEMORY[0x231899730](v46);

    MEMORY[0x231899730](41, 0xE100000000000000);

    return v49;
  }

  v31 = [v8 domain];
  v32 = sub_22BA0FFFC();
  v34 = v33;

  v49 = v32;
  v50 = v34;
  MEMORY[0x231899730](10272, 0xE200000000000000);
  [v8 code];
  v35 = sub_22BA10C1C();
  MEMORY[0x231899730](v35);

  MEMORY[0x231899730](2112041, 0xE300000000000000);
  MEMORY[0x231899730]();
LABEL_18:

  return v49;
}

uint64_t sub_22B94FAFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 40) = a4;
  return MEMORY[0x2822009F8](sub_22B94FB20, 0, 0);
}

uint64_t sub_22B94FB20()
{
  sub_22B9ECD54(*(v0 + 40));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22B94FC08;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22B9E81AC(v3, v2, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/RecordZoneWriter.swift", 108, 2);
}

uint64_t sub_22B94FC08()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B94FCFC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22B94FD20, 0, 0);
}

uint64_t sub_22B94FD20()
{
  v1 = v0[4];
  v2 = v1[11];
  v3 = v1[12];
  sub_22B9358B4(v1 + 8, v2);
  v4 = *(v3 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_22B94FE50;
  v8 = v0[2];
  v7 = v0[3];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_22B94FE50()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[6] = v4;
  *v4 = v3;
  v4[1] = sub_22B94FFD4;
  v5 = v1[4];
  v6 = v1[3];
  v7 = v1[2];

  return (sub_22B982058)(v7, v6);
}

uint64_t sub_22B94FFD4()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B9500D0, 0, 0);
}

uint64_t sub_22B9500D0()
{
  v1 = sub_22B9358B4((v0[4] + 24), *(v0[4] + 48));
  sub_22B9ECD54(*(v1 + 16));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_22B9501C8;
  v4 = v0[2];
  v3 = v0[3];

  return sub_22B9E81AC(v4, v3, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/RecordZoneWriter.swift", 108, 2);
}

uint64_t sub_22B9501C8()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B947B40, 0, 0);
}

uint64_t sub_22B9502CC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  sub_22B930C20(v1);
  return v1;
}

uint64_t sub_22B950318(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B945AC8;

  return sub_22B949D8C(a1, a2);
}

uint64_t sub_22B9503D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B947814;

  return sub_22B94AC34(a1, a2);
}

uint64_t sub_22B950488(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B943E68;

  return sub_22B94FCFC(a1, a2);
}

uint64_t sub_22B950540(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_22BA109CC();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_22B936B20(i, v6);
    sub_22B951A54(0, &qword_281414A88, 0x277CCA9B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_22BA1099C();
    v4 = *(v7 + 16);
    sub_22BA109DC();
    sub_22BA109EC();
    sub_22BA109AC();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

id sub_22B95064C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (MEMORY[0x277D84F90] >> 62 && sub_22BA1080C())
  {
    sub_22B9579D4(MEMORY[0x277D84F90]);
    v6 = v16;
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  sub_22B951A54(0, &unk_281414AC0, 0x277CBC4A0);
  v17 = v6;
  sub_22B949AA0(a3, &v17);

  v7 = sub_22BA105CC();
  v8 = sub_22B99BA10(a1, a2, 0x6574697277, 0xE500000000000000);
  [v7 setGroup_];

  v9 = (a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
  v10 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  [v10 setQualityOfService_];
  [v10 setAllowsCellularAccess_];
  v11 = v9[3];
  v12 = v9[4];
  sub_22B9358B4(v9, v11);
  v13 = (*(v12 + 8))(v11, v12);
  if (v13)
  {
    v14 = v13;
    [v10 setAllowsCellularAccess_];
    [v10 setXPCActivity_];
    swift_unknownObjectRelease();
  }

  [v7 setConfiguration_];

  [v7 setAtomic_];
  [v7 setSavePolicy_];
  return v7;
}

uint64_t sub_22B950864(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22B951440(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22B9508D0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22B9508D0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22BA10C0C();
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
        v5 = sub_22BA1024C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22B950A98(v7, v8, a1, v4);
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
    return sub_22B9509C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22B9509C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_22BA10C6C(), (result & 1) == 0))
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

uint64_t sub_22B950A98(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_22B951328(v8);
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
        sub_22B951074((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_22BA10C6C();
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
            result = sub_22BA10C6C();
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
      result = sub_22B95133C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_22B95133C((v39 > 1), v40 + 1, 1, v8);
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
        sub_22B951074((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22B951328(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_22B95129C(v44);
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
    if (v37 || (result = sub_22BA10C6C(), (result & 1) == 0))
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

uint64_t sub_22B951074(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_22BA10C6C() & 1) != 0)
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
      if (!v21 && (sub_22BA10C6C() & 1) != 0)
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

uint64_t sub_22B95129C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22B951328(v3);
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

char *sub_22B95133C(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D4F30, &qword_22BA16710);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_22B951454(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BA0FD8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v27[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CloudState();
  v28 = v10;
  v29 = &off_283F589F0;
  v27[0] = a1;
  v11 = (a2 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
  v12 = *(*sub_22B9358B4((a2 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(a2 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24)) + 24);
  v13 = *MEMORY[0x277D19AB0];

  if ([v12 integerForKey_] <= 0)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v14 = sub_22BA0FEFC();
    sub_22B936CA8(v14, qword_28141AD40);
    v15 = sub_22BA0FEDC();
    v16 = sub_22BA1046C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22B92A000, v15, v16, "User has not marked first restore, setting first restore date, and marker", v17, 2u);
      MEMORY[0x23189ADD0](v17, -1, -1);
    }

    v18 = sub_22B9358B4(v27, v10);
    sub_22BA0FD7C();
    v19 = *v18;
    v20 = sub_22BA09CBC();
    if (v20)
    {
      v21 = v20;
      swift_unknownObjectRetain();
      v22 = sub_22BA0FCFC();
      v23 = sub_22BA0FFCC();
      [v21 setSyncDate:v22 forKey:v23 shouldOverride:0];

      swift_unknownObjectRelease();
    }

    (*(v5 + 8))(v9, v4);
    [*(*sub_22B9358B4(v11 v11[3]) + 24)];
    v10 = v28;
  }

  v24 = *(*sub_22B9358B4(v27, v10) + 56);
  if (v24)
  {
    [v24 setSyncJobStateWithState_];
  }

  return sub_22B936C4C(v27);
}

uint64_t sub_22B9517A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B943E68;

  return sub_22B94FAFC(a1, v4, v5, v8, v6, v7);
}

void sub_22B9518D4(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    sub_22B9518E8(a1, a2, a3);
  }
}

void sub_22B9518E8(void *a1, void *a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
    }
  }

  else
  {
    sub_22B92E460(a1, a2, a3 & 1);
  }
}

id sub_22B95190C(id result, void *a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_22B951920(result, a2, a3);
  }

  return result;
}

id sub_22B951920(id result, void *a2, unsigned __int8 a3)
{
  if ((a3 >> 6) <= 1u)
  {
    return sub_22B92E4AC(result, a2, a3 & 1);
  }

  if (a3 >> 6 == 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_22B95194C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22B948760(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B951998()
{
  result = qword_27D8D4F38;
  if (!qword_27D8D4F38)
  {
    sub_22B951A54(255, &qword_281414A88, 0x277CCA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4F38);
  }

  return result;
}

uint64_t sub_22B951A00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B951A48(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22B951A54(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id sub_22B951A9C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  result = v1;
  v6 = result;
  if (!v4)
  {
    goto LABEL_15;
  }

  v7 = 0;
  v8 = a1 + 40;
  v16 = a1 + 40;
  do
  {
    v9 = (v8 + 16 * v7);
    v10 = v7;
    while (1)
    {
      if (v10 >= v4)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_19;
      }

      v11 = *(v9 - 1);
      v12 = *v9;

      if (MEMORY[0x231899D50](v11, v12))
      {
        break;
      }

LABEL_6:
      ++v10;
      v9 += 2;
      if (v7 == v4)
      {
        goto LABEL_15;
      }
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();

    if (!v13)
    {
      result = swift_unknownObjectRelease();
      goto LABEL_6;
    }

    MEMORY[0x231899830](v14);
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22BA1022C();
    }

    result = sub_22BA1026C();
    v8 = v16;
    v3 = v17;
  }

  while (v7 != v4);
LABEL_15:

  return v3;
}

uint64_t sub_22B951C1C()
{
  v1 = sub_22B951F04();
  if (v2 >> 60 == 15)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v3 = sub_22BA0FEFC();
    sub_22B936CA8(v3, qword_28141AD40);
    v4 = sub_22BA0FEDC();
    v5 = sub_22BA1044C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B92A000, v4, v5, "No transfer data present for record.", v6, 2u);
      MEMORY[0x23189ADD0](v6, -1, -1);
    }
  }

  else
  {
    v7 = v1;
    v8 = v2;
    v9 = sub_22BA0FC8C();
    v10 = JWDecodeDictionary();

    if (v10)
    {
      v11 = sub_22BA0FF6C();

      v12 = sub_22B98963C(v11);

      if (v12)
      {
        v21 = v12;
        sub_22B952374(&v21, 26997, 0xE200000000000000);
        sub_22B952374(&v21, 6911347, 0xE300000000000000);
        sub_22B952374(&v21, 6911329, 0xE300000000000000);
        sub_22B9359A8(v7, v8);
        return v21;
      }
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v14 = sub_22BA0FEFC();
    sub_22B936CA8(v14, qword_28141AD40);
    v15 = v0;
    v16 = sub_22BA0FEDC();
    v17 = sub_22BA1044C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_22B92A000, v16, v17, "Could not decode transfer data for record: %@", v18, 0xCu);
      sub_22B936BEC(v19, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v19, -1, -1);
      MEMORY[0x23189ADD0](v18, -1, -1);
    }

    sub_22B9359A8(v7, v8);
  }

  return 0;
}

uint64_t sub_22B951F04()
{
  v1 = sub_22B95222C(1);
  if (v2 >> 60 == 15)
  {
    result = sub_22B95222C(0);
    if (v4 >> 60 != 15)
    {
      return result;
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v5 = sub_22BA0FEFC();
    sub_22B936CA8(v5, qword_28141AD40);
    v6 = v0;
    v7 = sub_22BA0FEDC();
    v8 = sub_22BA1044C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&dword_22B92A000, v7, v8, "No transfer metadata found for record: %@", v9, 0xCu);
      sub_22B936BEC(v10, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v10, -1, -1);
      MEMORY[0x23189ADD0](v9, -1, -1);
    }
  }

  else
  {
    if (qword_28141ADC8)
    {
      v12 = v1;
      v13 = v2;
      v14 = (*(qword_28141ADD0 + 88))();
      sub_22B9359A8(v12, v13);
      return v14;
    }

    v15 = v1;
    v16 = v2;
    sub_22B952500();
    v17 = swift_allocError();
    swift_willThrow();
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v18 = sub_22BA0FEFC();
    sub_22B936CA8(v18, qword_28141AD40);
    v19 = v0;
    v20 = sub_22BA0FEDC();
    v21 = sub_22BA1044C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_22B92A000, v20, v21, "Failed to decompress data for record: %@", v22, 0xCu);
      sub_22B936BEC(v23, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v23, -1, -1);
      MEMORY[0x23189ADD0](v22, -1, -1);
    }

    sub_22B9359A8(v15, v16);
  }

  return 0;
}

uint64_t sub_22B95222C(char a1)
{
  if (a1)
  {
    v2 = 28003;
  }

  else
  {
    v2 = 109;
  }

  if (a1)
  {
    v3 = 0xE200000000000000;
  }

  else
  {
    v3 = 0xE100000000000000;
  }

  v4 = MEMORY[0x231899D50](v2, v3);

  if (v4)
  {
    sub_22B9349C8(&unk_27D8D4F50, &unk_22BA17980);
    if (swift_dynamicCast())
    {
      return v9;
    }
  }

  v5 = [v1 encryptedValues];
  v6 = sub_22BA0FFCC();

  v7 = [v5 objectForKey_];

  swift_unknownObjectRelease();
  if (v7 && (sub_22B9349C8(&unk_27D8D4F50, &unk_22BA17980), (swift_dynamicCast() & 1) != 0))
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B952374(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*(*a1 + 16))
  {
    v6 = sub_22B990A58(a2, a3);
    if (v7)
    {
      sub_22B936B20(*(v5 + 56) + 32 * v6, &v14);
      sub_22B936C98(&v14, v16);
      sub_22B936B20(v16, &v14);
      sub_22B9349C8(&unk_27D8D4F40, &qword_22BA13E08);
      if (swift_dynamicCast())
      {
        v8 = sub_22BA0FF5C();
      }

      else
      {
        v8 = 0;
      }

      v9 = JWEncodeDictionary();

      if (v9)
      {
        v10 = sub_22BA0FCAC();
        v12 = v11;

        v15 = MEMORY[0x277CC9318];
        *&v14 = v10;
        *(&v14 + 1) = v12;

        sub_22B9B4FFC(&v14, a2, a3);
        return sub_22B936C4C(v16);
      }

      sub_22B936C4C(v16);
    }
  }

  sub_22B9EB6F0(a2, a3, v16);
  return sub_22B936BEC(v16, &unk_27D8D5A30, qword_22BA13390);
}

unint64_t sub_22B952500()
{
  result = qword_27D8D57E0;
  if (!qword_27D8D57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D57E0);
  }

  return result;
}

void *sub_22B952560(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_22B9801C4(*(a1 + 16), 0);
  v4 = sub_22B954698(&v6, v3 + 4, v2, a1);
  sub_22B951944();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_22B9525F0(void *a1)
{
  v3 = sub_22BA0FD8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v21 - v11;
  v13 = [a1 statusValue];
  v14 = 1;
  if (v13 - 1 >= 3)
  {
    if (v13)
    {
      if (v13 == 999)
      {
        return v14 & 1;
      }

      __break(1u);
    }

    else
    {
      v15 = [v1 modificationDate];
      if (!v15)
      {
LABEL_9:
        v14 = 1;
        return v14 & 1;
      }

      v16 = v15;
      sub_22BA0FD5C();

      v17 = [a1 modificationDate];
      if (v17)
      {
        v18 = v17;
        sub_22BA0FD5C();

        v14 = sub_22BA0FD0C();
        v19 = *(v4 + 8);
        v19(v9, v3);
        v19(v12, v3);
        return v14 & 1;
      }
    }

    (*(v4 + 8))(v12, v3);
    goto LABEL_9;
  }

  return v14 & 1;
}

uint64_t sub_22B9527A8(uint64_t a1)
{
  sub_22BA106BC();
  v2 = sub_22B9C2E30();
  result = 0;
  if (v2 > 3u)
  {
    if (v2 != 5)
    {
      if (v2 != 4)
      {
        return result;
      }

      goto LABEL_13;
    }

    if (!*(a1 + 16))
    {
      return 0;
    }

    v10 = sub_22B990A58(29813, 0xE200000000000000);
    if ((v11 & 1) == 0)
    {
      return 0;
    }

    sub_22B936B20(*(a1 + 56) + 32 * v10, v33);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v12 = sub_22BA10AAC();

    if (v12 == 2)
    {
      if (!*(a1 + 16))
      {
        return 0;
      }

      v24 = sub_22B990A58(28789, 0xE200000000000000);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      sub_22B936B20(*(a1 + 56) + 32 * v24, v33);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      v16 = v31;
      v15 = v32;
      v26 = objc_allocWithZone(MEMORY[0x277D1AC30]);
      sub_22B936A50(v31, v32);
      v27 = sub_22BA0FC8C();
      sub_22B9359BC(v31, v32);
      v19 = [v26 initWithData_];

      if (!v19)
      {
        goto LABEL_47;
      }

      if ([v19 hasMsgid])
      {
LABEL_44:
        v28 = [v19 msgid];
        if (v28)
        {
          v29 = v28;
          v30 = sub_22BA0FFFC();
          sub_22B9359BC(v16, v15);

          return v30;
        }

        sub_22B9359BC(v16, v15);

        return 0;
      }
    }

    else if (v12 == 1)
    {
      if (!*(a1 + 16))
      {
        return 0;
      }

      v20 = sub_22B990A58(28789, 0xE200000000000000);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      sub_22B936B20(*(a1 + 56) + 32 * v20, v33);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      v16 = v31;
      v15 = v32;
      v22 = objc_allocWithZone(MEMORY[0x277D1AC28]);
      sub_22B936A50(v31, v32);
      v23 = sub_22BA0FC8C();
      sub_22B9359BC(v31, v32);
      v19 = [v22 initWithData_];

      if (!v19)
      {
        goto LABEL_47;
      }

      if ([v19 hasMsgid])
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v12)
      {
        return 0;
      }

      if (!*(a1 + 16))
      {
        return 0;
      }

      v13 = sub_22B990A58(28789, 0xE200000000000000);
      if ((v14 & 1) == 0)
      {
        return 0;
      }

      sub_22B936B20(*(a1 + 56) + 32 * v13, v33);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      v16 = v31;
      v15 = v32;
      v17 = objc_allocWithZone(MEMORY[0x277D1AC20]);
      sub_22B936A50(v31, v32);
      v18 = sub_22BA0FC8C();
      sub_22B9359BC(v31, v32);
      v19 = [v17 initWithData_];

      if (!v19)
      {
        goto LABEL_47;
      }

      if ([v19 hasMsgid])
      {
        goto LABEL_44;
      }
    }

LABEL_47:
    sub_22B9359BC(v16, v15);
    return 0;
  }

  if (v2 - 1 >= 2)
  {
    if (v2 != 3)
    {
      return result;
    }

    if (*(a1 + 16))
    {
      v4 = sub_22B990A58(0x617461646174656DLL, 0xE800000000000000);
      if (v5)
      {
        sub_22B936B20(*(a1 + 56) + 32 * v4, v33);
        sub_22B9349C8(&qword_27D8D4F00, &qword_22BA16D50);
        if (swift_dynamicCast())
        {
          if (*(v31 + 16) && (v6 = sub_22B990A58(0x6469756761, 0xE500000000000000), (v7 & 1) != 0))
          {
            sub_22B936B20(*(v31 + 56) + 32 * v6, v33);

            if (swift_dynamicCast())
            {
              return v31;
            }
          }

          else
          {
          }
        }
      }
    }

    return 0;
  }

LABEL_13:
  if (!*(a1 + 16))
  {
    return 0;
  }

  v8 = sub_22B990A58(1684632935, 0xE400000000000000);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_22B936B20(*(a1 + 56) + 32 * v8, v33);
  if (swift_dynamicCast())
  {
    return v31;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B952CD4(uint64_t a1)
{
  sub_22BA106BC();
  v2 = sub_22B9C2E30();
  if ((v2 - 4) < 2)
  {
    return sub_22B9527A8(a1);
  }

  if (v2 == 3)
  {
    result = sub_22B9527A8(a1);
    if (!v9)
    {
      return result;
    }

    v10 = sub_22BA0FFCC();

    v11 = IMMessageGuidFromIMFileTransferGuid();

    if (v11)
    {
      v12 = sub_22BA0FFFC();

      return v12;
    }

    return 0;
  }

  if (v2 != 2)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = sub_22B990A58(0x444974616863, 0xE600000000000000);
  if (v4)
  {
    sub_22B936B20(*(a1 + 56) + 32 * v3, v46);
    v5 = swift_dynamicCast();
    v6 = v5 == 0;
    if (v5)
    {
      result = v44;
    }

    else
    {
      result = 0;
    }

    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v45;
    }

    if (!*(a1 + 16))
    {
      return result;
    }
  }

  else
  {
    result = 0;
    v8 = 0;
    if (!*(a1 + 16))
    {
      return result;
    }
  }

  v13 = v8;
  v14 = result;
  v15 = sub_22B990A58(0x6F746F725067736DLL, 0xE900000000000034);
  if ((v16 & 1) == 0)
  {
    return v14;
  }

  sub_22B936B20(*(a1 + 56) + 32 * v15, v46);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return v14;
  }

  v17 = sub_22BA0FC8C();
  v18 = [v17 _FTOptionallyDecompressData];

  if (v18)
  {
    v19 = sub_22BA0FCAC();
    v21 = v20;

    v18 = sub_22BA0FC8C();
    sub_22B9359BC(v19, v21);
  }

  v22 = [objc_allocWithZone(MEMORY[0x277D1AC10]) initWithData_];

  if (!v22 || (v23 = v22, v24 = [v23 actualParentChatId], v23, !v24))
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v36 = sub_22BA0FEFC();
    sub_22B936CA8(v36, qword_28141AD40);

    v37 = sub_22BA0FEDC();
    v38 = sub_22BA1046C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v46[0] = v40;
      *v39 = 136315138;
      if (v13)
      {
        v41 = v14;
      }

      else
      {
        v41 = 7104878;
      }

      if (v13)
      {
        v42 = v13;
      }

      else
      {
        v42 = 0xE300000000000000;
      }

      v43 = sub_22B99153C(v41, v42, v46);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_22B92A000, v37, v38, "proto4 for message found, but no actualParentChatID found, falling through to %s", v39, 0xCu);
      sub_22B936C4C(v40);
      MEMORY[0x23189ADD0](v40, -1, -1);
      MEMORY[0x23189ADD0](v39, -1, -1);
      sub_22B9359BC(v44, v45);

      return v14;
    }

    sub_22B9359BC(v44, v45);

    return v14;
  }

  v25 = sub_22BA0FFFC();
  v27 = v26;

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v28 = sub_22BA0FEFC();
  sub_22B936CA8(v28, qword_28141AD40);

  v29 = sub_22BA0FEDC();
  v30 = sub_22BA1046C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v46[0] = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_22B99153C(v25, v27, v46);
    *(v31 + 12) = 2080;
    if (v13)
    {
      v33 = v14;
    }

    else
    {
      v33 = 7104878;
    }

    if (!v13)
    {
      v13 = 0xE300000000000000;
    }

    v34 = v25;
    v35 = sub_22B99153C(v33, v13, v46);

    *(v31 + 14) = v35;
    _os_log_impl(&dword_22B92A000, v29, v30, "For message, using actualParentChatID from proto4 %s instead of %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v32, -1, -1);
    MEMORY[0x23189ADD0](v31, -1, -1);
    sub_22B9359BC(v44, v45);

    return v34;
  }

  else
  {
    sub_22B9359BC(v44, v45);

    return v25;
  }
}

id sub_22B953298()
{
  result = sub_22B9532B8();
  qword_281414A40 = result;
  return result;
}

id sub_22B9532B8()
{
  sub_22B951A54(0, &qword_281414B98, 0x277CCAC30);
  v0 = sub_22BA1041C();
  v1 = sub_22BA1041C();
  v2 = sub_22BA1041C();
  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22BA13E30;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v5 = v0;
  v6 = v1;
  v7 = v2;
  v8 = sub_22BA101DC();

  v9 = [v4 initWithType:1 subpredicates:v8];

  return v9;
}

id sub_22B953420()
{
  sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22BA13420;
  *(inited + 32) = 0x4D414E5F454E4F5ALL;
  *(inited + 40) = 0xE900000000000045;
  v2 = [v0 recordID];
  v3 = [v2 zoneID];

  v4 = [v3 zoneName];
  v5 = sub_22BA0FFFC();
  v7 = v6;

  v8 = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = 0x545F44524F434552;
  *(inited + 88) = 0xEB00000000455059;
  *(inited + 96) = sub_22BA106BC();
  *(inited + 104) = v9;
  *(inited + 120) = v8;
  *(inited + 128) = 0x4E5F44524F434552;
  *(inited + 136) = 0xEB00000000454D41;
  v10 = [v0 recordID];
  v11 = [v10 recordName];

  v12 = sub_22BA0FFFC();
  v14 = v13;

  *(inited + 168) = v8;
  *(inited + 144) = v12;
  *(inited + 152) = v14;
  sub_22B9BBA8C(inited);
  swift_setDeallocating();
  sub_22B9349C8(&unk_27D8D5770, &qword_22BA135E0);
  swift_arrayDestroy();
  if (qword_281414A38 != -1)
  {
    swift_once();
  }

  v15 = qword_281414A40;
  v16 = sub_22BA0FF5C();

  v17 = [v15 predicateWithSubstitutionVariables_];

  return v17;
}

id sub_22B95368C(uint64_t a1)
{
  v2 = type metadata accessor for RemoteRecord();
  v3 = [swift_getObjCClassFromMetadata() entity];
  v4 = [objc_allocWithZone(v2) initWithEntity:v3 insertIntoManagedObjectContext:a1];

  return v4;
}

uint64_t sub_22B953704(void *a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  v7 = *sub_22B9358B4(a3, a3[3]);

  return sub_22B957164(a1, a2, v7, v6);
}

uint64_t sub_22B9537AC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_22B953F3C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_22B9538D8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v70 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v51 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v57 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v61 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v65 = (a2 + 56);

  v15 = 0;
  v63 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v64 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_22BA10D3C();

    sub_22BA1008C();
    v24 = sub_22BA10D6C();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v65[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v63;
    v15 = v64;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_22BA10C6C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v65[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v63;
  v28 = v64;
  v67 = v61;
  v68 = v64;
  v69 = v11;
  v66[0] = v63;
  v66[1] = v7;

  v31 = *(v5 + 32);
  v58 = ((1 << v31) + 63) >> 6;
  v14 = 8 * v58;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v59 = &v57;
    MEMORY[0x28223BE20](v29, v30);
    v2 = &v57 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v65, v32);
    v33 = *(v2 + 8 * v8) & ~v4;
    v34 = *(v5 + 16);
    v62 = v2;
    *(v2 + 8 * v8) = v33;
    v35 = v34 - 1;
LABEL_23:
    v60 = v35;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v37 = v28;
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v12)
      {
        v5 = sub_22B9542B0(v62, v58, v60, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v38);
      ++v37;
      if (v11)
      {
        v28 = v38;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v39 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v40 = *(v3 + 48);
            v64 = v28;
            v41 = (v40 + ((v28 << 10) | (16 * v39)));
            v42 = *v41;
            v4 = v41[1];
            v43 = *(v5 + 40);
            sub_22BA10D3C();

            sub_22BA1008C();
            v44 = sub_22BA10D6C();
            v45 = -1 << *(v5 + 32);
            v8 = v44 & ~v45;
            v2 = v8 >> 6;
            v46 = 1 << v8;
            if (((1 << v8) & v65[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v64;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v47 = (*(v5 + 48) + 16 * v8);
          if (*v47 != v42 || v47[1] != v4)
          {
            v49 = ~v45;
            while ((sub_22BA10C6C() & 1) == 0)
            {
              v8 = (v8 + 1) & v49;
              v2 = v8 >> 6;
              v46 = 1 << v8;
              if (((1 << v8) & v65[v8 >> 6]) == 0)
              {
                v3 = v63;
                goto LABEL_45;
              }

              v50 = (*(v5 + 48) + 16 * v8);
              if (*v50 == v42 && v50[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v63;
          v36 = v62[v2];
          v62[v2] = v36 & ~v46;
          v27 = (v36 & v46) == 0;
          v28 = v64;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v35 = v60 - 1;
        if (__OFSUB__(v60, 1))
        {
          __break(1u);
        }

        if (v60 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v53 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v64;
  }

  v54 = swift_slowAlloc();
  memcpy(v54, v65, v53);
  v55 = v57;
  v56 = sub_22B954078(v54, v58, v5, v2, v66);

  if (!v55)
  {

    MEMORY[0x23189ADD0](v54, -1, -1);
    v61 = v67;
    v5 = v56;
LABEL_52:
    sub_22B951944();
    goto LABEL_53;
  }

  result = MEMORY[0x23189ADD0](v54, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_22B953E48(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22B97FB74(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22B953F3C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22BA10D3C();
  sub_22BA1008C();
  v7 = sub_22BA10D6C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_22BA10C6C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22BA0006C();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_22B9544D4(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_22B954078(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_22B9542B0(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_22BA10D3C();

        sub_22BA1008C();
        v20 = sub_22BA10D6C();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_22BA10C6C() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_22B9542B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_22B9349C8(&qword_27D8D4F68, &qword_22BA13E60);
  result = sub_22BA108BC();
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
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_22BA10D3C();

    sub_22BA1008C();
    result = sub_22BA10D6C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
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

unint64_t sub_22B9544D4(unint64_t result)
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

    v9 = sub_22BA107DC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_22BA10D3C();

        sub_22BA1008C();
        v15 = sub_22BA10D6C();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
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

void *sub_22B954698(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_22B9547F0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22B954944(uint64_t a1, void *a2, uint64_t a3)
{
  v152 = *MEMORY[0x277D85DE8];
  v123 = sub_22BA0FC4C();
  v6 = *(v123 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v123, v8);
  v122 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SyncFiles.FileMove();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v125 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_22B9349C8(&qword_27D8D4F70, &unk_22BA15750);
  v14 = *(*(v128 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v128, v15);
  v127 = (&v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16, v18);
  v130 = (&v118 - v19);
  v150 = &type metadata for FileManagerProvider;
  v151 = &off_283F53B48;
  v149 = a2;
  v20 = *(a1 + 16);
  if (!v20)
  {
    v115 = a2;
    v114 = 0;
    goto LABEL_68;
  }

  v121 = (v6 + 8);
  v21 = a2;
  v22 = a1 + 32;
  v23 = 0;
  v24 = MEMORY[0x277D84F98];
  *&v25 = 138412290;
  v124 = v25;
  v141 = xmmword_22BA13CB0;
  v131 = MEMORY[0x277D84F98];
  v129 = v20;
  v120 = a3;
  v119 = v10;
  v126 = a1 + 32;
  while (2)
  {
    v26 = (v22 + 16 * v23);
    v27 = *v26;
    v28 = v26[1];

    v140 = v27;
    v29 = MEMORY[0x231899D50](v27, v28);
    if (!v29)
    {

      goto LABEL_4;
    }

    v30 = v29;
    v134 = v23;
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (!v31)
    {

      swift_unknownObjectRelease();
      goto LABEL_65;
    }

    v32 = v31;
    v133 = v30;
    v144 = v24;
    v33 = *sub_22B9358B4(&v149, v150);
    v148 = &off_283F53B48;
    v147 = &type metadata for FileManagerProvider;
    *&v146 = v33;
    v34 = v33;
    v35 = v130;
    sub_22B970BF0(v32, v140, v28, v130);
    sub_22B957EE4(&v146);
    v36 = v35;
    v37 = v127;
    sub_22B957F38(v36, v127);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v132 = v28;
    if (EnumCaseMultiPayload == 1)
    {
      v39 = *v37;
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v40 = sub_22BA0FEFC();
      sub_22B936CA8(v40, qword_28141AD40);
      v41 = v39;
      v42 = sub_22BA0FEDC();
      v43 = sub_22BA1044C();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = v124;
        v46 = v39;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_22B92A000, v42, v43, "Encountered error during asset move: %@", v44, 0xCu);
        sub_22B936BEC(v45, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v45, -1, -1);
        v48 = v44;
        v20 = v129;
        MEMORY[0x23189ADD0](v48, -1, -1);
      }

      swift_unknownObjectRetain();
      v49 = sub_22BA0FEDC();
      v50 = sub_22BA1044C();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = v124;
        *(v51 + 4) = v32;
        *v52 = v32;
        swift_unknownObjectRetain();
        _os_log_impl(&dword_22B92A000, v49, v50, "Failed to move asset %@", v51, 0xCu);
        sub_22B936BEC(v52, &qword_27D8D4CD0, qword_22BA14360);
        v53 = v52;
        v20 = v129;
        MEMORY[0x23189ADD0](v53, -1, -1);
        MEMORY[0x23189ADD0](v51, -1, -1);
      }

      v54 = [v32 fileURL];
      if (v54)
      {
        v55 = v122;
        v56 = v54;
        sub_22BA0FC0C();

        v57 = sub_22BA0FB9C();
        v147 = MEMORY[0x277D837D0];
        *&v146 = v57;
        *(&v146 + 1) = v58;
        sub_22B936C98(&v146, &v145);
        v59 = v144;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v143 = v59;
        sub_22B9BAE64(&v145, 0x4C5255656C6966, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
        (*v121)(v55, v123);
        v61 = v143;
        v144 = v143;
      }

      else
      {
        v61 = v144;
      }

      sub_22B975FD8(2, v39, 0, 0);

      v28 = v132;
    }

    else
    {
      v62 = v37;
      v63 = v125;
      sub_22B957FA8(v62, v125);
      v64 = v63 + *(v10 + 20);
      v65 = sub_22BA0FB9C();
      v147 = MEMORY[0x277D837D0];
      *&v146 = v65;
      *(&v146 + 1) = v66;
      sub_22B936C98(&v146, &v145);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v143 = v24;
      sub_22B9BAE64(&v145, 0x4C5255656C6966, 0xE700000000000000, v67);
      sub_22B95800C(v63);
      v61 = v143;
      v144 = v143;
    }

    v68 = [v32 size];
    v147 = MEMORY[0x277D84D38];
    *&v146 = v68;
    sub_22B936C98(&v146, &v145);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v61;
    sub_22B9BAE64(&v145, 1702521203, 0xE400000000000000, v69);
    v70 = v143;
    v144 = v143;
    v71 = [v32 UUID];
    if (v71)
    {
      v72 = v71;
      v73 = sub_22BA0FFFC();
      v75 = v74;

      v147 = MEMORY[0x277D837D0];
      *&v146 = v73;
      *(&v146 + 1) = v75;
      v28 = v132;
      sub_22B936C98(&v146, &v145);
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v143 = v70;
      sub_22B9BAE64(&v145, 1684632949, 0xE400000000000000, v76);
      v144 = v143;
    }

    else
    {
      sub_22B9EB6F0(1684632949, 0xE400000000000000, &v146);
      sub_22B936BEC(&v146, &unk_27D8D5A30, qword_22BA13390);
    }

    v77 = [v32 signature];
    if (!v77)
    {
      sub_22B9EB6F0(0x727574616E676973, 0xE900000000000065, &v146);
      sub_22B936BEC(&v146, &unk_27D8D5A30, qword_22BA13390);
      v84 = v144;
      v24 = MEMORY[0x277D84F98];
      goto LABEL_64;
    }

    v78 = v77;
    v79 = sub_22BA0FCAC();
    v81 = v80;

    v82 = v81 >> 62;
    v139 = HIDWORD(v79);
    if ((v81 >> 62) > 1)
    {
      if (v82 != 2)
      {
        goto LABEL_37;
      }

      v86 = *(v79 + 16);
      v85 = *(v79 + 24);
      v83 = v85 - v86;
      if (__OFSUB__(v85, v86))
      {
        goto LABEL_78;
      }

      if (!v83)
      {
        goto LABEL_37;
      }
    }

    else if (v82)
    {
      v88 = v139 - v79;
      if (__OFSUB__(v139, v79))
      {
        goto LABEL_79;
      }

      v83 = v88;
      if (!v88)
      {
LABEL_37:
        v89 = MEMORY[0x277D84F90];
        goto LABEL_63;
      }
    }

    else
    {
      v83 = BYTE6(v81);
      if (!BYTE6(v81))
      {
        goto LABEL_37;
      }
    }

    *&v145 = MEMORY[0x277D84F90];
    sub_22B968100(0, v83 & ~(v83 >> 63), 0);
    v138 = v79;
    if (v82)
    {
      if (v82 == 2)
      {
        v87 = *(v79 + 16);
      }

      else
      {
        v87 = v138;
      }
    }

    else
    {
      v87 = 0;
    }

    v142 = v87;
    if (v83 < 0)
    {
      goto LABEL_77;
    }

    v90 = 0;
    v89 = v145;
    v136 = v79 >> 32;
    v137 = BYTE6(v81);
    v135 = &v146 + v142;
    do
    {
      if (v90 >= v83)
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
      }

      v91 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        goto LABEL_70;
      }

      v92 = v142 + v90;
      if (v82 == 2)
      {
        if (v92 < *(v79 + 16))
        {
          goto LABEL_71;
        }

        if (v92 >= *(v79 + 24))
        {
          goto LABEL_74;
        }

        v97 = sub_22BA0FA2C();
        if (!v97)
        {
          goto LABEL_81;
        }

        v94 = v97;
        v98 = sub_22BA0FA4C();
        v96 = v92 - v98;
        if (__OFSUB__(v92, v98))
        {
          goto LABEL_76;
        }

        goto LABEL_56;
      }

      if (v82 == 1)
      {
        if (v92 < v138 || v92 >= v136)
        {
          goto LABEL_73;
        }

        v93 = sub_22BA0FA2C();
        if (!v93)
        {
          goto LABEL_80;
        }

        v94 = v93;
        v95 = sub_22BA0FA4C();
        v96 = v92 - v95;
        if (__OFSUB__(v92, v95))
        {
          goto LABEL_75;
        }

LABEL_56:
        v99 = *(v94 + v96);
        goto LABEL_59;
      }

      if (v92 >= v137)
      {
        goto LABEL_72;
      }

      LOWORD(v146) = v79;
      BYTE2(v146) = BYTE2(v79);
      BYTE3(v146) = BYTE3(v79);
      BYTE4(v146) = v139;
      BYTE5(v146) = BYTE5(v79);
      BYTE6(v146) = BYTE6(v79);
      BYTE7(v146) = HIBYTE(v79);
      WORD4(v146) = v81;
      BYTE10(v146) = BYTE2(v81);
      BYTE11(v146) = BYTE3(v81);
      BYTE12(v146) = BYTE4(v81);
      BYTE13(v146) = BYTE5(v81);
      v99 = v135[v90];
LABEL_59:
      sub_22B9349C8(&qword_27D8D4F78, &qword_22BA15760);
      v100 = swift_allocObject();
      *(v100 + 16) = v141;
      *(v100 + 56) = MEMORY[0x277D84B78];
      *(v100 + 64) = MEMORY[0x277D84BC0];
      *(v100 + 32) = v99;
      v101 = sub_22BA1001C();
      *&v145 = v89;
      v104 = *(v89 + 16);
      v103 = *(v89 + 24);
      if (v104 >= v103 >> 1)
      {
        v118 = v101;
        v106 = v102;
        sub_22B968100((v103 > 1), v104 + 1, 1);
        v102 = v106;
        v101 = v118;
        v89 = v145;
      }

      *(v89 + 16) = v104 + 1;
      v105 = v89 + 16 * v104;
      *(v105 + 32) = v101;
      *(v105 + 40) = v102;
      ++v90;
    }

    while (v91 != v83);
    v10 = v119;
LABEL_63:
    *&v146 = v89;
    sub_22B9349C8(&qword_27D8D4EF0, &qword_22BA13990);
    sub_22B9486FC();
    v107 = sub_22BA0FFAC();
    v109 = v108;
    sub_22B9359BC(v79, v81);

    v147 = MEMORY[0x277D837D0];
    *&v146 = v107;
    *(&v146 + 1) = v109;
    sub_22B936C98(&v146, &v145);
    v110 = v144;
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v110;
    sub_22B9BAE64(&v145, 0x727574616E676973, 0xE900000000000065, v111);
    v84 = v143;
    v144 = v143;
    v20 = v129;
    v24 = MEMORY[0x277D84F98];
    v28 = v132;
LABEL_64:
    v147 = sub_22B9349C8(&qword_27D8D4F00, &qword_22BA16D50);
    *&v146 = v84;
    sub_22B936C98(&v146, &v145);
    v112 = v131;
    v113 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v112;
    sub_22B9BAE64(&v145, v140, v28, v113);
    swift_unknownObjectRelease();

    sub_22B936BEC(v130, &qword_27D8D4F70, &unk_22BA15750);
    v131 = v143;
    v22 = v126;
LABEL_65:
    v23 = v134;
LABEL_4:
    if (++v23 != v20)
    {
      continue;
    }

    break;
  }

  v114 = v131;
LABEL_68:
  sub_22B936C4C(&v149);
  v116 = *MEMORY[0x277D85DE8];
  return v114;
}

uint64_t sub_22B955688(void *a1, void *a2)
{
  v4 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v249 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v249 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v249 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v249 - v19;
  v263 = &type metadata for FileManagerProvider;
  v264 = &off_283F53B48;
  v262[0] = a1;
  v21 = MEMORY[0x277D84F98];
  v261 = MEMORY[0x277D84F98];
  v22 = a1;
  v23 = [a2 recordChangeTag];
  v24 = MEMORY[0x277D837D0];
  if (v23)
  {
    v25 = v23;
    v26 = sub_22BA0FFFC();
    v28 = v27;

    ObjectType = v24;
    *&v259 = v26;
    *(&v259 + 1) = v28;
    sub_22B936C98(&v259, v258);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v257 = v21;
    sub_22B9BAE64(v258, 0x615465676E616863, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
    v261 = v257;
  }

  else
  {
    sub_22B9EB6F0(0x615465676E616863, 0xE900000000000067, &v259);
    sub_22B936BEC(&v259, &unk_27D8D5A30, qword_22BA13390);
  }

  v30 = [a2 creationDate];
  v256 = a2;
  if (v30)
  {
    v31 = v30;
    sub_22BA0FD5C();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = sub_22BA0FD8C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v35(v17, v32, 1, v33);
  sub_22B935A74(v17, v20);
  v36 = *(v34 + 48);
  if (v36(v20, 1, v33) == 1)
  {
    sub_22B936BEC(v20, &unk_27D8D4A90, &qword_22BA126A0);
    sub_22B9EB6F0(0x6E6F697461657263, 0xEC00000065746144, &v259);
    sub_22B936BEC(&v259, &unk_27D8D5A30, qword_22BA13390);
  }

  else
  {
    ObjectType = v33;
    v37 = sub_22B957E80(&v259);
    (*(v34 + 32))(v37, v20, v33);
    sub_22B936C98(&v259, v258);
    v38 = v261;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v257 = v38;
    sub_22B9BAE64(v258, 0x6E6F697461657263, 0xEC00000065746144, v39);
    v261 = v257;
  }

  v40 = [v256 modificationDate];
  if (v40)
  {
    v41 = v40;
    sub_22BA0FD5C();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v35(v9, v42, 1, v33);
  sub_22B935A74(v9, v13);
  if (v36(v13, 1, v33) == 1)
  {
    sub_22B936BEC(v13, &unk_27D8D4A90, &qword_22BA126A0);
    sub_22B9EB6F0(0xD000000000000010, 0x800000022BA1BAE0, &v259);
    sub_22B936BEC(&v259, &unk_27D8D5A30, qword_22BA13390);
  }

  else
  {
    ObjectType = v33;
    v43 = sub_22B957E80(&v259);
    (*(v34 + 32))(v43, v13, v33);
    sub_22B936C98(&v259, v258);
    v44 = v261;
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v257 = v44;
    sub_22B9BAE64(v258, 0xD000000000000010, 0x800000022BA1BAE0, v45);
    v261 = v257;
  }

  v46 = MEMORY[0x277D837D0];
  v47 = [v256 modifiedByDevice];
  v48 = 0xD000000000000010;
  if (v47)
  {
    v49 = v47;
    v50 = sub_22BA0FFFC();
    v52 = v51;

    ObjectType = v46;
    *&v259 = v50;
    *(&v259 + 1) = v52;
    sub_22B936C98(&v259, v258);
    v53 = v261;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v257 = v53;
    sub_22B9BAE64(v258, 0xD000000000000010, 0x800000022BA1BB00, v54);
    v55 = v257;
  }

  else
  {
    sub_22B9EB6F0(0xD000000000000010, 0x800000022BA1BB00, &v259);
    sub_22B936BEC(&v259, &unk_27D8D5A30, qword_22BA13390);
    v55 = v261;
  }

  v56 = v256;
  v57 = [v256 recordID];
  v58 = [v57 recordName];

  v59 = sub_22BA0FFFC();
  v61 = v60;

  ObjectType = v46;
  *&v259 = v59;
  *(&v259 + 1) = v61;
  sub_22B936C98(&v259, v258);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v257 = v55;
  sub_22B9BAE64(v258, 0x614E64726F636572, 0xEA0000000000656DLL, v62);
  v63 = v257;
  v64 = sub_22BA106BC();
  ObjectType = v46;
  *&v259 = v64;
  *(&v259 + 1) = v65;
  sub_22B936C98(&v259, v258);
  v66 = swift_isUniquelyReferenced_nonNull_native();
  v257 = v63;
  sub_22B9BAE64(v258, 0x795464726F636572, 0xEA00000000006570, v66);
  v67 = v257;
  v68 = [v56 recordID];
  v69 = [v68 zoneID];

  v70 = [v69 zoneName];
  v71 = sub_22BA0FFFC();
  v73 = v72;

  ObjectType = v46;
  *&v259 = v71;
  *(&v259 + 1) = v73;
  sub_22B936C98(&v259, v258);
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v257 = v67;
  sub_22B9BAE64(v258, 0x656D614E656E6F7ALL, 0xE800000000000000, v74);
  v75 = v257;
  v76 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  [v76 setOutputFormat_];
  [v56 encodeSystemFieldsWithCoder_];
  [v76 finishEncoding];
  v77 = [v76 encodedData];
  v78 = sub_22BA0FCAC();
  v80 = v79;

  ObjectType = MEMORY[0x277CC9318];
  v81 = "1";
  *&v259 = v78;
  *(&v259 + 1) = v80;
  sub_22B936C98(&v259, v258);
  v254 = v78;
  sub_22B936A50(v78, v80);
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v257 = v75;
  v83 = v56;
  sub_22B9BAE64(v258, 0xD000000000000017, 0x800000022BA1BAB0, v82);
  v84 = v257;
  v261 = v257;
  v85 = sub_22BA106DC();
  v86 = sub_22BA0197C(v85);

  sub_22BA106BC();
  v87 = sub_22B9C2E30();
  if (v87 > 3)
  {
    if (v87 - 4 >= 2)
    {
      goto LABEL_67;
    }

    goto LABEL_33;
  }

  if (v87 == 1)
  {
    v145 = [objc_opt_self() sharedFeatureFlags];
    v77 = [v145 isTranscriptBackgroundsMicEnabled];

    if (v77)
    {
      v81 = sub_22B957CC4(&unk_283F50EF8);
      swift_arrayDestroy();
    }

    else
    {
      v81 = sub_22B957CC4(&unk_283F50F38);
      sub_22B957E2C(&unk_283F50F58);
    }

    v146 = *(v81 + 16);
    v147 = *(v86 + 16);
    v251 = v80;
    v252 = v76;
    v253 = v84;
    v249 = v81;
    if (v146 > v147 >> 3)
    {
      v148 = sub_22B9538D8(v81, v86);

      v149 = v148;
    }

    else
    {
      *&v259 = v86;
      sub_22B9537AC(v81);

      v149 = v259;
    }

    v150 = 0;
    v76 = v149 + 56;
    v151 = 1 << *(v149 + 32);
    v152 = -1;
    if (v151 < 64)
    {
      v152 = ~(-1 << v151);
    }

    v86 = v152 & *(v149 + 56);
    v84 = (v151 + 63) >> 6;
    v250 = v261;
    i = v149;
    while (1)
    {
LABEL_77:
      v89 = v150;
      if (v86)
      {
LABEL_78:
        v150 = v89;
        goto LABEL_82;
      }

      while (1)
      {
        do
        {
          v150 = v89 + 1;
          if (__OFADD__(v89, 1))
          {
            goto LABEL_157;
          }

          if (v150 >= v84)
          {
            v189 = v250;
            v261 = v250;

            v190 = sub_22B952560(v249);
            v191 = sub_22B9358B4(v262, v263);
            v192 = sub_22B954944(v190, *v191, v83);

            if (v192)
            {
              v193 = v252;
              v84 = v253;
              if (*(v192 + 16))
              {
                ObjectType = sub_22B9349C8(&qword_27D8D4F00, &qword_22BA16D50);
                *&v259 = v192;
                sub_22B936C98(&v259, v258);
                v194 = swift_isUniquelyReferenced_nonNull_native();
                v257 = v189;
                sub_22B9BAE64(v258, 0x737465737361, 0xE600000000000000, v194);

                v195 = v254;
                v196 = v251;
LABEL_152:
                sub_22B9359BC(v195, v196);
                v84 = v257;
              }

              else
              {
                sub_22B9359BC(v254, v251);
              }
            }

            else
            {
LABEL_153:
              sub_22B9359BC(v254, v251);

              v84 = v253;
            }

            goto LABEL_155;
          }

          v86 = *(v76 + 8 * v150);
          ++v89;
        }

        while (!v86);
LABEL_82:
        v153 = __clz(__rbit64(v86));
        v86 &= v86 - 1;
        v154 = (*(v149 + 48) + ((v150 << 10) | (16 * v153)));
        v48 = *v154;
        v155 = v154[1];

        v156 = MEMORY[0x231899D50](v48, v155);
        if (v156)
        {
          v81 = v83;
          v159 = v156;
          ObjectType = swift_getObjectType();
          *&v259 = v159;
          sub_22B936C98(&v259, v258);
          v253 = v159;
          swift_unknownObjectRetain();
          v160 = v250;
          v77 = swift_isUniquelyReferenced_nonNull_native();
          v257 = v160;
          v161 = sub_22B990A58(v48, v155);
          v163 = v160[2];
          v164 = (v162 & 1) == 0;
          v120 = __OFADD__(v163, v164);
          v165 = v163 + v164;
          if (v120)
          {
            goto LABEL_164;
          }

          v166 = v162;
          if (v160[3] < v165)
          {
            sub_22B9D877C(v165, v77);
            v161 = sub_22B990A58(v48, v155);
            if ((v166 & 1) != (v167 & 1))
            {
              goto LABEL_172;
            }

            goto LABEL_95;
          }

          if (v77)
          {
LABEL_95:
            if ((v166 & 1) == 0)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v77 = v81;
            v178 = v161;
            sub_22B9EBF40();
            v161 = v178;
            v81 = v77;
            if ((v166 & 1) == 0)
            {
LABEL_102:
              v179 = v257;
              v257[(v161 >> 6) + 8] |= 1 << v161;
              v180 = (v179[6] + 16 * v161);
              *v180 = v48;
              v180[1] = v155;
              sub_22B936C98(v258, (v179[7] + 32 * v161));
              swift_unknownObjectRelease();
              v181 = v179[2];
              v120 = __OFADD__(v181, 1);
              v182 = v181 + 1;
              if (v120)
              {
                goto LABEL_168;
              }

              v179[2] = v182;
              v250 = v179;
              v253 = v179;
              v83 = v81;
              v149 = i;
              goto LABEL_77;
            }
          }

          v77 = v81;
          v81 = v161;

          v48 = v257;
          v176 = (v257[7] + 32 * v81);
          v83 = v77;
          sub_22B936C4C(v176);
          sub_22B936C98(v258, v176);
          goto LABEL_100;
        }

        v81 = v83;
        v157 = [v83 encryptedValues];
        v158 = sub_22BA0FFCC();
        v77 = [v157 objectForKey_];

        swift_unknownObjectRelease();
        if (v77)
        {
          break;
        }

        v89 = v150;
        v83 = v81;
        v149 = i;
        if (v86)
        {
          goto LABEL_78;
        }
      }

      ObjectType = swift_getObjectType();
      *&v259 = v77;
      sub_22B936C98(&v259, v258);
      swift_unknownObjectRetain();
      v168 = v250;
      v169 = swift_isUniquelyReferenced_nonNull_native();
      v257 = v168;
      v170 = sub_22B990A58(v48, v155);
      v172 = v168[2];
      v173 = (v171 & 1) == 0;
      v120 = __OFADD__(v172, v173);
      v174 = v172 + v173;
      if (v120)
      {
        goto LABEL_167;
      }

      if (v168[3] >= v174)
      {
        if (v169)
        {
          goto LABEL_98;
        }

        v183 = v170;
        v184 = v171;
        sub_22B9EBF40();
        v185 = v184;
        v170 = v183;
        v83 = v256;
        if ((v185 & 1) == 0)
        {
          goto LABEL_105;
        }

LABEL_99:
        v81 = v170;

        v48 = v257;
        v177 = (v257[7] + 32 * v81);
        sub_22B936C4C(v177);
        sub_22B936C98(v258, v177);
LABEL_100:
        swift_unknownObjectRelease();
        v250 = v48;
        v253 = v48;
        v149 = i;
      }

      else
      {
        LODWORD(v253) = v171;
        sub_22B9D877C(v174, v169);
        v170 = sub_22B990A58(v48, v155);
        v175 = v171 & 1;
        LOBYTE(v171) = v253;
        if ((v253 & 1) != v175)
        {
          goto LABEL_172;
        }

LABEL_98:
        v83 = v81;
        if (v171)
        {
          goto LABEL_99;
        }

LABEL_105:
        v81 = v257;
        v257[(v170 >> 6) + 8] |= 1 << v170;
        v186 = (*(v81 + 48) + 16 * v170);
        *v186 = v48;
        v186[1] = v155;
        sub_22B936C98(v258, (*(v81 + 56) + 32 * v170));
        swift_unknownObjectRelease();
        v187 = *(v81 + 16);
        v120 = __OFADD__(v187, 1);
        v188 = v187 + 1;
        if (v120)
        {
          goto LABEL_170;
        }

        *(v81 + 16) = v188;
        v250 = v81;
        v253 = v81;
        v149 = i;
      }
    }
  }

  if (v87 == 2)
  {
LABEL_33:
    v252 = v76;
    v253 = v84;
    v251 = v80;
    v84 = 0;
    v76 = v86 + 56;
    v104 = 1 << *(v86 + 32);
    v105 = -1;
    if (v104 < 64)
    {
      v105 = ~(-1 << v104);
    }

    v106 = v105 & *(v86 + 56);
    v48 = (v104 + 63) >> 6;
    v250 = v261;
    for (i = v86; ; v86 = i)
    {
      while (1)
      {
        v89 = v84;
        if (!v106)
        {
          goto LABEL_38;
        }

LABEL_37:
        v84 = v89;
LABEL_41:
        v107 = __clz(__rbit64(v106));
        v106 &= v106 - 1;
        v108 = (*(v86 + 48) + ((v84 << 10) | (16 * v107)));
        v110 = *v108;
        v109 = v108[1];

        v111 = MEMORY[0x231899D50](v110, v109);
        if (!v111)
        {
          break;
        }

        v81 = v83;
        v114 = v111;
        ObjectType = swift_getObjectType();
        *&v259 = v114;
        sub_22B936C98(&v259, v258);
        v253 = v114;
        swift_unknownObjectRetain();
        v115 = v250;
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v257 = v115;
        v116 = sub_22B990A58(v110, v109);
        v118 = v115[2];
        v119 = (v117 & 1) == 0;
        v120 = __OFADD__(v118, v119);
        v121 = v118 + v119;
        if (v120)
        {
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        v122 = v117;
        if (v115[3] < v121)
        {
          sub_22B9D877C(v121, v77);
          v116 = sub_22B990A58(v110, v109);
          if ((v122 & 1) != (v123 & 1))
          {
            goto LABEL_172;
          }

LABEL_54:
          if (v122)
          {
            goto LABEL_55;
          }

          goto LABEL_60;
        }

        if (v77)
        {
          goto LABEL_54;
        }

        v77 = v116;
        sub_22B9EBF40();
        v116 = v77;
        v81 = v256;
        if (v122)
        {
LABEL_55:
          v77 = v81;
          v132 = v116;

          v81 = v257;
          v133 = (v257[7] + 32 * v132);
          v83 = v77;
          sub_22B936C4C(v133);
          sub_22B936C98(v258, v133);
          swift_unknownObjectRelease();
          goto LABEL_65;
        }

LABEL_60:
        v136 = v257;
        v257[(v116 >> 6) + 8] |= 1 << v116;
        v137 = (v136[6] + 16 * v116);
        *v137 = v110;
        v137[1] = v109;
        sub_22B936C98(v258, (v136[7] + 32 * v116));
        swift_unknownObjectRelease();
        v138 = v136[2];
        v120 = __OFADD__(v138, 1);
        v139 = v138 + 1;
        if (v120)
        {
          goto LABEL_162;
        }

        v136[2] = v139;
        v250 = v136;
        v253 = v136;
        v86 = i;
        v83 = v81;
      }

      v81 = v83;
      v112 = [v83 encryptedValues];
      v113 = sub_22BA0FFCC();
      v77 = [v112 objectForKey_];

      swift_unknownObjectRelease();
      if (!v77)
      {

        v89 = v84;
        v86 = i;
        v83 = v81;
        if (!v106)
        {
LABEL_38:
          while (1)
          {
            v84 = v89 + 1;
            if (__OFADD__(v89, 1))
            {
              break;
            }

            if (v84 >= v48)
            {

              sub_22B9359BC(v254, v251);

              v84 = v253;
LABEL_155:
              sub_22B936C4C(v262);
              return v84;
            }

            v106 = *(v76 + 8 * v84);
            ++v89;
            if (v106)
            {
              goto LABEL_41;
            }
          }

          __break(1u);
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }

        goto LABEL_37;
      }

      ObjectType = swift_getObjectType();
      *&v259 = v77;
      sub_22B936C98(&v259, v258);
      swift_unknownObjectRetain();
      v124 = v250;
      v125 = swift_isUniquelyReferenced_nonNull_native();
      v257 = v124;
      v126 = sub_22B990A58(v110, v109);
      v128 = v124[2];
      v129 = (v127 & 1) == 0;
      v120 = __OFADD__(v128, v129);
      v130 = v128 + v129;
      if (v120)
      {
        goto LABEL_161;
      }

      if (v124[3] < v130)
      {
        LODWORD(v253) = v127;
        sub_22B9D877C(v130, v125);
        v126 = sub_22B990A58(v110, v109);
        v131 = v127 & 1;
        LOBYTE(v127) = v253;
        if ((v253 & 1) != v131)
        {
          goto LABEL_172;
        }

LABEL_57:
        v83 = v81;
        if (v127)
        {
          goto LABEL_58;
        }

LABEL_63:
        v81 = v257;
        v257[(v126 >> 6) + 8] |= 1 << v126;
        v142 = (*(v81 + 48) + 16 * v126);
        *v142 = v110;
        v142[1] = v109;
        sub_22B936C98(v258, (*(v81 + 56) + 32 * v126));
        swift_unknownObjectRelease();
        v143 = *(v81 + 16);
        v120 = __OFADD__(v143, 1);
        v144 = v143 + 1;
        if (!v120)
        {
          *(v81 + 16) = v144;
          goto LABEL_65;
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
        goto LABEL_171;
      }

      if (v125)
      {
        goto LABEL_57;
      }

      v140 = v126;
      v141 = v127;
      sub_22B9EBF40();
      v126 = v140;
      v83 = v256;
      if ((v141 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_58:
      v134 = v126;

      v81 = v257;
      v135 = (v257[7] + 32 * v134);
      sub_22B936C4C(v135);
      sub_22B936C98(v258, v135);
      swift_unknownObjectRelease();
LABEL_65:
      v250 = v81;
      v253 = v81;
    }
  }

  if (v87 != 3)
  {
LABEL_67:

    sub_22B9359BC(v254, v80);
    goto LABEL_155;
  }

  v251 = v80;
  v48 = MEMORY[0x277D84F90];
  *&v259 = MEMORY[0x277D84F90];
  sub_22B968100(0, 2, 0);
  v88 = v259;
  v81 = *(v259 + 16);
  v89 = *(v259 + 24);
  v90 = v89 >> 1;
  v77 = v81 + 1;
  if (v89 >> 1 <= v81)
  {
    goto LABEL_159;
  }

LABEL_24:
  *(v88 + 16) = v77;
  v91 = v88 + 16 * v81;
  *(v91 + 32) = 6386028;
  *(v91 + 40) = 0xE300000000000000;
  if (v90 <= v77)
  {
    sub_22B968100((v89 > 1), v81 + 2, 1);
    v88 = v259;
  }

  *(v88 + 16) = v81 + 2;
  v92 = v88 + 16 * v77;
  *(v92 + 32) = 1684633185;
  *(v92 + 40) = 0xE400000000000000;
  *&v259 = v48;
  sub_22B968100(0, 2, 0);
  v93 = v259;
  v81 = *(v259 + 16);
  v94 = *(v259 + 24);
  v95 = v94 >> 1;
  v96 = v81 + 1;
  if (v94 >> 1 <= v81)
  {
    sub_22B968100((v94 > 1), v81 + 1, 1);
    v93 = v259;
    v94 = *(v259 + 24);
    v95 = v94 >> 1;
  }

  *(v93 + 16) = v96;
  v97 = v93 + 16 * v81;
  *(v97 + 32) = 109;
  *(v97 + 40) = 0xE100000000000000;
  if (v95 <= v96)
  {
    sub_22B968100((v94 > 1), v81 + 2, 1);
    v93 = v259;
  }

  *(v93 + 16) = v81 + 2;
  v98 = v93 + 16 * v96;
  *(v98 + 32) = 28003;
  *(v98 + 40) = 0xE200000000000000;
  *&v259 = v88;
  sub_22B953E48(v93);
  v77 = sub_22BA0197C(v259);

  v99 = *(v77 + 16);
  v100 = *(v86 + 16);
  v101 = v256;
  v252 = v76;
  v253 = v84;
  if (v99 <= v100 >> 3)
  {
    *&v259 = v86;
    sub_22B9537AC(v77);

    v103 = v259;
  }

  else
  {
    v102 = sub_22B9538D8(v77, v86);

    v103 = v102;
  }

  v48 = 0;
  v197 = v103 + 56;
  v198 = 1 << *(v103 + 32);
  v199 = -1;
  if (v198 < 64)
  {
    v199 = ~(-1 << v198);
  }

  v76 = v199 & *(v103 + 56);
  v84 = (v198 + 63) >> 6;
  v250 = v261;
  i = v103;
LABEL_114:
  while (2)
  {
    v89 = v48;
    if (!v76)
    {
      goto LABEL_116;
    }

    while (1)
    {
      v48 = v89;
LABEL_119:
      v200 = __clz(__rbit64(v76));
      v76 &= v76 - 1;
      v201 = (*(v103 + 48) + ((v48 << 10) | (16 * v200)));
      v202 = *v201;
      v86 = v201[1];

      v203 = MEMORY[0x231899D50](v202, v86);
      if (v203)
      {
        v206 = v101;
        v207 = v203;
        ObjectType = swift_getObjectType();
        *&v259 = v207;
        sub_22B936C98(&v259, v258);
        v253 = v207;
        swift_unknownObjectRetain();
        v208 = v250;
        v209 = swift_isUniquelyReferenced_nonNull_native();
        v257 = v208;
        v210 = sub_22B990A58(v202, v86);
        v212 = v208[2];
        v213 = (v211 & 1) == 0;
        v120 = __OFADD__(v212, v213);
        v214 = v212 + v213;
        if (v120)
        {
          goto LABEL_165;
        }

        v77 = v211;
        if (v208[3] >= v214)
        {
          if ((v209 & 1) == 0)
          {
            v225 = v210;
            sub_22B9EBF40();
            v210 = v225;
            v101 = v256;
            if (v77)
            {
              goto LABEL_136;
            }

            goto LABEL_138;
          }
        }

        else
        {
          sub_22B9D877C(v214, v209);
          v210 = sub_22B990A58(v202, v86);
          if ((v77 & 1) != (v215 & 1))
          {
            goto LABEL_172;
          }
        }

        v101 = v206;
        if (v77)
        {
          goto LABEL_136;
        }

LABEL_138:
        v81 = v257;
        v257[(v210 >> 6) + 8] |= 1 << v210;
        v226 = (*(v81 + 48) + 16 * v210);
        *v226 = v202;
        v226[1] = v86;
        sub_22B936C98(v258, (*(v81 + 56) + 32 * v210));
        swift_unknownObjectRelease();
        v227 = *(v81 + 16);
        v120 = __OFADD__(v227, 1);
        v228 = v227 + 1;
        if (v120)
        {
          goto LABEL_169;
        }

LABEL_143:
        *(v81 + 16) = v228;
        v250 = v81;
        v253 = v81;
        v103 = i;
        goto LABEL_114;
      }

      v81 = v101;
      v204 = [v101 encryptedValues];
      v205 = sub_22BA0FFCC();
      v77 = [v204 objectForKey_];

      swift_unknownObjectRelease();
      if (v77)
      {
        break;
      }

      v89 = v48;
      v103 = i;
      v101 = v81;
      if (!v76)
      {
LABEL_116:
        while (1)
        {
          v48 = v89 + 1;
          if (__OFADD__(v89, 1))
          {
            break;
          }

          if (v48 >= v84)
          {
            v261 = v250;

            v233 = sub_22B951C1C();
            if (!v233)
            {
              goto LABEL_153;
            }

            v234 = v233;
            *&v259 = MEMORY[0x277D84F90];
            sub_22B968100(0, 2, 0);
            v235 = v259;
            v237 = *(v259 + 16);
            v236 = *(v259 + 24);
            v238 = v236 >> 1;
            v239 = v237 + 1;
            v240 = v251;
            if (v236 >> 1 <= v237)
            {
              sub_22B968100((v236 > 1), v237 + 1, 1);
              v235 = v259;
              v236 = *(v259 + 24);
              v238 = v236 >> 1;
            }

            *(v235 + 16) = v239;
            v241 = v235 + 16 * v237;
            *(v241 + 32) = 6386028;
            *(v241 + 40) = 0xE300000000000000;
            if (v238 <= v239)
            {
              sub_22B968100((v236 > 1), v237 + 2, 1);
              v235 = v259;
            }

            *(v235 + 16) = v237 + 2;
            v242 = v235 + 16 * v239;
            *(v242 + 32) = 1684633185;
            *(v242 + 40) = 0xE400000000000000;
            v243 = sub_22B9358B4(v262, v263);
            v244 = sub_22B954944(v235, *v243, v256);

            if (v244)
            {
              ObjectType = sub_22B9349C8(&qword_27D8D4F00, &qword_22BA16D50);
              *&v259 = v244;
              sub_22B936C98(&v259, v258);
              v245 = swift_isUniquelyReferenced_nonNull_native();
              v257 = v234;
              sub_22B9BAE64(v258, 0x737465737361, 0xE600000000000000, v245);
              v234 = v257;
            }

            ObjectType = sub_22B9349C8(&qword_27D8D4F00, &qword_22BA16D50);
            *&v259 = v234;
            sub_22B936C98(&v259, v258);
            v246 = v261;
            v247 = swift_isUniquelyReferenced_nonNull_native();
            v257 = v246;
            sub_22B9BAE64(v258, 0x617461646174656DLL, 0xE800000000000000, v247);

            v195 = v254;
            v196 = v240;
            goto LABEL_152;
          }

          v76 = *(v197 + 8 * v48);
          ++v89;
          if (v76)
          {
            goto LABEL_119;
          }
        }

LABEL_158:
        __break(1u);
LABEL_159:
        sub_22B968100((v89 > 1), v77, 1);
        v88 = v259;
        v89 = *(v259 + 24);
        v90 = v89 >> 1;
        goto LABEL_24;
      }
    }

    ObjectType = swift_getObjectType();
    *&v259 = v77;
    sub_22B936C98(&v259, v258);
    swift_unknownObjectRetain();
    v216 = v250;
    v217 = swift_isUniquelyReferenced_nonNull_native();
    v257 = v216;
    v210 = sub_22B990A58(v202, v86);
    v219 = v216[2];
    v220 = (v218 & 1) == 0;
    v120 = __OFADD__(v219, v220);
    v221 = v219 + v220;
    if (v120)
    {
      goto LABEL_166;
    }

    if (v216[3] < v221)
    {
      LODWORD(v253) = v218;
      sub_22B9D877C(v221, v217);
      v210 = sub_22B990A58(v202, v86);
      v222 = v218 & 1;
      LOBYTE(v218) = v253;
      if ((v253 & 1) != v222)
      {
        goto LABEL_172;
      }

      goto LABEL_135;
    }

    if (v217)
    {
LABEL_135:
      v101 = v81;
      if (v218)
      {
        goto LABEL_136;
      }
    }

    else
    {
      v229 = v210;
      v230 = v218;
      sub_22B9EBF40();
      v210 = v229;
      v101 = v256;
      if (v230)
      {
LABEL_136:
        v223 = v210;

        v101 = v256;
        v81 = v257;
        v224 = (v257[7] + 32 * v223);
        sub_22B936C4C(v224);
        sub_22B936C98(v258, v224);
        swift_unknownObjectRelease();
        v250 = v81;
        v253 = v81;
        v103 = i;
        continue;
      }
    }

    break;
  }

  v81 = v257;
  v257[(v210 >> 6) + 8] |= 1 << v210;
  v231 = (*(v81 + 48) + 16 * v210);
  *v231 = v202;
  v231[1] = v86;
  sub_22B936C98(v258, (*(v81 + 56) + 32 * v210));
  swift_unknownObjectRelease();
  v232 = *(v81 + 16);
  v120 = __OFADD__(v232, 1);
  v228 = v232 + 1;
  if (!v120)
  {
    goto LABEL_143;
  }

LABEL_171:
  __break(1u);
LABEL_172:
  result = sub_22BA10CBC();
  __break(1u);
  return result;
}