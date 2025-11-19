uint64_t sub_22D862D60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

Swift::Bool __swiftcall UAFAsset.isPresent()()
{
  v1 = sub_22D8580D8(&qword_27DA0D798, &unk_22D8B3AF0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v25 - v3;
  v5 = [v0 location];
  if (v5)
  {
    sub_22D8B06FC();

    v6 = sub_22D8B073C();
    sub_22D84C4F8(v4, 0, 1, v6);
    sub_22D858120(v4, &qword_27DA0D798, &unk_22D8B3AF0);
  }

  else
  {
    v7 = sub_22D8B073C();
    sub_22D84C4F8(v4, 1, 1, v7);
    sub_22D858120(v4, &qword_27DA0D798, &unk_22D8B3AF0);
    if (qword_281458500 != -1)
    {
      swift_once();
    }

    v8 = sub_22D8B178C();
    sub_22D84C6FC(v8, qword_281459270);
    v9 = v0;
    v10 = sub_22D8B176C();
    v11 = sub_22D8B1C4C();

    if (os_log_type_enabled(v10, v11))
    {
      sub_22D84C408();
      v12 = swift_slowAlloc();
      sub_22D84F584();
      v26 = swift_slowAlloc();
      *v12 = 136315394;
      v13 = [v9 name];
      v14 = sub_22D8B19FC();
      v16 = v15;

      v17 = sub_22D84C63C(v14, v16, &v26);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2080;
      v18 = [v9 metadata];
      sub_22D8B191C();

      v19 = sub_22D8B192C();
      v21 = v20;

      v22 = sub_22D84C63C(v19, v21, &v26);

      *(v12 + 14) = v22;
      sub_22D86847C(&dword_22D84A000, v10, v11, "Asset %s does not have a location. Metadata: %s");
      swift_arrayDestroy();
      v23 = sub_22D8507BC();
      MEMORY[0x2318D50E0](v23);
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
    }
  }

  return v5 != 0;
}

uint64_t sub_22D8630E0()
{
  v34 = v0;
  v1 = *(v0 + 200);
  v2 = MEMORY[0x277D84FA0];
  v32 = MEMORY[0x277D84FA0];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    do
    {
      sub_22D84E234(v4, v0 + 144);
      v5 = *(v0 + 176);
      sub_22D84E124((v0 + 144), *(v0 + 168));
      v6 = sub_22D8B0C6C();
      sub_22D84D7DC(v6);
      v8 = v7;
      v10 = *(v9 + 64) + 15;
      v11 = swift_task_alloc();
      sub_22D8B0E4C();
      v12 = sub_22D8B0C2C();
      v14 = v13;
      (*(v8 + 8))(v11, v6);
      sub_22D851F6C(&v33, v12, v14);

      sub_22D84D8A0((v0 + 144));
      v4 += 40;
      --v3;
    }

    while (v3);
    v2 = v32;
  }

  *(v0 + 208) = v2;
  v15 = MEMORY[0x277D84F90];
  *(v0 + 184) = MEMORY[0x277D84F90];
  v16 = *(v2 + 32);
  *(v0 + 272) = v16;
  v17 = -1;
  v18 = -1 << v16;
  v19 = *(v2 + 56);
  if (-v18 < 64)
  {
    v17 = ~(-1 << -v18);
  }

  *(v0 + 216) = v15;
  v20 = v17 & v19;
  if ((v17 & v19) != 0)
  {
    v21 = 0;
LABEL_12:
    *(v0 + 224) = v20;
    *(v0 + 232) = v21;
    v24 = *(v2 + 48);
    sub_22D851E30((v21 << 10) | (16 * __clz(__rbit64(v20))));
    v25 = objc_opt_self();

    *(v0 + 264) = sub_22D850940([v25 sharedManager]);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 192;
    sub_22D852274();
    swift_continuation_init();
    v26 = sub_22D8580D8(&qword_27DA0D7C0, &qword_22D8B3BA8);
    sub_22D84DEDC(v26);
    *(v0 + 88) = 1107296256;
    sub_22D84DDCC(&unk_2840E3588);
    v27 = sub_22D84D1D8();
    [v27 v28];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v22 = 0;
    v23 = ((63 - v18) >> 6) - 1;
    while (v23 != v22)
    {
      v21 = v22 + 1;
      v20 = *(v2 + 8 * v22++ + 64);
      if (v20)
      {
        goto LABEL_12;
      }
    }

    v29 = sub_22D8684AC();

    return v30(v29);
  }
}

uint64_t sub_22D8633F4()
{
  sub_22D84D198();
  v7 = *v0;
  v1 = *v0;
  sub_22D84CED0();
  *v2 = v1;
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D8634C4()
{
  sub_22D8516FC();
  v1 = *(v0 + 192);
  v2 = *(v0 + 264);

  if (v1)
  {
    v3 = *(v0 + 248);

    v1 = v1;
    MEMORY[0x2318D4380]();
    if (*((*(v0 + 184) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 184) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_22:
      sub_22D8B1AFC();
    }

    sub_22D8B1B1C();

    v4 = *(v0 + 232);
    v5 = (*(v0 + 224) - 1) & *(v0 + 224);
    *(v0 + 216) = *(v0 + 184);
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v7 = *(v0 + 248);
  v8 = sub_22D8B178C();
  sub_22D84C6FC(v8, qword_281459298);
  sub_22D84F8C0();

  v9 = sub_22D8B176C();
  sub_22D8B1C4C();
  sub_22D8538BC();
  v10 = sub_22D868510();
  v11 = *(v0 + 248);
  if (v10)
  {
    v12 = *(v0 + 240);
    sub_22D84D708();
    v13 = swift_slowAlloc();
    sub_22D84F510();
    v30 = swift_slowAlloc();
    *v13 = 136315138;
    v14 = sub_22D84CFB4();
    v17 = sub_22D84C63C(v14, v15, v16);

    *(v13 + 4) = v17;
    sub_22D84DACC(&dword_22D84A000, v18, v19, "UnifiedAssetInterface failed to retrieve asset set %s");
    sub_22D84D8A0(v30);
    v20 = sub_22D84DC34();
    MEMORY[0x2318D50E0](v20);
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
  }

  else
  {
  }

  v4 = *(v0 + 232);
  v5 = (*(v0 + 224) - 1) & *(v0 + 224);
  if (v5)
  {
LABEL_4:
    v6 = *(v0 + 208);
LABEL_15:
    *(v0 + 224) = v5;
    *(v0 + 232) = v4;
    v22 = *(v6 + 48);
    sub_22D851E30((v4 << 10) | (16 * __clz(__rbit64(v5))));
    v23 = objc_opt_self();

    *(v0 + 264) = sub_22D850940([v23 sharedManager]);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 192;
    sub_22D852274();
    swift_continuation_init();
    v24 = sub_22D8580D8(&qword_27DA0D7C0, &qword_22D8B3BA8);
    sub_22D84DEDC(v24);
    *(v0 + 88) = 1107296256;
    sub_22D84DDCC(&unk_2840E3588);
    v25 = sub_22D84D1D8();
    [v25 v26];

    return MEMORY[0x282200938](v0 + 16);
  }

  while (1)
  {
LABEL_11:
    v21 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    v6 = *(v0 + 208);
    if (v21 >= (((1 << *(v0 + 272)) + 63) >> 6))
    {
      break;
    }

    v5 = *(v6 + 8 * v21 + 56);
    ++v4;
    if (v5)
    {
      v4 = v21;
      goto LABEL_15;
    }
  }

  v27 = sub_22D8684AC();

  return v28(v27);
}

uint64_t sub_22D863818()
{
  sub_22D84D198();
  v11 = *MEMORY[0x277D85DE8];
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v5 = *(*(sub_22D8580D8(&qword_27DA0D628, "l\x1B") - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22D8638DC()
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = v0[20];
  v2 = [objc_opt_self() sharedManager];
  LODWORD(v1) = [v2 isLatestConsistencyToken_];

  if (v1)
  {
    if (qword_2814589E0 != -1)
    {
      sub_22D86845C();
      swift_once();
    }

    v3 = sub_22D8684F8();
    sub_22D84C6FC(v3, qword_281459298);
    sub_22D84F8C0();

    v4 = sub_22D8B176C();
    sub_22D8B1C6C();
    sub_22D8538BC();
    if (sub_22D868510())
    {
      v6 = v0[21];
      v5 = v0[22];
      sub_22D84D708();
      v7 = swift_slowAlloc();
      sub_22D84F510();
      v23 = swift_slowAlloc();
      *v7 = 136315138;
      v8 = sub_22D84CFB4();
      *(v7 + 4) = sub_22D84C63C(v8, v9, v10);
      sub_22D84DACC(&dword_22D84A000, v11, v12, "invalidateIfUpdatePending called without a pending asset update for %s, succeeding");
      sub_22D84D8A0(v23);
      v13 = sub_22D84DC34();
      MEMORY[0x2318D50E0](v13);
      sub_22D84E45C();
      MEMORY[0x2318D50E0](v14);
    }

    v15 = v0[24];

    v16 = v0[1];
    v17 = *MEMORY[0x277D85DE8];

    return v16(0, 0);
  }

  else
  {
    v19 = swift_task_alloc();
    v0[25] = v19;
    *v19 = v0;
    v19[1] = sub_22D863B20;
    v21 = v0[21];
    v20 = v0[22];
    v22 = *MEMORY[0x277D85DE8];

    return sub_22D8524C0(v21, v20);
  }
}

uint64_t sub_22D863B20()
{
  sub_22D84D198();
  v13 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  sub_22D84C3C8();
  *v4 = v3;
  v6 = *(v5 + 200);
  *v4 = *v1;
  *(v3 + 208) = v7;
  *(v3 + 216) = v0;

  v8 = *MEMORY[0x277D85DE8];
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22D863C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  sub_22D8684E0();
  sub_22D8516FC();
  v44 = *MEMORY[0x277D85DE8];
  if ([*(v12 + 160) hasIdenticalAssets_])
  {
    if (qword_2814589E0 != -1)
    {
      sub_22D86845C();
      swift_once();
    }

    v13 = sub_22D8684F8();
    sub_22D84C6FC(v13, qword_281459298);
    sub_22D84F8C0();

    v14 = sub_22D8B176C();
    sub_22D8B1C4C();
    sub_22D8538BC();
    v15 = sub_22D868510();
    v16 = *(v12 + 208);
    if (v15)
    {
      v18 = *(v12 + 168);
      v17 = *(v12 + 176);
      sub_22D84D708();
      v19 = swift_slowAlloc();
      sub_22D84F510();
      a10 = swift_slowAlloc();
      *v19 = 136315138;
      v20 = sub_22D84CFB4();
      *(v19 + 4) = sub_22D84C63C(v20, v21, v22);
      sub_22D84DACC(&dword_22D84A000, v23, v24, "invalidateIfUpdatePending received an updated token for %s that had the same contents as the previous token - not invalidating and staying on the current token");
      sub_22D84D8A0(a10);
      v25 = sub_22D84DC34();
      MEMORY[0x2318D50E0](v25);
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
    }

    v26 = *(v12 + 192);

    sub_22D84C75C();
    v27 = *MEMORY[0x277D85DE8];
    sub_22D84EAF8();

    return v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, v44, a12);
  }

  else
  {
    v37 = *(v12 + 160);
    *(v12 + 16) = v12;
    sub_22D852274();
    v38 = swift_continuation_init();
    v39 = sub_22D8580D8(&qword_27DA0D7B0, &unk_22D8B3B68);
    sub_22D84DEDC(v39);
    *(v12 + 88) = 1107296256;
    sub_22D84D824();
    *(v12 + 104) = v40;
    *(v12 + 112) = v38;
    [v37 invalidate:0 completion:v12 + 80];
    v41 = *MEMORY[0x277D85DE8];
    sub_22D84EAF8();

    return MEMORY[0x282200938](v42);
  }
}

uint64_t sub_22D863E9C()
{
  sub_22D84D198();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  sub_22D84C3C8();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 224) = *(v4 + 48);
  v5 = *MEMORY[0x277D85DE8];
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22D863FC8()
{
  v19 = *MEMORY[0x277D85DE8];
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v1 = sub_22D8684F8();
  sub_22D84C6FC(v1, qword_281459298);
  sub_22D84F8C0();

  v2 = sub_22D8B176C();
  sub_22D8B1C6C();
  sub_22D8538BC();
  if (sub_22D868510())
  {
    v4 = v0[21];
    v3 = v0[22];
    sub_22D84D708();
    v5 = swift_slowAlloc();
    sub_22D84F510();
    v18 = swift_slowAlloc();
    *v5 = 136315138;
    v6 = sub_22D84CFB4();
    *(v5 + 4) = sub_22D84C63C(v6, v7, v8);
    sub_22D84DACC(&dword_22D84A000, v9, v10, "invalidateAssetSet succeeded for %s");
    sub_22D84D8A0(v18);
    v11 = sub_22D84DC34();
    MEMORY[0x2318D50E0](v11);
    sub_22D84E45C();
    MEMORY[0x2318D50E0](v12);
  }

  v13 = v0[26];
  v14 = v0[24];

  v15 = v0[1];
  v16 = *MEMORY[0x277D85DE8];

  return v15(v13, 0);
}

uint64_t sub_22D86413C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  sub_22D8684E0();
  sub_22D8516FC();
  v36 = *MEMORY[0x277D85DE8];
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v14 = v12[22];
  v15 = sub_22D8B178C();
  sub_22D84C6FC(v15, qword_281459298);

  v16 = sub_22D8B176C();
  v17 = sub_22D8B1C4C();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v12[27];
  if (v18)
  {
    v21 = v12[21];
    v20 = v12[22];
    sub_22D84D708();
    swift_slowAlloc();
    sub_22D84E3B0();
    a10 = swift_slowAlloc();
    *(v13 + 4) = sub_22D8684C0(4.8149e-34, a10);
    sub_22D8539F4(&dword_22D84A000, v22, v23, "invalidateIfUpdatePending failed to obtain new consistency token for %s");
    sub_22D84D8A0(a10);
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
    v24 = sub_22D84DC34();
    MEMORY[0x2318D50E0](v24);
  }

  v25 = v12[24];

  sub_22D84C75C();
  v26 = *MEMORY[0x277D85DE8];
  sub_22D84EAF8();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v36, a12);
}

uint64_t sub_22D8642A8()
{
  v40 = v0;
  v39[1] = *MEMORY[0x277D85DE8];
  v2 = v0[28];
  v3 = v0[20];
  swift_willThrow();
  v0[18] = 0;
  v4 = [v3 lock_];
  v5 = v0[18];
  if ((v4 & 1) != 0 && (v0[19] = 0, v6 = v0[20], v7 = v5, v8 = [v6 unlock_], v5 = v0[19], v8))
  {
    v9 = v0[24];
    v10 = v0[20];
    v11 = sub_22D8B1B9C();
    sub_22D84C4F8(v9, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    v13 = v5;
    v14 = v10;
    sub_22D8930E4();

    if (qword_2814589E0 != -1)
    {
      sub_22D86845C();
      swift_once();
    }

    v15 = v0[28];
    v16 = sub_22D8684F8();
    sub_22D84C6FC(v16, qword_281459298);
    sub_22D84F8C0();

    v17 = v15;
    v18 = sub_22D8B176C();
    v19 = sub_22D8B1C6C();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[28];
    v22 = v0[26];
    if (v20)
    {
      v24 = v0[21];
      v23 = v0[22];
      sub_22D84C408();
      v25 = swift_slowAlloc();
      sub_22D84DB48();
      swift_slowAlloc();
      sub_22D84E3B0();
      v26 = swift_slowAlloc();
      v39[0] = v26;
      *v25 = 138412546;
      v27 = v21;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v1 = v28;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_22D84C63C(v24, v23, v39);
      sub_22D86847C(&dword_22D84A000, v18, v19, "invalidateAssetSet failed with %@ for %s");
      sub_22D858120(v1, &qword_27DA0D4D0, &qword_22D8B3400);
      v29 = sub_22D84DC34();
      MEMORY[0x2318D50E0](v29);
      sub_22D84D8A0(v26);
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
    }

    else
    {
    }

    v34 = 0;
    v33 = 1;
  }

  else
  {
    v30 = v0[28];
    v31 = v5;
    v32 = sub_22D8B069C();

    swift_willThrow();
    v33 = 0;
    v34 = v0[26];
  }

  v35 = v0[24];

  sub_22D84C75C();
  v37 = *MEMORY[0x277D85DE8];

  return v36(v34, v33);
}

uint64_t sub_22D8645D8(uint64_t a1, void *a2)
{
  v3 = sub_22D84E124((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_22D864648(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_22D864648(uint64_t a1, uint64_t a2)
{
  sub_22D8580D8(&qword_27DA0D7B8, &unk_22D8B3B78);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_22D8646B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x277D85DE8];
  *(v4 + 24) = a4;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22D864748, 0, 0);
}

uint64_t sub_22D864748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22D8684E0();
  a19 = v21;
  a20 = v22;
  sub_22D8516FC();
  a18 = v20;
  a11 = *MEMORY[0x277D85DE8];
  *(v20 + 16) = 0;
  v23 = [*(v20 + 24) processIdsLockingToken_];
  v24 = *(v20 + 16);
  if (!v23)
  {
    v39 = v24;
    v40 = sub_22D8B069C();

    swift_willThrow();
    if (qword_2814589E0 != -1)
    {
      sub_22D86845C();
      swift_once();
    }

    v41 = sub_22D8B178C();
    sub_22D84C6FC(v41, qword_281459298);
    v30 = sub_22D8B176C();
    v42 = sub_22D8B1C6C();
    if (os_log_type_enabled(v30, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_22D84A000, v30, v42, "invalidateAssetSet failed to collect pid information after failure", v43, 2u);
      v44 = sub_22D8507BC();
      MEMORY[0x2318D50E0](v44);
    }

    goto LABEL_11;
  }

  v25 = v23;
  v26 = sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D84CFB4();
  v27 = sub_22D8B1ADC();
  v28 = v24;

  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v29 = sub_22D8B178C();
  sub_22D84C6FC(v29, qword_281459298);

  v30 = sub_22D8B176C();
  v31 = sub_22D8B1C6C();

  if (os_log_type_enabled(v30, v31))
  {
    sub_22D84D708();
    v32 = swift_slowAlloc();
    sub_22D84F510();
    v33 = swift_slowAlloc();
    a10 = v33;
    *v32 = 136315138;
    v34 = MEMORY[0x2318D43B0](v27, v26);
    v36 = v35;

    v37 = sub_22D84C63C(v34, v36, &a10);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_22D84A000, v30, v31, "invalidateAssetSet associated pids: %s", v32, 0xCu);
    sub_22D84D8A0(v33);
    v38 = sub_22D84DC34();
    MEMORY[0x2318D50E0](v38);
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
LABEL_11:

    goto LABEL_13;
  }

LABEL_13:
  sub_22D84D800();
  v45 = *MEMORY[0x277D85DE8];
  sub_22D84EAF8();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
}

void sub_22D864A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() sharedManager];
  v7 = sub_22D8B19CC();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v11[4] = sub_22D868288;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_22D854268;
  v11[3] = &unk_2840E34C0;
  v9 = _Block_copy(v11);

  v10 = [v6 observeAssetSet:v7 queue:0 handler:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

uint64_t sub_22D864B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_22D8B1B9C();
  sub_22D84C4F8(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;

  sub_22D8930E4();
}

uint64_t sub_22D864C4C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_22D851A18;

  return v8();
}

_DWORD *sub_22D864D34()
{
  v35[1] = *MEMORY[0x277D85DE8];
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v1 = sub_22D8B178C();
  sub_22D84C6FC(v1, qword_281459298);

  v2 = sub_22D8B176C();
  v3 = sub_22D8B1C6C();

  if (os_log_type_enabled(v2, v3))
  {
    sub_22D84D708();
    swift_slowAlloc();
    sub_22D84E3B0();
    v4 = swift_slowAlloc();
    v35[0] = v4;
    *v0 = 136315138;
    sub_22D8580D8(&qword_27DA0D7A0, &unk_22D8B3B50);
    v5 = sub_22D8B192C();
    v7 = sub_22D84C63C(v5, v6, v35);

    *(v0 + 4) = v7;
    _os_log_impl(&dword_22D84A000, v2, v3, "SubscriptionManagerProvider: Starting request to retrieve disk space needed for subscribers: %s", v0, 0xCu);
    sub_22D84D8A0(v4);
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
    v8 = sub_22D84DC34();
    MEMORY[0x2318D50E0](v8);
  }

  v9 = [objc_opt_self() sharedManager];
  sub_22D8580D8(&qword_27DA0D7A0, &unk_22D8B3B50);
  v10 = sub_22D8B190C();
  v35[0] = 0;
  v11 = [v9 diskSpaceNeededForSubscribers:v10 error:v35];

  v12 = v35[0];
  if (v35[0])
  {
    v13 = v35[0];

    v14 = v13;
    v15 = sub_22D8B176C();
    v16 = sub_22D8B1C4C();

    if (os_log_type_enabled(v15, v16))
    {
      sub_22D84C408();
      v9 = swift_slowAlloc();
      sub_22D84DB48();
      v17 = swift_slowAlloc();
      sub_22D84F510();
      v34 = v11;
      v35[0] = swift_slowAlloc();
      v18 = v35[0];
      *v9 = 136315394;
      v19 = sub_22D8B192C();
      v21 = sub_22D84C63C(v19, v20, v35);

      *(v9 + 1) = v21;
      *(v9 + 6) = 2112;
      *(v9 + 14) = v14;
      *v17 = v12;
      v22 = v14;
      _os_log_impl(&dword_22D84A000, v15, v16, "SubscriptionManagerProvider: Could not retrieve the disk space needed for subscribers: %s. Error: %@", v9, 0x16u);
      sub_22D858120(v17, &qword_27DA0D4D0, &qword_22D8B3400);
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
      sub_22D84D8A0(v18);
      v11 = v34;
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
      v23 = sub_22D84DC34();
      MEMORY[0x2318D50E0](v23);
    }

    swift_willThrow();
  }

  else
  {
    v9 = [v11 unsignedLongLongValue];

    v24 = sub_22D8B176C();
    v25 = sub_22D8B1C6C();

    if (os_log_type_enabled(v24, v25))
    {
      sub_22D84C408();
      v26 = v11;
      v27 = swift_slowAlloc();
      sub_22D84F510();
      v28 = swift_slowAlloc();
      v35[0] = v28;
      *v27 = 136315394;
      v29 = sub_22D8B192C();
      v31 = sub_22D84C63C(v29, v30, v35);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2048;
      *(v27 + 14) = v9;
      _os_log_impl(&dword_22D84A000, v24, v25, "SubscriptionManagerProvider: Disk space needed for subscribers: %s, bytes: %llu", v27, 0x16u);
      sub_22D84D8A0(v28);
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
    }

    else
    {
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v9;
}

id sub_22D8651BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v40[1] = *MEMORY[0x277D85DE8];
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v7 = sub_22D8B178C();
  sub_22D84C6FC(v7, qword_281459298);

  v8 = sub_22D8B176C();
  v9 = sub_22D8B1C6C();

  if (os_log_type_enabled(v8, v9))
  {
    sub_22D84C408();
    v10 = a3;
    v11 = swift_slowAlloc();
    sub_22D84F584();
    v40[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = sub_22D84C63C(a1, a2, v40);
    sub_22D854F4C(v12);
    *(v11 + 14) = sub_22D84C63C(v10, a4, v13);
    _os_log_impl(&dword_22D84A000, v8, v9, "SubscriptionManagerProvider: Starting request to retrieve disk space needed for subscriber: %s, subscription name: %s", v11, 0x16u);
    swift_arrayDestroy();
    v14 = sub_22D8507BC();
    MEMORY[0x2318D50E0](v14);
    a3 = v10;
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
  }

  else
  {
  }

  v15 = [objc_opt_self() sharedManager];
  v16 = sub_22D8B19CC();
  v40[0] = 0;
  v17 = sub_22D8680E0(v16, a3, a4, v40, v15);

  v18 = v40[0];
  if (v40[0])
  {
    v37 = a3;
    v19 = v40[0];

    v20 = v19;
    v21 = sub_22D8B176C();
    v22 = sub_22D8B1C4C();

    if (os_log_type_enabled(v21, v22))
    {
      sub_22D84F510();
      v38 = v17;
      v23 = swift_slowAlloc();
      sub_22D84DB48();
      v24 = swift_slowAlloc();
      sub_22D84F584();
      v40[0] = swift_slowAlloc();
      *v23 = 136315650;
      *(v23 + 4) = sub_22D84C63C(a1, a2, v40);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_22D84C63C(v37, a4, v40);
      *(v23 + 22) = 2112;
      *(v23 + 24) = v20;
      *v24 = v18;
      v25 = v20;
      _os_log_impl(&dword_22D84A000, v21, v22, "SubscriptionManagerProvider: Could not retrieve the disk space needed for subscriber: %s, subscription name: %s. Error: %@", v23, 0x20u);
      sub_22D858120(v24, &qword_27DA0D4D0, &qword_22D8B3400);
      v26 = sub_22D8507BC();
      MEMORY[0x2318D50E0](v26);
      swift_arrayDestroy();
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
      v17 = v38;
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
    }

    swift_willThrow();
  }

  else
  {
    v27 = v17;
    v17 = [v17 longLongValue];

    v28 = sub_22D8B176C();
    v29 = sub_22D8B1C6C();

    if (os_log_type_enabled(v28, v29))
    {
      sub_22D84F510();
      v30 = a3;
      v31 = swift_slowAlloc();
      sub_22D84F584();
      v40[0] = swift_slowAlloc();
      *v31 = 136315650;
      v32 = sub_22D84C63C(a1, a2, v40);
      sub_22D854F4C(v32);
      *(v31 + 14) = sub_22D84C63C(v30, a4, v33);
      *(v31 + 22) = 2048;
      *(v31 + 24) = v17;
      _os_log_impl(&dword_22D84A000, v28, v29, "SubscriptionManagerProvider: Disk space needed for subscriber: %s, subscription name: %s, bytes: %lld", v31, 0x20u);
      swift_arrayDestroy();
      v34 = sub_22D8507BC();
      MEMORY[0x2318D50E0](v34);
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
    }
  }

  v35 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t sub_22D865664()
{
  sub_22D84D198();
  v0[20] = v1;
  v0[21] = v2;
  v0[19] = v3;
  v4 = sub_22D8B088C();
  v0[22] = v4;
  sub_22D84C5D0(v4);
  v0[23] = v5;
  v7 = *(v6 + 64) + 15;
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22D86573C()
{
  v62 = v0;
  v1 = v0[21];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v60 = MEMORY[0x277D84F90];
    sub_22D8B1E7C();
    v4 = sub_22D8B0F3C();
    sub_22D84C5D0(v4);
    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v8 = *(v7 + 72);
    do
    {
      sub_22D8663C8(v6, v0 + 18, v61);
      sub_22D8B1E5C();
      v9 = *(v60 + 16);
      sub_22D8B1E8C();
      sub_22D8B1E9C();
      sub_22D8B1E6C();
      v6 += v8;
      --v2;
    }

    while (v2);
    v3 = v60;
  }

  v10 = sub_22D886CD4(v3);
  v11 = MEMORY[0x277D84F90];
  v59 = v3;
  if (v10)
  {
    v12 = v10;
    v61[0] = MEMORY[0x277D84F90];
    v13 = sub_22D87B9A8(0, v10 & ~(v10 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return MEMORY[0x282200938](v13);
    }

    v14 = 0;
    v11 = v61[0];
    v15 = v3 & 0xC000000000000001;
    do
    {
      if (v15)
      {
        v16 = MEMORY[0x2318D4700](v14, v3);
      }

      else
      {
        v16 = *(v3 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v17 name];
      v19 = sub_22D8B19FC();
      v21 = v20;

      v61[0] = v11;
      v23 = *(v11 + 16);
      v22 = *(v11 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_22D87B9A8(v22 > 1, v23 + 1, 1);
        v11 = v61[0];
      }

      ++v14;
      *(v11 + 16) = v23 + 1;
      v24 = v11 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      v3 = v59;
    }

    while (v12 != v14);
  }

  v0[28] = v11;
  v25 = v0[27];
  sub_22D8B087C();
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v27 = v0[26];
  v26 = v0[27];
  v29 = v0[22];
  v28 = v0[23];
  v30 = v0[20];
  v31 = sub_22D8B178C();
  v0[29] = sub_22D84C6FC(v31, qword_281459298);
  v32 = *(v28 + 16);
  v0[30] = v32;
  v0[31] = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v32(v27, v26, v29);

  v33 = sub_22D8B176C();
  v34 = sub_22D8B1C6C();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v0[26];
  v38 = v0[22];
  v37 = v0[23];
  if (v35)
  {
    v57 = v0[19];
    v58 = v0[20];
    sub_22D84F510();
    v39 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v39 = 136315650;
    sub_22D868230();
    v40 = sub_22D8B1F5C();
    v42 = v41;
    v56 = v34;
    v43 = *(v37 + 8);
    v43(v36, v38);
    sub_22D84C63C(v40, v42, v61);
    sub_22D868470();

    *(v39 + 4) = v36;
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_22D84C63C(v57, v58, v61);
    *(v39 + 22) = 2080;
    v44 = MEMORY[0x2318D43B0](v11, MEMORY[0x277D837D0]);
    v46 = sub_22D84C63C(v44, v45, v61);

    *(v39 + 24) = v46;
    _os_log_impl(&dword_22D84A000, v33, v56, "SubscriptionManagerProvider: Request ID: %s, subscription request for: %s, UAF subscriptions: %s", v39, 0x20u);
    swift_arrayDestroy();
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
    v47 = sub_22D84DC34();
    MEMORY[0x2318D50E0](v47);
  }

  else
  {

    v43 = *(v37 + 8);
    v43(v36, v38);
  }

  v0[32] = v43;
  v49 = v0[19];
  v48 = v0[20];
  v50 = [objc_opt_self() sharedManager];
  v0[33] = v50;
  v51 = sub_22D8B19CC();
  v0[34] = v51;
  sub_22D85AFB0(0, &qword_2814584A0, 0x277D77A08);
  v52 = sub_22D8B1ACC();
  v0[35] = v52;

  v0[2] = v0;
  sub_22D852274();
  v53 = swift_continuation_init();
  v0[17] = sub_22D8580D8(&qword_27DA0D7B0, &unk_22D8B3B68);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  sub_22D84D824();
  v0[13] = v54;
  v0[14] = v53;
  [v50 subscribe:v51 subscriptions:v52 queue:0 completion:v0 + 10];
  v13 = (v0 + 2);

  return MEMORY[0x282200938](v13);
}

uint64_t sub_22D865D20()
{
  sub_22D84D198();
  sub_22D84C734();
  sub_22D84C3C8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 288) = *(v3 + 48);
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22D865E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22D84DF84();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v28 = *(v24 + 272);
  v27 = *(v24 + 280);
  v30 = *(v24 + 240);
  v29 = *(v24 + 248);
  v32 = *(v24 + 224);
  v31 = *(v24 + 232);
  v33 = *(v24 + 216);
  v34 = *(v24 + 200);
  v35 = *(v24 + 176);

  v30(v34, v33, v35);

  v36 = sub_22D8B176C();
  v37 = sub_22D8B1C6C();

  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v24 + 256);
  v40 = *(v24 + 216);
  v41 = *(v24 + 224);
  v42 = *(v24 + 200);
  v43 = *(v24 + 176);
  v44 = *(v24 + 184);
  if (v38)
  {
    sub_22D84C408();
    a12 = v40;
    v45 = swift_slowAlloc();
    sub_22D84F584();
    a10 = swift_slowAlloc();
    a13 = a10;
    *v45 = 136315394;
    sub_22D868230();
    sub_22D8B1F5C();
    HIDWORD(a9) = v37;
    v47 = v46;
    a11 = v44 + 8;
    v48 = sub_22D8684A0();
    v39(v48);
    v49 = v39;
    v50 = sub_22D868494();
    v52 = sub_22D84C63C(v50, v47, v51);

    *(v45 + 4) = v52;
    *(v45 + 12) = 2080;
    v53 = MEMORY[0x2318D43B0](v41, MEMORY[0x277D837D0]);
    v55 = v54;

    sub_22D84C63C(v53, v55, &a13);
    sub_22D84F8C0();

    *(v45 + 14) = v53;
    _os_log_impl(&dword_22D84A000, v36, BYTE4(a9), "SubscriptionManagerProvider: Request ID: %s, successfully subscribed to subscriptions %s", v45, 0x16u);
    swift_arrayDestroy();
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
    v56 = sub_22D84DC34();
    MEMORY[0x2318D50E0](v56);

    (v49)(a12, v43);
  }

  else
  {

    v57 = sub_22D8684A0();
    v39(v57);
    (v39)(v40, v43);
  }

  v59 = *(v24 + 208);
  v58 = *(v24 + 216);
  v61 = *(v24 + 192);
  v60 = *(v24 + 200);

  sub_22D84D800();
  sub_22D84E168();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22D866084()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[30];
  v55 = v0[31];
  v58 = v0[29];
  v6 = v0[27];
  v7 = v0[24];
  v8 = v0[22];
  swift_willThrow();

  v9 = sub_22D8519BC();
  v5(v9);
  v10 = v1;
  v11 = sub_22D8B176C();
  v12 = sub_22D8B1C4C();

  if (os_log_type_enabled(v11, v12))
  {
    v53 = v0[32];
    v56 = v0[36];
    v13 = v0[24];
    v59 = v0[23];
    v14 = v0[22];
    sub_22D84C408();
    v15 = swift_slowAlloc();
    sub_22D84DB48();
    swift_slowAlloc();
    sub_22D84E3B0();
    v60 = swift_slowAlloc();
    *v15 = 136315394;
    sub_22D868230();
    sub_22D8B1F5C();
    v17 = v16;
    v18 = sub_22D84DA44();
    v53(v18, v14);
    v19 = sub_22D868494();
    sub_22D84C63C(v19, v17, v20);
    sub_22D868470();

    sub_22D84E1CC(v21, v22, v23, v24, v25, v26, v27, v28, v52, v53, v56);
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v29;
    *v8 = v29;
    sub_22D86847C(&dword_22D84A000, v11, v12, "SubscriptionManagerProvider: Request ID %s. Failed to subscribe. Error: %@");
    sub_22D858120(v8, &qword_27DA0D4D0, &qword_22D8B3400);
    v30 = sub_22D84DC34();
    MEMORY[0x2318D50E0](v30);
    sub_22D84D8A0(v60);
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
  }

  else
  {
    v31 = v0[32];
    v33 = v0[23];
    v32 = v0[24];
    v34 = v0[22];

    v35 = sub_22D84DA44();
    v31(v35, v34);
  }

  v36 = v0[36];
  v37 = v0[28];
  v54 = v0[27];
  v57 = v0[32];
  v38 = v0[22];
  sub_22D8B0A1C();
  sub_22D855844(&qword_2814587A0);
  sub_22D84DD68();
  v40 = v39;
  sub_22D8B1E2C();

  v41 = MEMORY[0x2318D43B0](v37, MEMORY[0x277D837D0]);
  v43 = v42;

  MEMORY[0x2318D4340](v41, v43);

  *v40 = 0xD000000000000027;
  v40[1] = 0x800000022D8B7D90;
  v44 = *MEMORY[0x277D29A90];
  sub_22D84CE4C();
  (*(v45 + 104))(v40);
  swift_willThrow();

  v57(v54, v38);
  v47 = v0[26];
  v46 = v0[27];
  v49 = v0[24];
  v48 = v0[25];

  sub_22D84D800();

  return v50();
}

uint64_t sub_22D8663C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a2;
  v5 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v37 - v7;
  v9 = sub_22D8B0F1C();
  v11 = v10;
  v12 = sub_22D8B0F2C();
  v13 = sub_22D8B0EFC();
  sub_22D8B0EEC();
  v14 = objc_allocWithZone(MEMORY[0x277D77A08]);
  result = sub_22D867BC8(v9, v11, v12, v13, v8);
  if (result)
  {
    *a3 = result;
  }

  else
  {
    if (qword_2814589E0 != -1)
    {
      swift_once();
    }

    v16 = sub_22D8B178C();
    sub_22D84C6FC(v16, qword_281459298);
    v17 = sub_22D8B0F3C();
    v18 = *(v17 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20](v17);
    v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, a1, v17);
    v22 = sub_22D8B176C();
    v23 = sub_22D8B1C4C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v37[0] = swift_slowAlloc();
      v38 = v37[0];
      *v24 = 136315138;
      v25 = sub_22D8B0F1C();
      v37[1] = v37;
      v27 = v26;
      (*(v18 + 8))(v21, v17);
      v28 = sub_22D84C63C(v25, v27, &v38);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_22D84A000, v22, v23, "SubscriptionManagerProvider: Failed to create UAFAssetSetSubscription for subscription: %s", v24, 0xCu);
      v29 = v37[0];
      sub_22D84D8A0(v37[0]);
      MEMORY[0x2318D50E0](v29, -1, -1);
      MEMORY[0x2318D50E0](v24, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v21, v17);
    }

    v30 = v40;
    v31 = sub_22D8B0A1C();
    sub_22D8683FC(&qword_2814587A0, MEMORY[0x2822218C8]);
    v32 = swift_allocError();
    v34 = v33;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_22D8B1E2C();
    MEMORY[0x2318D4340](0xD00000000000003BLL, 0x800000022D8B7DC0);
    v35 = sub_22D8B0F1C();
    MEMORY[0x2318D4340](v35);

    v36 = v39;
    *v34 = v38;
    v34[1] = v36;
    (*(*(v31 - 8) + 104))(v34, *MEMORY[0x277D29A90], v31);
    result = swift_willThrow();
    *v30 = v32;
  }

  return result;
}

uint64_t sub_22D8667B4()
{
  sub_22D84D198();
  v0[19] = v1;
  v0[20] = v2;
  v0[18] = v3;
  v4 = sub_22D8B088C();
  v0[21] = v4;
  sub_22D84C5D0(v4);
  v0[22] = v5;
  v7 = *(v6 + 64) + 15;
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22D86688C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_22D84DF84();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[26];
  sub_22D8B087C();
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v28 = v24[25];
  v29 = v24[26];
  v30 = v24[21];
  v31 = v24[22];
  v33 = v24[19];
  v32 = v24[20];
  v34 = sub_22D8B178C();
  v24[27] = sub_22D84C6FC(v34, qword_281459298);
  v35 = *(v31 + 16);
  v24[28] = v35;
  v24[29] = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v35(v28, v29, v30);

  v36 = sub_22D8B176C();
  v37 = sub_22D8B1C6C();

  v38 = os_log_type_enabled(v36, v37);
  v39 = v24[25];
  v41 = v24[21];
  v40 = v24[22];
  if (v38)
  {
    v64 = v24[19];
    v65 = v24[20];
    v63 = v24[18];
    sub_22D84F510();
    v42 = swift_slowAlloc();
    a13 = swift_slowAlloc();
    *v42 = 136315650;
    sub_22D868230();
    v43 = sub_22D8B1F5C();
    v45 = v44;
    v46 = *(v40 + 8);
    v46(v39, v41);
    sub_22D84C63C(v43, v45, &a13);
    sub_22D868470();

    *(v42 + 4) = v39;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_22D84C63C(v63, v64, &a13);
    *(v42 + 22) = 2080;
    v47 = MEMORY[0x2318D43B0](v65, MEMORY[0x277D837D0]);
    v49 = sub_22D84C63C(v47, v48, &a13);

    *(v42 + 24) = v49;
    _os_log_impl(&dword_22D84A000, v36, v37, "SubscriptionManagerProvider: Request ID: %s, requesting unsubscribe for: %s, subscription names: %s", v42, 0x20u);
    swift_arrayDestroy();
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
    v50 = sub_22D8507BC();
    MEMORY[0x2318D50E0](v50);
  }

  else
  {

    v46 = *(v40 + 8);
    v46(v39, v41);
  }

  v24[30] = v46;
  v51 = v24[19];
  v52 = v24[20];
  v53 = v24[18];
  v54 = [objc_opt_self() sharedManager];
  v24[31] = v54;
  v55 = sub_22D8B19CC();
  v24[32] = v55;
  v56 = sub_22D8B1ACC();
  v24[33] = v56;
  v24[2] = v24;
  sub_22D852274();
  v57 = swift_continuation_init();
  v58 = sub_22D8580D8(&qword_27DA0D7B0, &unk_22D8B3B68);
  sub_22D84DEDC(v58);
  v24[11] = 1107296256;
  sub_22D84D824();
  v24[13] = v59;
  v24[14] = v57;
  [v54 unsubscribe:v55 subscriptionNames:v56 queue:0 completion:v24 + 10];
  sub_22D84E168();

  return MEMORY[0x282200938](v60);
}

uint64_t sub_22D866BE8()
{
  sub_22D84D198();
  sub_22D84C734();
  sub_22D84C3C8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = *(v3 + 48);
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22D866CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22D84DF84();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v28 = *(v24 + 256);
  v27 = *(v24 + 264);
  v30 = *(v24 + 224);
  v29 = *(v24 + 232);
  v31 = *(v24 + 208);
  v32 = *(v24 + 216);
  v33 = *(v24 + 192);
  v35 = *(v24 + 160);
  v34 = *(v24 + 168);

  v30(v33, v31, v34);

  v36 = sub_22D8B176C();
  v37 = sub_22D8B1C6C();

  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v24 + 240);
  v40 = *(v24 + 208);
  v41 = *(v24 + 192);
  v43 = *(v24 + 168);
  v42 = *(v24 + 176);
  if (v38)
  {
    a10 = *(v24 + 160);
    sub_22D84C408();
    a12 = v39;
    v44 = swift_slowAlloc();
    sub_22D84F584();
    a11 = v40;
    a13 = swift_slowAlloc();
    *v44 = 136315394;
    sub_22D868230();
    sub_22D8B1F5C();
    v46 = v45;
    v47 = sub_22D8684A0();
    a12(v47);
    v48 = sub_22D868494();
    v50 = sub_22D84C63C(v48, v46, v49);

    *(v44 + 4) = v50;
    *(v44 + 12) = 2080;
    v51 = MEMORY[0x2318D43B0](a10, MEMORY[0x277D837D0]);
    v53 = sub_22D84C63C(v51, v52, &a13);

    *(v44 + 14) = v53;
    _os_log_impl(&dword_22D84A000, v36, v37, "SubscriptionManagerProvider: Request ID: %s, successfully unsubscribed from subscriptions %s", v44, 0x16u);
    swift_arrayDestroy();
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
    v54 = sub_22D84DC34();
    MEMORY[0x2318D50E0](v54);

    (a12)(v40, v43);
  }

  else
  {

    v55 = sub_22D8684A0();
    v39(v55);
    (v39)(v40, v43);
  }

  v57 = *(v24 + 200);
  v56 = *(v24 + 208);
  v59 = *(v24 + 184);
  v58 = *(v24 + 192);

  sub_22D84D800();
  sub_22D84E168();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22D866F2C()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[28];
  v6 = v0[26];
  v52 = v0[29];
  v55 = v0[27];
  v7 = v0[23];
  v8 = v0[21];
  swift_willThrow();

  v9 = sub_22D8519BC();
  v5(v9);
  v10 = v1;
  v11 = sub_22D8B176C();
  v12 = sub_22D8B1C4C();

  if (os_log_type_enabled(v11, v12))
  {
    v50 = v0[30];
    v53 = v0[34];
    v13 = v0[23];
    v56 = v0[22];
    v14 = v0[21];
    sub_22D84C408();
    v15 = swift_slowAlloc();
    sub_22D84DB48();
    swift_slowAlloc();
    sub_22D84E3B0();
    v57 = swift_slowAlloc();
    *v15 = 136315394;
    sub_22D868230();
    sub_22D8B1F5C();
    v17 = v16;
    v18 = sub_22D84DA44();
    v50(v18, v14);
    v19 = sub_22D868494();
    sub_22D84C63C(v19, v17, v20);
    sub_22D868470();

    sub_22D84E1CC(v21, v22, v23, v24, v25, v26, v27, v28, v48, v50, v53);
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v29;
    *v8 = v29;
    sub_22D86847C(&dword_22D84A000, v11, v12, "SubscriptionManagerProvider: Request ID %s. Failed to unsubscribe. Error: %@");
    sub_22D858120(v8, &qword_27DA0D4D0, &qword_22D8B3400);
    v30 = sub_22D84DC34();
    MEMORY[0x2318D50E0](v30);
    sub_22D84D8A0(v57);
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
  }

  else
  {
    v31 = v0[30];
    v33 = v0[22];
    v32 = v0[23];
    v34 = v0[21];

    v35 = sub_22D84DA44();
    v31(v35, v34);
  }

  v36 = v0[34];
  v37 = v0[30];
  v38 = v0[26];
  v49 = v0[25];
  v51 = v0[24];
  v54 = v0[23];
  v39 = v0[20];
  v40 = v0[21];
  sub_22D8B0A1C();
  sub_22D855844(&qword_2814587A0);
  sub_22D84DD68();
  v42 = v41;
  sub_22D8B1E2C();

  v43 = MEMORY[0x2318D43B0](v39, MEMORY[0x277D837D0]);
  MEMORY[0x2318D4340](v43);

  *v42 = 0xD000000000000029;
  v42[1] = 0x800000022D8B7D60;
  v44 = *MEMORY[0x277D29A98];
  sub_22D84CE4C();
  (*(v45 + 104))(v42);
  swift_willThrow();

  v37(v38, v40);

  sub_22D84D800();

  return v46();
}

size_t sub_22D86725C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v62 - v6);
  if (qword_2814589E0 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v8 = sub_22D8B178C();
    v9 = sub_22D84C6FC(v8, qword_281459298);

    v10 = sub_22D8B176C();
    v11 = sub_22D8B1C6C();

    if (os_log_type_enabled(v10, v11))
    {
      sub_22D84D708();
      v12 = swift_slowAlloc();
      sub_22D84F510();
      v13 = swift_slowAlloc();
      v73 = v13;
      *(v12 + 4) = sub_22D84C484(4.8149e-34);
      sub_22D84EB50();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
      sub_22D84D8A0(v13);
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
    }

    v19 = [objc_opt_self() sharedManager];
    sub_22D868470();
    v20 = sub_22D8B19CC();
    v21 = [v11 subscriptionsForSubscriber_];

    if (!v21)
    {

      v44 = sub_22D8B176C();
      v45 = sub_22D8B1C6C();

      if (os_log_type_enabled(v44, v45))
      {
        sub_22D84D708();
        v46 = swift_slowAlloc();
        sub_22D84F510();
        v47 = swift_slowAlloc();
        v73 = v47;
        *(v46 + 4) = sub_22D84C484(4.8149e-34);
        sub_22D84EB50();
        _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
        sub_22D84D8A0(v47);
        sub_22D84E45C();
        MEMORY[0x2318D50E0]();
        sub_22D84E45C();
        MEMORY[0x2318D50E0]();
      }

      return MEMORY[0x277D84F90];
    }

    sub_22D85AFB0(0, &qword_2814584A0, 0x277D77A08);
    v22 = sub_22D8B1ADC();

    v23 = sub_22D886CD4(v22);
    if (!v23)
    {

      v7 = MEMORY[0x277D84F90];
LABEL_28:

      v53 = sub_22D8B176C();
      v54 = sub_22D8B1C6C();

      if (os_log_type_enabled(v53, v54))
      {
        sub_22D84C408();
        v55 = swift_slowAlloc();
        sub_22D84F510();
        v56 = swift_slowAlloc();
        v73 = v56;
        *(v55 + 4) = sub_22D84C484(4.8151e-34);
        *(v55 + 12) = 2048;
        *(v55 + 14) = v7[2];

        sub_22D84EB50();
        _os_log_impl(v57, v58, v59, v60, v61, 0x16u);
        sub_22D84D8A0(v56);
        sub_22D84E45C();
        MEMORY[0x2318D50E0]();
        sub_22D84E45C();
        MEMORY[0x2318D50E0]();
      }

      else
      {
      }

      return v7;
    }

    v24 = v23;
    v73 = MEMORY[0x277D84F90];
    result = sub_22D87BB0C(0, v23 & ~(v23 >> 63), 0);
    if (v24 < 0)
    {
      break;
    }

    v69 = v7;
    v62[0] = v9;
    v62[1] = a1;
    v62[2] = a2;
    v7 = v73;
    v71 = v22 & 0xC000000000000001;
    v26 = 0;
    v66 = sub_22D8B0F3C();
    v27 = sub_22D84D7DC(v66);
    v70 = *(v28 + 64);
    v65 = v29;
    v63 = v22 & 0xFFFFFFFFFFFFFF8;
    v64 = v29 + 32;
    v67 = v24;
    v68 = v22;
    while (1)
    {
      MEMORY[0x28223BE20](v27);
      v31 = v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v71)
      {
        v32 = MEMORY[0x2318D4700](v26, v22);
        goto LABEL_13;
      }

      if ((v26 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v26 >= *(v63 + 16))
      {
        goto LABEL_33;
      }

      v32 = *(v22 + 8 * v26 + 32);
LABEL_13:
      v33 = v32;
      v34 = [v32 name];
      a2 = sub_22D8B19FC();
      a1 = v35;

      v36 = sub_22D868150(v33);
      v72 = v62;
      if (!v36)
      {
        sub_22D8580D8(&qword_27DA0D7A8, &qword_22D8B3B60);
        sub_22D8B193C();
      }

      if (!sub_22D8681CC(v33))
      {
        sub_22D8B193C();
      }

      v37 = [v33 expiration];
      if (v37)
      {
        v38 = v37;
        v39 = v69;
        sub_22D8B082C();

        v40 = 0;
      }

      else
      {
        v40 = 1;
        v39 = v69;
      }

      v41 = sub_22D8B083C();
      sub_22D84C4F8(v39, v40, 1, v41);
      sub_22D8B0F0C();

      v73 = v7;
      v43 = v7[2];
      v42 = v7[3];
      if (v43 >= v42 >> 1)
      {
        sub_22D87BB0C(v42 > 1, v43 + 1, 1);
        v7 = v73;
      }

      ++v26;
      v7[2] = v43 + 1;
      v27 = (*(v65 + 32))(v7 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v43, v31, v66);
      v22 = v68;
      if (v67 == v26)
      {

        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    sub_22D86845C();
    swift_once();
  }

  __break(1u);
  return result;
}

id sub_22D8678C0()
{
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v0 = sub_22D8B178C();
  sub_22D84C6FC(v0, qword_281459298);

  v1 = sub_22D8B176C();
  v2 = sub_22D8B1C6C();

  if (os_log_type_enabled(v1, v2))
  {
    sub_22D84D708();
    v3 = swift_slowAlloc();
    sub_22D84F510();
    v4 = swift_slowAlloc();
    v24 = v4;
    *v3 = 136315138;
    sub_22D8580D8(&qword_27DA0D7A0, &unk_22D8B3B50);
    v5 = sub_22D8B192C();
    v7 = sub_22D84C63C(v5, v6, &v24);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_22D84A000, v1, v2, "SubscriptionManagerProvider: Starting sync request to retrieve download status for subscribers: %s", v3, 0xCu);
    sub_22D84D8A0(v4);
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
    v8 = sub_22D8507BC();
    MEMORY[0x2318D50E0](v8);
  }

  v9 = [objc_opt_self() sharedManager];
  sub_22D8580D8(&qword_27DA0D7A0, &unk_22D8B3B50);
  v10 = sub_22D8B190C();
  v11 = [v9 downloadStatusForSubscribers_];

  v12 = sub_22D8B176C();
  v13 = sub_22D8B1C6C();

  if (os_log_type_enabled(v12, v13))
  {
    sub_22D84C408();
    v14 = swift_slowAlloc();
    sub_22D84F584();
    v24 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = sub_22D8B192C();
    v17 = sub_22D84C63C(v15, v16, &v24);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    type metadata accessor for SubscriptionDownloadStatus(0);
    v18 = sub_22D8B1A4C();
    v20 = sub_22D84C63C(v18, v19, &v24);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_22D84A000, v12, v13, "SubscriptionManagerProvider: Sync download status for subscribers: %s, returned download status: %s", v14, 0x16u);
    swift_arrayDestroy();
    sub_22D84E45C();
    MEMORY[0x2318D50E0](v21);
    sub_22D84E45C();
    MEMORY[0x2318D50E0](v22);
  }

  return v11;
}

id sub_22D867BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_22D8B19CC();

  if (a3)
  {
    sub_22D8580D8(&qword_27DA0D7A8, &qword_22D8B3B60);
    v11 = sub_22D8B190C();

    if (a4)
    {
LABEL_3:
      v12 = sub_22D8B190C();

      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = sub_22D8B083C();
  v14 = 0;
  if (sub_22D84D0C0(a5, 1, v13) != 1)
  {
    v14 = sub_22D8B07FC();
    (*(*(v13 - 8) + 8))(a5, v13);
  }

  v15 = [v6 initWithName:v10 assetSets:v11 usageAliases:v12 expires:v14];

  return v15;
}

uint64_t sub_22D867D34(uint64_t a1, unint64_t a2)
{
  v4 = sub_22D867D80(a1, a2);
  sub_22D867E98(&unk_2840E2B70);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22D867D80(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_22D8B1A9C())
  {
    result = sub_22D867F7C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_22D8B1E1C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_22D8B1E4C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22D867E98(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_22D867FEC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22D867F7C(uint64_t a1, uint64_t a2)
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

  sub_22D8580D8(&qword_27DA0D7C8, &qword_22D8B3BB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_22D867FEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_22D8580D8(&qword_27DA0D7C8, &qword_22D8B3BB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

id sub_22D8680E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_22D8B19CC();
  v9 = [a5 diskSpaceNeededForSubscriber:a1 subscriptionName:v8 error:a4];

  return v9;
}

uint64_t sub_22D868150(void *a1)
{
  v1 = [a1 assetSets];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_22D8580D8(&qword_27DA0D7A8, &qword_22D8B3B60);
  v3 = sub_22D8B191C();

  return v3;
}

uint64_t sub_22D8681CC(void *a1)
{
  v1 = [a1 usageAliases];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22D8B191C();

  return v3;
}

unint64_t sub_22D868230()
{
  result = qword_2814587A8;
  if (!qword_2814587A8)
  {
    sub_22D8B088C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814587A8);
  }

  return result;
}

uint64_t sub_22D868290(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22D8682A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = sub_22D84DC44(v6);

  return sub_22D864C4C(v7, v8, v9, v5);
}

uint64_t sub_22D868358()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_22D84DC44(v5);

  return sub_22D8646B8(v6, v7, v8, v4);
}

uint64_t sub_22D8683FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22D86847C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_22D8684C0(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_22D84C63C(v3, v2, va);
}

uint64_t sub_22D8684F8()
{
  v2 = *(v0 + 176);

  return sub_22D8B178C();
}

BOOL sub_22D868510()
{

  return os_log_type_enabled(v1, v0);
}

void sub_22D868528(uint64_t a1, NSObject *a2)
{
  v4[4] = sub_22D868638;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_22D868C78;
  v4[3] = &unk_2840E35B0;
  v3 = _Block_copy(v4);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", a2, v3);
  _Block_release(v3);
}

const char *sub_22D8685D8(void *a1)
{
  v2 = sub_22D8B183C();
  result = xpc_dictionary_get_string(a1, v2);
  if (result)
  {
    v4 = sub_22D8B1A8C();
    sub_22D86863C(v4, v5);
  }

  return result;
}

void sub_22D86863C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v43 - v7;
  v9 = sub_22D8B1B9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814588B0 != -1)
  {
    swift_once();
  }

  v14 = qword_281459288;
  sub_22D8B19FC();
  sub_22D84DC5C();
  v16 = v16 && v15 == a2;
  if (v16)
  {
    goto LABEL_54;
  }

  sub_22D868F38();
  sub_22D84D838();
  if (v2)
  {
    goto LABEL_55;
  }

  if (qword_2814588B8 != -1)
  {
    swift_once();
  }

  v14 = qword_281459290;
  sub_22D8B19FC();
  sub_22D84DC5C();
  if (v16 && v17 == a2)
  {
    goto LABEL_54;
  }

  sub_22D868F38();
  sub_22D84D838();
  if (v2)
  {
    goto LABEL_55;
  }

  if (qword_2814584B0 != -1)
  {
    swift_once();
  }

  v14 = qword_281459248;
  sub_22D8B19FC();
  sub_22D84DC5C();
  if (v16 && v19 == a2)
  {
    goto LABEL_54;
  }

  sub_22D868F38();
  sub_22D84D838();
  if (v2)
  {
    goto LABEL_55;
  }

  if (qword_2814584B8 != -1)
  {
    swift_once();
  }

  v14 = qword_281459250;
  sub_22D8B19FC();
  sub_22D84DC5C();
  if (v16 && v21 == a2)
  {
    goto LABEL_54;
  }

  sub_22D868F38();
  sub_22D84D838();
  if (v2)
  {
    goto LABEL_55;
  }

  if (qword_2814584C0 != -1)
  {
    swift_once();
  }

  v14 = qword_281459258;
  sub_22D8B19FC();
  sub_22D84DC5C();
  if (v16 && v23 == a2)
  {
    goto LABEL_54;
  }

  sub_22D868F38();
  sub_22D84D838();
  if (v2)
  {
    goto LABEL_55;
  }

  if (qword_2814584A8 != -1)
  {
    swift_once();
  }

  v14 = qword_281459240;
  sub_22D8B19FC();
  sub_22D84DC5C();
  if (v16 && v25 == a2)
  {
    goto LABEL_54;
  }

  sub_22D868F38();
  sub_22D84D838();
  if (v2)
  {
    goto LABEL_55;
  }

  if (qword_2814584D0 != -1)
  {
    swift_once();
  }

  v14 = qword_281459260;
  sub_22D8B19FC();
  sub_22D84DC5C();
  if (v16 && v27 == a2)
  {
LABEL_54:

    goto LABEL_55;
  }

  sub_22D868F38();
  sub_22D84D838();
  if ((v2 & 1) == 0)
  {
    if (qword_2814589E0 != -1)
    {
      sub_22D84DE60();
    }

    v29 = sub_22D8B178C();
    sub_22D84C6FC(v29, qword_281459298);

    v43 = sub_22D8B176C();
    v30 = sub_22D8B1C4C();

    if (os_log_type_enabled(v43, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44 = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_22D84C63C(a1, a2, &v44);
      _os_log_impl(&dword_22D84A000, v43, v30, "Not reposting notification. Could not find match for %{public}s", v31, 0xCu);
      sub_22D84D8A0(v32);
      sub_22D84C3D8();
      sub_22D84C3D8();
    }

    else
    {
      v42 = v43;
    }

    return;
  }

LABEL_55:
  v33 = v14;
  sub_22D8B1B6C();
  if (qword_2814589E0 != -1)
  {
    sub_22D84DE60();
  }

  v34 = sub_22D8B178C();
  sub_22D84C6FC(v34, qword_281459298);
  v35 = v33;
  v36 = sub_22D8B176C();
  v37 = sub_22D8B1C6C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138543362;
    *(v38 + 4) = v35;
    *v39 = v35;
    v40 = v35;
    _os_log_impl(&dword_22D84A000, v36, v37, "Reposting notification %{public}@", v38, 0xCu);
    sub_22D862C98(v39);
    sub_22D84C3D8();
    sub_22D84C3D8();
  }

  (*(v10 + 16))(v8, v13, v9);
  sub_22D84C4F8(v8, 0, 1, v9);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v35;
  sub_22D8930E4();

  (*(v10 + 8))(v13, v9);
}

uint64_t sub_22D868C78(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_22D868CF8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() defaultCenter];
  [v2 postNotificationName:v1 object:0];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22D868D90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D868E44;

  return sub_22D868CD8(a1, v4, v5, v6);
}

uint64_t sub_22D868E44()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22D868F38()
{

  return sub_22D8B1F8C();
}

uint64_t sub_22D868F58()
{
  v1 = [*(v0 + 16) row];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22D8B191C();

  return v3;
}

id sub_22D868FC8()
{
  v1 = [*(v0 + 16) error];

  return v1;
}

uint64_t sub_22D869000()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22D86905C(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x277CF1A88]) initWithUseCase_];
  return v1;
}

uint64_t sub_22D8690A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = sub_22D8B1C1C();
  v5 = type metadata accessor for BiomeSQLDatabaseResultSet();
  result = swift_allocObject();
  *(result + 16) = v4;
  a1[3] = v5;
  a1[4] = &off_2840E3600;
  *a1 = result;
  return result;
}

id sub_22D869100(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v9 = *(v5 + 24);
  v10 = sub_22D8B19CC();
  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D86924C;
  aBlock[3] = &unk_2840E3640;
  v11 = _Block_copy(aBlock);

  aBlock[0] = 0;
  LODWORD(a3) = [v9 registerFunctionWithName:v10 numArgs:a3 function:v11 error:aBlock];
  _Block_release(v11);

  if (a3)
  {
    result = aBlock[0];
  }

  else
  {
    v13 = aBlock[0];
    sub_22D8B069C();

    result = swift_willThrow();
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_22D86924C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_22D8B1ADC();

  v5(v15, v6, a3);

  v7 = v16;
  if (v16)
  {
    v8 = sub_22D84E124(v15, v16);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_22D8B1F7C();
    (*(v9 + 8))(v12, v7);
    sub_22D84D8A0(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_22D8693EC()
{
  sub_22D8693C4();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_22D869444(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v50 = MEMORY[0x277D84F90];
    sub_22D87B9A8(0, v2, 0);
    v49 = v50;
    v4 = sub_22D872604(v1);
    v6 = v5;
    v7 = v1 + 56;
    result = sub_22D8B0C6C();
    v8 = 0;
    v44 = result;
    v9 = *(result - 8);
    v42 = v9 + 16;
    v45 = *(v9 + 64);
    v43 = v9;
    v40 = v1;
    v41 = v9 + 8;
    v37 = v1 + 64;
    v38 = v2;
    v39 = v1 + 56;
    while (1)
    {
      result = MEMORY[0x28223BE20](result);
      v13 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v4 < 0 || v4 >= v12 << *(v1 + 32))
      {
        break;
      }

      v46 = v8;
      v14 = v4 >> 6;
      v15 = v12 << v4;
      if ((*(v7 + 8 * (v4 >> 6)) & (v12 << v4)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v1 + 36) != v11)
      {
        goto LABEL_26;
      }

      v48 = v6;
      v47 = v11;
      v17 = v43;
      v16 = v44;
      (*(v43 + 16))(&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), *(v1 + 48) + *(v43 + 72) * v4, v44);
      v18 = sub_22D8B0C3C();
      v20 = v19;
      result = (*(v17 + 8))(v13, v16);
      v21 = v49;
      v50 = v49;
      v23 = *(v49 + 16);
      v22 = *(v49 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_22D87B9A8(v22 > 1, v23 + 1, 1);
        v21 = v50;
      }

      *(v21 + 16) = v23 + 1;
      v24 = v21 + 16 * v23;
      *(v24 + 32) = v18;
      *(v24 + 40) = v20;
      if (v48)
      {
        goto LABEL_30;
      }

      v7 = v39;
      v1 = v40;
      v25 = 1 << *(v40 + 32);
      if (v4 >= v25)
      {
        goto LABEL_27;
      }

      v26 = *(v39 + 8 * v14);
      if ((v26 & v15) == 0)
      {
        goto LABEL_28;
      }

      v49 = v21;
      if (*(v40 + 36) != v47)
      {
        goto LABEL_29;
      }

      v27 = v26 & (-2 << (v4 & 0x3F));
      if (v27)
      {
        v25 = __clz(__rbit64(v27)) | v4 & 0x7FFFFFFFFFFFFFC0;
        v28 = v38;
        v29 = v46;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v28 = v38;
        v32 = (v37 + 8 * v14);
        v29 = v46;
        while (v31 < (v25 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_22D8726C0(v4, v47, 0);
            v25 = __clz(__rbit64(v33)) + v30;
            goto LABEL_20;
          }
        }

        result = sub_22D8726C0(v4, v47, 0);
      }

LABEL_20:
      v8 = v29 + 1;
      if (v8 == v28)
      {
        return v49;
      }

      v6 = 0;
      v35 = *(v1 + 36);
      v4 = v25;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_22D869778(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a4 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = v15[1];
      v17[0] = *v15;
      v17[1] = v16;

      a2(&v18, v17);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v18;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22D8698C0()
{
  v0 = sub_22D8580D8(&qword_27DA0D798, &unk_22D8B3AF0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_22D8B06AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D8B073C();
  sub_22D858E88(v9, qword_281459468);
  sub_22D84C6FC(v9, qword_281459468);
  (*(v5 + 104))(v8, *MEMORY[0x277CC91C0], v4);
  sub_22D84C4F8(v3, 1, 1, v9);
  return sub_22D8B071C();
}

uint64_t sub_22D869A48()
{
  sub_22D84D198();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  sub_22D84DD88(v5);

  return sub_22D84FAA4();
}

uint64_t sub_22D869AD4()
{
  sub_22D84D77C();
  sub_22D84C734();
  v3 = v2;
  sub_22D84F51C();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_22D84CED0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_22D872930();

    return v9();
  }

  else
  {
    v11 = *(v3 + 40);
    sub_22D854F60();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_22D869BF8()
{
  v1 = *(*(v0 + 40) + 192);
  *(v0 + 64) = v1;
  return sub_22D84DC68(sub_22D869C18, v1);
}

uint64_t sub_22D869C18()
{
  sub_22D84D77C();
  v2 = v0[7];
  v1 = v0[8];
  sub_22D873A34(v0[2], v0[3], v0[4]);
  sub_22D84C4A4();

  return v3();
}

uint64_t sub_22D869C90()
{
  sub_22D84D198();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  sub_22D84DD88(v2);

  return sub_22D84FAA4();
}

uint64_t sub_22D869D18()
{
  sub_22D84D77C();
  sub_22D84C734();
  v3 = v2;
  sub_22D84F51C();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  sub_22D84CED0();
  *v8 = v7;
  *(v3 + 32) = v0;

  if (v0)
  {
    sub_22D872930();

    return v9();
  }

  else
  {
    v11 = *(v3 + 16);
    sub_22D854F60();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_22D869E3C()
{
  v1 = *(*(v0 + 16) + 192);
  *(v0 + 40) = v1;
  return sub_22D84DC68(sub_22D869E5C, v1);
}

uint64_t sub_22D869E5C()
{
  sub_22D84D77C();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  sub_22D873B20();
  sub_22D84C4A4();

  return v3();
}

uint64_t sub_22D869ECC()
{
  sub_22D84F8A0();
  v3 = v2;
  sub_22D84C734();
  v5 = v4;
  sub_22D84F51C();
  *v6 = v5;
  v8 = *(v7 + 224);
  v9 = *(v7 + 216);
  v10 = *v1;
  sub_22D84CED0();
  *v11 = v10;
  v5[29] = v3;

  if (v0)
  {
    v12 = *(v10 + 8);
    sub_22D8554C0();

    __asm { BRAA            X1, X16 }
  }

  v15 = swift_task_alloc();
  v5[30] = v15;
  *v15 = v10;
  v15[1] = sub_22D86A050;
  v16 = v5[26];
  sub_22D8554C0();

  return sub_22D874E48(v17);
}

uint64_t sub_22D86A050()
{
  sub_22D84D77C();
  sub_22D84C734();
  v3 = v2;
  sub_22D84F51C();
  *v4 = v3;
  v6 = *(v5 + 240);
  *v4 = *v1;
  v3[31] = v7;

  if (v0)
  {
    v8 = v3[29];

    sub_22D872930();

    return v9();
  }

  else
  {
    v11 = v3[25];
    sub_22D854F60();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

void sub_22D86A184()
{
  v1 = v0[29];
  v2 = sub_22D886CD4(v1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  v39 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if (v4)
    {
      v7 = MEMORY[0x2318D4700](v3, v0[29]);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_21;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v10 = sub_22D879180(v7);
    v12 = v11;

    ++v3;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = v39[2];
        sub_22D84C414();
        sub_22D851D5C();
        v39 = v17;
      }

      v14 = v39[2];
      v13 = v39[3];
      if (v14 >= v13 >> 1)
      {
        sub_22D84C4D0(v13);
        sub_22D851D5C();
        v39 = v18;
      }

      v39[2] = v14 + 1;
      v15 = &v39[2 * v14];
      v15[4] = v10;
      v15[5] = v12;
      v3 = v9;
    }
  }

  v19 = v0[29];

  v20 = v39[2];
  if (v20)
  {
    v21 = v39 + 5;
    do
    {
      v22 = v0[25];
      v23 = *(v21 - 1);
      v24 = *v21;
      v25 = sub_22D84E124((v22 + 112), *(v22 + 136));
      v26 = swift_allocObject();
      v26[2] = v22;
      v26[3] = v23;
      v26[4] = v24;
      v27 = *v25;
      swift_bridgeObjectRetain_n();

      v28 = sub_22D854F6C();
      sub_22D864A18(v28, v29, v30, v26);

      v21 += 2;
      --v20;
    }

    while (v20);
  }

  v31 = v0[31];
  v32 = v0[25];

  swift_beginAccess();
  v33 = *(v32 + 200);

  v34 = sub_22D86ABB4(v31, v33);
  v35 = *(v32 + 200);
  *(v32 + 200) = v34;

  v36 = swift_task_alloc();
  v0[32] = v36;
  *v36 = v0;
  v36[1] = sub_22D86A418;
  v37 = v0[25];
  sub_22D872A24();

  sub_22D86AC5C();
}

uint64_t sub_22D86A418()
{
  sub_22D84D198();
  sub_22D84C734();
  v2 = *(v1 + 256);
  v3 = *v0;
  sub_22D84CED0();
  *v4 = v3;

  sub_22D84D800();

  return v5();
}

uint64_t sub_22D86A4FC(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  v7 = a3 + 32;
  if (v5)
  {
    while (1)
    {
      a1(&v13, v7);
      if (v3)
      {
        break;
      }

      if (v14)
      {
        sub_22D851550(&v13, v15);
        sub_22D851550(v15, &v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = *(v6 + 16);
          sub_22D84C414();
          sub_22D84F408();
          v6 = v10;
        }

        v8 = *(v6 + 16);
        if (v8 >= *(v6 + 24) >> 1)
        {
          sub_22D84F408();
          v6 = v11;
        }

        *(v6 + 16) = v8 + 1;
        sub_22D851550(&v13, v6 + 40 * v8 + 32);
      }

      else
      {
        sub_22D84F5C8(&v13, &qword_27DA0D698, &qword_22D8B36C0);
      }

      v7 += 40;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

void sub_22D86A644(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = a3 + 32;
  v8 = MEMORY[0x277D84F90];
  v28 = a3 + 32;
LABEL_2:
  v9 = v7 + 40 * v5;
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_16;
    }

    a1(&v22, v9);
    if (v3)
    {

      return;
    }

    v11 = v23;
    ++v5;
    v9 += 40;
    if (v23)
    {
      v20 = v25;
      v21 = v24;
      v19 = v26;
      v17 = v22;
      v18 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v8 + 16);
        sub_22D84C414();
        sub_22D88BD84();
        v8 = v15;
      }

      v12 = *(v8 + 16);
      if (v12 >= *(v8 + 24) >> 1)
      {
        sub_22D88BD84();
        v8 = v16;
      }

      *(v8 + 16) = v12 + 1;
      v13 = (v8 + 48 * v12);
      v13[4] = v17;
      v13[5] = v11;
      v13[6] = v21;
      v13[7] = v20;
      v13[8] = v19;
      v13[9] = v18;
      v5 = v10;
      v7 = v28;
      goto LABEL_2;
    }
  }
}

uint64_t sub_22D86A7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22D86A7D4, a1, 0);
}

uint64_t sub_22D86A7D4()
{
  sub_22D84D198();
  v1 = *(v0[2] + 192);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22D86A868;
  v3 = v0[4];
  v4 = sub_22D852280(v0[3]);

  return sub_22D852B34(v4, v5);
}

uint64_t sub_22D86A868()
{
  sub_22D84D198();
  sub_22D84C734();
  sub_22D84C3C8();
  *v2 = v1;
  v4 = *(v3 + 40);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_22D84CED0();
  *v7 = v6;
  *(v9 + 48) = v8;

  v10 = sub_22D84D1EC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22D86A960()
{
  sub_22D84D198();
  v1 = v0[6];
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token];
    v0[7] = v2;
    if (v2)
    {
      v3 = v2;
      v4 = swift_task_alloc();
      v0[8] = v4;
      *v4 = v0;
      v4[1] = sub_22D86AA50;
      v5 = v0[4];
      v6 = v0[2];
      v7 = sub_22D852280(v0[3]);

      return sub_22D86C134(v7, v8, v3);
    }
  }

  sub_22D84D800();

  return v10();
}

uint64_t sub_22D86AA50()
{
  sub_22D84D198();
  v2 = v1;
  sub_22D84C734();
  v4 = *(v3 + 64);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_22D84CED0();
  *v7 = v6;

  return MEMORY[0x2822009F8](sub_22D86AB58, v5, 0);
}

uint64_t sub_22D86AB58()
{
  sub_22D84D198();
  v1 = *(v0 + 48);

  sub_22D84D800();

  return v2();
}

uint64_t sub_22D86ABB4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v9 = a2;
  v4 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_22D851F6C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_22D86AC78()
{
  sub_22D84D77C();
  v1 = *(v0 + 128);
  swift_beginAccess();
  v2 = *(v1 + 200);
  *(v0 + 120) = MEMORY[0x277D84FA0];
  *(v0 + 136) = v2;
  v3 = *(v2 + 32);
  *(v0 + 240) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 56);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 144) = v6;
    *(v0 + 152) = v8;
    v10 = *(v0 + 128);
    v11 = *(v7 + 48);
    sub_22D84F590();
    sub_22D8507CC(v12);

    v13 = sub_22D84EB60();
    sub_22D8781D8(v13, v14);
    sub_22D8729B8();

    sub_22D872940();
    v15 = swift_task_alloc();
    v16 = sub_22D872970(v15);
    *v16 = v17;
    v18 = sub_22D84DEFC(v16);

    return sub_22D852B34(v18, v19);
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 64);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v21 = *(v0 + 128);

    sub_22D84E3C0();

    v22 = *(v21 + 208);
    sub_22D84C4A4();

    return v23();
  }
}

uint64_t sub_22D86AE08()
{
  sub_22D84D198();
  sub_22D84C734();
  sub_22D84C3C8();
  *v2 = v1;
  v4 = *(v3 + 184);
  v5 = *(v3 + 128);
  v6 = *v0;
  sub_22D84CED0();
  *v7 = v6;
  *(v9 + 192) = v8;

  v10 = sub_22D84D1EC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22D86AF00()
{
  sub_22D872924();
  v1 = v0[24];
  if (!v1)
  {
    if (qword_2814589E0 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_7;
  }

  v2 = *&v1[OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token];
  v0[25] = v2;
  if (v2)
  {
    sub_22D84DFA0(v0[16]);
    v3 = v2;
    v4 = swift_task_alloc();
    v0[26] = v4;
    *v4 = v0;
    v4[1] = sub_22D86B290;
    v5 = v0[20];
    v6 = v0[21];
    sub_22D853A14();

    return sub_22D863818();
  }

  else
  {
    if (qword_2814589E0 != -1)
    {
      sub_22D84DE60();
    }

    v29 = v0[21];
    v30 = sub_22D8B178C();
    sub_22D84DD10(v30, qword_281459298);

    v31 = sub_22D8B176C();
    sub_22D8B1C4C();
    sub_22D8538BC();
    v32 = sub_22D868510();
    v33 = v0[21];
    if (!v32)
    {

      goto LABEL_15;
    }

    v34 = v0[20];
    v35 = sub_22D84DD3C();
    v36 = sub_22D84CE7C();
    v44 = sub_22D8522FC(4.8149e-34, v36, v37, v38, v39, v40, v41, v42, v43, v36);

    *(v35 + 4) = v44;
    sub_22D84E1F0();
    _os_log_impl(v45, v46, v47, v48, v35, 0xCu);
    sub_22D84D8A0(v36);
    sub_22D8728AC();
    sub_22D84F8CC();

    while (1)
    {
      sub_22D872A18();
      v52 = v51 & v50;
      if (v52)
      {
        break;
      }

      while (!__OFADD__(v49, 1))
      {
        sub_22D855218();
        if (v54 == v55)
        {
          v67 = v0[16];
          v66 = v0[17];

          sub_22D84E3C0();

          v68 = *(v67 + 208);
          sub_22D84C4A4();
          sub_22D853A14();

          __asm { BRAA            X2, X16 }
        }

        sub_22D872A04();
        if (v52)
        {
          v49 = v56;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_30:
      sub_22D84DE60();
LABEL_7:
      v9 = v0[21];
      v10 = sub_22D8B178C();
      sub_22D84DD10(v10, qword_281459298);

      v11 = sub_22D8B176C();
      sub_22D8B1C4C();
      sub_22D8538BC();
      v12 = sub_22D868510();
      v13 = v0[21];
      if (v12)
      {
        v14 = v0[20];
        v15 = sub_22D84DD3C();
        v16 = sub_22D84CE7C();
        v24 = sub_22D8522FC(4.8149e-34, v16, v17, v18, v19, v20, v21, v22, v23, v16);

        *(v15 + 4) = v24;
        sub_22D84E1F0();
        _os_log_impl(v25, v26, v27, v28, v15, 0xCu);
        sub_22D84D8A0(v16);
        sub_22D8728AC();
        sub_22D84F8CC();
      }

      else
      {

LABEL_15:
      }
    }

    v53 = v0[17];
LABEL_23:
    v0[18] = v52;
    v0[19] = v49;
    v57 = v0[16];
    sub_22D8507CC((*(v53 + 48) + ((v49 << 10) | (16 * __clz(__rbit64(v52))))));

    v58 = sub_22D84EB60();
    sub_22D8781D8(v58, v59);
    sub_22D8729B8();

    sub_22D872940();
    v60 = swift_task_alloc();
    v61 = sub_22D872970(v60);
    *v61 = v62;
    sub_22D84DEFC();
    sub_22D853A14();

    return sub_22D852B34(v63, v64);
  }
}

uint64_t sub_22D86B290()
{
  sub_22D84D198();
  sub_22D84C734();
  sub_22D84C3C8();
  *v2 = v1;
  v4 = *(v3 + 208);
  v5 = *(v3 + 128);
  v6 = *v0;
  sub_22D84CED0();
  *v7 = v6;
  *(v9 + 216) = v8;
  *(v9 + 241) = v10;

  v11 = sub_22D84D1EC();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_22D86B38C()
{
  sub_22D84F8A0();
  v1 = *(v0 + 216);
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 224) = v3;
    *v3 = v0;
    v3[1] = sub_22D86B59C;
    v4 = *(v0 + 168);
    v5 = *(v0 + 176);
    sub_22D852280(*(v0 + 160));
    sub_22D8554C0();

    sub_22D874504();
  }

  else
  {
    v7 = *(v0 + 192);
    v8 = *(v0 + 200);
    if (*(v0 + 241) == 1)
    {
      v9 = *(v0 + 160);
      sub_22D84EB10();
      sub_22D8728E4();
      swift_endAccess();

      v10 = *(v0 + 112);
    }

    else
    {
      v11 = *(v0 + 168);
    }

    sub_22D872A18();
    v15 = v14 & v13;
    if (v15)
    {
      v16 = *(v0 + 136);
LABEL_15:
      *(v0 + 144) = v15;
      *(v0 + 152) = v12;
      v20 = *(v0 + 128);
      sub_22D8507CC((*(v16 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v15))))));

      v21 = sub_22D84EB60();
      sub_22D8781D8(v21, v22);
      sub_22D8729B8();

      sub_22D872940();
      v23 = swift_task_alloc();
      v24 = sub_22D872970(v23);
      *v24 = v25;
      sub_22D84DEFC();
      sub_22D8554C0();

      sub_22D852B34(v26, v27);
    }

    else
    {
      while (!__OFADD__(v12, 1))
      {
        sub_22D855218();
        if (v17 == v18)
        {
          v30 = *(v0 + 128);
          v29 = *(v0 + 136);

          sub_22D84E3C0();

          v31 = *(v30 + 208);
          sub_22D84C4A4();
          sub_22D8554C0();

          __asm { BRAA            X2, X16 }
        }

        sub_22D872A04();
        if (v15)
        {
          v12 = v19;
          goto LABEL_15;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_22D86B59C()
{
  sub_22D84D77C();
  sub_22D84C85C();
  sub_22D84F51C();
  *v4 = v3;
  v5 = *(v1 + 224);
  *v4 = *v2;
  *(v3 + 232) = v0;

  sub_22D853D4C();
  v7 = *(v6 + 128);
  sub_22D854F60();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_22D86B6B0()
{
  sub_22D872924();

  v4 = *(v0 + 216);
  if (*(v0 + 241))
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 200);
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v3 = (v0 + 112);
    sub_22D84EB10();
    sub_22D8728E4();
    swift_endAccess();
  }

  else
  {
    sub_22D87297C();
  }

  v7 = *v3;

  sub_22D872A18();
  v11 = v10 & v9;
  if (v11)
  {
    v12 = *(v0 + 136);
LABEL_11:
    *(v0 + 144) = v11;
    *(v0 + 152) = v8;
    v17 = *(v0 + 128);
    v18 = *(v12 + 48);
    sub_22D84F590();
    sub_22D8507CC(v19);

    v20 = sub_22D84EB60();
    sub_22D8781D8(v20, v21);
    sub_22D8729B8();

    sub_22D872940();
    v22 = swift_task_alloc();
    v23 = sub_22D872970(v22);
    *v23 = v24;
    sub_22D84DEFC();
    sub_22D853A14();

    sub_22D852B34(v25, v26);
  }

  else
  {
    while (!__OFADD__(v8, 1))
    {
      v12 = sub_22D872958();
      if (v15 == v16)
      {
        v28 = *(v0 + 128);

        sub_22D84E3C0();

        v29 = *(v28 + 208);
        sub_22D84C4A4();
        sub_22D853A14();

        __asm { BRAA            X2, X16 }
      }

      v11 = *(v12 + 8 * v14 + 56);
      v8 = v13 + 1;
      if (v11)
      {
        v8 = v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22D86B840()
{
  sub_22D872924();
  if (qword_2814589E0 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v4 = *(v0 + 232);
    v5 = sub_22D8B178C();
    sub_22D84DD10(v5, qword_281459298);
    v6 = v4;
    v7 = sub_22D8B176C();
    v8 = sub_22D8B1C4C();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 232);
    v11 = *(v0 + 216);
    if (v9)
    {
      sub_22D84DD3C();
      v2 = sub_22D84C600();
      *v1 = 138412290;
      v12 = v10;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v1 + 4) = v13;
      *v2 = v13;
      sub_22D855864(&dword_22D84A000, v14, v8, "attemptToInvalidatePendingAssetSets failed to update token: %@");
      sub_22D84F5C8(v2, &qword_27DA0D4D0, &qword_22D8B3400);
      sub_22D84F8CC();
      sub_22D84D6DC();
    }

    else
    {
    }

    v1 = *(v0 + 216);
    if (*(v0 + 241) == 1)
    {
      v2 = *(v0 + 192);
      v11 = *(v0 + 200);
      v16 = *(v0 + 160);
      v15 = *(v0 + 168);
      v3 = (v0 + 112);
      sub_22D84EB10();
      sub_22D8728E4();
      swift_endAccess();
    }

    else
    {
      sub_22D87297C();
    }

    v17 = *v3;

    sub_22D872A18();
    v21 = v20 & v19;
    if (v21)
    {
      break;
    }

    while (!__OFADD__(v18, 1))
    {
      v22 = sub_22D872958();
      if (v25 == v26)
      {
        v39 = *(v0 + 128);

        sub_22D84E3C0();

        v40 = *(v39 + 208);
        sub_22D84C4A4();
        sub_22D853A14();

        __asm { BRAA            X2, X16 }
      }

      v21 = *(v22 + 8 * v24 + 56);
      v18 = v23 + 1;
      if (v21)
      {
        v18 = v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_22:
    sub_22D84DE60();
  }

  v22 = *(v0 + 136);
LABEL_15:
  *(v0 + 144) = v21;
  *(v0 + 152) = v18;
  v27 = *(v0 + 128);
  v28 = *(v22 + 48);
  sub_22D84F590();
  sub_22D8507CC(v29);

  v30 = sub_22D84EB60();
  sub_22D8781D8(v30, v31);
  sub_22D8729B8();

  sub_22D872940();
  v32 = swift_task_alloc();
  v33 = sub_22D872970(v32);
  *v33 = v34;
  sub_22D84DEFC();
  sub_22D853A14();

  return sub_22D852B34(v35, v36);
}

uint64_t sub_22D86BAC4()
{
  v1 = v0;
  *(v0 + 208) = 1;
  v2 = *sub_22D84E124((v0 + 152), *(v0 + 176));

  sub_22D87C4BC(10.0, 0xD000000000000027, 0x800000022D8B80B0, &unk_22D8B3D88, v1);
}

uint64_t sub_22D86BC70()
{
  sub_22D84D77C();
  if (qword_2814589E0 != -1)
  {
    sub_22D84DE60();
  }

  v1 = sub_22D8B178C();
  sub_22D84DD10(v1, qword_281459298);
  v2 = sub_22D8B176C();
  v3 = sub_22D8B1C6C();
  if (sub_22D84CEE0(v3))
  {
    v4 = sub_22D85225C();
    sub_22D84C544(v4);
    sub_22D84C424(&dword_22D84A000, v5, v6, "Running scheduleInvalidationOfAssetSets background task event");
    sub_22D84DDE4();
  }

  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_22D86BD70;
  v8 = *(v0 + 16);

  return sub_22D86AC5C();
}

uint64_t sub_22D86BD70()
{
  sub_22D84D198();
  v2 = v1;
  sub_22D84C734();
  v4 = *(v3 + 24);
  v5 = *v0;
  sub_22D84CED0();
  *v6 = v5;

  sub_22D84C4A4();

  return v7(v2);
}

uint64_t sub_22D86BE58(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    sub_22D8580D8(&qword_27DA0D7E8, &qword_22D8B4A30);
    v2 = *(sub_22D8B0D8C() - 8);
    v3 = *(v2 + 72);
    v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    *(swift_allocObject() + 16) = xmmword_22D8B3740;
    sub_22D8B0CFC();
    sub_22D8B0D2C();
    if (qword_2814591E0 != -1)
    {
      sub_22D851E48();
    }

    v5 = sub_22D8B09AC();

    v6 = *(v5 + 16);
    if (v6)
    {
      v30 = MEMORY[0x277D84F90];
      sub_22D87B9A8(0, v6, 0);
      v7 = v30;
      v8 = v5 + 32;
      do
      {
        sub_22D84E298(v8, v29);
        v9 = sub_22D8B0C6C();
        v10 = sub_22D84D7DC(v9);
        v12 = v11;
        v14 = *(v13 + 64);
        MEMORY[0x28223BE20](v10);
        sub_22D84CFA4();
        v17 = v16 - v15;
        sub_22D84E124(v29, v29[3]);
        sub_22D84E0E8();
        sub_22D8B0E4C();
        v18 = sub_22D8B0C2C();
        v20 = v19;
        (*(v12 + 8))(v17, v9);
        sub_22D84D8A0(v29);
        v30 = v7;
        v22 = *(v7 + 16);
        v21 = *(v7 + 24);
        if (v22 >= v21 >> 1)
        {
          v24 = sub_22D84C4D0(v21);
          sub_22D87B9A8(v24, v22 + 1, 1);
          v7 = v30;
        }

        *(v7 + 16) = v22 + 1;
        v23 = v7 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v8 += 40;
        --v6;
      }

      while (v6);
    }

    else
    {

      v7 = MEMORY[0x277D84F90];
    }

    v25 = sub_22D851EAC(v7);

    sub_22D877A80(v25, v1);
    v27 = v26;

    v28 = *(v27 + 16);

    if (v28)
    {
      return sub_22D8B08BC();
    }
  }

  return result;
}

uint64_t sub_22D86C134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  return sub_22D84DC68(sub_22D86C154, v3);
}

uint64_t sub_22D86C154()
{
  sub_22D84D198();
  sub_22D84DFA0(v0[14]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_22D86C1EC;
  v2 = v0[12];
  v3 = v0[11];
  sub_22D852280(v0[13]);

  return sub_22D863818();
}

uint64_t sub_22D86C1EC()
{
  sub_22D84D198();
  sub_22D84C734();
  sub_22D84C3C8();
  *v2 = v1;
  v4 = *(v3 + 120);
  v5 = *(v3 + 112);
  v6 = *v0;
  sub_22D84CED0();
  *v7 = v6;
  *(v9 + 128) = v8;
  *(v9 + 160) = v10;

  v11 = sub_22D84D1EC();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22D86C2E8()
{
  sub_22D872924();
  if (qword_2814589E0 != -1)
  {
    sub_22D84DE60();
  }

  v2 = *(v0 + 96);
  v3 = sub_22D8B178C();
  *(v0 + 136) = sub_22D84DD10(v3, qword_281459298);

  v4 = sub_22D8B176C();
  sub_22D8B1C6C();
  sub_22D8538BC();
  if (sub_22D868510())
  {
    v1 = *(v0 + 88);
    v5 = *(v0 + 96);
    v6 = sub_22D84DD3C();
    v7 = sub_22D84CE7C();
    *(v6 + 4) = sub_22D8522FC(4.8149e-34, v7, v8, v9, v10, v11, v12, v13, v14, v7);
    sub_22D84E1F0();
    _os_log_impl(v15, v16, v17, v18, v6, 0xCu);
    sub_22D84D8A0(v7);
    sub_22D8728AC();
    sub_22D84F8CC();
  }

  v19 = *(v0 + 128);
  if (!v19)
  {
    if (*(v0 + 160) == 1)
    {
      sub_22D84C76C();

      sub_22D872904(v26, v27, v28, v29, v30, v31, v32, v33, v44);
      swift_endAccess();

      if (*(v1 + 208))
      {
        v34 = *(v0 + 136);
        v35 = sub_22D8B176C();
        v36 = sub_22D8B1C6C();
        if (sub_22D84CEE0(v36))
        {
          v37 = sub_22D85225C();
          sub_22D84C544(v37);
          sub_22D84C424(&dword_22D84A000, v38, v39, "Forcing invalidation of an asset set while invalidation task is pending, waiting for next invalidation attempt");
          sub_22D84DDE4();
        }
      }

      else
      {
        v40 = *(v0 + 112);
        sub_22D86BAC4();
      }
    }

    sub_22D84C4A4();
    v41 = *(v0 + 128);
    sub_22D8729A0();

    __asm { BRAA            X2, X16 }
  }

  v20 = *(*(v0 + 112) + 192);
  v21 = v19;
  v22 = swift_task_alloc();
  *(v0 + 144) = v22;
  *v22 = v0;
  v22[1] = sub_22D86C50C;
  v23 = *(v0 + 96);
  sub_22D852280(*(v0 + 88));
  sub_22D8729A0();

  return sub_22D874504();
}

uint64_t sub_22D86C50C()
{
  sub_22D84D77C();
  sub_22D84C85C();
  sub_22D84F51C();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  sub_22D853D4C();
  v7 = *(v6 + 112);
  sub_22D854F60();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22D86C620()
{
  sub_22D84F8A0();
  v1 = *(v0 + 128);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  sub_22D8580D8(&qword_27DA0D7E0, &unk_22D8B3D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D8B3470;
  *(inited + 32) = v3;
  *(inited + 40) = v2;

  v5 = sub_22D886710(inited);
  sub_22D86BE58(v5);

  if (*(v0 + 160) == 1)
  {
    sub_22D84C76C();

    sub_22D872904(v6, v7, v8, v9, v10, v11, v12, v13, v24);
    swift_endAccess();

    if (*(v3 + 208))
    {
      v14 = *(v0 + 136);
      v15 = sub_22D8B176C();
      v16 = sub_22D8B1C6C();
      if (sub_22D84CEE0(v16))
      {
        v17 = sub_22D85225C();
        sub_22D84C544(v17);
        sub_22D84C424(&dword_22D84A000, v18, v19, "Forcing invalidation of an asset set while invalidation task is pending, waiting for next invalidation attempt");
        sub_22D84DDE4();
      }
    }

    else
    {
      v20 = *(v0 + 112);
      sub_22D86BAC4();
    }
  }

  sub_22D84C4A4();
  v22 = *(v0 + 128);

  return v21(v22);
}

void sub_22D86C75C()
{
  sub_22D872924();
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = v2;
  v5 = sub_22D8B176C();
  v6 = sub_22D8B1C4C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 152);
  v9 = *(v0 + 128);
  if (v7)
  {
    sub_22D84DD3C();
    v10 = sub_22D84C600();
    *v1 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v12;
    *v10 = v12;
    sub_22D855864(&dword_22D84A000, v13, v6, "triggerInvalidationOfAssetSet failed to update token: %@");
    sub_22D84F5C8(v10, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84F8CC();
    sub_22D84D6DC();
  }

  else
  {
  }

  if (*(v0 + 160) == 1)
  {
    sub_22D84C76C();

    sub_22D872904(v14, v15, v16, v17, v18, v19, v20, v21, v32);
    swift_endAccess();

    if (*(v1 + 208))
    {
      v22 = *(v0 + 136);
      v23 = sub_22D8B176C();
      v24 = sub_22D8B1C6C();
      if (sub_22D84CEE0(v24))
      {
        v25 = sub_22D85225C();
        sub_22D84C544(v25);
        sub_22D84C424(&dword_22D84A000, v26, v27, "Forcing invalidation of an asset set while invalidation task is pending, waiting for next invalidation attempt");
        sub_22D84DDE4();
      }
    }

    else
    {
      v28 = *(v0 + 112);
      sub_22D86BAC4();
    }
  }

  sub_22D84C4A4();
  v29 = *(v0 + 128);
  sub_22D8729A0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_22D86C908()
{
  sub_22D84D77C();
  sub_22D84C85C();
  sub_22D84F51C();
  *v4 = v3;
  v5 = *(v1 + 112);
  v6 = *v2;
  sub_22D84C3C8();
  *v7 = v6;
  *(v9 + 120) = v8;
  *(v9 + 128) = v0;

  sub_22D853D4C();
  v11 = *(v10 + 32);
  sub_22D854F60();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22D86CA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  sub_22D852350();
  a21 = v24;
  a22 = v25;
  a20 = v22;
  if (qword_2814589E0 != -1)
  {
    sub_22D84DE60();
  }

  v26 = v22[15];
  v27 = v22[3];
  v28 = sub_22D8B178C();
  sub_22D84DD10(v28, qword_281459298);

  v29 = v26;
  v30 = sub_22D8B176C();
  v31 = sub_22D8B1C6C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = v22[15];
    v34 = v22[6];
    v33 = v22[7];
    v35 = v22[5];
    v50 = v22[2];
    v51 = v22[3];
    v36 = swift_slowAlloc();
    a11 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = [v32 uuid];
    sub_22D8B086C();

    sub_22D84DA58();
    sub_22D872394(v38, v39);
    sub_22D8B1F5C();
    v40 = sub_22D84E0F4();
    v41(v40);
    sub_22D84C63C(v37, v23, &a11);
    sub_22D84E0E8();

    *(v36 + 4) = v33;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_22D84C63C(v50, v51, &a11);
    sub_22D8532FC(&dword_22D84A000, v42, v43, "getConsistencyToken: found new token: %s for %s, updating store");
    swift_arrayDestroy();
    sub_22D84F8CC();
    sub_22D84D6DC();
  }

  v44 = swift_task_alloc();
  v22[17] = v44;
  *v44 = v22;
  v44[1] = sub_22D86CCA8;
  v45 = v22[15];
  v46 = v22[8];
  v47 = v22[3];
  sub_22D852280(v22[2]);
  sub_22D8728C8();

  return sub_22D874504();
}

uint64_t sub_22D86CC4C()
{
  sub_22D84D198();
  v1 = *(v0 + 128);
  v2 = *(v0 + 56);

  sub_22D84D800();

  return v3();
}

uint64_t sub_22D86CCA8()
{
  sub_22D84D77C();
  sub_22D84C85C();
  sub_22D84F51C();
  *v4 = v3;
  v5 = *(v1 + 136);
  *v4 = *v2;
  *(v3 + 144) = v0;

  sub_22D853D4C();
  v7 = *(v6 + 32);
  sub_22D854F60();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22D86CDBC()
{
  sub_22D84D198();
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);

  sub_22D84C4A4();

  return v3(v1);
}

uint64_t sub_22D86CE20()
{
  sub_22D84D198();

  v1 = *(v0 + 144);
  v2 = *(v0 + 56);

  sub_22D84D800();

  return v3();
}

uint64_t *sub_22D86CE84()
{
  sub_22D84D8A0(v0 + 14);
  sub_22D84D8A0(v0 + 19);
  v1 = v0[24];

  v2 = v0[25];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22D86CEC4()
{
  sub_22D86CE84();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_22D86CF4C()
{
  sub_22D8B1E2C();

  v0 = sub_22D8B0EAC();
  MEMORY[0x2318D4340](v0);

  return 0xD000000000000016;
}

uint64_t sub_22D86CFCC()
{
  type metadata accessor for UnifiedAssetInterface();
  v0 = swift_allocObject();
  type metadata accessor for BackgroundScheduler();
  v1 = swift_allocObject();

  v2 = sub_22D872170(v0, v1);

  qword_281459480 = v2;
  return result;
}

uint64_t sub_22D86D058()
{
  sub_22D84D198();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_22D84DD88(v1);

  return sub_22D84FAC0();
}

uint64_t sub_22D86D0E4()
{
  sub_22D84D198();
  v3 = v2;
  sub_22D84C734();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_22D84CED0();
  *v7 = v6;

  sub_22D84C4A4();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_22D86D1D0()
{
  sub_22D84D198();
  v1 = v0[30];
  swift_unknownObjectRelease();
  v2 = v0[33];
  v3 = v0[29];

  sub_22D84D800();

  return v4();
}

uint64_t sub_22D86D234()
{
  sub_22D84D198();
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[30];

  swift_unknownObjectRelease();
  v4 = v0[45];
  v5 = v0[29];

  sub_22D84D800();

  return v6();
}

uint64_t sub_22D86D2AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22D872894;

  return sub_22D86D058();
}

uint64_t sub_22D86D340@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v47 = a6;
  v48 = a7;
  v49 = a5;
  v50 = a1;
  v51 = a2;
  v52 = a4;
  v8 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  v9 = sub_22D84C3FC(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v46 = &v45 - v12;
  sub_22D8580D8(&qword_27DA0D7A8, &qword_22D8B3B60);
  v13 = sub_22D8B193C();
  v14 = *(a3 + 16);
  v15 = (a3 + 40);
  if (v14)
  {
    while (1)
    {
      v53 = v14;
      v17 = *(v15 - 1);
      v16 = *v15;
      v18 = v15;

      v19 = sub_22D8B08EC();
      if (!*(v19 + 16))
      {
        break;
      }

      v20 = sub_22D87294C();
      v22 = sub_22D852D10(v20, v21);
      if ((v23 & 1) == 0)
      {
        break;
      }

      v24 = *(*(v19 + 56) + 8 * v22);
      swift_bridgeObjectRetain_n();

      v25 = sub_22D8710E0(v52, v24);

      swift_isUniquelyReferenced_nonNull_native();
      v54 = v13;
      v26 = sub_22D87294C();
      v28 = sub_22D852D10(v26, v27);
      if (__OFADD__(v13[2], (v29 & 1) == 0))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        break;
      }

      v30 = v28;
      v31 = v29;
      sub_22D8580D8(&qword_27DA0D7F0, &qword_22D8B3DC0);
      if (sub_22D8B1EAC())
      {
        v32 = sub_22D87294C();
        v34 = sub_22D852D10(v32, v33);
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_20;
        }

        v30 = v34;
      }

      v13 = v54;
      if (v31)
      {
        v36 = v54[7];
        v37 = *(v36 + 8 * v30);
        *(v36 + 8 * v30) = v25;
      }

      else
      {
        v54[(v30 >> 6) + 8] |= 1 << v30;
        v38 = (v13[6] + 16 * v30);
        *v38 = v17;
        v38[1] = v16;
        *(v13[7] + 8 * v30) = v25;
        v39 = v13[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_18;
        }

        v13[2] = v41;
      }

      v15 = v18 + 2;
      v14 = v53 - 1;
      if (v53 == 1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_20:
    result = sub_22D8B1FBC();
    __break(1u);
  }

  else
  {
LABEL_13:
    v42 = sub_22D8B083C();
    v43 = v47;
    if (sub_22D84D0C0(v47, 1, v42) == 1)
    {
    }

    else
    {
      v54 = v50;
      v55 = v51;

      MEMORY[0x2318D4340](0x6E6972697078652DLL, 0xE900000000000067);
    }

    sub_22D8726CC(v43, v46, &qword_27DA0D608, &unk_22D8B3DB0);

    return sub_22D8B0F0C();
  }

  return result;
}

uint64_t *sub_22D86D65C(uint64_t a1)
{
  v3 = sub_22D8B073C();
  v4 = sub_22D84C3FC(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22D84CFA4();
  sub_22D8B09DC();
  sub_22D8B12CC();
  v7 = sub_22D8B091C();
  v8 = sub_22D8B09BC();
  v9 = *(v8 + 16);
  if (!v9)
  {

    goto LABEL_16;
  }

  v53 = a1;
  v54 = v1;
  v55 = v7;
  v56 = MEMORY[0x277D84F90];
  v52[1] = v8;
  v10 = v8 + 32;
  do
  {
    sub_22D84E298(v10, &v64);
    v11 = sub_22D8B0C6C();
    v12 = sub_22D84D7DC(v11);
    v14 = v13;
    v16 = *(v15 + 64);
    MEMORY[0x28223BE20](v12);
    sub_22D84CFA4();
    v59 = (v18 - v17);
    v19 = sub_22D8580D8(&qword_27DA0D800, &qword_22D8B3DD8);
    v66 = v52;
    v20 = sub_22D84C3FC(v19);
    v22 = *(v21 + 64);
    MEMORY[0x28223BE20](v20);
    v24 = v52 - v23;
    sub_22D84E298(&v64, v60);
    sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
    sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
    if (!swift_dynamicCast())
    {
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      sub_22D84D8A0(&v64);
      sub_22D84F5C8(&v61, &qword_27DA0D698, &qword_22D8B36C0);
      sub_22D84C4F8(v24, 1, 1, v11);
LABEL_11:
      sub_22D84F5C8(v24, &qword_27DA0D800, &qword_22D8B3DD8);
      goto LABEL_12;
    }

    v57 = v14;
    v58 = v52;
    sub_22D84E124(&v61, *(&v62 + 1));
    sub_22D8B0E4C();
    sub_22D84D8A0(&v64);
    sub_22D84C4F8(v24, 0, 1, v11);
    sub_22D84D8A0(&v61);
    if (sub_22D84D0C0(v24, 1, v11) == 1)
    {
      goto LABEL_11;
    }

    v25 = *(v57 + 32);
    v25(v59, v24, v11);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v26 = v56;
    }

    else
    {
      v30 = *(v56 + 16);
      sub_22D84C414();
      sub_22D88BCBC();
      v26 = v31;
    }

    v28 = *(v26 + 16);
    v27 = *(v26 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_22D84C4D0(v27);
      sub_22D88BCBC();
      v26 = v32;
    }

    *(v26 + 16) = v28 + 1;
    v29 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v56 = v26;
    v25(v26 + v29 + *(v57 + 72) * v28, v59, v11);
LABEL_12:
    v10 += 40;
    --v9;
  }

  while (v9);

  a1 = v53;
LABEL_16:
  MEMORY[0x28223BE20](v33);
  v52[-2] = a1;
  sub_22D887314(sub_22D8725E4, &v52[-4], v34);
  sub_22D8871C4();
  v36 = sub_22D869444(v35);

  v37 = sub_22D851EAC(v36);
  if (*(v37 + 16) == 1 && (v38 = sub_22D86DFCC(v37), v39))
  {
    v40 = v38;
  }

  else
  {
    v41 = sub_22D8B0A1C();
    sub_22D84C4B0(&qword_2814587A0);
    sub_22D84CE5C();
    v43 = v42;
    v64 = 0;
    v65 = 0xE000000000000000;
    v40 = &v64;
    sub_22D8B1E2C();

    sub_22D84F5A0();
    v64 = 0xD00000000000002CLL;
    v65 = v44;
    v45 = sub_22D8B1BFC();
    v47 = v46;

    MEMORY[0x2318D4340](v45, v47);

    v48 = v65;
    *v43 = v64;
    v43[1] = v48;
    v49 = *MEMORY[0x277D29A90];
    sub_22D84C5C4(v41);
    (*(v50 + 104))(v43);
    swift_willThrow();
  }

  return v40;
}

uint64_t sub_22D86DBC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22D8580D8(&qword_27DA0D808, &qword_22D8B3DE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = v26 - v5;
  v7 = sub_22D8B0C4C();
  MEMORY[0x28223BE20](v7);
  v8 = v26 - v5;
  v9 = sub_22D8B0EBC();
  v27 = *(v9 - 8);
  (*(v27 + 16))(v26 - v5, a2, v9);
  sub_22D84C4F8(v26 - v5, 0, 1, v9);
  v10 = sub_22D8580D8(&qword_27DA0D810, &qword_22D8B3DE8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v26 - v13;
  v15 = *(v12 + 56);
  sub_22D8726CC(v26 - v5, v26 - v13, &qword_27DA0D808, &qword_22D8B3DE0);
  sub_22D8726CC(v26 - v5, &v14[v15], &qword_27DA0D808, &qword_22D8B3DE0);
  v16 = sub_22D84D0C0(v14, 1, v9);
  if (v16 != 1)
  {
    v26[2] = v26;
    MEMORY[0x28223BE20](v16);
    v18 = v26 - v5;
    sub_22D8726CC(v14, v26 - v5, &qword_27DA0D808, &qword_22D8B3DE0);
    v19 = sub_22D84D0C0(&v14[v15], 1, v9);
    if (v19 != 1)
    {
      v26[1] = v26;
      v20 = v27;
      v21 = *(v27 + 64);
      MEMORY[0x28223BE20](v19);
      v23 = v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 32))(v23, &v14[v15], v9);
      sub_22D872730(&qword_281459200, MEMORY[0x282221A88]);
      v17 = sub_22D8B19AC();
      v24 = *(v20 + 8);
      v24(v23, v9);
      sub_22D84F5C8(v8, &qword_27DA0D808, &qword_22D8B3DE0);
      sub_22D84F5C8(v6, &qword_27DA0D808, &qword_22D8B3DE0);
      v24(v18, v9);
      sub_22D84F5C8(v14, &qword_27DA0D808, &qword_22D8B3DE0);
      return v17 & 1;
    }

    sub_22D84F5C8(v26 - v5, &qword_27DA0D808, &qword_22D8B3DE0);
    sub_22D84F5C8(v26 - v5, &qword_27DA0D808, &qword_22D8B3DE0);
    (*(v27 + 8))(v26 - v5, v9);
    goto LABEL_6;
  }

  sub_22D84F5C8(v26 - v5, &qword_27DA0D808, &qword_22D8B3DE0);
  sub_22D84F5C8(v26 - v5, &qword_27DA0D808, &qword_22D8B3DE0);
  if (sub_22D84D0C0(&v14[v15], 1, v9) != 1)
  {
LABEL_6:
    sub_22D84F5C8(v14, &qword_27DA0D810, &qword_22D8B3DE8);
    v17 = 0;
    return v17 & 1;
  }

  sub_22D84F5C8(v14, &qword_27DA0D808, &qword_22D8B3DE0);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_22D86DFCC(uint64_t a1)
{
  result = sub_22D872604(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_22D872644(result, v3, 0, a1);
  }
}

uint64_t sub_22D86E034()
{
  sub_22D84D198();
  v0[10] = v1;
  v0[11] = v2;
  v3 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  sub_22D84C3FC(v3);
  v5 = *(v4 + 64);
  v0[12] = sub_22D84C584();
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22D86E0BC()
{
  v1 = sub_22D86D65C(v0[11]);
  v3 = v2;
  v4 = v0[11];
  v5 = v0[12];
  v25 = v1;
  v26 = v0[10];
  sub_22D8580D8(&qword_27DA0D818, &qword_22D8B3DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D8B3470;
  sub_22D84F5A0();
  *(v7 + 32) = 0xD000000000000025;
  *(v7 + 40) = v8;
  *(inited + 48) = sub_22D86CF4C();
  *(inited + 56) = v9;
  v10 = sub_22D8B193C();
  v11 = sub_22D8B193C();
  v12 = sub_22D8B083C();
  sub_22D84C4F8(v5, 1, 1, v12);
  v13 = sub_22D8B0F3C();
  v0[13] = v13;
  v14 = *(v13 - 8);
  v0[14] = v14;
  v15 = *(v14 + 64);
  v16 = sub_22D84C584();
  v0[15] = v16;
  sub_22D86D340(v25, v3, MEMORY[0x277D84F90], v11, v10, v5, v16);

  v17 = sub_22D84E124(v26, v26[3]);
  sub_22D8B0DAC();
  v0[16] = v18;
  sub_22D8580D8(&qword_27DA0D820, &unk_22D8B3E00);
  v19 = *(v14 + 72);
  v20 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v21 = swift_allocObject();
  v0[17] = v21;
  *(v21 + 16) = xmmword_22D8B3470;
  (*(v14 + 16))(v21 + v20, v16, v13);
  v22 = *v17;
  v23 = swift_task_alloc();
  v0[18] = v23;
  *v23 = v0;
  sub_22D84E468(v23);

  return sub_22D865664();
}

uint64_t sub_22D86E3B0()
{
  sub_22D84D77C();
  v2 = v0;
  v3 = *v1;
  sub_22D84F51C();
  *v5 = v4;
  v6 = v3[18];
  *v5 = *v1;
  *(v4 + 152) = v2;

  v7 = v3[17];
  v8 = v3[16];

  swift_setDeallocating();
  sub_22D870E80();
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22D86E4FC()
{
  sub_22D84D198();
  v1 = sub_22D8729D0();
  v2(v1);
  sub_22D84F5C8(v0, &qword_27DA0D608, &unk_22D8B3DB0);

  sub_22D84D800();

  return v3();
}

uint64_t sub_22D86E588()
{
  sub_22D84D198();
  v2 = sub_22D8729D0();
  v3(v2);
  sub_22D84F5C8(v0, &qword_27DA0D608, &unk_22D8B3DB0);

  v4 = *(v1 + 152);
  v5 = *(v1 + 96);

  sub_22D84D800();

  return v6();
}

uint64_t sub_22D86E614(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 112) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 64) = a1;
  return sub_22D84DC68(sub_22D86E638, 0);
}

uint64_t sub_22D86E638()
{
  sub_22D84D77C();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  sub_22D8580D8(&qword_27DA0D7E0, &unk_22D8B3D70);
  inited = swift_initStackObject();
  *(v0 + 88) = inited;
  *(inited + 16) = xmmword_22D8B3470;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_22D86E718;
  v5 = *(v0 + 112);
  v6 = sub_22D852280(*(v0 + 64));

  return sub_22D86E8A4(v6, inited, v7);
}

uint64_t sub_22D86E718()
{
  sub_22D84D198();
  sub_22D84C734();
  v3 = v2;
  sub_22D84F51C();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_22D84CED0();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (v0)
  {
    sub_22D84C3F0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 88);
    swift_setDeallocating();
    sub_22D870EF8();
    sub_22D84D800();

    return v13();
  }
}

uint64_t sub_22D86E840()
{
  sub_22D84D198();
  v1 = *(v0 + 88);
  swift_setDeallocating();
  sub_22D870EF8();
  sub_22D84D800();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t sub_22D86E8A4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 56) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return sub_22D84DC68(sub_22D86E8C4, 0);
}

uint64_t sub_22D86E8C4()
{
  sub_22D852350();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v17 = MEMORY[0x277D84F90];
    sub_22D87B9A8(0, v2, 0);
    v3 = v17;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      if (*(v0 + 56) == 1)
      {
        v18 = *(v4 - 1);
        v19 = *v4;
        swift_bridgeObjectRetain_n();
        MEMORY[0x2318D4340](0x6E6972697078652DLL, 0xE900000000000067);

        v6 = v18;
      }

      else
      {
        v7 = *v4;
      }

      v9 = *(v17 + 16);
      v8 = *(v17 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_22D87B9A8(v8 > 1, v9 + 1, 1);
      }

      *(v17 + 16) = v9 + 1;
      v10 = v17 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v5;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  *(v0 + 32) = v3;
  v11 = sub_22D84E124(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_22D8B0DAC();
  *(v0 + 40) = v12;
  v13 = *v11;
  v14 = swift_task_alloc();
  *(v0 + 48) = v14;
  *v14 = v0;
  sub_22D84DD88(v14);
  sub_22D8728C8();

  return sub_22D8667B4();
}

uint64_t sub_22D86EA68()
{
  sub_22D84D77C();
  sub_22D84C734();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = *v0;
  sub_22D84CED0();
  *v6 = v5;

  sub_22D84D800();

  return v7();
}

uint64_t sub_22D86EB88(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_22D84DC68(sub_22D86EBA4, 0);
}

uint64_t sub_22D86EBA4()
{
  sub_22D872924();
  v1 = sub_22D86D65C(v0[3]);
  v3 = v2;
  v16 = MEMORY[0x277D84F90];
  sub_22D87B9A8(0, 1, 0);
  v4 = v16;
  v6 = *(v16 + 16);
  v5 = *(v16 + 24);
  if (v6 >= v5 >> 1)
  {
    v15 = sub_22D84C4D0(v5);
    sub_22D87B9A8(v15, v6 + 1, 1);
    v4 = v16;
  }

  v0[4] = v4;
  v7 = v0[2];
  *(v4 + 16) = v6 + 1;
  v8 = v4 + 16 * v6;
  *(v8 + 32) = v1;
  *(v8 + 40) = v3;
  v9 = sub_22D84E124(v7, v7[3]);
  sub_22D8B0DAC();
  v0[5] = v10;
  v11 = *v9;
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  sub_22D84DD88(v12);
  sub_22D8729A0();

  return sub_22D8667B4();
}

uint64_t sub_22D86ED14()
{
  sub_22D84D77C();
  sub_22D84C734();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = *v0;
  sub_22D84CED0();
  *v6 = v5;

  sub_22D84D800();

  return v7();
}

uint64_t sub_22D86EE34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v5 = v4;
  v99 = a2;
  v9 = sub_22D8B09BC();
  v101 = a1;
  v10 = sub_22D86A4FC(sub_22D872778, v100, v9);

  sub_22D8580D8(&qword_27DA0D828, &unk_22D8B4DB0);
  result = sub_22D8B193C();
  v12 = 0;
  v104 = result;
  v13 = *(v10 + 16);
  for (i = v10 + 32; ; i += 40)
  {
    if (v13 == v12)
    {
      v92 = a3;
      v91 = a4;
      v95 = a1;

      v15 = v104;
      v16 = v104 + 64;
      v17 = 1 << *(v104 + 32);
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v19 = v18 & *(v104 + 64);
      v20 = (v17 + 63) >> 6;

      v21 = 0;
      v93 = v20;
      v94 = v16;
      v97 = v15;
LABEL_10:
      if (!v19)
      {
        while (1)
        {
          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_42;
          }

          if (v22 >= v20)
          {

            v48 = sub_22D8B193C();
            v49 = MEMORY[0x28223BE20](v48);
            v88 = v99;
            v89 = v95;
            sub_22D869778(v49, sub_22D872794, v87, v15);

            if (!v5)
            {
              v50 = sub_22D8B0E1C();
              v99 = &v90;
              v51 = sub_22D84D7DC(v50);
              v53 = v52;
              v55 = *(v54 + 64);
              MEMORY[0x28223BE20](v51);
              sub_22D84CFA4();
              v58 = v57 - v56;
              sub_22D8B0E2C();

              v59 = sub_22D8B0D1C();
              v60 = sub_22D879550(v59);

              if (v60)
              {
                v98 = v50;
                v102 = sub_22D8B0DEC();
                v103 = v61;
                MEMORY[0x28223BE20](v102);
                v88 = &v102;
                v62 = sub_22D855C1C(sub_22D8727B0, v87, v60);

                if (v62)
                {
                  (*(v53 + 32))(v91, v58, v98);
                }

                else
                {
                  v97 = sub_22D8B0A1C();
                  sub_22D84C4B0(&qword_2814587A0);
                  sub_22D872898();
                  swift_allocError();
                  v80 = v79;
                  sub_22D84DB54();
                  sub_22D8B1E2C();
                  v81 = sub_22D8B0DEC();
                  MEMORY[0x2318D4340](v81);

                  MEMORY[0x2318D4340](0xD000000000000026, 0x800000022D8B8220);
                  v82 = sub_22D8B0D1C();
                  MEMORY[0x2318D4340](v82);

                  MEMORY[0x2318D4340](0xD000000000000013, 0x800000022D8B8250);
                  MEMORY[0x2318D43B0](v60, MEMORY[0x277D837D0]);

                  v83 = sub_22D8729E4();
                  MEMORY[0x2318D4340](v83);

                  v84 = v103;
                  *v80 = v102;
                  v80[1] = v84;
                  v85 = *MEMORY[0x277D29A88];
                  sub_22D84C5C4(v97);
                  (*(v86 + 104))(v80);
                  swift_willThrow();
                  return (*(v53 + 8))(v58, v98);
                }
              }

              else
              {
                v63 = sub_22D8B0A1C();
                sub_22D84C4B0(&qword_2814587A0);
                sub_22D84CE5C();
                v65 = v64;
                sub_22D84DB54();
                sub_22D8B1E2C();

                sub_22D84F5A0();
                v102 = 0xD000000000000014;
                v103 = v66;
                v67 = sub_22D8B0D1C();
                MEMORY[0x2318D4340](v67);

                MEMORY[0x2318D4340](0xD00000000000001BLL, 0x800000022D8B8200);
                v68 = v103;
                *v65 = v102;
                v65[1] = v68;
                v69 = *MEMORY[0x277D29A88];
                sub_22D84C5C4(v63);
                (*(v70 + 104))(v65);
                swift_willThrow();
                return (*(v53 + 8))(v58, v50);
              }
            }

            return result;
          }

          v19 = *(v16 + 8 * v22);
          ++v21;
          if (v19)
          {
            v21 = v22;
            break;
          }
        }
      }

      v23 = __clz(__rbit64(v19)) | (v21 << 6);
      v24 = (*(v15 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v15 + 56) + 8 * v23);
      v28 = v99[2];

      if (v28)
      {

        v29 = sub_22D852D10(v25, v26);
        if (v30)
        {
          v96 = v25;
          v98 = v26;
          v31 = (v99[7] + 16 * v29);
          v33 = *v31;
          v32 = v31[1];
          if (*(v27 + 16))
          {
            v19 &= v19 - 1;
            v34 = *(v27 + 40);
            sub_22D8B201C();

            sub_22D8B1A6C();
            v35 = sub_22D8B205C();
            v36 = ~(-1 << *(v27 + 32));
            while (1)
            {
              v37 = v35 & v36;
              if (((*(v27 + 56 + (((v35 & v36) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v35 & v36)) & 1) == 0)
              {
                break;
              }

              v38 = (*(v27 + 48) + 16 * v37);
              if (*v38 != v33 || v38[1] != v32)
              {
                v40 = sub_22D8B1F8C();
                v35 = v37 + 1;
                if ((v40 & 1) == 0)
                {
                  continue;
                }
              }

              v15 = v97;
              v20 = v93;
              v16 = v94;
              goto LABEL_10;
            }
          }

          else
          {
          }

          v41 = sub_22D8B0A1C();
          sub_22D84C4B0(&qword_2814587A0);
          sub_22D84CE5C();
          v43 = v42;
          sub_22D84DB54();
          sub_22D8B1E2C();
          MEMORY[0x2318D4340](0xD000000000000018, 0x800000022D8B81A0);
          MEMORY[0x2318D4340](v33, v32);

          MEMORY[0x2318D4340](0xD00000000000001FLL, 0x800000022D8B8180);
          v44 = sub_22D8B0D1C();
          MEMORY[0x2318D4340](v44);

          MEMORY[0x2318D4340](0xD000000000000010, 0x800000022D8B81C0);
          MEMORY[0x2318D4340](v96, v98);

          v45 = v103;
          *v43 = v102;
          v43[1] = v45;
          v46 = *MEMORY[0x277D29A88];
          sub_22D84C5C4(v41);
          (*(v47 + 104))(v43);
          swift_willThrow();
        }

        v71 = v25;
      }

      else
      {
        v71 = v25;
      }

      v72 = sub_22D8B0A1C();
      sub_22D84C4B0(&qword_2814587A0);
      sub_22D84CE5C();
      v74 = v73;
      sub_22D84DB54();
      sub_22D8B1E2C();
      MEMORY[0x2318D4340](0xD00000000000001BLL, 0x800000022D8B8160);
      MEMORY[0x2318D4340](v71, v26);

      MEMORY[0x2318D4340](0xD00000000000001FLL, 0x800000022D8B8180);
      v75 = sub_22D8B0D1C();
      MEMORY[0x2318D4340](v75);

      v76 = v103;
      *v74 = v102;
      v74[1] = v76;
      v77 = *MEMORY[0x277D29A88];
      sub_22D84C5C4(v72);
      (*(v78 + 104))(v74);
      swift_willThrow();
    }

    if (v12 >= *(v10 + 16))
    {
      break;
    }

    sub_22D84E298(i, &v102);
    sub_22D86FAC8(&v104, &v102);
    if (v4)
    {

      sub_22D84D8A0(&v102);
    }

    ++v12;
    result = sub_22D84D8A0(&v102);
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_22D86F7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32[7] = a2;
  sub_22D84E298(a1, v31);
  sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
  sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
  if (swift_dynamicCast())
  {
    v23 = a3;
    v24 = v3;
    sub_22D851550(v29, v32);
    v5 = v32[4];
    sub_22D84E124(v32, v32[3]);
    v6 = *(v5 + 8);
    v7 = sub_22D8B0A7C();
    v8 = sub_22D8B12BC();
    v22[1] = v22;
    v9 = *(v8 - 8);
    v10 = *(v9 + 64);
    result = MEMORY[0x28223BE20](v8);
    v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = 0;
    v27 = *(v7 + 16);
    v28 = v7;
    v25 = v9 + 8;
    v26 = v9 + 16;
    while (1)
    {
      if (v27 == v14)
      {

        v21 = v23;
        *(v23 + 32) = 0;
        *v21 = 0u;
        v21[1] = 0u;
        return sub_22D84D8A0(v32);
      }

      if (v14 >= *(v28 + 16))
      {
        break;
      }

      (*(v9 + 16))(v13, v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14++, v8);
      v15 = sub_22D8B0D8C();
      v16 = *(v15 - 8);
      v17 = *(v16 + 64);
      MEMORY[0x28223BE20](v15);
      v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_22D8B127C();
      (*(v9 + 8))(v13, v8);
      v20 = sub_22D8B0D0C();
      result = (*(v16 + 8))(v19, v15);
      if (v20)
      {

        sub_22D84E298(v32, v23);
        return sub_22D84D8A0(v32);
      }
    }

    __break(1u);
  }

  else
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    result = sub_22D84F5C8(v29, &qword_27DA0D698, &qword_22D8B36C0);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22D86FAC8(void *a1, void *a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = a2;
  v6 = a2[4];
  sub_22D84E124(a2, a2[3]);
  v7 = *(v6 + 8);
  v8 = sub_22D8B0A4C();
  v9 = sub_22D879550(v8);

  if (v9)
  {
    v10 = v9 + 64;
    v11 = 1 << *(v9 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v9 + 64);
    isUniquelyReferenced_nonNull_native = ((v11 + 63) >> 6);

    v14 = 0;
    v95 = a1;
    v83 = v9 + 64;
    v82 = isUniquelyReferenced_nonNull_native;
    v85 = v3;
    v84 = v9;
    if (v13)
    {
LABEL_6:
      v15 = v14;
LABEL_10:
      v87 = v15;
      v88 = (v13 - 1) & v13;
      v16 = *(*(v9 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v13)))));
      v17 = *(v16 + 64);
      v90 = v16 + 64;
      v18 = 1 << *(v16 + 32);
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v20 = v19 & v17;
      v21 = sub_22D8580D8(&qword_27DA0D830, &unk_22D8B3E10);
      v86 = &v81;
      v93 = *(*(v21 - 8) + 64);
      MEMORY[0x28223BE20](v21 - 8);
      v91 = v16;
      v92 = v22;
      v94 = &v81 - v22;
      v89 = (v18 + 63) >> 6;
      v23 = swift_bridgeObjectRetain_n();
      v24 = 0;
      while (1)
      {
        MEMORY[0x28223BE20](v23);
        v25 = &v81 - v92;
        if (!v20)
        {
          isUniquelyReferenced_nonNull_native = v94;
          while (1)
          {
            v26 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v26 >= v89)
            {
              v61 = sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
              sub_22D84C4F8(v25, 1, 1, v61);
              v20 = 0;
              goto LABEL_22;
            }

            v20 = *(v90 + 8 * v26);
            ++v24;
            if (v20)
            {
              v100 = &v81;
              v24 = v26;
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v100 = &v81;
        v26 = v24;
LABEL_21:
        v27 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v28 = v27 | (v26 << 6);
        v29 = sub_22D8B122C();
        v99 = &v81;
        v30 = *(v29 - 8);
        v31 = *(v30 + 64);
        MEMORY[0x28223BE20](v29);
        v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
        v34 = v91;
        (*(v30 + 16))(v33, *(v91 + 48) + *(v35 + 72) * v28, v29);
        v36 = *(*(v34 + 56) + 8 * v28);
        v37 = sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
        v38 = *(v37 + 48);
        (*(v30 + 32))(v25, v33, v29);
        *&v25[v38] = v36;
        sub_22D84C4F8(v25, 0, 1, v37);

        isUniquelyReferenced_nonNull_native = v94;
        a1 = v95;
LABEL_22:
        sub_22D8727D0(v25, isUniquelyReferenced_nonNull_native);
        v39 = sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
        if (sub_22D84D0C0(isUniquelyReferenced_nonNull_native, 1, v39) == 1)
        {

          v14 = v87;
          v13 = v88;
          v9 = v84;
          v10 = v83;
          isUniquelyReferenced_nonNull_native = v82;
          if (!v88)
          {
            break;
          }

          goto LABEL_6;
        }

        v40 = sub_22D8B122C();
        v41 = *(v40 - 8);
        v42 = *(v41 + 64);
        MEMORY[0x28223BE20](v40);
        v44 = &v81 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
        v98 = *(isUniquelyReferenced_nonNull_native + *(v39 + 48));
        (*(v41 + 32))(v44, isUniquelyReferenced_nonNull_native, v40);
        v45 = sub_22D8B121C();
        v46 = *a1;
        v47 = sub_22D879550(v45);

        v96 = v40;
        v97 = &v81;
        v100 = v41;
        if (v47)
        {
        }

        else
        {
          sub_22D8B121C();
          v48 = *a1;
          swift_isUniquelyReferenced_nonNull_native();
          v101 = *a1;
          sub_22D8AD510();

          *a1 = v101;
        }

        v99 = v44;
        v49 = sub_22D8B121C();
        v51 = v50;
        v52 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = *a1;
        v53 = v101;
        v54 = sub_22D852D10(v49, v51);
        if (__OFADD__(*(v53 + 16), (v55 & 1) == 0))
        {
          goto LABEL_45;
        }

        v56 = v54;
        v57 = v55;
        sub_22D8580D8(&unk_27DA0D840, &qword_22D8B3E20);
        if (sub_22D8B1EAC())
        {
          v58 = sub_22D852D10(v49, v51);
          if ((v57 & 1) != (v59 & 1))
          {
            result = sub_22D8B1FBC();
            __break(1u);
            return result;
          }

          v56 = v58;
        }

        if ((v57 & 1) == 0)
        {
          goto LABEL_46;
        }

        v105 = *(*(v101 + 56) + 8 * v56);
        sub_22D8936FC(v98);
        v60 = v105;
        if (v105)
        {

          *(*(v101 + 56) + 8 * v56) = v60;
        }

        else
        {

          sub_22D872840(*(v101 + 48) + 16 * v56);
          sub_22D8580D8(&qword_27DA0D828, &unk_22D8B4DB0);
          sub_22D8B1EBC();
        }

        (v100[1])(v99, v96);

        a1 = v95;
        *v95 = v101;
      }
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= isUniquelyReferenced_nonNull_native)
      {
      }

      v13 = *(v10 + 8 * v15);
      ++v14;
      if (v13)
      {
        goto LABEL_10;
      }
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (qword_2814589E0 != -1)
  {
LABEL_48:
    swift_once();
  }

  v63 = sub_22D8B178C();
  sub_22D84C6FC(v63, qword_281459298);
  sub_22D84E298(isUniquelyReferenced_nonNull_native, &v101);
  v64 = sub_22D8B176C();
  v65 = sub_22D8B1C4C();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v105 = v67;
    *v66 = 136315138;
    v68 = v104;
    sub_22D84E124(&v101, v103);
    v69 = *(v68 + 8);
    v70 = sub_22D8B0A4C();
    v72 = v71;
    sub_22D84D8A0(&v101);
    v73 = sub_22D84C63C(v70, v72, &v105);

    *(v66 + 4) = v73;
    _os_log_impl(&dword_22D84A000, v64, v65, "Resource '%s' does not have a corresponding variant resolver mapping", v66, 0xCu);
    sub_22D84D8A0(v67);
    MEMORY[0x2318D50E0](v67, -1, -1);
    MEMORY[0x2318D50E0](v66, -1, -1);
  }

  else
  {

    sub_22D84D8A0(&v101);
  }

  v74 = sub_22D8B0A1C();
  sub_22D872730(&qword_2814587A0, MEMORY[0x2822218B8]);
  swift_allocError();
  v76 = v75;
  v101 = 0;
  v102 = 0xE000000000000000;
  sub_22D8B1E2C();
  MEMORY[0x2318D4340](0x656372756F736552, 0xEA00000000002720);
  v77 = isUniquelyReferenced_nonNull_native[4];
  sub_22D84E124(isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native[3]);
  v78 = *(v77 + 8);
  v79 = sub_22D8B0A4C();
  MEMORY[0x2318D4340](v79);

  MEMORY[0x2318D4340](0xD000000000000038, 0x800000022D8B82B0);
  v80 = v102;
  *v76 = v101;
  v76[1] = v80;
  (*(*(v74 - 8) + 104))(v76, *MEMORY[0x277D29A88], v74);
  return swift_willThrow();
}

uint64_t sub_22D870454(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  sub_22D872E58(*a2, v6, a3);
  if (v7)
  {

    result = sub_22D872E58(v5, v6, a3);
    if (v9)
    {
      v10 = *a1;
      swift_isUniquelyReferenced_nonNull_native();
      v16 = *a1;
      result = sub_22D8AD400();
      *a1 = v16;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = sub_22D8B0A1C();
    sub_22D872730(&qword_2814587A0, MEMORY[0x2822218B8]);
    swift_allocError();
    v13 = v12;
    sub_22D8B1E2C();
    MEMORY[0x2318D4340](0xD000000000000016, 0x800000022D8B8270);
    MEMORY[0x2318D4340](v5, v6);
    MEMORY[0x2318D4340](0xD00000000000001FLL, 0x800000022D8B8180);
    v14 = sub_22D8B0D1C();
    MEMORY[0x2318D4340](v14);

    MEMORY[0x2318D4340](0xD000000000000012, 0x800000022D8B8290);
    v15 = sub_22D8B192C();
    MEMORY[0x2318D4340](v15);

    MEMORY[0x2318D4340](46, 0xE100000000000000);
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D29A88], v11);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22D87069C()
{
  sub_22D84D198();
  v11 = *MEMORY[0x277D85DE8];
  v0[14] = v1;
  v0[15] = v2;
  v3 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  sub_22D84C3FC(v3);
  v5 = *(v4 + 64) + 15;
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22D870764()
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    sub_22D87BB0C(0, v2, 0);
    v3 = v34;
    v33 = sub_22D8B0E1C();
    v27 = v1 + ((*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80));
    v28 = *(v33 - 8);
    v4 = 0;
    v26 = sub_22D8B0F3C();
    sub_22D84D7DC(v26);
    v24 = *(v5 + 64) + 15;
    v25 = v6;
    do
    {
      v30 = *(v29 + 136);
      v32 = *(v29 + 128);
      v31 = swift_task_alloc();
      v7 = *(v28 + 64);
      v8 = sub_22D84C584();
      (*(v28 + 16))(v8, v27 + *(v28 + 72) * v4, v33);
      sub_22D8580D8(&qword_27DA0D818, &qword_22D8B3DF8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22D8B3740;
      *(inited + 32) = sub_22D8B0DDC();
      *(inited + 40) = v10;
      *(inited + 48) = sub_22D8B0DEC();
      *(inited + 56) = v11;
      *(inited + 64) = sub_22D8B0DFC();
      *(inited + 72) = v12;
      *(inited + 80) = sub_22D8B0DEC();
      *(inited + 88) = v13;
      sub_22D8B193C();
      sub_22D8B0DBC();
      sub_22D87294C();
      sub_22D8B193C();
      v14 = sub_22D8B083C();
      sub_22D84C4F8(v30, 1, 1, v14);
      sub_22D8580D8(&qword_27DA0D7A8, &qword_22D8B3B60);
      sub_22D87294C();
      sub_22D8B193C();

      sub_22D8726CC(v30, v32, &qword_27DA0D608, &unk_22D8B3DB0);
      sub_22D8B0F0C();
      (*(v28 + 8))(v8, v33);
      sub_22D84F5C8(v30, &qword_27DA0D608, &unk_22D8B3DB0);

      v16 = *(v34 + 16);
      v15 = *(v34 + 24);
      if (v16 >= v15 >> 1)
      {
        v17 = sub_22D84C4D0(v15);
        sub_22D87BB0C(v17, v16 + 1, 1);
      }

      ++v4;
      *(v34 + 16) = v16 + 1;
      (*(v25 + 32))(v34 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v16, v31, v26);
    }

    while (v2 != v4);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  *(v29 + 144) = v3;
  v18 = sub_22D84E124(*(v29 + 112), *(*(v29 + 112) + 24));
  sub_22D8B0DAC();
  *(v29 + 152) = v19;
  v20 = *v18;
  v21 = swift_task_alloc();
  *(v29 + 160) = v21;
  *v21 = v29;
  v21[1] = sub_22D870BA0;
  v22 = *MEMORY[0x277D85DE8];

  return sub_22D865664();
}

void sub_22D870BA0()
{
  sub_22D84F8A0();
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v5 = *(*v0 + 128);
  v6 = *v0;
  sub_22D84CED0();
  *v7 = v6;

  sub_22D84D800();
  v8 = *MEMORY[0x277D85DE8];
  sub_22D8554C0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22D870D80(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_22D870E0C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_22D870E54(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_22D8B1AFC();
  }

  return result;
}

uint64_t sub_22D870E80()
{
  v1 = *(*(sub_22D8B0F3C() - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_22D870EF8()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_22D870F3C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22D8B1D5C();

  return sub_22D870F80(a1, v5);
}

unint64_t sub_22D870F80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_22D8B113C();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_22D8B1D6C();

    if (v8)
    {
      break;
    }
  }

  return i;
}

void *sub_22D871040(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_22D8712A4(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_22D8710E0(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v4 = sub_22D871040(v13, v7, v4, a2);
      MEMORY[0x2318D50E0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v8);
  v9 = v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22D88C8E8(0, v7, v9);

  v10 = sub_22D8712A4(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_22D8712A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v24 = result;
  v25 = (a4 + 40);
LABEL_4:
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(a4 + 16) + 1;
    v18 = v25;
    while (1)
    {
      v19 = v18 + 2;
      if (!--v17)
      {
        break;
      }

      result = *(v18 - 1);
      if (result != v15 || *v18 != v16)
      {
        result = sub_22D8B1F8C();
        v18 = v19;
        if ((result & 1) == 0)
        {
          continue;
        }
      }

      *(v24 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (!__OFADD__(v28++, 1))
      {
        goto LABEL_4;
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
LABEL_21:
      v22 = sub_22D87142C(v24, a2, v28, a3);

      return v22;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D87142C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_22D8580D8(&qword_27DA0D7F8, &qword_22D8B3DC8);
  result = sub_22D8B1F3C();
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
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 16 * v16);
    v22 = v21[1];
    v36 = *v21;
    v23 = *(v9 + 40);
    sub_22D8B201C();

    sub_22D8B1A6C();
    result = sub_22D8B205C();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v9 + 48) + 16 * v27);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + 16 * v27);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22D871674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v71 = sub_22D8B06AC();
  v6 = *(v71 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v71);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D8B073C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v67 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = &v62 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v62 - v17;
  v76 = type metadata accessor for UnifiedAssetInterface();
  v77 = &off_2840E33F0;
  *&v75 = a2;
  swift_defaultActor_initialize();
  v66 = OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_record;
  *(a3 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_record) = 0;
  v63 = v11;
  v19 = *(v11 + 16);
  v68 = a3;
  v69 = v19;
  v73 = v10;
  v70 = v11 + 16;
  v19((a3 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_tokenStoreBaseURL), a1, v10);
  v20 = objc_opt_self();
  v21 = [v20 defaultManager];
  v72 = a1;
  sub_22D8B070C();
  v22 = sub_22D8B19CC();

  LOBYTE(a2) = [v21 fileExistsAtPath_];

  if ((a2 & 1) == 0)
  {
    if (qword_2814589E0 != -1)
    {
      swift_once();
    }

    v23 = sub_22D8B178C();
    sub_22D84C6FC(v23, qword_281459298);
    v24 = sub_22D8B176C();
    v25 = sub_22D8B1C6C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22D84A000, v24, v25, "CoherenceTokenStore: createTokenStore, creating base directory", v26, 2u);
      MEMORY[0x2318D50E0](v26, -1, -1);
    }

    v27 = [v20 defaultManager];
    v28 = sub_22D8B06CC();
    v74[0] = 0;
    v29 = [v27 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:v74];

    if (v29)
    {
      v30 = v74[0];
    }

    else
    {
      v31 = v74[0];
      v32 = sub_22D8B069C();

      swift_willThrow();
      v33 = sub_22D8B176C();
      v34 = sub_22D8B1C6C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_22D84A000, v33, v34, "CoherenceTokenStore: init, could not create base directory", v35, 2u);
        MEMORY[0x2318D50E0](v35, -1, -1);
      }
    }
  }

  v64 = type metadata accessor for CoherenceTokenStore();
  v74[0] = sub_22D872FE8();
  v74[1] = v36;
  v37 = v71;
  (*(v6 + 104))(v9, *MEMORY[0x277CC91D8], v71);
  sub_22D872340();
  sub_22D8B072C();
  (*(v6 + 8))(v9, v37);

  if (qword_2814589E0 != -1)
  {
    swift_once();
  }

  v38 = sub_22D8B178C();
  sub_22D84C6FC(v38, qword_281459298);
  v39 = v65;
  v71 = v18;
  v69(v65, v18, v73);
  v40 = sub_22D8B176C();
  v41 = sub_22D8B1C6C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v74[0] = v43;
    *v42 = 136315138;
    sub_22D872394(&qword_281459230, MEMORY[0x277CC9260]);
    v44 = v63;
    v45 = v73;
    v46 = sub_22D8B1F5C();
    v48 = v47;
    v65 = *(v44 + 8);
    (v65)(v39, v45);
    v49 = sub_22D84C63C(v46, v48, v74);

    *(v42 + 4) = v49;
    _os_log_impl(&dword_22D84A000, v40, v41, "Instantiating CoherenceTokenStore url: %s ", v42, 0xCu);
    sub_22D84D8A0(v43);
    MEMORY[0x2318D50E0](v43, -1, -1);
    MEMORY[0x2318D50E0](v42, -1, -1);
  }

  else
  {

    v65 = *(v63 + 8);
    (v65)(v39, v73);
  }

  v50 = OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_tokenStoreURL;
  v51 = v68;
  v52 = v69;
  v53 = v73;
  v69((v68 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_tokenStoreURL), v71, v73);
  v54 = v67;
  v52(v67, v51 + v50, v53);
  v55 = v72;
  sub_22D873248(v72, v54);
  v56 = v65;
  (v65)(v54, v53);
  v52(v54, v51 + v50, v53);
  v57 = objc_allocWithZone(type metadata accessor for CoherenceTokenStoreRecord());
  v58 = sub_22D876BF8(v54);
  v56(v55, v53);
  v56(v71, v53);
  v59 = *(v51 + v66);
  *(v51 + v66) = v58;

  sub_22D851550(&v75, v51 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_unifiedAssetInterface);
  *(v51 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_syncComplete) = 0;
  v60 = *MEMORY[0x277D85DE8];
  return v68;
}

uint64_t sub_22D871E14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedAssetInterface();
  v17[3] = v4;
  v17[4] = &off_2840E33F0;
  v17[0] = a2;
  v5 = type metadata accessor for CoherenceTokenStore();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = sub_22D84EAA8(v17, v4);
  v10 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = sub_22D871674(a1, *v12, v8);
  sub_22D84D8A0(v17);
  return v14;
}

uint64_t sub_22D871F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D8B073C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for UnifiedAssetInterface();
  v28 = &off_2840E33F0;
  *&v26 = a1;
  v24 = type metadata accessor for BackgroundScheduler();
  v25 = &off_2840E37F8;
  *&v23 = a2;
  swift_defaultActor_initialize();
  *(a3 + 200) = MEMORY[0x277D84FA0];
  *(a3 + 208) = 0;
  if (qword_281458CF0 != -1)
  {
    swift_once();
  }

  v11 = sub_22D84C6FC(v6, qword_281459468);
  (*(v7 + 16))(v10, v11, v6);
  sub_22D84E298(&v26, v21);
  v12 = v22;
  v13 = sub_22D84EAA8(v21, v22);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v21[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_22D871E14(v10, *v16);
  sub_22D84D8A0(v21);
  *(a3 + 192) = v18;
  sub_22D851550(&v26, a3 + 112);
  sub_22D851550(&v23, a3 + 152);
  return a3;
}

uint64_t sub_22D872170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedAssetInterface();
  v22[3] = v4;
  v22[4] = &off_2840E33F0;
  v22[0] = a1;
  v20 = type metadata accessor for BackgroundScheduler();
  v21 = &off_2840E37F8;
  v19[0] = a2;
  type metadata accessor for AssetSetCoherenceManager();
  v5 = swift_allocObject();
  v6 = sub_22D84EAA8(v22, v4);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = v20;
  v12 = sub_22D84EAA8(v19, v20);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_22D871F30(*v9, *v15, v5);
  sub_22D84D8A0(v19);
  sub_22D84D8A0(v22);
  return v17;
}

unint64_t sub_22D872340()
{
  result = qword_281458928;
  if (!qword_281458928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281458928);
  }

  return result;
}

uint64_t sub_22D872394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22D8723DC()
{
  sub_22D84D198();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  sub_22D84DD88(v2);

  return sub_22D86BC50(v0);
}

uint64_t sub_22D872464()
{
  sub_22D84D198();
  v2 = v1;
  sub_22D84C734();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_22D84CED0();
  *v6 = v5;

  sub_22D84C4A4();

  return v7(v2);
}

uint64_t sub_22D87254C()
{
  sub_22D84D77C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_22D84E468(v5);

  return sub_22D86A7AC(v6, v7, v4);
}

uint64_t sub_22D872604(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_22D8B1DBC();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_22D872644(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22D8726C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22D8726CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22D8580D8(a3, a4);
  sub_22D84C5C4(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22D872730(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22D8727D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D8580D8(&qword_27DA0D830, &unk_22D8B3E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22D8728AC()
{

  JUMPOUT(0x2318D50E0);
}

BOOL sub_22D8728E4()
{

  return sub_22D851F6C((v2 + 104), v1, v0);
}

BOOL sub_22D872904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_22D851F6C(&a9, v10, v9);
}

uint64_t sub_22D872930()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

BOOL sub_22D87297C()
{
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[20];
  v5 = v0[21];

  return sub_22D851F6C(v0 + 11, v4, v5);
}

uint64_t sub_22D8729B8()
{

  return swift_endAccess();
}

uint64_t sub_22D8729D0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = *(v0[14] + 8);
  return v0[15];
}

uint64_t sub_22D872A40(unint64_t *a1)
{
  v2 = MEMORY[0x2822218A8];

  return sub_22D872730(a1, v2);
}

void sub_22D872A60(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22D872A80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D8B150C();
  v5 = sub_22D84D7DC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D8B151C();
  v13 = sub_22D84D7DC(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, a1, v12);
  v20 = (*(v15 + 88))(v19, v12);
  if (v20 == *MEMORY[0x277CEDFB8] || v20 == *MEMORY[0x277CEDFC0] || v20 != *MEMORY[0x277CEDFB0])
  {
    return (*(v15 + 8))(v19, v12);
  }

  (*(v15 + 96))(v19, v12);
  (*(v7 + 32))(v11, v19, v4);
  swift_beginAccess();
  sub_22D870D68();
  v21 = *(*(v2 + 16) + 16);
  sub_22D870DF4(v21);
  v22 = *(v2 + 16);
  *(v22 + 16) = v21 + 1;
  (*(v7 + 16))(v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, v11, v4);
  *(v2 + 16) = v22;
  swift_endAccess();
  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_22D872D0C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22D872D68(uint64_t a1, uint64_t a2)
{
  v6 = sub_22D8B154C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  result = sub_22D872A80(a1);
  if (v3)
  {
    return (*(v7 + 32))(a2, v10, v6);
  }

  return result;
}

uint64_t sub_22D872E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_22D852D10(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_22D872EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (sub_22D852D10(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(a3 + 56);
    v10 = a4(0);
    sub_22D84C740(v10);
    v12 = *(v11 + 16);
    v13 = *(v11 + 72);
    v14 = sub_22D84C61C();
    v15(v14);
    v16 = a5;
    v17 = 0;
    v18 = v10;
  }

  else
  {
    v18 = a4(0);
    v16 = a5;
    v17 = 1;
  }

  return sub_22D84C4F8(v16, v17, 1, v18);
}

uint64_t sub_22D872F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_22D852D10(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_22D872FE8()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = sub_22D8B1A2C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v19 = 37;
  v2 = sub_22D8B067C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v20 = 0x2500000000;
  v21 = sub_22D8B064C() | 0x4000000000000000;
  if (sub_22D8784B8(&v20, &v19))
  {
    v12 = MEMORY[0x2318D4120]();
    if (!strerror(v12))
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  sub_22D873964();
  v5 = v20;
  v6 = v21;
  sub_22D8B1A1C();
  v7 = sub_22D8B1A0C();
  if (!v8)
  {
    while (1)
    {
      sub_22D8B1EFC();
      __break(1u);
LABEL_7:
      v13 = sub_22D8B19BC();
      if (v14)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0x6E776F6E6B6E55;
      }

      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0xE700000000000000;
      }

      sub_22D8B1E2C();
      MEMORY[0x2318D4340](0xD000000000000033, 0x800000022D8B84E0);
      MEMORY[0x2318D4340](v15, v16);
      v17 = MEMORY[0x2318D4340](40, 0xE100000000000000);
      MEMORY[0x2318D4120](v17);
      v18 = sub_22D8B1F5C();
      MEMORY[0x2318D4340](v18);
    }
  }

  v9 = v7;
  sub_22D877894(v5, v6);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_22D873248(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v78[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22D8B073C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v63 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v63 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v74 = &v63 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v63 - v16;
  v18 = [objc_opt_self() defaultManager];
  v19 = sub_22D8B06CC();
  v78[0] = 0;
  v70 = v18;
  v20 = sub_22D84C61C();
  v22 = [v20 v21];

  v23 = v78[0];
  if (v22)
  {
    v24 = sub_22D8B1ADC();
    v25 = v23;

    v73 = v24[2];
    if (!v73)
    {
LABEL_14:

      goto LABEL_21;
    }

    v64 = v7;
    v7 = 0;
    v71 = v24 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v76 = v3 + 16;
    *&v26 = 136315138;
    v65 = v26;
    v66 = v3;
    v67 = v13;
    v68 = v10;
    v69 = v17;
    v72 = v24;
    v77 = v3 + 8;
    while (v7 < v24[2])
    {
      v27 = *(v3 + 16);
      v27(v17, &v71[*(v3 + 72) * v7], v2);
      sub_22D8B06EC();
      sub_22D8B06EC();
      sub_22D8778EC(&qword_281459238);
      v28 = sub_22D8B19AC();
      v29 = *(v3 + 8);
      v29(v13, v2);
      v30 = sub_22D851E68();
      (v29)(v30);
      if ((v28 & 1) == 0)
      {
        if (qword_2814589E0 != -1)
        {
          sub_22D86845C();
          swift_once();
        }

        v31 = sub_22D8B178C();
        sub_22D84DD10(v31, qword_281459298);
        v32 = v68;
        v27(v68, v17, v2);
        v33 = sub_22D8B176C();
        v34 = sub_22D8B1C6C();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = sub_22D84DD3C();
          v36 = sub_22D84CE7C();
          v78[0] = v36;
          *v35 = v65;
          sub_22D84DA70();
          sub_22D8778EC(&qword_281459230);
          v37 = sub_22D8B1F5C();
          v39 = v38;
          v29(v32, v2);
          v40 = sub_22D84C63C(v37, v39, v78);
          v3 = v66;

          *(v35 + 4) = v40;
          _os_log_impl(&dword_22D84A000, v33, v34, "AssetSetCoherenceManager: removing old persisted state: %s", v35, 0xCu);
          sub_22D84D8A0(v36);
          sub_22D84DDE4();
          sub_22D84D6DC();
        }

        else
        {

          v29(v32, v2);
        }

        v17 = v69;
        v41 = sub_22D8B06CC();
        v78[0] = 0;
        v42 = [v70 removeItemAtURL:v41 error:v78];

        v13 = v67;
        if (!v42)
        {
          v45 = v78[0];

          v24 = sub_22D8B069C();

          swift_willThrow();
          v29(v17, v2);
          v7 = v64;
          goto LABEL_17;
        }

        v43 = v78[0];
      }

      ++v7;
      v29(v17, v2);
      v24 = v72;
      if (v73 == v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v44 = v78[0];
    v24 = sub_22D8B069C();

    swift_willThrow();
LABEL_17:
    if (qword_2814589E0 == -1)
    {
      goto LABEL_18;
    }
  }

  sub_22D86845C();
  swift_once();
LABEL_18:
  v46 = sub_22D8B178C();
  sub_22D84DD10(v46, qword_281459298);
  (*(v3 + 16))(v7, v75, v2);
  v47 = v24;
  v48 = sub_22D8B176C();
  v49 = sub_22D8B1C6C();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = v3;
    v52 = sub_22D84E1FC();
    v53 = sub_22D84CE7C();
    v78[0] = v53;
    *v50 = 136315394;
    sub_22D84DA70();
    sub_22D8778EC(v54);
    v55 = sub_22D8B1F5C();
    v56 = v7;
    v58 = v57;
    (*(v51 + 8))(v56, v2);
    v59 = sub_22D84C63C(v55, v58, v78);

    *(v50 + 4) = v59;
    *(v50 + 12) = 2112;
    v60 = v24;
    v61 = _swift_stdlib_bridgeErrorToNSError();
    *(v50 + 14) = v61;
    *v52 = v61;
    _os_log_impl(&dword_22D84A000, v48, v49, "AssetSetCoherenceManager: while attempting to use %s failed with: %@", v50, 0x16u);
    sub_22D84D06C(v52, &qword_27DA0D4D0);
    sub_22D84C3D8();
    sub_22D84D8A0(v53);
    sub_22D84C3D8();
    sub_22D84C3D8();
  }

  else
  {

    (*(v3 + 8))(v7, v2);
  }

LABEL_21:
  v62 = *MEMORY[0x277D85DE8];
}

void sub_22D873964()
{
  v1 = *v0;
  v2 = v0[1];
  switch(v2 >> 62)
  {
    case 1uLL:
      v3 = v1;
      v4 = v1 >> 32;
      goto LABEL_5;
    case 2uLL:
      v3 = *(v1 + 16);
      v4 = *(v1 + 24);
      goto LABEL_5;
    case 3uLL:
      goto LABEL_16;
    default:
      v3 = 0;
      v4 = BYTE6(v2);
LABEL_5:
      if (v3 == v4)
      {
        goto LABEL_16;
      }

      if ((sub_22D879294() & 0x100) != 0)
      {
        v5 = *v0;
        v6 = v0[1];
        v7 = 0;
        switch(v6 >> 62)
        {
          case 1uLL:
            v7 = v5 >> 32;
            break;
          case 2uLL:
            v7 = *(v5 + 24);
            break;
          case 3uLL:
            break;
          default:
            v7 = BYTE6(v6);
            break;
        }

        if (__OFSUB__(v7, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
        }

        else
        {

          sub_22D8791E4(v7 - 1);
        }
      }

      return;
  }
}

uint64_t sub_22D873A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_record);
  if (v4)
  {
    v6 = v4;
    v7 = sub_22D851E68();
    v9 = sub_22D87715C(v7, v8, a3);
  }

  else
  {
    v9 = sub_22D8B0A0C();
    sub_22D87949C();
    sub_22D84DF28();
    v10 = swift_allocError();
    sub_22D8519D0(v10, v11);
    sub_22D84F5A0();
    sub_22D84CFC0(v12, v13);
    v14 = *MEMORY[0x277D29A70];
    sub_22D84D850();
    (*(v15 + 104))();
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_22D873B20()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_record);
  if (v1)
  {
    v2 = v1;
    v3 = sub_22D87731C();
  }

  else
  {
    v3 = sub_22D8B0A0C();
    sub_22D87949C();
    sub_22D84DF28();
    v4 = swift_allocError();
    sub_22D8519D0(v4, v5);
    sub_22D84F5A0();
    sub_22D84CFC0(v6, v7);
    v8 = *MEMORY[0x277D29A70];
    sub_22D84D850();
    (*(v9 + 104))();
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_22D873BF0()
{
  sub_22D84D198();
  v7 = *MEMORY[0x277D85DE8];
  v1[3] = v0;
  v2 = sub_22D8B073C();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22D873CD8, v0, 0);
}

uint64_t sub_22D873CD8()
{
  v50 = *MEMORY[0x277D85DE8];
  v1 = v0[3];
  v2 = objc_opt_self();
  v3 = [v2 defaultManager];
  sub_22D8B070C();
  v4 = sub_22D8B19CC();

  v5 = [v3 fileExistsAtPath_];

  if ((v5 & 1) == 0)
  {
    if (qword_2814589E0 != -1)
    {
      sub_22D86845C();
      swift_once();
    }

    v6 = sub_22D8B178C();
    sub_22D84DD10(v6, qword_281459298);
    v7 = sub_22D8B176C();
    v8 = sub_22D8B1C6C();
    if (sub_22D851250(v8))
    {
      v9 = sub_22D85225C();
      *v9 = 0;
      sub_22D8516B0();
      _os_log_impl(v10, v11, v12, v13, v9, 2u);
      sub_22D84D6DC();
    }

    v14 = [v2 defaultManager];
    v15 = sub_22D8B06CC();
    v0[2] = 0;
    v16 = sub_22D84C61C();
    v18 = [v16 v17];

    v19 = v0[2];
    if (!v18)
    {
      v38 = v19;
      v39 = sub_22D8B069C();

      swift_willThrow();
      goto LABEL_18;
    }

    v20 = v19;
  }

  v21 = v0[3];
  v22 = OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_record;
  if (*(v21 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_record))
  {
LABEL_15:
    v35 = v0[6];

    sub_22D84C794();
    v37 = *MEMORY[0x277D85DE8];
    goto LABEL_19;
  }

  v23 = v0[6];
  (*(v0[5] + 16))(v23, v21 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_tokenStoreURL, v0[4]);
  v24 = objc_allocWithZone(type metadata accessor for CoherenceTokenStoreRecord());
  v25 = sub_22D876BF8(v23);
  v26 = *(v21 + v22);
  *(v21 + v22) = v25;

  if (*(v21 + v22))
  {
    if (qword_2814589E0 != -1)
    {
      sub_22D86845C();
      swift_once();
    }

    v27 = sub_22D8B178C();
    sub_22D84DD10(v27, qword_281459298);
    v28 = sub_22D8B176C();
    v29 = sub_22D8B1C6C();
    if (sub_22D84CEE0(v29))
    {
      *sub_22D85225C() = 0;
      sub_22D84C460();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      sub_22D84DDE4();
    }

    goto LABEL_15;
  }

  v40 = sub_22D8B0A0C();
  sub_22D87949C();
  v39 = swift_allocError();
  sub_22D854F78(v41, v41);
  (*(*(v40 - 8) + 104))();
  swift_willThrow();
LABEL_18:
  v42 = v0[6];
  v43 = sub_22D8B0A0C();
  sub_22D87949C();
  v44 = swift_allocError();
  v46 = sub_22D8519D0(v44, v45);
  sub_22D854F78(v46, v47);
  (*(*(v43 - 8) + 104))();
  swift_willThrow();

  sub_22D84C794();
  v48 = *MEMORY[0x277D85DE8];
LABEL_19:

  return v36();
}

uint64_t sub_22D8740F4()
{
  sub_22D84D198();
  v5 = *MEMORY[0x277D85DE8];
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22D874180, v0, 0);
}

uint64_t sub_22D874180()
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_record);
  if (!v1)
  {
    sub_22D8B0A0C();
    sub_22D87949C();
    sub_22D84DF28();
    v10 = swift_allocError();
    sub_22D84F5A0();
    sub_22D84CFC0(v13, v14);
    v15 = *MEMORY[0x277D29A68];
    sub_22D84D850();
    (*(v16 + 104))();
    swift_willThrow();
LABEL_8:
    if (qword_2814589E0 != -1)
    {
      sub_22D86845C();
      swift_once();
    }

    v18 = sub_22D8B178C();
    sub_22D84DD10(v18, qword_281459298);
    v19 = v10;
    v20 = sub_22D8B176C();
    v21 = sub_22D8B1C6C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = sub_22D84DD3C();
      v23 = sub_22D84E1FC();
      *v22 = 138412290;
      v24 = v10;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      sub_22D84C460();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      sub_22D84D06C(v23, &qword_27DA0D4D0);
      sub_22D84C3D8();
      sub_22D84DDE4();
    }

    else
    {
    }

    goto LABEL_18;
  }

  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens;
  sub_22D84E184();
  v4 = *&v1[v3];
  *&v1[v3] = v2;
  v5 = v1;

  v6 = objc_opt_self();
  *(v0 + 40) = 0;

  v7 = [v6 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:v0 + 40];
  v8 = *(v0 + 40);
  if (!v7)
  {
    v17 = v8;
    v10 = sub_22D8B069C();

    swift_willThrow();
    goto LABEL_7;
  }

  v9 = *(v0 + 56);
  sub_22D8B07BC();

  sub_22D879554();
  if (v9)
  {
    v10 = v9;
    v11 = sub_22D85126C();
    sub_22D877894(v11, v12);
LABEL_7:

    goto LABEL_8;
  }

  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v31 = sub_22D8B178C();
  sub_22D84DD10(v31, qword_281459298);
  v32 = sub_22D8B176C();
  v33 = sub_22D8B1C6C();
  if (sub_22D851250(v33))
  {
    v34 = sub_22D85225C();
    *v34 = 0;
    sub_22D8516B0();
    _os_log_impl(v35, v36, v37, v38, v34, 2u);
    sub_22D84D6DC();
  }

  v39 = sub_22D85126C();
  sub_22D877894(v39, v40);

LABEL_18:
  v41 = *(v0 + 8);
  v42 = *MEMORY[0x277D85DE8];

  return v41();
}

uint64_t sub_22D874504()
{
  sub_22D84D198();
  v7 = *MEMORY[0x277D85DE8];
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22D874594, v0, 0);
}

uint64_t sub_22D874594()
{
  v58 = v0;
  v57[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0[5].super_class + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_record);
  if (!v1)
  {
    sub_22D8B0A0C();
    sub_22D87949C();
    sub_22D84DF28();
    v18 = swift_allocError();
    sub_22D84F5A0();
    sub_22D84CFC0(v21, v22);
    v23 = *MEMORY[0x277D29A68];
    sub_22D84D850();
    (*(v24 + 104))();
    swift_willThrow();
LABEL_10:
    if (qword_2814589E0 != -1)
    {
      sub_22D86845C();
      swift_once();
    }

    super_class = v0[4].super_class;
    v27 = sub_22D8B178C();
    sub_22D84DD10(v27, qword_281459298);

    v28 = v18;
    v29 = sub_22D8B176C();
    sub_22D8B1C6C();

    if (sub_22D84DFC0())
    {
      receiver = v0[4].receiver;
      v30 = v0[4].super_class;
      v32 = swift_slowAlloc();
      v33 = sub_22D84E1FC();
      v34 = sub_22D84CE7C();
      v57[0] = v34;
      *v32 = 136315394;
      *(v32 + 4) = sub_22D84C63C(receiver, v30, v57);
      *(v32 + 12) = 2112;
      v35 = v18;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v36;
      *v33 = v36;
      sub_22D8516B0();
      _os_log_impl(v37, v38, v39, v40, v32, 0x16u);
      sub_22D84D06C(v33, &qword_27DA0D4D0);
      sub_22D84C3D8();
      sub_22D84D8A0(v34);
      sub_22D84C3D8();
      sub_22D84C3D8();
    }

    else
    {
    }

    goto LABEL_20;
  }

  p_receiver = &v0[1].receiver;
  v3 = v1;
  v5 = sub_22D876620();
  if (*v4)
  {
    v6 = v4;
    v7 = v0[4].super_class;
    v8 = v0[5].receiver;
    v9 = v0[4].receiver;
    v10 = type metadata accessor for CoherenceTokenStoreEntry();
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token] = v8;
    v0[3].receiver = v11;
    v0[3].super_class = v10;
    v12 = v8;
    objc_msgSendSuper2(v0 + 3, sel_init);
    v13 = *v6;
    swift_isUniquelyReferenced_nonNull_native();
    v57[0] = *v6;
    sub_22D8AD3D8();
    *v6 = v57[0];
  }

  (v5)(&v0[1], 0);
  v14 = objc_opt_self();
  *p_receiver = 0;
  v15 = [v14 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v0[1]];
  v16 = *p_receiver;
  if (!v15)
  {
    v25 = v16;
    v18 = sub_22D8B069C();

    swift_willThrow();
    goto LABEL_9;
  }

  v17 = v0[5].super_class;
  sub_22D8B07BC();

  sub_22D879554();
  if (v17)
  {
    v18 = v17;
    v19 = sub_22D85126C();
    sub_22D877894(v19, v20);
LABEL_9:

    goto LABEL_10;
  }

  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v41 = v0[4].super_class;
  v42 = sub_22D8B178C();
  sub_22D84DD10(v42, qword_281459298);

  v43 = sub_22D8B176C();
  sub_22D8B1C6C();

  if (sub_22D84DFC0())
  {
    v45 = v0[4].receiver;
    v44 = v0[4].super_class;
    v46 = sub_22D84DD3C();
    v47 = sub_22D84CE7C();
    v57[0] = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_22D84C63C(v45, v44, v57);
    sub_22D8516B0();
    _os_log_impl(v48, v49, v50, v51, v46, 0xCu);
    sub_22D84D8A0(v47);
    sub_22D84C3D8();
    sub_22D84C3D8();
  }

  v52 = sub_22D85126C();
  sub_22D877894(v52, v53);

LABEL_20:
  sub_22D84C794();
  v55 = *MEMORY[0x277D85DE8];

  return v54();
}

uint64_t sub_22D874A30(uint64_t a1)
{
  type metadata accessor for CoherenceTokenStoreEntry();
  v3 = sub_22D8B193C();
  sub_22D874A9C(a1, &v3);
  return v3;
}

void sub_22D874A9C(uint64_t a1, void *a2)
{
  v4 = 0;
  v34 = a1 & 0xC000000000000001;
  v35 = sub_22D886CD4(a1);
  v32 = a1 & 0xFFFFFFFFFFFFFF8;
  v33 = a1;
  v31 = a2;
  while (v35 != v4)
  {
    if (v34)
    {
      v5 = MEMORY[0x2318D4700](v4, v33);
    }

    else
    {
      if (v4 >= *(v32 + 16))
      {
        goto LABEL_22;
      }

      v5 = *(v33 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      sub_22D8B1FBC();
      __break(1u);
      return;
    }

    v7 = sub_22D879180(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v36 = v6;
      v11 = [v6 consistencyToken];
      v12 = type metadata accessor for CoherenceTokenStoreEntry();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token] = v11;
      v37.receiver = v13;
      v37.super_class = v12;
      v14 = objc_msgSendSuper2(&v37, sel_init);
      v15 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v38 = *a2;
      v16 = v38;
      v17 = v9;
      v18 = sub_22D852D10(v9, v10);
      if (__OFADD__(v16[2], (v19 & 1) == 0))
      {
        goto LABEL_23;
      }

      v20 = v18;
      v21 = v19;
      sub_22D8580D8(&qword_27DA0D900, &unk_22D8B4010);
      if (sub_22D8B1EAC())
      {
        v22 = sub_22D852D10(v17, v10);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_25;
        }

        v20 = v22;
      }

      v24 = v38;
      if (v21)
      {
        v25 = v38[7];
        v26 = *(v25 + 8 * v20);
        *(v25 + 8 * v20) = v14;
      }

      else
      {
        v38[(v20 >> 6) + 8] |= 1 << v20;
        v27 = (v24[6] + 16 * v20);
        *v27 = v17;
        v27[1] = v10;
        *(v24[7] + 8 * v20) = v14;
        v28 = v24[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_24;
        }

        v24[2] = v30;
      }

      a2 = v31;
      *v31 = v24;
    }

    else
    {
    }

    ++v4;
  }
}

uint64_t sub_22D874CFC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v19 = a4;
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = (*(a1 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v11)))));
      v17 = v16[1];
      v18[0] = *v16;
      v18[1] = v17;

      sub_22D875DF4(v18, a2, a3, v19);
      if (v4)
      {
        break;
      }

      v11 &= v11 - 1;

      v14 = v15;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22D874E48(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return sub_22D84DC68(sub_22D874E64, v1);
}

uint64_t sub_22D874E64()
{
  sub_22D84D77C();
  v0[11] = MEMORY[0x277D84F90];
  v1 = v0[14];
  v2 = OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_syncComplete;
  v0[15] = OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_syncComplete;
  if (*(v1 + v2))
  {
    sub_22D84C4A4();
    v4 = MEMORY[0x277D84F90];

    return v3(v4);
  }

  else
  {
    if (qword_2814589E0 != -1)
    {
      sub_22D86845C();
      swift_once();
    }

    v6 = sub_22D8B178C();
    v0[16] = sub_22D84C6FC(v6, qword_281459298);
    v7 = sub_22D8B176C();
    v8 = sub_22D8B1C6C();
    if (sub_22D84CEE0(v8))
    {
      *sub_22D85225C() = 0;
      sub_22D84C460();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      sub_22D84DDE4();
    }

    v14 = swift_task_alloc();
    v0[17] = v14;
    *v14 = v0;
    sub_22D84CE94(v14);

    return sub_22D873BF0();
  }
}

uint64_t sub_22D874FD8()
{
  sub_22D84D77C();
  v2 = *v1;
  sub_22D84DD94();
  *v4 = v3;
  v5 = *(v2 + 136);
  *v4 = *v1;
  *(v3 + 144) = v0;

  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_22D875D28;
  }

  else
  {
    v7 = sub_22D8750FC;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

void sub_22D8750FC()
{
  v92 = v0;
  v2 = v0[13];
  v3 = v0[14];
  type metadata accessor for CoherenceTokenStore();
  v4 = sub_22D874A30(v2);
  v0[19] = v4;

  v6 = sub_22D886FB4(v5);
  v7 = *(v3 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_record);
  if (v7 && (v8 = OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens, sub_22D84C444(), swift_beginAccess(), (v9 = *(v7 + v8)) != 0) && (v0[12] = v9, v9[2]))
  {
    v10 = v0[16];
    swift_bridgeObjectRetain_n();
    v11 = sub_22D886FB4(v9);

    v12 = sub_22D875DA0(v11, v6);

    v13 = sub_22D875DA0(v6, v11);
    sub_22D877A80(v11, v6);
    v15 = v14;

    v16 = sub_22D8B176C();
    sub_22D8B1C6C();

    v89 = v12;
    v90 = v13;
    if (sub_22D84DFC0())
    {
      v17 = sub_22D84CE7C();
      v91[0] = swift_slowAlloc();
      *v17 = 136315650;
      v18 = sub_22D8B1BFC();
      v20 = sub_22D84C63C(v18, v19, v91);

      *(v17 + 4) = v20;
      v1 = 2080;
      *(v17 + 12) = 2080;
      v21 = sub_22D8B1BFC();
      v23 = sub_22D84C63C(v21, v22, v91);

      *(v17 + 14) = v23;
      *(v17 + 22) = 2080;
      v24 = sub_22D8B1BFC();
      v26 = sub_22D84C63C(v24, v25, v91);

      *(v17 + 24) = v26;
      v12 = v89;
      sub_22D8516B0();
      _os_log_impl(v27, v28, v29, v30, v17, 0x20u);
      swift_arrayDestroy();
      sub_22D84DDE4();
      sub_22D84C3D8();
    }

    v31 = v0[18];

    sub_22D874CFC(v15, v0 + 12, v4, v0 + 11);

    v32 = 0;
    v34 = v12 + 56;
    v33 = *(v12 + 56);
    v35 = *(v12 + 32);
    sub_22D84D714();
    v37 = v36 >> 6;
    v88 = v0[12];
    while (v1)
    {
      v38 = v1;
LABEL_13:
      v1 = (v38 - 1) & v38;
      if (*(v4 + 16))
      {
        v40 = (*(v12 + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v38)))));
        v41 = *v40;
        v42 = v40[1];

        v43 = sub_22D852D10(v41, v42);
        if (v44)
        {
          v87 = *(*(v4 + 56) + 8 * v43);
          swift_isUniquelyReferenced_nonNull_native();
          v91[0] = v88;
          v86 = sub_22D852D10(v41, v42);
          sub_22D85231C();
          if (__OFADD__(v45, v46))
          {
            __break(1u);
LABEL_52:
            __break(1u);
            return;
          }

          sub_22D8580D8(&qword_27DA0D900, &unk_22D8B4010);
          if (sub_22D8B1EAC())
          {
            sub_22D852D10(v41, v42);
            sub_22D8795B0();
            if (!v49)
            {
              goto LABEL_48;
            }

            v50 = v47;
          }

          else
          {
            v50 = v86;
            v48 = v88;
          }

          if (v48)
          {

            v9 = v91[0];
            v51 = *(v91[0] + 56);
            v52 = *(v51 + 8 * v50);
            *(v51 + 8 * v50) = v87;
          }

          else
          {
            v9 = v91[0];
            *(v91[0] + 8 * (v50 >> 6) + 64) |= 1 << v50;
            v53 = (v9[6] + 16 * v50);
            *v53 = v41;
            v53[1] = v42;
            *(v9[7] + 8 * v50) = v87;

            v54 = v9[2];
            v55 = __OFADD__(v54, 1);
            v56 = v54 + 1;
            if (v55)
            {
              goto LABEL_52;
            }

            v9[2] = v56;
          }

          v12 = v89;
          v88 = v9;
        }

        else
        {

          v12 = v89;
        }
      }
    }

    while (1)
    {
      v39 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v39 >= v37)
      {
        break;
      }

      v38 = *(v34 + 8 * v39);
      ++v32;
      if (v38)
      {
        v32 = v39;
        goto LABEL_13;
      }
    }

    v0[12] = v88;

    v69 = 0;
    v70 = *(v90 + 56);
    v71 = *(v90 + 32);
    sub_22D84D714();
    v73 = v72 >> 6;
LABEL_32:
    v0[20] = v9;
    while (v1)
    {
      v74 = v90;
LABEL_40:
      v76 = __clz(__rbit64(v1));
      v1 &= v1 - 1;
      v77 = (*(v74 + 48) + ((v69 << 10) | (16 * v76)));
      v78 = *v77;
      v79 = v77[1];

      v80 = sub_22D852D10(v78, v79);
      LOBYTE(v78) = v81;

      if (v78)
      {
        v82 = v0[12];
        swift_isUniquelyReferenced_nonNull_native();
        v91[0] = v82;
        v83 = *(v82 + 24);
        sub_22D8580D8(&qword_27DA0D900, &unk_22D8B4010);
        sub_22D8B1EAC();
        v9 = v91[0];
        v84 = *(*(v91[0] + 48) + 16 * v80 + 8);

        type metadata accessor for CoherenceTokenStoreEntry();
        sub_22D8B1EBC();
        v0[12] = v9;
        goto LABEL_32;
      }
    }

    v74 = v90;
    while (1)
    {
      v75 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v75 >= v73)
      {

        v85 = swift_task_alloc();
        v0[21] = v85;
        *v85 = v0;
        sub_22D84CE94(v85);
        goto LABEL_43;
      }

      v1 = *(v90 + 56 + 8 * v75);
      ++v69;
      if (v1)
      {
        v69 = v75;
        goto LABEL_40;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:

    sub_22D8B1FBC();
  }

  else
  {
    v57 = v0[16];

    v58 = sub_22D8B176C();
    v59 = sub_22D8B1C6C();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v91[0] = swift_slowAlloc();
      *v60 = 136315394;
      v61 = sub_22D8B1BFC();
      v63 = v62;

      v64 = sub_22D84C63C(v61, v63, v91);

      *(v60 + 4) = v64;
      *(v60 + 12) = 2080;
      type metadata accessor for CoherenceTokenStoreEntry();
      v65 = sub_22D8B192C();
      v67 = sub_22D84C63C(v65, v66, v91);

      *(v60 + 14) = v67;
      _os_log_impl(&dword_22D84A000, v58, v59, "CoherenceTokenStore no existing state, adding from UAF %s, tokens %s", v60, 0x16u);
      swift_arrayDestroy();
      sub_22D84C3D8();
      sub_22D84D6DC();
    }

    else
    {
    }

    v68 = swift_task_alloc();
    v0[23] = v68;
    *v68 = v0;
    sub_22D84CE94(v68);
LABEL_43:

    sub_22D8740F4();
  }
}

uint64_t sub_22D8758EC()
{
  sub_22D84D77C();
  v2 = *v1;
  sub_22D84DD94();
  *v4 = v3;
  v5 = *(v2 + 168);
  *v4 = *v1;
  *(v3 + 176) = v0;

  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_22D875D30;
  }

  else
  {
    v7 = sub_22D875A10;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22D875A10()
{
  sub_22D84D77C();
  v1 = v0[20];

  v2 = v0[16];
  v3 = sub_22D8B176C();
  v4 = sub_22D8B1C6C();
  if (sub_22D84CEE0(v4))
  {
    v5 = sub_22D84DD3C();
    *v5 = 134217984;
    sub_22D84C444();
    swift_beginAccess();
    *(v5 + 4) = *(v0[11] + 16);
    sub_22D84C460();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    sub_22D84DDE4();
  }

  v12 = v0[14];
  v11 = v0[15];

  *(v12 + v11) = 1;
  sub_22D84C444();
  swift_beginAccess();
  v13 = v0[11];
  sub_22D84C4A4();

  return v14();
}

uint64_t sub_22D875B00()
{
  sub_22D84D77C();
  v2 = *v1;
  sub_22D84DD94();
  *v4 = v3;
  v5 = v2[23];
  *v4 = *v1;
  *(v3 + 192) = v0;

  v6 = v2[19];
  v7 = v2[14];

  if (v0)
  {
    v8 = sub_22D875D98;
  }

  else
  {
    v8 = sub_22D875C40;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22D875C40()
{
  sub_22D84D77C();
  v1 = v0[16];
  v2 = sub_22D8B176C();
  v3 = sub_22D8B1C6C();
  if (sub_22D84CEE0(v3))
  {
    v4 = sub_22D84DD3C();
    *v4 = 134217984;
    sub_22D84C444();
    swift_beginAccess();
    *(v4 + 4) = *(v0[11] + 16);
    sub_22D84C460();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    sub_22D84DDE4();
  }

  v11 = v0[14];
  v10 = v0[15];

  *(v11 + v10) = 1;
  sub_22D84C444();
  swift_beginAccess();
  v12 = v0[11];
  sub_22D84C4A4();

  return v13();
}

uint64_t sub_22D875D30()
{
  sub_22D84D198();
  v1 = v0[20];

  v2 = v0[11];

  v3 = v0[22];
  v4 = v0[1];

  return v4();
}

uint64_t sub_22D875DA0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_22D878888(a1);
    return a2;
  }

  else
  {

    return sub_22D8789B4(a1, a2);
  }
}

void sub_22D875DF4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a2;
  if (*(*a2 + 16))
  {
    v8 = *a1;
    v7 = a1[1];
    v9 = sub_22D852D10(*a1, v7);
    if (v10)
    {
      if (*(a3 + 16))
      {
        v11 = *(*(v4 + 56) + 8 * v9);
        v12 = sub_22D852D10(v8, v7);
        if ((v13 & 1) != 0 && (v14 = *&v11[OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token]) != 0 && (v15 = *(*(a3 + 56) + 8 * v12), (v16 = *&v15[OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token]) != 0))
        {
          v36 = v15;
          v17 = v14;
          v18 = v16;
          if ([v18 hasIdenticalAssets_])
          {
            if (qword_2814589E0 != -1)
            {
              swift_once();
            }

            v19 = sub_22D8B178C();
            sub_22D84C6FC(v19, qword_281459298);

            v20 = sub_22D8B176C();
            v21 = sub_22D8B1C6C();

            if (os_log_type_enabled(v20, v21))
            {
              v22 = swift_slowAlloc();
              v34 = v18;
              v23 = swift_slowAlloc();
              v37 = v23;
              *v22 = 136315138;
              *(v22 + 4) = sub_22D84C63C(v8, v7, &v37);
              _os_log_impl(&dword_22D84A000, v20, v21, "CoherenceTokenStore token for %s can continue to be vended", v22, 0xCu);
              sub_22D84D8A0(v23);
              MEMORY[0x2318D50E0](v23, -1, -1);
              MEMORY[0x2318D50E0](v22, -1, -1);
            }

            else
            {
            }
          }

          else
          {
            if (qword_2814589E0 != -1)
            {
              swift_once();
            }

            v35 = v18;
            v24 = sub_22D8B178C();
            sub_22D84C6FC(v24, qword_281459298);

            v25 = sub_22D8B176C();
            v26 = sub_22D8B1C6C();

            if (os_log_type_enabled(v25, v26))
            {
              v27 = swift_slowAlloc();
              v33 = v17;
              v28 = swift_slowAlloc();
              v37 = v28;
              *v27 = 136315138;
              *(v27 + 4) = sub_22D84C63C(v8, v7, &v37);
              _os_log_impl(&dword_22D84A000, v25, v26, "CoherenceTokenStore adding %s to be invalidated", v27, 0xCu);
              sub_22D84D8A0(v28);
              v29 = v28;
              v17 = v33;
              MEMORY[0x2318D50E0](v29, -1, -1);
              MEMORY[0x2318D50E0](v27, -1, -1);
            }

            sub_22D870D50();
            v30 = *(*a4 + 16);
            sub_22D870DDC(v30);

            v31 = *a4;
            *(v31 + 16) = v30 + 1;
            v32 = v31 + 16 * v30;
            *(v32 + 32) = v8;
            *(v32 + 40) = v7;
          }
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_22D876184()
{
  v1 = OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_tokenStoreURL;
  v2 = sub_22D8B073C();
  sub_22D84C740(v2);
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_tokenStoreBaseURL, v2);

  sub_22D84D8A0((v0 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_unifiedAssetInterface));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22D876234()
{
  sub_22D876184();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for CoherenceTokenStore()
{
  result = qword_281458F28;
  if (!qword_281458F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22D8762B4()
{
  result = sub_22D8B073C();
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

void sub_22D8763C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token);
  v4 = sub_22D879578();
  v2 = sub_22D84C61C();
  [v2 v3];
}

id sub_22D87648C(void *a1)
{
  v2 = v1;
  sub_22D85AFB0(0, &qword_281458888, 0x277D779F0);
  *&v2[OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token] = sub_22D8B1D1C();
  v6.receiver = v2;
  v6.super_class = type metadata accessor for CoherenceTokenStoreEntry();
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

void sub_22D876684()
{
  v1 = OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens;
  sub_22D84C444();
  swift_beginAccess();
  if (*(v0 + v1))
  {
    type metadata accessor for CoherenceTokenStoreEntry();

    sub_22D8B190C();
  }

  v2 = sub_22D879578();
  v3 = sub_22D84C61C();
  [v3 v4];
  swift_unknownObjectRelease();
}

id sub_22D8767A0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens;
  *&v2[OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens] = 0;
  sub_22D8580D8(&qword_27DA0D8E8, &qword_22D8B3FF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22D8B3470;
  v6 = sub_22D85AFB0(0, &unk_281458870, 0x277CCACA8);
  *(v5 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22D8B3E90;
  *(v7 + 32) = type metadata accessor for CoherenceTokenStoreEntry();
  *(v7 + 40) = sub_22D85AFB0(0, &qword_281458888, 0x277D779F0);
  *(v7 + 48) = v6;
  v8 = sub_22D8B1D2C();

  if (v8)
  {
    sub_22D876910(v8);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  sub_22D84E184();
  v11 = *&v2[v4];
  *&v2[v4] = v10;

  v14.receiver = v2;
  v14.super_class = type metadata accessor for CoherenceTokenStoreRecord();
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

void sub_22D876910(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22D8580D8(&qword_27DA0D8F0, &qword_22D8B4000);
    v2 = sub_22D8B1F3C();
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

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_22D8794E8(*(a1 + 48) + 40 * v9, __src);
    sub_22D84DB94(*(a1 + 56) + 32 * v9, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_22D8794E8(__dst, v23);
    if (!swift_dynamicCast())
    {
      sub_22D84D06C(__dst, &unk_27DA0D8F8);

LABEL_22:

      return;
    }

    sub_22D84DB94(&__dst[40], v23);
    sub_22D84D06C(__dst, &unk_27DA0D8F8);
    type metadata accessor for CoherenceTokenStoreEntry();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }

    v5 &= v5 - 1;
    v10 = sub_22D852D10(v21, v22);
    v11 = v10;
    if (v12)
    {
      v13 = (v2[6] + 16 * v10);
      v14 = v13[1];
      *v13 = v21;
      v13[1] = v22;

      v15 = v2[7];
      v16 = *(v15 + 8 * v11);
      *(v15 + 8 * v11) = v21;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_24;
      }

      *(v2 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
      v17 = (v2[6] + 16 * v10);
      *v17 = v21;
      v17[1] = v22;
      *(v2[7] + 8 * v10) = v21;
      v18 = v2[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_25;
      }

      v2[2] = v20;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      goto LABEL_22;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

id sub_22D876BF8(uint64_t a1)
{
  v2 = v1;
  v27 = *MEMORY[0x277D85DE8];
  v4 = OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens;
  *&v1[OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens] = 0;
  sub_22D8B075C();
  sub_22D85AFB0(0, &qword_2814588D8, 0x277CCAAC8);
  type metadata accessor for CoherenceTokenStoreRecord();
  v5 = sub_22D8B1C7C();
  if (v5)
  {
    v6 = sub_22D85126C();
    sub_22D877894(v6, v7);
    v8 = OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens;
    sub_22D84C444();
    swift_beginAccess();
    v9 = *&v5[v8];

    sub_22D84E184();
    v10 = *&v2[v4];
    *&v2[v4] = v9;
  }

  else
  {
    if (qword_2814589E0 != -1)
    {
      sub_22D86845C();
      swift_once();
    }

    v11 = sub_22D8B178C();
    sub_22D84DD10(v11, qword_281459298);
    v12 = sub_22D8B176C();
    v13 = sub_22D8B1C6C();
    if (sub_22D851250(v13))
    {
      v14 = sub_22D85225C();
      *v14 = 0;
      sub_22D8516B0();
      _os_log_impl(v15, v16, v17, v18, v14, 2u);
      sub_22D84D6DC();
    }

    v19 = sub_22D85126C();
    sub_22D877894(v19, v20);
  }

  v26.receiver = v2;
  v26.super_class = type metadata accessor for CoherenceTokenStoreRecord();
  v21 = objc_msgSendSuper2(&v26, sel_init);
  v22 = sub_22D8B073C();
  sub_22D84C740(v22);
  (*(v23 + 8))(a1);
  v24 = *MEMORY[0x277D85DE8];
  return v21;
}

unint64_t *sub_22D87715C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens;
  sub_22D84C444();
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (v6 && (v7 = *(v3 + v5), , v8 = sub_22D851E68(), v10 = sub_22D851CE8(v8, v9, v6), , v10))
  {
    v11 = [objc_opt_self() sharedManager];
    sub_22D851E68();
    v12 = sub_22D8B19CC();
    v13 = *&v10[OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token];
    v14 = v13;
    v15 = sub_22D879100(v12, a3, v13, v11);
  }

  else
  {
    v16 = sub_22D8B0A0C();
    sub_22D87949C();
    swift_allocError();
    v18 = v17;
    sub_22D8B1E2C();

    sub_22D84F5A0();
    v23 = 0xD00000000000001CLL;
    v24 = v19;
    v15 = &v23;
    v20 = sub_22D851E68();
    MEMORY[0x2318D4340](v20);
    v21 = v24;
    *v18 = v23;
    v18[1] = v21;
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D29A70], v16);
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_22D87731C()
{
  v2 = v1;
  sub_22D85AFB0(0, &qword_2814588F0, 0x277D779E8);
  v3 = sub_22D8B193C();
  v4 = OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens;
  sub_22D84C444();
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (!v5)
  {

    sub_22D8B0A0C();
    sub_22D87949C();
    sub_22D84DF28();
    swift_allocError();
    sub_22D84F5A0();
    sub_22D84CFC0(v47, v48);
    v49 = *MEMORY[0x277D29A70];
    sub_22D84D850();
    (*(v50 + 104))();
    swift_willThrow();
    return v3;
  }

  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v52 = (v7 + 63) >> 6;

  v11 = 0;
  v53 = v10;
  while (2)
  {
    v12 = v11;
    v54 = v3;
    if (!v9)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v11 = v12;
LABEL_10:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v10 + 48) + 16 * v13);
      v3 = *v14;
      v15 = v14[1];
      v16 = *(*(v10 + 56) + 8 * v13);
      sub_22D8B09DC();

      v55 = v16;
      sub_22D85228C();
      v17 = sub_22D8B096C();
      if (v2)
      {

        return v3;
      }

      v18 = v17;
      v19 = [objc_opt_self() sharedManager];
      sub_22D85228C();
      v20 = sub_22D8B19CC();
      if (v18)
      {
        v21 = sub_22D8B190C();
      }

      else
      {
        v21 = 0;
      }

      v9 &= v9 - 1;
      v22 = [v19 retrieveAssetSet:v20 usages:v21 consistencyToken:*&v55[OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token]];

      if (v22)
      {
        break;
      }

      v23 = sub_22D85228C();
      v3 = v54;
      v25 = sub_22D852D10(v23, v24);
      v27 = v26;

      if (v27)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v43 = v54[3];
        sub_22D8580D8(&qword_27DA0D8E0, &qword_22D8B3FF0);
        sub_22D8B1EAC();
        v3 = v54;
        v44 = *(v54[6] + 16 * v25 + 8);

        sub_22D8B1EBC();
        v2 = 0;
        goto LABEL_28;
      }

      v12 = v11;
      v2 = 0;
      v10 = v53;
      if (!v9)
      {
LABEL_7:
        while (1)
        {
          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v11 >= v52)
          {

            return v3;
          }

          v9 = *(v6 + 8 * v11);
          ++v12;
          if (v9)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_34;
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    v28 = sub_22D85228C();
    sub_22D852D10(v28, v29);
    sub_22D85231C();
    if (__OFADD__(v31, v32))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v33 = v30;
    sub_22D8580D8(&qword_27DA0D8E0, &qword_22D8B3FF0);
    if ((sub_22D8B1EAC() & 1) == 0)
    {
      v2 = 0;
      if ((v54 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_27;
    }

    v34 = sub_22D85228C();
    sub_22D852D10(v34, v35);
    sub_22D8795B0();
    v2 = 0;
    if (v38)
    {
      v33 = v36;
      if ((v37 & 1) == 0)
      {
LABEL_23:
        v54[(v33 >> 6) + 8] |= 1 << v33;
        v39 = (v54[6] + 16 * v33);
        *v39 = v3;
        v39[1] = v15;
        v3 = v54;
        *(v54[7] + 8 * v33) = v22;

        v40 = v54[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
LABEL_35:
          __break(1u);
          break;
        }

        v54[2] = v42;
LABEL_28:
        v10 = v53;
        continue;
      }

LABEL_27:

      v3 = v54;
      v45 = v54[7];
      v46 = *(v45 + 8 * v33);
      *(v45 + 8 * v33) = v22;

      goto LABEL_28;
    }

    break;
  }

  result = sub_22D8B1FBC();
  __break(1u);
  return result;
}

id sub_22D877828(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22D877894(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22D8778EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22D8B073C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}