uint64_t sub_1000559C4()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 56), *(v0 + 48), 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100055A3C()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  swift_errorRetain();
  v3(0, 0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100055DA0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000A2AD8();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100055E6C, 0, 0);
}

uint64_t sub_100055E6C()
{
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = sub_100001E38(v3, qword_1000C95F8);
  swift_beginAccess();
  (*(v4 + 16))(v1, v5, v3);
  sub_1000A2A58();
  sub_100060224(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
  LOBYTE(v5) = sub_1000A3DF8();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5 & 1) != 0 && (sub_1000A2D18())
  {
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_1000560F4;

    return sub_1000683FC();
  }

  else
  {
    [*(v0 + 48) coordinate];
    v10 = v9;
    v12 = v11;
    v13 = [objc_opt_self() sharedSession];
    *(v0 + 112) = v13;
    v14 = async function pointer to static EnergyServices.gridIDLookup(forCoordinate:withSession:)[1];
    v15 = swift_task_alloc();
    *(v0 + 120) = v15;
    *v15 = v0;
    v15[1] = sub_1000562D8;
    v16.n128_u64[0] = v10;
    v17.n128_u64[0] = v12;

    return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v13, v16, v17);
  }
}

uint64_t sub_1000560F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;

  if (v2)
  {
    v10 = v6[9];
    v9 = v6[10];

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    v6[12] = a2;
    v6[13] = a1;

    return _swift_task_switch(sub_100056260, 0, 0);
  }
}

uint64_t sub_100056260()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[5];
  *v4 = v0[13];
  v4[1] = v1;

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000562D8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 120);
  v8 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v9 = sub_100056414;
  }

  else
  {

    *(v6 + 96) = a2;
    *(v6 + 104) = a1;
    v9 = sub_100056260;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100056414()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100056618(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_1000A3A88();
  v9 = v8;
  v4[5] = v8;
  v10 = a4;
  v11 = a2;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_100056710;

  return sub_10005E240(v7, v9, a2);
}

uint64_t sub_100056710(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  if (a2)
  {
    v10 = sub_1000A3A78();
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v4 + 32);
  (v11)[2](v11, v10);

  _Block_release(v11);
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1000568B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014898;

  return sub_100056618(v2, v3, v5, v4);
}

uint64_t sub_1000569A0(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_1000A2AD8();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100056A6C, 0, 0);
}

uint64_t sub_100056A6C()
{
  sub_1000A3AA8();
  v0[13] = os_transaction_create();

  sub_10003690C();
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v1 = sub_1000A3538();
  v0[14] = sub_100001E38(v1, qword_1000C96B8);
  v2 = sub_1000A3518();
  v3 = sub_1000A3CB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Connection established to EnergyKit API", v4, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v5 = qword_1000C95F0;
  v0[15] = qword_1000C95F0;

  return _swift_task_switch(sub_100056C28, v5, 0);
}

uint64_t sub_100056C28()
{
  *(v0 + 128) = *(*(v0 + 120) + 120);

  return _swift_task_switch(sub_100056CA0, 0, 0);
}

uint64_t sub_100056CA0()
{
  if (v0[16])
  {

    v1 = qword_1000C95F0;
    v0[17] = qword_1000C95F0;

    return _swift_task_switch(sub_100056DF4, v1, 0);
  }

  else
  {
    v2 = v0[14];
    v3 = sub_1000A3518();
    v4 = sub_1000A3CC8();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[13];
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Invalid application-identifier", v7, 2u);
    }

    swift_unknownObjectRelease();

    v9 = v0[11];
    v8 = v0[12];

    v10 = v0[1];

    return v10(0, 0);
  }
}

uint64_t sub_100056DF4()
{
  *(v0 + 232) = *(*(v0 + 136) + 144);

  return _swift_task_switch(sub_100056E64, 0, 0);
}

uint64_t sub_100056E64()
{
  v1 = *(v0 + 112);
  if (*(v0 + 232) == 1)
  {
    v2 = *(v0 + 56);
    v3 = sub_1000A3518();
    v4 = sub_1000A3CB8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 56);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v5;
      *v7 = v5;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Location: %@", v6, 0xCu);
      sub_100022154(v7, &unk_1000C7740, &qword_1000AB610);
    }

    v9 = *(v0 + 64);

    if (v9)
    {
      v11 = *(v0 + 56);
      v10 = *(v0 + 64);
      v12 = sub_1000A2BF8();
      *(v0 + 144) = v12;
      sub_1000A2BC8();
      v13 = swift_task_alloc();
      *(v0 + 152) = v13;
      *(v13 + 16) = v11;
      v14 = async function pointer to static EKSandboxExtension.withResources<A>(resources:_:)[1];
      v15 = swift_task_alloc();
      *(v0 + 160) = v15;
      *v15 = v0;
      v15[1] = sub_100057378;

      return static EKSandboxExtension.withResources<A>(resources:_:)(v0 + 40, v12, &unk_1000AC698, v13, &type metadata for String);
    }

    else
    {
      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v25 = *(v0 + 88);
      v24 = *(v0 + 96);
      v26 = *(v0 + 72);
      v27 = *(v0 + 80);
      v28 = sub_100001E38(v26, qword_1000C95F8);
      swift_beginAccess();
      (*(v27 + 16))(v24, v28, v26);
      sub_1000A2A58();
      sub_100060224(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
      LOBYTE(v28) = sub_1000A3DF8();
      v29 = *(v27 + 8);
      v29(v25, v26);
      v29(v24, v26);
      if (v28 & 1) != 0 && (sub_1000A2D18())
      {
        v30 = swift_task_alloc();
        *(v0 + 176) = v30;
        *v30 = v0;
        v30[1] = sub_10005754C;

        return sub_1000683FC();
      }

      else
      {
        [*(v0 + 56) coordinate];
        v32 = v31;
        v34 = v33;
        v35 = [objc_opt_self() sharedSession];
        *(v0 + 208) = v35;
        v36 = async function pointer to static EnergyServices.gridIDLookup(forCoordinate:withSession:)[1];
        v37 = swift_task_alloc();
        *(v0 + 216) = v37;
        *v37 = v0;
        v37[1] = sub_100057890;
        v38.n128_u64[0] = v32;
        v39.n128_u64[0] = v34;

        return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v35, v38, v39);
      }
    }
  }

  else
  {
    v16 = sub_1000A3518();
    v17 = sub_1000A3CC8();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 104);
    if (v18)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "[SiteOperations] Unauthorized", v20, 2u);
    }

    swift_unknownObjectRelease();

    v22 = *(v0 + 88);
    v21 = *(v0 + 96);

    v23 = *(v0 + 8);

    return v23(0, 0);
  }
}

uint64_t sub_100057378()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);

  if (v0)
  {
    v7 = sub_100057A3C;
  }

  else
  {
    v7 = sub_1000574C8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000574C8()
{
  v1 = v0[13];
  swift_unknownObjectRelease();
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[11];
  v4 = v0[12];

  v6 = v0[1];

  return v6(v3, v2);
}

uint64_t sub_10005754C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 176);
  v8 = *v3;

  if (v2)
  {
    v6[25] = v2;
    v9 = sub_100057708;
  }

  else
  {
    v6[23] = a2;
    v6[24] = a1;
    v9 = sub_100057680;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100057680()
{
  v1 = v0[23];
  v2 = v0[13];
  swift_unknownObjectRelease();
  v3 = v0[24];
  v5 = v0[11];
  v4 = v0[12];

  v6 = v0[1];

  return v6(v3, v1);
}

uint64_t sub_100057708()
{
  v1 = v0[25];
  v2 = v0[14];
  swift_errorRetain();
  v3 = sub_1000A3518();
  v4 = sub_1000A3CC8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Grid Fetch Failed: %@", v7, 0xCu);
    sub_100022154(v8, &unk_1000C7740, &qword_1000AB610);

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = v0[13];
    swift_unknownObjectRelease();
  }

  v12 = v0[11];
  v11 = v0[12];

  v13 = v0[1];

  return v13(0, 0);
}

uint64_t sub_100057890(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 216);
  v8 = *v3;
  *(*v3 + 224) = v2;

  if (v2)
  {
    v9 = sub_1000579CC;
  }

  else
  {

    *(v6 + 184) = a2;
    *(v6 + 192) = a1;
    v9 = sub_100057680;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000579CC()
{
  *(v0 + 200) = *(v0 + 224);

  return _swift_task_switch(sub_100057708, 0, 0);
}

uint64_t sub_100057A3C()
{
  v1 = v0[21];
  v2 = v0[14];
  swift_errorRetain();
  v3 = sub_1000A3518();
  v4 = sub_1000A3CC8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Grid Fetch Failed: %@", v7, 0xCu);
    sub_100022154(v8, &unk_1000C7740, &qword_1000AB610);

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = v0[13];
    swift_unknownObjectRelease();
  }

  v12 = v0[11];
  v11 = v0[12];

  v13 = v0[1];

  return v13(0, 0);
}

uint64_t sub_100057BC4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = *(*(sub_10000275C(&qword_1000C8C78, &qword_1000AC628) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = sub_1000A25D8();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v7 = sub_1000A2AD8();
  v2[15] = v7;
  v8 = *(v7 - 8);
  v2[16] = v8;
  v9 = *(v8 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100057D30, 0, 0);
}

uint64_t sub_100057D30()
{
  sub_1000A3AA8();
  v0[19] = os_transaction_create();

  sub_10003690C();
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v1 = sub_1000A3538();
  v0[20] = sub_100001E38(v1, qword_1000C96B8);
  v2 = sub_1000A3518();
  v3 = sub_1000A3CB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Connection established to EnergyKit API", v4, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v5 = qword_1000C95F0;
  v0[21] = qword_1000C95F0;

  return _swift_task_switch(sub_100057EEC, v5, 0);
}

uint64_t sub_100057EEC()
{
  *(v0 + 176) = *(*(v0 + 168) + 120);

  return _swift_task_switch(sub_100057F64, 0, 0);
}

uint64_t sub_100057F64()
{
  if (v0[22])
  {

    v1 = qword_1000C95F0;
    v0[23] = qword_1000C95F0;

    return _swift_task_switch(sub_1000580DC, v1, 0);
  }

  else
  {
    v2 = v0[20];
    v3 = sub_1000A3518();
    v4 = sub_1000A3CC8();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[19];
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Invalid application-identifier", v7, 2u);
    }

    swift_unknownObjectRelease();

    v9 = v0[17];
    v8 = v0[18];
    v11 = v0[13];
    v10 = v0[14];
    v12 = v0[10];

    v13 = v0[1];

    return v13(0, 0);
  }
}

uint64_t sub_1000580DC()
{
  *(v0 + 280) = *(*(v0 + 184) + 144);

  return _swift_task_switch(sub_10005814C, 0, 0);
}

uint64_t sub_10005814C()
{
  v1 = *(v0 + 160);
  if (*(v0 + 280) == 1)
  {
    v2 = *(v0 + 64);
    v3 = sub_1000A3518();
    v4 = sub_1000A3CB8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 64);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v5;
      *v7 = v5;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Location: %@", v6, 0xCu);
      sub_100022154(v7, &unk_1000C7740, &qword_1000AB610);
    }

    v9 = *(v0 + 72);

    if (v9)
    {
      v11 = *(v0 + 64);
      v10 = *(v0 + 72);
      v12 = sub_1000A39B8();
      *(v0 + 192) = v12;
      sub_1000A35D8();
      v13 = swift_task_alloc();
      *(v0 + 200) = v13;
      *(v13 + 16) = v11;
      v14 = async function pointer to static SandboxExtension.withResources<A>(resources:_:)[1];
      v15 = swift_task_alloc();
      *(v0 + 208) = v15;
      *v15 = v0;
      v15[1] = sub_100058684;

      return static SandboxExtension.withResources<A>(resources:_:)(v0 + 40, v12, &unk_1000AC660, v13, &type metadata for String);
    }

    else
    {
      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v28 = *(v0 + 136);
      v27 = *(v0 + 144);
      v29 = *(v0 + 120);
      v30 = *(v0 + 128);
      v31 = sub_100001E38(v29, qword_1000C95F8);
      swift_beginAccess();
      (*(v30 + 16))(v27, v31, v29);
      sub_1000A2A58();
      sub_100060224(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
      LOBYTE(v31) = sub_1000A3DF8();
      v32 = *(v30 + 8);
      v32(v28, v29);
      v32(v27, v29);
      if (v31 & 1) != 0 && (sub_1000A2D18())
      {
        v33 = swift_task_alloc();
        *(v0 + 224) = v33;
        *v33 = v0;
        v33[1] = sub_100058884;

        return sub_1000683FC();
      }

      else
      {
        [*(v0 + 64) coordinate];
        v35 = v34;
        v37 = v36;
        v38 = [objc_opt_self() sharedSession];
        *(v0 + 256) = v38;
        v39 = async function pointer to static EnergyServices.gridIDLookup(forCoordinate:withSession:)[1];
        v40 = swift_task_alloc();
        *(v0 + 264) = v40;
        *v40 = v0;
        v40[1] = sub_10005912C;
        v41.n128_u64[0] = v35;
        v42.n128_u64[0] = v37;

        return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v38, v41, v42);
      }
    }
  }

  else
  {
    v16 = sub_1000A3518();
    v17 = sub_1000A3CC8();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 152);
    if (v18)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "[SiteOperations] Unauthorized", v20, 2u);
    }

    swift_unknownObjectRelease();

    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v24 = *(v0 + 104);
    v23 = *(v0 + 112);
    v25 = *(v0 + 80);

    v26 = *(v0 + 8);

    return v26(0, 0);
  }
}

uint64_t sub_100058684()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 200);
  v6 = *(v2 + 192);

  if (v0)
  {
    v7 = sub_1000592D8;
  }

  else
  {
    v7 = sub_1000587D4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000587D4()
{
  v1 = v0[19];
  swift_unknownObjectRelease();
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[10];

  v9 = v0[1];

  return v9(v3, v2);
}

uint64_t sub_100058884(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 224);
  v8 = *v3;

  if (v2)
  {
    v6[31] = v2;
    v9 = sub_100058A6C;
  }

  else
  {
    v6[29] = a2;
    v6[30] = a1;
    v9 = sub_1000589B8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000589B8()
{
  v1 = v0[29];
  v2 = v0[19];
  swift_unknownObjectRelease();
  v3 = v0[30];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[10];

  v9 = v0[1];

  return v9(v3, v1);
}

uint64_t sub_100058A6C()
{
  v1 = v0[31];
  v2 = v0[20];
  swift_errorRetain();
  v3 = sub_1000A3518();
  v4 = sub_1000A3CC8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Grid Fetch Failed: %@", v5, 0xCu);
    sub_100022154(v6, &unk_1000C7740, &qword_1000AB610);
  }

  v9 = v0[10];
  v8 = v0[11];

  v0[7] = v1;
  swift_errorRetain();
  sub_10000275C(&qword_1000C7860, &qword_1000AB7B8);
  if (swift_dynamicCast())
  {
    v10 = v0[14];
    v12 = v0 + 13;
    v11 = v0[13];
    v13 = v0[11];
    v14 = v0[12];
    v15 = v0[10];
    (*(v14 + 56))(v15, 0, 1, v13);
    (*(v14 + 32))(v10, v15, v13);
    (*(v14 + 16))(v11, v10, v13);
    v16 = (*(v14 + 88))(v11, v13);
    if (v16 == enum case for NetworkError.urlNetworkError(_:) || v16 == enum case for NetworkError.internalFailure(_:))
    {
      v17 = v0[19];
      v18 = v0[14];
      v19 = v0[11];
      v20 = v0[12];
      v21 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, enum case for EnergyKitError.guidanceUnavailable(_:), v21);
      swift_willThrow();
      swift_unknownObjectRelease();

      v23 = *(v20 + 8);
      v23(v18, v19);
      v23(*v12, v0[11]);
LABEL_17:
      v43 = v0[17];
      v42 = v0[18];
      v45 = v0[13];
      v44 = v0[14];
      v46 = v0[10];

      v47 = v0[1];

      return v47();
    }

    if (v16 == enum case for NetworkError.serverFailure(_:) || v16 == enum case for NetworkError.notConnectedToInternet(_:) || v16 == enum case for NetworkError.cannotFindHost(_:))
    {
      v35 = v0[19];
    }

    else
    {
      if (v16 == enum case for NetworkError.dataUnavailable(_:))
      {
        v48 = v0[19];
        v36 = v0[12];
        v37 = sub_1000A3598();
        sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
        swift_allocError();
        v39 = v49;
        v40 = &enum case for EnergyKitError.unsupportedRegion(_:);
        goto LABEL_15;
      }

      v50 = v0[19];
      if (v16 != enum case for NetworkError.responseDecodingError(_:))
      {
        v51 = v0[14];
        v52 = v0[11];
        v53 = v0[12];
        v57 = enum case for NetworkError.unknown(_:);
        v54 = v16;
        v55 = sub_1000A3598();
        sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
        swift_allocError();
        (*(*(v55 - 8) + 104))(v56, enum case for EnergyKitError.guidanceUnavailable(_:), v55);
        swift_willThrow();
        swift_unknownObjectRelease();

        v41 = *(v53 + 8);
        v41(v51, v52);
        if (v54 == v57)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    v36 = v0[12];
    v37 = sub_1000A3598();
    sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
    swift_allocError();
    v39 = v38;
    v40 = &enum case for EnergyKitError.guidanceUnavailable(_:);
LABEL_15:
    (*(*(v37 - 8) + 104))(v39, *v40, v37);
    swift_willThrow();
    swift_unknownObjectRelease();

    v41 = *(v36 + 8);
    v12 = v0 + 14;
LABEL_16:
    v41(*v12, v0[11]);
    goto LABEL_17;
  }

  v24 = v0[19];
  v25 = v0[11];
  v26 = v0[12];
  v27 = v0[10];
  swift_unknownObjectRelease();

  (*(v26 + 56))(v27, 1, 1, v25);
  sub_100022154(v27, &qword_1000C8C78, &qword_1000AC628);
  v29 = v0[17];
  v28 = v0[18];
  v31 = v0[13];
  v30 = v0[14];
  v32 = v0[10];

  v33 = v0[1];

  return v33(0, 0);
}

uint64_t sub_10005912C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 264);
  v8 = *v3;
  *(*v3 + 272) = v2;

  if (v2)
  {
    v9 = sub_100059268;
  }

  else
  {

    *(v6 + 232) = a2;
    *(v6 + 240) = a1;
    v9 = sub_1000589B8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100059268()
{
  *(v0 + 248) = *(v0 + 272);

  return _swift_task_switch(sub_100058A6C, 0, 0);
}

uint64_t sub_1000592D8()
{
  v1 = v0[27];
  v2 = v0[20];
  swift_errorRetain();
  v3 = sub_1000A3518();
  v4 = sub_1000A3CC8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Grid Fetch Failed: %@", v5, 0xCu);
    sub_100022154(v6, &unk_1000C7740, &qword_1000AB610);
  }

  v9 = v0[10];
  v8 = v0[11];

  v0[7] = v1;
  swift_errorRetain();
  sub_10000275C(&qword_1000C7860, &qword_1000AB7B8);
  if (swift_dynamicCast())
  {
    v10 = v0[14];
    v12 = v0 + 13;
    v11 = v0[13];
    v13 = v0[11];
    v14 = v0[12];
    v15 = v0[10];
    (*(v14 + 56))(v15, 0, 1, v13);
    (*(v14 + 32))(v10, v15, v13);
    (*(v14 + 16))(v11, v10, v13);
    v16 = (*(v14 + 88))(v11, v13);
    if (v16 == enum case for NetworkError.urlNetworkError(_:) || v16 == enum case for NetworkError.internalFailure(_:))
    {
      v17 = v0[19];
      v18 = v0[14];
      v19 = v0[11];
      v20 = v0[12];
      v21 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, enum case for EnergyKitError.guidanceUnavailable(_:), v21);
      swift_willThrow();
      swift_unknownObjectRelease();

      v23 = *(v20 + 8);
      v23(v18, v19);
      v23(*v12, v0[11]);
LABEL_17:
      v43 = v0[17];
      v42 = v0[18];
      v45 = v0[13];
      v44 = v0[14];
      v46 = v0[10];

      v47 = v0[1];

      return v47();
    }

    if (v16 == enum case for NetworkError.serverFailure(_:) || v16 == enum case for NetworkError.notConnectedToInternet(_:) || v16 == enum case for NetworkError.cannotFindHost(_:))
    {
      v35 = v0[19];
    }

    else
    {
      if (v16 == enum case for NetworkError.dataUnavailable(_:))
      {
        v48 = v0[19];
        v36 = v0[12];
        v37 = sub_1000A3598();
        sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
        swift_allocError();
        v39 = v49;
        v40 = &enum case for EnergyKitError.unsupportedRegion(_:);
        goto LABEL_15;
      }

      v50 = v0[19];
      if (v16 != enum case for NetworkError.responseDecodingError(_:))
      {
        v51 = v0[14];
        v52 = v0[11];
        v53 = v0[12];
        v57 = enum case for NetworkError.unknown(_:);
        v54 = v16;
        v55 = sub_1000A3598();
        sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
        swift_allocError();
        (*(*(v55 - 8) + 104))(v56, enum case for EnergyKitError.guidanceUnavailable(_:), v55);
        swift_willThrow();
        swift_unknownObjectRelease();

        v41 = *(v53 + 8);
        v41(v51, v52);
        if (v54 == v57)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    v36 = v0[12];
    v37 = sub_1000A3598();
    sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
    swift_allocError();
    v39 = v38;
    v40 = &enum case for EnergyKitError.guidanceUnavailable(_:);
LABEL_15:
    (*(*(v37 - 8) + 104))(v39, *v40, v37);
    swift_willThrow();
    swift_unknownObjectRelease();

    v41 = *(v36 + 8);
    v12 = v0 + 14;
LABEL_16:
    v41(*v12, v0[11]);
    goto LABEL_17;
  }

  v24 = v0[19];
  v25 = v0[11];
  v26 = v0[12];
  v27 = v0[10];
  swift_unknownObjectRelease();

  (*(v26 + 56))(v27, 1, 1, v25);
  sub_100022154(v27, &qword_1000C8C78, &qword_1000AC628);
  v29 = v0[17];
  v28 = v0[18];
  v31 = v0[13];
  v30 = v0[14];
  v32 = v0[10];

  v33 = v0[1];

  return v33(0, 0);
}

uint64_t sub_100059998(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = *(*(sub_10000275C(&qword_1000C8C78, &qword_1000AC628) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = sub_1000A25D8();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v7 = sub_1000A2AD8();
  v2[15] = v7;
  v8 = *(v7 - 8);
  v2[16] = v8;
  v9 = *(v8 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v10 = *(*(sub_10000275C(&qword_1000C92C0, &qword_1000ACB30) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v11 = sub_1000A2508();
  v2[20] = v11;
  v12 = *(v11 - 8);
  v2[21] = v12;
  v13 = *(v12 + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100059B98, 0, 0);
}

uint64_t sub_100059B98()
{
  sub_1000A3AA8();
  v0[23] = os_transaction_create();

  sub_10003690C();
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v1 = sub_1000A3538();
  v0[24] = sub_100001E38(v1, qword_1000C96B8);
  v2 = sub_1000A3518();
  v3 = sub_1000A3CB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Connection established to EnergyKit API", v4, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v5 = qword_1000C95F0;
  v0[25] = qword_1000C95F0;

  return _swift_task_switch(sub_100059D54, v5, 0);
}

uint64_t sub_100059D54()
{
  *(v0 + 208) = *(*(v0 + 200) + 120);

  return _swift_task_switch(sub_100059DCC, 0, 0);
}

uint64_t sub_100059DCC()
{
  if (v0[26])
  {

    v1 = qword_1000C95F0;
    v0[27] = qword_1000C95F0;

    return _swift_task_switch(sub_100059F68, v1, 0);
  }

  else
  {
    v2 = v0[24];
    v3 = sub_1000A3518();
    v4 = sub_1000A3CC8();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[23];
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Invalid application-identifier", v7, 2u);
    }

    swift_unknownObjectRelease();

    v8 = v0[22];
    v9 = v0[18];
    v10 = v0[19];
    v11 = v0[17];
    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[10];

    v15 = v0[1];

    return v15(0, 0);
  }
}

uint64_t sub_100059F68()
{
  *(v0 + 520) = *(*(v0 + 216) + 144);

  return _swift_task_switch(sub_100059FD8, 0, 0);
}

uint64_t sub_100059FD8()
{
  if (*(v0 + 520))
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    *(v0 + 224) = qword_1000C96F8;

    v1 = swift_task_alloc();
    *(v0 + 232) = v1;
    *v1 = v0;
    v1[1] = sub_10005A1D8;
    v2 = *(v0 + 152);
    v3 = *(v0 + 64);

    return sub_10006CFD4(v2, v3);
  }

  else
  {
    v5 = *(v0 + 192);
    v6 = sub_1000A3518();
    v7 = sub_1000A3CC8();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 184);
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[SiteOperations] missing entitlement", v10, 2u);
    }

    swift_unknownObjectRelease();

    v11 = *(v0 + 176);
    v12 = *(v0 + 144);
    v13 = *(v0 + 152);
    v14 = *(v0 + 136);
    v16 = *(v0 + 104);
    v15 = *(v0 + 112);
    v17 = *(v0 + 80);

    v18 = *(v0 + 8);

    return v18(0, 0);
  }
}

uint64_t sub_10005A1D8()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return _swift_task_switch(sub_10005A2F0, 0, 0);
}

uint64_t sub_10005A2F0()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[23];
    swift_unknownObjectRelease();
    sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);
    v5 = v0[22];
    v6 = v0[18];
    v7 = v0[19];
    v8 = v0[17];
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[10];

    v12 = v0[1];

    return v12(0, 0);
  }

  else
  {
    (*(v2 + 32))(v0[22], v3, v1);
    v14 = sub_1000A24C8();
    v16 = v15;
    v0[30] = v15;
    v17 = swift_task_alloc();
    v0[31] = v17;
    *v17 = v0;
    v17[1] = sub_10005A4C4;

    return sub_100066308(v14, v16, 0);
  }
}

uint64_t sub_10005A4C4(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_10005A5E4, 0, 0);
}

uint64_t sub_10005A5E4()
{
  v1 = *(v0 + 256);
  if (!v1)
  {
    goto LABEL_20;
  }

  v2 = v1;
  v3 = sub_1000A2DC8();

  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = sub_1000A2DC8();
  if (!v4 || (v5 = v4, [v4 coordinate], v7 = v6, v5, v7 == -180.0))
  {
    v8 = sub_1000A2DC8();
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = v8;
    [v8 coordinate];
    v11 = v10;

    if (v11 == -180.0)
    {
      goto LABEL_20;
    }
  }

  v12 = sub_1000A2D58();
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v12;
  v15 = v13;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = *(v0 + 192);
  v18 = sub_1000A3518();
  v19 = sub_1000A3CD8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "[SiteOperations] Site onboarded. Use site location for gridID", v20, 2u);
  }

  v21 = v2;
  v22 = sub_1000A2DC8();

  if (v22)
  {
    *(v0 + 336) = v22;
    *(v0 + 521) = 0;
    v23 = *(v0 + 192);
    v24 = v22;
    v25 = sub_1000A3518();
    v26 = sub_1000A3CB8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v22;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v25, v26, "[SiteOperations] Location: %@", v27, 0xCu);
      sub_100022154(v28, &unk_1000C7740, &qword_1000AB610);
    }

    v30 = *(v0 + 72);

    if (v30)
    {
      v31 = *(v0 + 72);
      v32 = sub_1000A39B8();
      *(v0 + 344) = v32;
      sub_1000A35D8();
      v33 = swift_task_alloc();
      *(v0 + 352) = v33;
      *(v33 + 16) = v24;
      v34 = async function pointer to static SandboxExtension.withResources<A>(resources:_:)[1];
      v35 = swift_task_alloc();
      *(v0 + 360) = v35;
      *v35 = v0;
      v35[1] = sub_10005BC20;

      return static SandboxExtension.withResources<A>(resources:_:)(v0 + 40, v32, &unk_1000AC638, v33, &type metadata for String);
    }

    else
    {
      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v43 = *(v0 + 136);
      v42 = *(v0 + 144);
      v44 = *(v0 + 120);
      v45 = *(v0 + 128);
      v46 = sub_100001E38(v44, qword_1000C95F8);
      swift_beginAccess();
      (*(v45 + 16))(v42, v46, v44);
      sub_1000A2A58();
      sub_100060224(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
      LOBYTE(v46) = sub_1000A3DF8();
      v47 = *(v45 + 8);
      v47(v43, v44);
      v47(v42, v44);
      if (v46 & 1) != 0 && (sub_1000A2D18())
      {
        v48 = swift_task_alloc();
        *(v0 + 424) = v48;
        *v48 = v0;
        v48[1] = sub_10005C400;

        return sub_1000683FC();
      }

      else
      {
        [v24 coordinate];
        v50 = v49;
        v52 = v51;
        v53 = [objc_opt_self() sharedSession];
        *(v0 + 456) = v53;
        v54 = async function pointer to static EnergyServices.gridIDLookup(forCoordinate:withSession:)[1];
        v55 = swift_task_alloc();
        *(v0 + 464) = v55;
        *v55 = v0;
        v55[1] = sub_10005D0E4;
        v56.n128_u64[0] = v50;
        v57.n128_u64[0] = v52;

        return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v53, v56, v57);
      }
    }
  }

  else
  {
LABEL_20:
    v36 = *(v0 + 192);
    v37 = sub_1000A3518();
    v38 = sub_1000A3CD8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "[SiteOperations] Site not onboarded. Use home location for gridID", v39, 2u);
    }

    *(v0 + 264) = qword_1000C96F8;

    v40 = swift_task_alloc();
    *(v0 + 272) = v40;
    *v40 = v0;
    v40[1] = sub_10005AC80;
    v41 = *(v0 + 176);

    return sub_1000716DC(v41);
  }
}

uint64_t sub_10005AC80(uint64_t a1)
{
  v2 = *(*v1 + 272);
  v3 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_10005ADA0, 0, 0);
}

uint64_t sub_10005ADA0()
{
  v1 = *(v0 + 280);
  v2 = [v1 location];

  if (v2)
  {

    *(v0 + 336) = v2;
    *(v0 + 521) = 0;
    v3 = *(v0 + 192);
    v4 = v2;
    v5 = sub_1000A3518();
    v6 = sub_1000A3CB8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v2;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, "[SiteOperations] Location: %@", v7, 0xCu);
      sub_100022154(v8, &unk_1000C7740, &qword_1000AB610);
    }

    v10 = *(v0 + 72);

    if (v10)
    {
      v11 = *(v0 + 72);
      v12 = sub_1000A39B8();
      *(v0 + 344) = v12;
      sub_1000A35D8();
      v13 = swift_task_alloc();
      *(v0 + 352) = v13;
      *(v13 + 16) = v4;
      v14 = async function pointer to static SandboxExtension.withResources<A>(resources:_:)[1];
      v15 = swift_task_alloc();
      *(v0 + 360) = v15;
      *v15 = v0;
      v15[1] = sub_10005BC20;

      return static SandboxExtension.withResources<A>(resources:_:)(v0 + 40, v12, &unk_1000AC638, v13, &type metadata for String);
    }

    else
    {
      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 136);
      v18 = *(v0 + 144);
      v20 = *(v0 + 120);
      v21 = *(v0 + 128);
      v22 = sub_100001E38(v20, qword_1000C95F8);
      swift_beginAccess();
      (*(v21 + 16))(v18, v22, v20);
      sub_1000A2A58();
      sub_100060224(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
      LOBYTE(v22) = sub_1000A3DF8();
      v23 = *(v21 + 8);
      v23(v19, v20);
      v23(v18, v20);
      if (v22 & 1) != 0 && (sub_1000A2D18())
      {
        v24 = swift_task_alloc();
        *(v0 + 424) = v24;
        *v24 = v0;
        v24[1] = sub_10005C400;

        return sub_1000683FC();
      }

      else
      {
        [v4 coordinate];
        v26 = v25;
        v28 = v27;
        v29 = [objc_opt_self() sharedSession];
        *(v0 + 456) = v29;
        v30 = async function pointer to static EnergyServices.gridIDLookup(forCoordinate:withSession:)[1];
        v31 = swift_task_alloc();
        *(v0 + 464) = v31;
        *v31 = v0;
        v31[1] = sub_10005D0E4;
        v32.n128_u64[0] = v26;
        v33.n128_u64[0] = v28;

        return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v29, v32, v33);
      }
    }
  }

  else
  {
    if (qword_1000C7588 != -1)
    {
      swift_once();
    }

    v16 = swift_task_alloc();
    *(v0 + 288) = v16;
    *v16 = v0;
    v16[1] = sub_10005B2C0;
    v17 = *(v0 + 176);

    return sub_100050A90(v17);
  }
}

uint64_t sub_10005B2C0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 288);
  v6 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = a2;

  return _swift_task_switch(sub_10005B3C0, 0, 0);
}

uint64_t sub_10005B3C0()
{
  v36 = v0;
  v1 = v0[38];
  if (v1)
  {
    v2 = v0[24];
    v3 = v0[38];

    v4 = sub_1000A3518();
    v5 = sub_1000A3CD8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[37];
      v7 = v0[35];
      v8 = v0[23];
      v33 = v0[22];
      v9 = v0[21];
      v31 = v0[32];
      v32 = v0[20];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1000954AC(v6, v1, &v35);
      _os_log_impl(&_mh_execute_header, v4, v5, "[SiteOperations] Found confident gridID based on decay scores: %s", v10, 0xCu);
      sub_10000F7B8(v11);

      swift_unknownObjectRelease();

      (*(v9 + 8))(v33, v32);
    }

    else
    {
      v15 = v0[35];
      v16 = v0[32];
      v18 = v0[22];
      v17 = v0[23];
      v19 = v0[20];
      v20 = v0[21];
      swift_unknownObjectRelease();

      (*(v20 + 8))(v18, v19);
    }

    v21 = v0[37];
    v22 = v0[38];
    v23 = v0[22];
    v25 = v0[18];
    v24 = v0[19];
    v26 = v0[17];
    v28 = v0[13];
    v27 = v0[14];
    v29 = v0[10];

    v30 = v0[1];

    return v30(v21, v22);
  }

  else
  {
    sub_1000A2A38();
    v0[39] = sub_1000A2A28();
    v12 = *(&async function pointer to dispatch thunk of HomeEnergyManager.getCurrentLocation() + 1);
    v34 = (&async function pointer to dispatch thunk of HomeEnergyManager.getCurrentLocation() + async function pointer to dispatch thunk of HomeEnergyManager.getCurrentLocation());
    v13 = swift_task_alloc();
    v0[40] = v13;
    *v13 = v0;
    v13[1] = sub_10005B680;

    return v34();
  }
}

uint64_t sub_10005B680(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 320);
  v7 = *v2;

  v8 = *(v4 + 312);
  if (v1)
  {

    v9 = sub_10005D75C;
  }

  else
  {

    *(v5 + 328) = a1;
    v9 = sub_10005B7D4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10005B7D4()
{
  v1 = *(v0 + 328);

  *(v0 + 336) = v1;
  *(v0 + 521) = 1;
  v2 = *(v0 + 192);
  v3 = v1;
  v4 = sub_1000A3518();
  v5 = sub_1000A3CB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v1;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "[SiteOperations] Location: %@", v6, 0xCu);
    sub_100022154(v7, &unk_1000C7740, &qword_1000AB610);
  }

  v9 = *(v0 + 72);

  if (v9)
  {
    v10 = *(v0 + 72);
    v11 = sub_1000A39B8();
    *(v0 + 344) = v11;
    sub_1000A35D8();
    v12 = swift_task_alloc();
    *(v0 + 352) = v12;
    *(v12 + 16) = v3;
    v13 = async function pointer to static SandboxExtension.withResources<A>(resources:_:)[1];
    v14 = swift_task_alloc();
    *(v0 + 360) = v14;
    *v14 = v0;
    v14[1] = sub_10005BC20;

    return static SandboxExtension.withResources<A>(resources:_:)(v0 + 40, v11, &unk_1000AC638, v12, &type metadata for String);
  }

  else
  {
    if (qword_1000C7560 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 136);
    v15 = *(v0 + 144);
    v17 = *(v0 + 120);
    v18 = *(v0 + 128);
    v19 = sub_100001E38(v17, qword_1000C95F8);
    swift_beginAccess();
    (*(v18 + 16))(v15, v19, v17);
    sub_1000A2A58();
    sub_100060224(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
    LOBYTE(v19) = sub_1000A3DF8();
    v20 = *(v18 + 8);
    v20(v16, v17);
    v20(v15, v17);
    if (v19 & 1) != 0 && (sub_1000A2D18())
    {
      v21 = swift_task_alloc();
      *(v0 + 424) = v21;
      *v21 = v0;
      v21[1] = sub_10005C400;

      return sub_1000683FC();
    }

    else
    {
      [v3 coordinate];
      v23 = v22;
      v25 = v24;
      v26 = [objc_opt_self() sharedSession];
      *(v0 + 456) = v26;
      v27 = async function pointer to static EnergyServices.gridIDLookup(forCoordinate:withSession:)[1];
      v28 = swift_task_alloc();
      *(v0 + 464) = v28;
      *v28 = v0;
      v28[1] = sub_10005D0E4;
      v29.n128_u64[0] = v23;
      v30.n128_u64[0] = v25;

      return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v26, v29, v30);
    }
  }
}

uint64_t sub_10005BC20()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 352);
  v6 = *(v2 + 344);

  if (v0)
  {
    v7 = sub_10005D850;
  }

  else
  {
    v7 = sub_10005BD70;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10005BD70()
{
  if (*(v0 + 521) == 1)
  {
    if (qword_1000C7588 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    *(v0 + 376) = qword_1000C96F0;
    *(v0 + 384) = v2;
    v3 = swift_task_alloc();
    *(v0 + 392) = v3;
    *v3 = v0;
    v3[1] = sub_10005BF34;
    v4 = *(v0 + 176);

    return sub_10004FC40(v1, v2, v4);
  }

  else
  {
    v6 = *(v0 + 336);
    v7 = *(v0 + 256);
    v8 = *(v0 + 184);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    swift_unknownObjectRelease();

    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    v11 = *(v0 + 176);
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 136);
    v16 = *(v0 + 104);
    v15 = *(v0 + 112);
    v17 = *(v0 + 80);

    v18 = *(v0 + 8);

    return v18(v10, v9);
  }
}

uint64_t sub_10005BF34()
{
  v1 = *v0;
  v2 = *(*v0 + 392);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[50] = v4;
  *v4 = v3;
  v4[1] = sub_10005C08C;
  v5 = v1[47];
  v6 = v1[22];

  return sub_100050A90(v6);
}

uint64_t sub_10005C08C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 400);
  v6 = *v2;
  *(v3 + 408) = a1;
  *(v3 + 416) = a2;

  return _swift_task_switch(sub_10005C18C, 0, 0);
}

uint64_t sub_10005C18C()
{
  v36 = v0;
  v1 = v0[52];
  if (v1)
  {
    v2 = v0 + 51;
    v3 = v0[48];
    v4 = v0[24];

    v5 = sub_1000A3518();
    v6 = sub_1000A3CD8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[51];
      v8 = v0[42];
      v31 = v0[23];
      v32 = v0[32];
      v9 = v0[21];
      v33 = v0[20];
      v34 = v0[22];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1000954AC(v7, v1, &v35);
      _os_log_impl(&_mh_execute_header, v5, v6, "[SiteOperations] Using confident gridID from decay scores: %s", v10, 0xCu);
      sub_10000F7B8(v11);

      swift_unknownObjectRelease();

      (*(v9 + 8))(v34, v33);
    }

    else
    {
      v15 = v0[42];
      v16 = v0[32];
      v18 = v0[22];
      v17 = v0[23];
      v19 = v0[20];
      v20 = v0[21];
      swift_unknownObjectRelease();

      (*(v20 + 8))(v18, v19);
    }
  }

  else
  {
    v2 = v0 + 5;
    v12 = v0[42];
    v13 = v0[32];
    v14 = v0[23];
    (*(v0[21] + 8))(v0[22], v0[20]);
    swift_unknownObjectRelease();

    v1 = v0[6];
  }

  v21 = *v2;
  v22 = v0[22];
  v24 = v0[18];
  v23 = v0[19];
  v25 = v0[17];
  v27 = v0[13];
  v26 = v0[14];
  v28 = v0[10];

  v29 = v0[1];

  return v29(v21, v1);
}

uint64_t sub_10005C400(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 424);
  v8 = *v3;

  if (v2)
  {
    v6[56] = v2;
    v9 = sub_10005C6F4;
  }

  else
  {
    v6[54] = a2;
    v6[55] = a1;
    v9 = sub_10005C534;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10005C534()
{
  if (*(v0 + 521) == 1)
  {
    if (qword_1000C7588 != -1)
    {
      swift_once();
    }

    *(v0 + 480) = qword_1000C96F0;
    v1 = swift_task_alloc();
    *(v0 + 488) = v1;
    *v1 = v0;
    v1[1] = sub_10005D290;
    v2 = *(v0 + 432);
    v3 = *(v0 + 440);
    v4 = *(v0 + 176);

    return sub_10004FC40(v3, v2, v4);
  }

  else
  {
    v6 = *(v0 + 336);
    v7 = *(v0 + 256);
    v8 = *(v0 + 184);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    swift_unknownObjectRelease();

    v9 = *(v0 + 432);
    v10 = *(v0 + 440);
    v11 = *(v0 + 176);
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 136);
    v16 = *(v0 + 104);
    v15 = *(v0 + 112);
    v17 = *(v0 + 80);

    v18 = *(v0 + 8);

    return v18(v10, v9);
  }
}

uint64_t sub_10005C6F4()
{
  v1 = v0[56];
  v2 = v0[24];
  swift_errorRetain();
  v3 = sub_1000A3518();
  v4 = sub_1000A3CC8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Grid Fetch Failed: %@", v5, 0xCu);
    sub_100022154(v6, &unk_1000C7740, &qword_1000AB610);
  }

  v9 = v0 + 11;
  v8 = v0[11];
  v10 = v0[10];

  v0[7] = v1;
  swift_errorRetain();
  sub_10000275C(&qword_1000C7860, &qword_1000AB7B8);
  if (swift_dynamicCast())
  {
    v11 = v0[13];
    v12 = v0[14];
    v13 = v0 + 13;
    v14 = v0[11];
    v15 = v0[12];
    v16 = v0[10];
    (*(v15 + 56))(v16, 0, 1, v14);
    (*(v15 + 32))(v12, v16, v14);
    (*(v15 + 16))(v11, v12, v14);
    v17 = (*(v15 + 88))(v11, v14);
    if (v17 == enum case for NetworkError.urlNetworkError(_:))
    {
      v18 = v0[42];
      v19 = v0[23];
      v20 = v0[21];
      v92 = v0[20];
      v95 = v0[22];
      v89 = v0[14];
      v21 = v0[12];
      v83 = v0[32];
      v86 = v0[11];
      v22 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, enum case for EnergyKitError.guidanceUnavailable(_:), v22);
      swift_willThrow();
      swift_unknownObjectRelease();

      v24 = *(v21 + 8);
      v24(v89, v86);
      (*(v20 + 8))(v95, v92);
      v24(*v13, *v9);
LABEL_18:
      v59 = v0[22];
      v61 = v0[18];
      v60 = v0[19];
      v62 = v0[17];
      v64 = v0[13];
      v63 = v0[14];
      v65 = v0[10];

      v66 = v0[1];

      return v66();
    }

    if (v17 == enum case for NetworkError.internalFailure(_:))
    {
      v40 = v0[42];
      v41 = v0[23];
      v42 = v0[21];
      v93 = v0[20];
      v96 = v0[22];
      v90 = v0[14];
      v43 = v0[12];
      v84 = v0[32];
      v87 = v0[11];
      v44 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
      swift_allocError();
      (*(*(v44 - 8) + 104))(v45, enum case for EnergyKitError.guidanceUnavailable(_:), v44);
      swift_willThrow();
      swift_unknownObjectRelease();

      v46 = *(v43 + 8);
      v46(v90, v87);
      (*(v42 + 8))(v96, v93);
      v46(*v13, *v9);
      goto LABEL_18;
    }

    if (v17 == enum case for NetworkError.serverFailure(_:) || v17 == enum case for NetworkError.notConnectedToInternet(_:) || v17 == enum case for NetworkError.cannotFindHost(_:))
    {
      v47 = v0[42];
      v48 = v0[32];
      v49 = v0[23];
      v50 = v0[21];
      v97 = v0[14];
      v52 = v0[11];
      v51 = v0[12];
      v53 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
      swift_allocError();
      v55 = v54;
      v56 = &enum case for EnergyKitError.guidanceUnavailable(_:);
    }

    else
    {
      if (v17 != enum case for NetworkError.dataUnavailable(_:))
      {
        v69 = v0[42];
        v98 = v0[32];
        v70 = v0[23];
        if (v17 != enum case for NetworkError.responseDecodingError(_:))
        {
          v77 = v0[21];
          v91 = v0[20];
          v94 = v0[22];
          v78 = v0[12];
          v81 = v0[11];
          v82 = v0[14];
          v88 = enum case for NetworkError.unknown(_:);
          v85 = v17;
          v79 = sub_1000A3598();
          sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
          swift_allocError();
          (*(*(v79 - 8) + 104))(v80, enum case for EnergyKitError.guidanceUnavailable(_:), v79);
          swift_willThrow();
          swift_unknownObjectRelease();

          v58 = *(v78 + 8);
          v58(v82, v81);
          (*(v77 + 8))(v94, v91);
          if (v85 == v88)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        v71 = v0[21];
        v72 = v0[14];
        v73 = v0[11];
        v74 = v0[12];
        v75 = sub_1000A3598();
        sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
        swift_allocError();
        (*(*(v75 - 8) + 104))(v76, enum case for EnergyKitError.guidanceUnavailable(_:), v75);
        swift_willThrow();
        v57 = v71;
        swift_unknownObjectRelease();

        (*(v74 + 8))(v72, v73);
LABEL_16:
        v58 = *(v57 + 8);
        v13 = v0 + 22;
        v9 = v0 + 20;
LABEL_17:
        v58(*v13, *v9);
        goto LABEL_18;
      }

      v47 = v0[42];
      v48 = v0[32];
      v67 = v0[23];
      v50 = v0[21];
      v97 = v0[14];
      v52 = v0[11];
      v51 = v0[12];
      v53 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
      swift_allocError();
      v55 = v68;
      v56 = &enum case for EnergyKitError.unsupportedRegion(_:);
    }

    (*(*(v53 - 8) + 104))(v55, *v56, v53);
    swift_willThrow();
    v57 = v50;
    swift_unknownObjectRelease();

    (*(v51 + 8))(v97, v52);
    goto LABEL_16;
  }

  v25 = v0[42];
  v26 = v0[32];
  v27 = v0[23];
  v28 = v0[11];
  v29 = v0[12];
  v30 = v0[10];
  (*(v0[21] + 8))(v0[22], v0[20]);
  swift_unknownObjectRelease();

  (*(v29 + 56))(v30, 1, 1, v28);
  sub_100022154(v30, &qword_1000C8C78, &qword_1000AC628);
  v31 = v0[22];
  v32 = v0[18];
  v33 = v0[19];
  v34 = v0[17];
  v36 = v0[13];
  v35 = v0[14];
  v37 = v0[10];

  v38 = v0[1];

  return v38(0, 0);
}

uint64_t sub_10005D0E4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 464);
  v8 = *v3;
  *(*v3 + 472) = v2;

  if (v2)
  {
    v9 = sub_10005D220;
  }

  else
  {

    *(v6 + 432) = a2;
    *(v6 + 440) = a1;
    v9 = sub_10005C534;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10005D220()
{
  *(v0 + 448) = *(v0 + 472);

  return _swift_task_switch(sub_10005C6F4, 0, 0);
}

uint64_t sub_10005D290()
{
  v1 = *v0;
  v2 = *(*v0 + 488);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[62] = v4;
  *v4 = v3;
  v4[1] = sub_10005D3E8;
  v5 = v1[60];
  v6 = v1[22];

  return sub_100050A90(v6);
}

uint64_t sub_10005D3E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 496);
  v6 = *v2;
  *(v3 + 504) = a1;
  *(v3 + 512) = a2;

  return _swift_task_switch(sub_10005D4E8, 0, 0);
}

uint64_t sub_10005D4E8()
{
  v36 = v0;
  v1 = v0[64];
  if (v1)
  {
    v2 = v0 + 63;
    v3 = v0[54];
    v4 = v0[24];

    v5 = sub_1000A3518();
    v6 = sub_1000A3CD8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[63];
      v8 = v0[42];
      v31 = v0[23];
      v32 = v0[32];
      v9 = v0[21];
      v33 = v0[20];
      v34 = v0[22];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1000954AC(v7, v1, &v35);
      _os_log_impl(&_mh_execute_header, v5, v6, "[SiteOperations] Using confident gridID from decay scores: %s", v10, 0xCu);
      sub_10000F7B8(v11);

      swift_unknownObjectRelease();

      (*(v9 + 8))(v34, v33);
    }

    else
    {
      v15 = v0[42];
      v16 = v0[32];
      v18 = v0[22];
      v17 = v0[23];
      v19 = v0[20];
      v20 = v0[21];
      swift_unknownObjectRelease();

      (*(v20 + 8))(v18, v19);
    }
  }

  else
  {
    v12 = v0[42];
    v13 = v0[32];
    v14 = v0[23];
    (*(v0[21] + 8))(v0[22], v0[20]);
    swift_unknownObjectRelease();

    v2 = v0 + 55;
    v1 = v0[54];
  }

  v21 = *v2;
  v22 = v0[22];
  v24 = v0[18];
  v23 = v0[19];
  v25 = v0[17];
  v27 = v0[13];
  v26 = v0[14];
  v28 = v0[10];

  v29 = v0[1];

  return v29(v21, v1);
}

uint64_t sub_10005D75C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);

  (*(v5 + 8))(v2, v4);
  swift_unknownObjectRelease();

  v6 = *(v0 + 176);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v9 = *(v0 + 136);
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v12 = *(v0 + 80);

  v13 = *(v0 + 8);

  return v13(0, 0);
}

uint64_t sub_10005D850()
{
  v1 = v0[46];
  v2 = v0[24];
  swift_errorRetain();
  v3 = sub_1000A3518();
  v4 = sub_1000A3CC8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Grid Fetch Failed: %@", v5, 0xCu);
    sub_100022154(v6, &unk_1000C7740, &qword_1000AB610);
  }

  v9 = v0 + 11;
  v8 = v0[11];
  v10 = v0[10];

  v0[7] = v1;
  swift_errorRetain();
  sub_10000275C(&qword_1000C7860, &qword_1000AB7B8);
  if (swift_dynamicCast())
  {
    v11 = v0[13];
    v12 = v0[14];
    v13 = v0 + 13;
    v14 = v0[11];
    v15 = v0[12];
    v16 = v0[10];
    (*(v15 + 56))(v16, 0, 1, v14);
    (*(v15 + 32))(v12, v16, v14);
    (*(v15 + 16))(v11, v12, v14);
    v17 = (*(v15 + 88))(v11, v14);
    if (v17 == enum case for NetworkError.urlNetworkError(_:))
    {
      v18 = v0[42];
      v19 = v0[23];
      v20 = v0[21];
      v92 = v0[20];
      v95 = v0[22];
      v89 = v0[14];
      v21 = v0[12];
      v83 = v0[32];
      v86 = v0[11];
      v22 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, enum case for EnergyKitError.guidanceUnavailable(_:), v22);
      swift_willThrow();
      swift_unknownObjectRelease();

      v24 = *(v21 + 8);
      v24(v89, v86);
      (*(v20 + 8))(v95, v92);
      v24(*v13, *v9);
LABEL_18:
      v59 = v0[22];
      v61 = v0[18];
      v60 = v0[19];
      v62 = v0[17];
      v64 = v0[13];
      v63 = v0[14];
      v65 = v0[10];

      v66 = v0[1];

      return v66();
    }

    if (v17 == enum case for NetworkError.internalFailure(_:))
    {
      v40 = v0[42];
      v41 = v0[23];
      v42 = v0[21];
      v93 = v0[20];
      v96 = v0[22];
      v90 = v0[14];
      v43 = v0[12];
      v84 = v0[32];
      v87 = v0[11];
      v44 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
      swift_allocError();
      (*(*(v44 - 8) + 104))(v45, enum case for EnergyKitError.guidanceUnavailable(_:), v44);
      swift_willThrow();
      swift_unknownObjectRelease();

      v46 = *(v43 + 8);
      v46(v90, v87);
      (*(v42 + 8))(v96, v93);
      v46(*v13, *v9);
      goto LABEL_18;
    }

    if (v17 == enum case for NetworkError.serverFailure(_:) || v17 == enum case for NetworkError.notConnectedToInternet(_:) || v17 == enum case for NetworkError.cannotFindHost(_:))
    {
      v47 = v0[42];
      v48 = v0[32];
      v49 = v0[23];
      v50 = v0[21];
      v97 = v0[14];
      v52 = v0[11];
      v51 = v0[12];
      v53 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
      swift_allocError();
      v55 = v54;
      v56 = &enum case for EnergyKitError.guidanceUnavailable(_:);
    }

    else
    {
      if (v17 != enum case for NetworkError.dataUnavailable(_:))
      {
        v69 = v0[42];
        v98 = v0[32];
        v70 = v0[23];
        if (v17 != enum case for NetworkError.responseDecodingError(_:))
        {
          v77 = v0[21];
          v91 = v0[20];
          v94 = v0[22];
          v78 = v0[12];
          v81 = v0[11];
          v82 = v0[14];
          v88 = enum case for NetworkError.unknown(_:);
          v85 = v17;
          v79 = sub_1000A3598();
          sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
          swift_allocError();
          (*(*(v79 - 8) + 104))(v80, enum case for EnergyKitError.guidanceUnavailable(_:), v79);
          swift_willThrow();
          swift_unknownObjectRelease();

          v58 = *(v78 + 8);
          v58(v82, v81);
          (*(v77 + 8))(v94, v91);
          if (v85 == v88)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        v71 = v0[21];
        v72 = v0[14];
        v73 = v0[11];
        v74 = v0[12];
        v75 = sub_1000A3598();
        sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
        swift_allocError();
        (*(*(v75 - 8) + 104))(v76, enum case for EnergyKitError.guidanceUnavailable(_:), v75);
        swift_willThrow();
        v57 = v71;
        swift_unknownObjectRelease();

        (*(v74 + 8))(v72, v73);
LABEL_16:
        v58 = *(v57 + 8);
        v13 = v0 + 22;
        v9 = v0 + 20;
LABEL_17:
        v58(*v13, *v9);
        goto LABEL_18;
      }

      v47 = v0[42];
      v48 = v0[32];
      v67 = v0[23];
      v50 = v0[21];
      v97 = v0[14];
      v52 = v0[11];
      v51 = v0[12];
      v53 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError);
      swift_allocError();
      v55 = v68;
      v56 = &enum case for EnergyKitError.unsupportedRegion(_:);
    }

    (*(*(v53 - 8) + 104))(v55, *v56, v53);
    swift_willThrow();
    v57 = v50;
    swift_unknownObjectRelease();

    (*(v51 + 8))(v97, v52);
    goto LABEL_16;
  }

  v25 = v0[42];
  v26 = v0[32];
  v27 = v0[23];
  v28 = v0[11];
  v29 = v0[12];
  v30 = v0[10];
  (*(v0[21] + 8))(v0[22], v0[20]);
  swift_unknownObjectRelease();

  (*(v29 + 56))(v30, 1, 1, v28);
  sub_100022154(v30, &qword_1000C8C78, &qword_1000AC628);
  v31 = v0[22];
  v32 = v0[18];
  v33 = v0[19];
  v34 = v0[17];
  v36 = v0[13];
  v35 = v0[14];
  v37 = v0[10];

  v38 = v0[1];

  return v38(0, 0);
}

uint64_t sub_10005E240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_1000A2AD8();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v7 = *(*(sub_10000275C(&qword_1000C92C0, &qword_1000ACB30) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10005E348, 0, 0);
}

uint64_t sub_10005E348()
{
  sub_1000A3AA8();
  v0[15] = os_transaction_create();

  sub_10003690C();
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v1 = sub_1000A3538();
  v0[16] = sub_100001E38(v1, qword_1000C96B8);
  v2 = sub_1000A3518();
  v3 = sub_1000A3CB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Connection established to EnergyKit API", v4, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v5 = qword_1000C95F0;
  v0[17] = qword_1000C95F0;

  return _swift_task_switch(sub_10005E504, v5, 0);
}

uint64_t sub_10005E504()
{
  *(v0 + 312) = *(*(v0 + 136) + 144);

  return _swift_task_switch(sub_10005E574, 0, 0);
}

uint64_t sub_10005E574()
{
  v1 = qword_1000C95F0;
  *(v0 + 144) = qword_1000C95F0;

  return _swift_task_switch(sub_10005E5EC, v1, 0);
}

uint64_t sub_10005E5EC()
{
  *(v0 + 152) = *(*(v0 + 144) + 120);

  return _swift_task_switch(sub_10005E664, 0, 0);
}

uint64_t sub_10005E664()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 312);

    if (v1 == 1)
    {
      v2 = swift_task_alloc();
      *(v0 + 160) = v2;
      *v2 = v0;
      v2[1] = sub_10005E818;
      v4 = *(v0 + 56);
      v3 = *(v0 + 64);

      return sub_100066308(v4, v3, 0);
    }

    v12 = *(v0 + 120);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = *(v0 + 128);
    v7 = sub_1000A3518();
    v8 = sub_1000A3CC8();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 120);
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "[SiteOperations] Invalid application-identifier", v11, 2u);
    }

    swift_unknownObjectRelease();
  }

  v14 = *(v0 + 104);
  v13 = *(v0 + 112);
  v15 = *(v0 + 96);

  v16 = *(v0 + 8);

  return v16(0, 0);
}

uint64_t sub_10005E818(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_10005E918, 0, 0);
}

uint64_t sub_10005E918()
{
  v1 = v0[21];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1000A2DC8();

    if (v3)
    {

      v4 = v2;
      sub_1000A2D58();
      v6 = v5;

      if (v6)
      {
        v7 = v0[16];

        v8 = sub_1000A3518();
        v9 = sub_1000A3CD8();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v8, v9, "[SiteOperations] Site onboarded. Use site location for gridID", v10, 2u);
        }

        v11 = v4;
        v12 = sub_1000A2DC8();

        if (v12)
        {
          v0[27] = v12;
          v13 = v0[16];
          v14 = v12;
          v15 = sub_1000A3518();
          v16 = sub_1000A3CB8();

          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            *v17 = 138412290;
            *(v17 + 4) = v14;
            *v18 = v12;
            v19 = v14;
            _os_log_impl(&_mh_execute_header, v15, v16, "[SiteOperations] Location: %@", v17, 0xCu);
            sub_100022154(v18, &unk_1000C7740, &qword_1000AB610);
          }

          v20 = v0[9];

          if (v20)
          {
            v21 = v0[9];
            v22 = sub_1000A2BF8();
            v0[28] = v22;
            sub_1000A2BC8();
            v23 = swift_task_alloc();
            v0[29] = v23;
            *(v23 + 16) = v14;
            v24 = async function pointer to static EKSandboxExtension.withResources<A>(resources:_:)[1];
            v25 = swift_task_alloc();
            v0[30] = v25;
            *v25 = v0;
            v25[1] = sub_10005F618;

            return static EKSandboxExtension.withResources<A>(resources:_:)(v0 + 5, v22, &unk_1000AC608, v23, &type metadata for String);
          }

          if (qword_1000C7560 != -1)
          {
            swift_once();
          }

          v41 = v0[12];
          v40 = v0[13];
          v42 = v0[10];
          v43 = v0[11];
          v44 = sub_100001E38(v42, qword_1000C95F8);
          swift_beginAccess();
          (*(v43 + 16))(v40, v44, v42);
          sub_1000A2A58();
          sub_100060224(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
          LOBYTE(v44) = sub_1000A3DF8();
          v45 = *(v43 + 8);
          v45(v41, v42);
          v45(v40, v42);
          if (v44 & 1) != 0 && (sub_1000A2D18())
          {
            v46 = swift_task_alloc();
            v0[32] = v46;
            *v46 = v0;
            v46[1] = sub_10005F80C;

            return sub_1000683FC();
          }

          [v14 coordinate];
          v48 = v47;
          v50 = v49;
          v51 = [objc_opt_self() sharedSession];
          v0[36] = v51;
          v52 = async function pointer to static EnergyServices.gridIDLookup(forCoordinate:withSession:)[1];
          v53 = swift_task_alloc();
          v0[37] = v53;
          *v53 = v0;
          v53[1] = sub_10005FB9C;
          v36.n128_u64[0] = v48;
          v37.n128_u64[0] = v50;
          v35 = v51;

          return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v35, v36, v37);
        }
      }
    }
  }

  v26 = v0[16];
  v27 = sub_1000A3518();
  v28 = sub_1000A3CD8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "[SiteOperations] Site note onboarded. Use home location for gridID", v29, 2u);
  }

  if (qword_1000C7590 != -1)
  {
    swift_once();
  }

  v30 = v0[14];
  v32 = v0[7];
  v31 = v0[8];
  v0[22] = qword_1000C96F8;

  sub_1000A24B8();
  v33 = sub_1000A2508();
  v0[23] = v33;
  v34 = *(v33 - 8);
  v0[24] = v34;
  v35 = (*(v34 + 48))(v30, 1, v33);
  if (v35 == 1)
  {
    __break(1u);
    return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v35, v36, v37);
  }

  v38 = swift_task_alloc();
  v0[25] = v38;
  *v38 = v0;
  v38[1] = sub_10005EFC4;
  v39 = v0[14];

  return sub_1000716DC(v39);
}

uint64_t sub_10005EFC4(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v6 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 208) = a1;

  (*(v3 + 8))(v6, v4);

  return _swift_task_switch(sub_10005F140, 0, 0);
}

uint64_t sub_10005F140()
{
  v1 = *(v0 + 208);
  v2 = [v1 location];

  if (v2)
  {
    *(v0 + 216) = v2;
    v3 = *(v0 + 128);
    v4 = v2;
    v5 = sub_1000A3518();
    v6 = sub_1000A3CB8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, "[SiteOperations] Location: %@", v7, 0xCu);
      sub_100022154(v8, &unk_1000C7740, &qword_1000AB610);
    }

    v10 = *(v0 + 72);

    if (v10)
    {
      v11 = *(v0 + 72);
      v12 = sub_1000A2BF8();
      *(v0 + 224) = v12;
      sub_1000A2BC8();
      v13 = swift_task_alloc();
      *(v0 + 232) = v13;
      *(v13 + 16) = v4;
      v14 = async function pointer to static EKSandboxExtension.withResources<A>(resources:_:)[1];
      v15 = swift_task_alloc();
      *(v0 + 240) = v15;
      *v15 = v0;
      v15[1] = sub_10005F618;

      return static EKSandboxExtension.withResources<A>(resources:_:)(v0 + 40, v12, &unk_1000AC608, v13, &type metadata for String);
    }

    else
    {
      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v23 = *(v0 + 96);
      v22 = *(v0 + 104);
      v24 = *(v0 + 80);
      v25 = *(v0 + 88);
      v26 = sub_100001E38(v24, qword_1000C95F8);
      swift_beginAccess();
      (*(v25 + 16))(v22, v26, v24);
      sub_1000A2A58();
      sub_100060224(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
      LOBYTE(v26) = sub_1000A3DF8();
      v27 = *(v25 + 8);
      v27(v23, v24);
      v27(v22, v24);
      if (v26 & 1) != 0 && (sub_1000A2D18())
      {
        v28 = swift_task_alloc();
        *(v0 + 256) = v28;
        *v28 = v0;
        v28[1] = sub_10005F80C;

        return sub_1000683FC();
      }

      else
      {
        [v4 coordinate];
        v30 = v29;
        v32 = v31;
        v33 = [objc_opt_self() sharedSession];
        *(v0 + 288) = v33;
        v34 = async function pointer to static EnergyServices.gridIDLookup(forCoordinate:withSession:)[1];
        v35 = swift_task_alloc();
        *(v0 + 296) = v35;
        *v35 = v0;
        v35[1] = sub_10005FB9C;
        v36.n128_u64[0] = v30;
        v37.n128_u64[0] = v32;

        return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v33, v36, v37);
      }
    }
  }

  else
  {
    v16 = *(v0 + 168);
    v17 = *(v0 + 120);
    swift_unknownObjectRelease();

    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    v20 = *(v0 + 96);

    v21 = *(v0 + 8);

    return v21(0, 0);
  }
}

uint64_t sub_10005F618()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 232);
  v6 = *(v2 + 224);

  if (v0)
  {
    v7 = sub_10005FD48;
  }

  else
  {
    v7 = sub_10005F768;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10005F768()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);

  swift_unknownObjectRelease();
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);

  v8 = *(v0 + 8);

  return v8(v4, v3);
}

uint64_t sub_10005F80C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 256);
  v8 = *v3;

  if (v2)
  {
    v6[35] = v2;
    v9 = sub_10005F9E8;
  }

  else
  {
    v6[33] = a2;
    v6[34] = a1;
    v9 = sub_10005F940;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10005F940()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 168);
  v3 = *(v0 + 120);

  swift_unknownObjectRelease();
  v4 = *(v0 + 272);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);

  v8 = *(v0 + 8);

  return v8(v4, v1);
}

uint64_t sub_10005F9E8()
{
  v1 = v0[35];
  v2 = v0[16];
  swift_errorRetain();
  v3 = sub_1000A3518();
  v4 = sub_1000A3CC8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[27];
  v7 = v0[21];
  v8 = v0[15];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Grid Fetch Failed: %@", v9, 0xCu);
    sub_100022154(v10, &unk_1000C7740, &qword_1000AB610);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v13 = v0[13];
  v12 = v0[14];
  v14 = v0[12];

  v15 = v0[1];

  return v15(0, 0);
}

uint64_t sub_10005FB9C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 296);
  v8 = *v3;
  *(*v3 + 304) = v2;

  if (v2)
  {
    v9 = sub_10005FCD8;
  }

  else
  {

    *(v6 + 264) = a2;
    *(v6 + 272) = a1;
    v9 = sub_10005F940;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10005FCD8()
{
  *(v0 + 280) = *(v0 + 304);

  return _swift_task_switch(sub_10005F9E8, 0, 0);
}

uint64_t sub_10005FD48()
{
  v1 = v0[31];
  v2 = v0[16];
  swift_errorRetain();
  v3 = sub_1000A3518();
  v4 = sub_1000A3CC8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[27];
  v7 = v0[21];
  v8 = v0[15];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Grid Fetch Failed: %@", v9, 0xCu);
    sub_100022154(v10, &unk_1000C7740, &qword_1000AB610);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v13 = v0[13];
  v12 = v0[14];
  v14 = v0[12];

  v15 = v0[1];

  return v15(0, 0);
}

uint64_t sub_10005FEFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000153A8;

  return sub_100054AA8(a1, v4);
}

uint64_t sub_10005FF9C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005FFD4()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_1000600D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000A2508() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1000153A8;

  return sub_1000557F0(a1, v9, v10, v12, v1 + v6, v11, v13, v14);
}

uint64_t sub_100060224(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006026C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014898;

  return sub_100055DA0(a1, v4);
}

uint64_t sub_10006030C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100060364(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000153A8;

  return sub_1000554B8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100060440(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000153A8;

  return sub_100054AA8(a1, v4);
}

uint64_t sub_1000604E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000153A8;

  return sub_100055234(v2, v3, v5, v4);
}

uint64_t sub_1000605A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000153A8;

  return sub_100054AA8(a1, v4);
}

uint64_t sub_100060664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 705) = a8;
  *(v8 + 704) = a7;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 112) = a4;
  v9 = sub_1000A34C8();
  *(v8 + 136) = v9;
  v10 = *(v9 - 8);
  *(v8 + 144) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v12 = sub_1000A3498();
  *(v8 + 160) = v12;
  v13 = *(v12 - 8);
  *(v8 + 168) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  v15 = sub_1000A34B8();
  *(v8 + 200) = v15;
  v16 = *(v15 - 8);
  *(v8 + 208) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v18 = sub_1000A22A8();
  *(v8 + 224) = v18;
  v19 = *(v18 - 8);
  *(v8 + 232) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v21 = sub_1000A3938();
  *(v8 + 256) = v21;
  v22 = *(v21 - 8);
  *(v8 + 264) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  v24 = sub_1000A38F8();
  *(v8 + 328) = v24;
  v25 = *(v24 - 8);
  *(v8 + 336) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 344) = swift_task_alloc();
  v27 = sub_1000A3318();
  *(v8 + 352) = v27;
  v28 = *(v27 - 8);
  *(v8 + 360) = v28;
  v29 = *(v28 + 64) + 15;
  *(v8 + 368) = swift_task_alloc();
  v30 = sub_1000A3988();
  *(v8 + 376) = v30;
  v31 = *(v30 - 8);
  *(v8 + 384) = v31;
  v32 = *(v31 + 64) + 15;
  *(v8 + 392) = swift_task_alloc();
  v33 = sub_1000A2518();
  *(v8 + 400) = v33;
  v34 = *(v33 - 8);
  *(v8 + 408) = v34;
  v35 = *(v34 + 64) + 15;
  *(v8 + 416) = swift_task_alloc();
  v36 = sub_1000A2578();
  *(v8 + 424) = v36;
  v37 = *(v36 - 8);
  *(v8 + 432) = v37;
  v38 = *(v37 + 64) + 15;
  *(v8 + 440) = swift_task_alloc();
  v39 = sub_1000A2AD8();
  *(v8 + 448) = v39;
  v40 = *(v39 - 8);
  *(v8 + 456) = v40;
  v41 = *(v40 + 64) + 15;
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  v42 = *(*(sub_10000275C(&qword_1000C7AF0, qword_1000AB9C0) - 8) + 64) + 15;
  *(v8 + 480) = swift_task_alloc();
  v43 = sub_1000A25A8();
  *(v8 + 488) = v43;
  v44 = *(v43 - 8);
  *(v8 + 496) = v44;
  v45 = *(v44 + 64) + 15;
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();

  return _swift_task_switch(sub_100060BEC, 0, 0);
}

uint64_t sub_100060BEC()
{
  v1 = *(v0 + 112);
  v2 = sub_1000A2DE8();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    goto LABEL_8;
  }

  v5 = *(v0 + 488);
  v6 = *(v0 + 496);
  v7 = *(v0 + 480);
  sub_1000A2588();

  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_100022154(*(v0 + 480), &qword_1000C7AF0, qword_1000AB9C0);
LABEL_8:
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v8 = sub_1000A3538();
    sub_100001E38(v8, qword_1000C96B8);
    v9 = sub_1000A3518();
    v10 = sub_1000A3CC8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "[WholeHomeInsights] Bad Timezone", v11, 2u);
    }

    v12 = *(v0 + 120);

    v13 = sub_100062EA0;
LABEL_13:
    v14 = v13;
    v15 = v12;
LABEL_14:

    return _swift_task_switch(v14, v15, 0);
  }

  v16 = *(v0 + 112);
  (*(*(v0 + 496) + 32))(*(v0 + 520), *(v0 + 480), *(v0 + 488));
  v17 = sub_1000A2D58();
  *(v0 + 528) = v17;
  *(v0 + 536) = v18;
  if (!v18)
  {
LABEL_37:
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v42 = sub_1000A3538();
    sub_100001E38(v42, qword_1000C96B8);
    v43 = sub_1000A3518();
    v44 = sub_1000A3CC8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "[WholeHomeInsights] Invalid Site", v45, 2u);
    }

    v12 = *(v0 + 120);

    v13 = sub_100062C78;
    goto LABEL_13;
  }

  v19 = v17;
  v20 = v18;
  v21 = *(v0 + 112);
  v22 = sub_1000A2DF8();
  *(v0 + 544) = v22;
  *(v0 + 552) = v23;
  if (!v23)
  {
LABEL_36:

    goto LABEL_37;
  }

  v24 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v24 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    goto LABEL_35;
  }

  v25 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
LABEL_35:

    goto LABEL_36;
  }

  v26 = *(v0 + 112);
  v27 = sub_1000A2DC8();
  *(v0 + 560) = v27;
  if (!v27)
  {
    v40 = 0;
    v41 = 0;
LABEL_46:
    *(v0 + 616) = v41;
    *(v0 + 608) = v40;
    v55 = *(v0 + 520);
    v73 = *(v0 + 512);
    v74 = *(v0 + 504);
    v72 = *(v0 + 488);
    v56 = *(v0 + 432);
    v57 = *(v0 + 440);
    v58 = *(v0 + 416);
    v60 = *(v0 + 400);
    v59 = *(v0 + 408);
    v79 = *(v0 + 704);
    v61 = *(v0 + 128);
    v75 = v61;
    v76 = *(v0 + 424);
    v77 = *(v0 + 120);
    v62 = *(v0 + 112);
    v63 = *(*(v0 + 496) + 16);
    v63();
    *(v0 + 624) = sub_1000A2D68();
    v64 = type metadata accessor for AMIQueryEngine();
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    v67 = swift_allocObject();
    *(v0 + 632) = v67;
    swift_defaultActor_initialize();
    *(v67 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalIDX) = 0;
    *(v67 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentThresholdIDX) = 0;
    *(v67 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalSubIDX) = 0;
    (*(v59 + 104))(v58, enum case for Calendar.Identifier.gregorian(_:), v60);
    sub_1000A2528();
    (*(v59 + 8))(v58, v60);
    (v63)(v74, v73, v72);
    sub_1000A2558();
    (*(v56 + 16))(v67 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_calendar, v57, v76);
    *(v67 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_query) = v75;
    *(v67 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_stream) = v77;
    v68 = qword_1000C7568;
    v69 = v75;

    if (v79 == 1)
    {
      if (v68 != -1)
      {
        swift_once();
      }

      v15 = qword_1000C9648;
      *(v0 + 640) = qword_1000C9648;
      v70 = sub_100061844;
    }

    else
    {
      if (v68 != -1)
      {
        swift_once();
      }

      v15 = qword_1000C9648;
      *(v0 + 656) = qword_1000C9648;
      v70 = sub_100061C10;
    }

    v14 = v70;
    goto LABEL_14;
  }

  v28 = v27;
  if (sub_1000A2D18())
  {
    if (qword_1000C7560 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 464);
    v29 = *(v0 + 472);
    v31 = *(v0 + 448);
    v32 = *(v0 + 456);
    v33 = sub_100001E38(v31, qword_1000C95F8);
    swift_beginAccess();
    v78 = *(v32 + 16);
    v78(v29, v33, v31);
    sub_1000A2A58();
    sub_100063668(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
    v34 = sub_1000A3DF8();
    v35 = *(v32 + 8);
    v35(v30, v31);
    v35(v29, v31);
    if (v34)
    {
      v37 = *(v0 + 464);
      v36 = *(v0 + 472);
      v38 = *(v0 + 448);
      v78(v36, v33, v38);
      sub_1000A2A78();
      v39 = sub_1000A3DF8();
      v35(v37, v38);
      v35(v36, v38);

      v40 = 0x4F4D5F4F53494143;
      if (v39)
      {
        v40 = 0;
      }

      v41 = 0xEA00000000004B43;
      if (v39)
      {
        v41 = 0;
      }

      goto LABEL_46;
    }
  }

  [v28 coordinate];
  v47 = v46;
  v49 = v48;
  v50 = [objc_opt_self() sharedSession];
  *(v0 + 568) = v50;
  v51 = async function pointer to static EnergyServices.gridIDLookup(forCoordinate:withSession:)[1];
  v52 = swift_task_alloc();
  *(v0 + 576) = v52;
  *v52 = v0;
  v52[1] = sub_1000613A0;
  v53.n128_u64[0] = v47;
  v54.n128_u64[0] = v49;

  return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v50, v53, v54);
}

uint64_t sub_1000613A0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 576);
  v8 = *v3;
  *(v4 + 584) = a1;
  *(v4 + 592) = a2;
  *(v4 + 600) = v2;

  if (v2)
  {
    v6 = sub_100063050;
  }

  else
  {

    v6 = sub_1000614C4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000614C4()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {

    v3 = *(v0 + 584);
  }

  else
  {
    v4 = *(v0 + 592);

    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v5 = sub_1000A3538();
    sub_100001E38(v5, qword_1000C96B8);
    v6 = sub_1000A3518();
    v7 = sub_1000A3CC8();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 560);
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[WholeHomeInsights] Empty Grid ID", v10, 2u);
    }

    else
    {
    }

    v3 = 0;
    v1 = 0;
  }

  *(v0 + 616) = v1;
  *(v0 + 608) = v3;
  v11 = *(v0 + 520);
  v30 = *(v0 + 512);
  v31 = *(v0 + 504);
  v29 = *(v0 + 488);
  v12 = *(v0 + 432);
  v13 = *(v0 + 440);
  v14 = *(v0 + 416);
  v16 = *(v0 + 400);
  v15 = *(v0 + 408);
  v35 = *(v0 + 704);
  v17 = *(v0 + 128);
  v32 = v17;
  v33 = *(v0 + 424);
  v34 = *(v0 + 120);
  v18 = *(v0 + 112);
  v19 = *(*(v0 + 496) + 16);
  v19();
  *(v0 + 624) = sub_1000A2D68();
  v20 = type metadata accessor for AMIQueryEngine();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  *(v0 + 632) = v23;
  swift_defaultActor_initialize();
  *(v23 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalIDX) = 0;
  *(v23 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentThresholdIDX) = 0;
  *(v23 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalSubIDX) = 0;
  (*(v15 + 104))(v14, enum case for Calendar.Identifier.gregorian(_:), v16);
  sub_1000A2528();
  (*(v15 + 8))(v14, v16);
  (v19)(v31, v30, v29);
  sub_1000A2558();
  (*(v12 + 16))(v23 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_calendar, v13, v33);
  *(v23 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_query) = v32;
  *(v23 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_stream) = v34;
  v24 = qword_1000C7568;
  v25 = v32;

  if (v35 == 1)
  {
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = qword_1000C9648;
    *(v0 + 640) = qword_1000C9648;
    v27 = sub_100061844;
  }

  else
  {
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = qword_1000C9648;
    *(v0 + 656) = qword_1000C9648;
    v27 = sub_100061C10;
  }

  return _swift_task_switch(v27, v26, 0);
}

uint64_t sub_100061844()
{
  v1 = *(*(v0 + 640) + 112);
  v2 = sub_10004060C();
  v3 = [v2 newBackgroundContext];
  *(v0 + 648) = v3;
  v4 = sub_1000A3A78();
  [v3 setTransactionAuthor:v4];

  [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v3 setUndoManager:0];
  [v3 setShouldRefreshAfterSave:1];
  [v3 setStalenessInterval:0.0];
  [v3 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_100061980, 0, 0);
}

uint64_t sub_100061980()
{
  v1 = v0[79];
  v23 = v0[78];
  v28 = v0[76];
  v29 = v0[77];
  v18 = v0[67];
  v19 = v0[68];
  v3 = v0[48];
  v2 = v0[49];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[44];
  v7 = v0[45];
  v20 = v0[43];
  v21 = v0[69];
  v22 = v0[42];
  v24 = v0[41];
  v25 = v0[40];
  v26 = v0[33];
  v27 = v0[32];
  v8 = v0[16];
  v17 = v0[66];
  *(v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_context) = v0[81];
  v9 = sub_1000A3848();
  (*(v3 + 104))(v2, enum case for ElectricityFlowDirection.exported(_:), v4);
  v10 = sub_1000A3978();
  (*(v3 + 8))(v2, v4);
  v11 = &enum case for IntervalBlockPayload.FlowDirection.reverse(_:);
  if (v10 != v9)
  {
    v11 = &enum case for IntervalBlockPayload.FlowDirection.delivered(_:);
  }

  (*(v7 + 104))(v5, *v11, v6);
  v12 = sub_1000A3308();
  (*(v7 + 8))(v5, v6);
  *(v1 + 112) = v12;
  v13 = (v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_subID);
  *v13 = v17;
  v13[1] = v18;
  v14 = (v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_utilityID);
  *v14 = v19;
  v14[1] = v21;
  *(v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_metersToExclude) = v23;
  sub_1000A3838();
  sub_1000A38E8();
  (*(v22 + 32))(v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_granularity, v20, v24);
  sub_1000A3888();
  sub_1000A3928();
  (*(v26 + 32))(v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_options, v25, v27);
  v15 = (v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_gridID);
  *v15 = v28;
  v15[1] = v29;

  return _swift_task_switch(sub_100061FDC, v1, 0);
}

uint64_t sub_100061C10()
{
  v1 = *(*(v0 + 656) + 120);
  v2 = sub_10004060C();
  v3 = [v2 newBackgroundContext];
  *(v0 + 664) = v3;
  v4 = sub_1000A3A78();
  [v3 setTransactionAuthor:v4];

  [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v3 setUndoManager:0];
  [v3 setShouldRefreshAfterSave:1];
  [v3 setStalenessInterval:0.0];
  [v3 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_100061D4C, 0, 0);
}

uint64_t sub_100061D4C()
{
  v1 = v0[79];
  v23 = v0[78];
  v28 = v0[76];
  v29 = v0[77];
  v18 = v0[67];
  v19 = v0[68];
  v3 = v0[48];
  v2 = v0[49];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[44];
  v7 = v0[45];
  v20 = v0[43];
  v21 = v0[69];
  v22 = v0[42];
  v24 = v0[41];
  v25 = v0[40];
  v26 = v0[33];
  v27 = v0[32];
  v8 = v0[16];
  v17 = v0[66];
  *(v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_context) = v0[83];
  v9 = sub_1000A3848();
  (*(v3 + 104))(v2, enum case for ElectricityFlowDirection.exported(_:), v4);
  v10 = sub_1000A3978();
  (*(v3 + 8))(v2, v4);
  v11 = &enum case for IntervalBlockPayload.FlowDirection.reverse(_:);
  if (v10 != v9)
  {
    v11 = &enum case for IntervalBlockPayload.FlowDirection.delivered(_:);
  }

  (*(v7 + 104))(v5, *v11, v6);
  v12 = sub_1000A3308();
  (*(v7 + 8))(v5, v6);
  *(v1 + 112) = v12;
  v13 = (v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_subID);
  *v13 = v17;
  v13[1] = v18;
  v14 = (v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_utilityID);
  *v14 = v19;
  v14[1] = v21;
  *(v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_metersToExclude) = v23;
  sub_1000A3838();
  sub_1000A38E8();
  (*(v22 + 32))(v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_granularity, v20, v24);
  sub_1000A3888();
  sub_1000A3928();
  (*(v26 + 32))(v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_options, v25, v27);
  v15 = (v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_gridID);
  *v15 = v28;
  v15[1] = v29;

  return _swift_task_switch(sub_100061FDC, v1, 0);
}

uint64_t sub_100061FDC()
{
  v1 = v0[79];
  v2 = v0[77];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[16];
  type metadata accessor for InsightBucketBoundaries();
  sub_1000A3868();
  sub_10004B42C(v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_granularity, v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_calendar, 0, v3);
  v51 = *(v6 + 8);
  v51(v4, v5);
  if (!v2)
  {
    goto LABEL_7;
  }

  v8 = v0[79];
  v9 = v0[77];
  v10 = v0[39];
  v11 = v0[40];
  v12 = v0[32];
  v13 = v0[33];

  v14 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_options;
  swift_beginAccess();
  (*(v13 + 16))(v11, v8 + v14, v12);
  sub_1000A3908();
  sub_100063668(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options);
  LOBYTE(v8) = sub_1000A3DF8();
  v15 = *(v13 + 8);
  v15(v10, v12);
  v15(v11, v12);
  if (v8)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v16 = sub_1000A3538();
    sub_100001E38(v16, qword_1000C96B8);
    v17 = sub_1000A3518();
    v18 = sub_1000A3CA8();
    v19 = os_log_type_enabled(v17, v18);
    v52 = v0[64];
    v20 = v0[62];
    v49 = v0[61];
    v21 = v0[54];
    v22 = v0[55];
    v23 = v0[53];
    v24 = v0[31];
    v25 = v0[28];
    if (v19)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Valid cleanliness options", v26, 2u);
    }

    v51(v24, v25);
    (*(v21 + 8))(v22, v23);
    v35 = *(v20 + 8);
    v35(v52, v49);
  }

  else
  {
LABEL_7:
    v48 = v0[61];
    v50 = v0[64];
    v46 = v0[55];
    v47 = v0[62];
    v44 = v0[54];
    v45 = v0[53];
    v27 = v0[39];
    v39 = v0[40];
    v53 = v0[38];
    v28 = v0[35];
    v29 = v0[36];
    v37 = v0[37];
    v30 = v0[33];
    v38 = v0[34];
    v31 = v0[32];
    v40 = v0[28];
    v41 = v0[31];
    v32 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_options;
    v42 = v0[79];
    v43 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_options;
    swift_beginAccess();
    v33 = *(v30 + 16);
    v33(v27, v42 + v32, v31);
    sub_1000A3908();
    v33(v37, v27, v31);
    v33(v28, v27, v31);
    v33(v38, v53, v31);
    sub_100063668(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options);
    sub_1000A3E18();
    sub_1000A3E08();
    v34 = *(v30 + 8);
    v34(v29, v31);
    v34(v53, v31);
    v34(v27, v31);
    v51(v41, v40);
    (*(v44 + 8))(v46, v45);
    v35 = *(v47 + 8);
    v35(v50, v48);
    swift_beginAccess();
    (*(v30 + 40))(v42 + v43, v39, v31);
    swift_endAccess();
  }

  v0[84] = v35;

  return _swift_task_switch(sub_100062514, 0, 0);
}

uint64_t sub_100062514()
{
  v29 = v0;
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v1 = sub_1000A3538();
  sub_100001E38(v1, qword_1000C96B8);
  v2 = sub_1000A3518();
  v3 = sub_1000A3CC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 704);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136315138;
    if (v4)
    {
      v7 = 0x65746176697270;
    }

    else
    {
      v7 = 0x646572616873;
    }

    if (v4)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    v9 = sub_1000954AC(v7, v8, &v28);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "[WholeHomeInsights] Processing %s store", v5, 0xCu);
    sub_10000F7B8(v6);
  }

  v10 = *(v0 + 216);
  v11 = *(v0 + 192);
  sub_1000A2B58();
  sub_1000A34A8();
  sub_1000A3478();
  v12 = sub_1000A34A8();
  v13 = sub_1000A3D48();
  if (sub_1000A3DB8())
  {
    v14 = *(v0 + 192);
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_1000A3488();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v16, "StreamProcess", "", v15, 2u);
  }

  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  v19 = *(v0 + 160);
  v20 = *(v0 + 168);

  (*(v20 + 16))(v18, v17, v19);
  v21 = sub_1000A34F8();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v0 + 680) = sub_1000A34E8();
  v24 = swift_task_alloc();
  *(v0 + 688) = v24;
  *v24 = v0;
  v24[1] = sub_1000627E0;
  v25 = *(v0 + 632);
  v26 = *(v0 + 705);

  return sub_100041FF0(v26);
}

uint64_t sub_1000627E0()
{
  v2 = *(*v1 + 688);
  v5 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v3 = sub_10006341C;
  }

  else
  {
    v3 = sub_1000628F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000628F4()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 128);
  v5 = sub_1000A34A8();
  sub_1000A34D8();
  v6 = sub_1000A3D38();
  if (sub_1000A3DB8())
  {
    v7 = *(v0 + 680);
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = *(v0 + 136);

    sub_1000A3508();

    if ((*(v9 + 88))(v8, v10) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v11 = 0;
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
      v12 = "granularity: %lu";
      v11 = 1;
    }

    v13 = *(v0 + 176);
    v14 = *(v0 + 128);
    v15 = swift_slowAlloc();
    *v15 = 0;
    *(v15 + 1) = v11;
    *(v15 + 2) = 2048;
    *(v15 + 4) = sub_1000A3838();

    v16 = sub_1000A3488();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v16, "StreamProcess", v12, v15, 0xCu);
  }

  else
  {
  }

  v17 = *(v0 + 680);
  v18 = *(v0 + 632);
  v54 = *(v0 + 520);
  v56 = *(v0 + 672);
  v50 = *(v0 + 496);
  v52 = *(v0 + 488);
  v19 = *(v0 + 208);
  v20 = *(v0 + 216);
  v22 = *(v0 + 192);
  v21 = *(v0 + 200);
  v23 = *(v0 + 168);
  v24 = *(v0 + 176);
  v25 = *(v0 + 160);

  v26 = *(v23 + 8);
  v26(v24, v25);
  v26(v22, v25);
  (*(v19 + 8))(v20, v21);
  v56(v54, v52);
  v27 = *(v0 + 520);
  v29 = *(v0 + 504);
  v28 = *(v0 + 512);
  v31 = *(v0 + 472);
  v30 = *(v0 + 480);
  v32 = *(v0 + 464);
  v33 = *(v0 + 440);
  v34 = *(v0 + 416);
  v35 = *(v0 + 392);
  v36 = *(v0 + 368);
  v39 = *(v0 + 344);
  v40 = *(v0 + 320);
  v41 = *(v0 + 312);
  v42 = *(v0 + 304);
  v43 = *(v0 + 296);
  v44 = *(v0 + 288);
  v45 = *(v0 + 280);
  v46 = *(v0 + 272);
  v47 = *(v0 + 248);
  v48 = *(v0 + 240);
  v49 = *(v0 + 216);
  v51 = *(v0 + 192);
  v53 = *(v0 + 184);
  v55 = *(v0 + 176);
  v57 = *(v0 + 152);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_100062C78()
{
  v1 = *(v0 + 120);
  sub_10001833C();

  return _swift_task_switch(sub_100062CE0, 0, 0);
}

uint64_t sub_100062CE0()
{
  (*(v0[62] + 8))(v0[65], v0[61]);
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  v5 = v0[59];
  v4 = v0[60];
  v6 = v0[58];
  v7 = v0[55];
  v8 = v0[52];
  v9 = v0[49];
  v10 = v0[46];
  v13 = v0[43];
  v14 = v0[40];
  v15 = v0[39];
  v16 = v0[38];
  v17 = v0[37];
  v18 = v0[36];
  v19 = v0[35];
  v20 = v0[34];
  v21 = v0[31];
  v22 = v0[30];
  v23 = v0[27];
  v24 = v0[24];
  v25 = v0[23];
  v26 = v0[22];
  v27 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100062EA0()
{
  v1 = v0[15];
  sub_10001833C();
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v6 = v0[59];
  v5 = v0[60];
  v7 = v0[58];
  v8 = v0[55];
  v9 = v0[52];
  v10 = v0[49];
  v11 = v0[46];
  v14 = v0[43];
  v15 = v0[40];
  v16 = v0[39];
  v17 = v0[38];
  v18 = v0[37];
  v19 = v0[36];
  v20 = v0[35];
  v21 = v0[34];
  v22 = v0[31];
  v23 = v0[30];
  v24 = v0[27];
  v25 = v0[24];
  v26 = v0[23];
  v27 = v0[22];
  v28 = v0[19];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100063050()
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 600);
  v2 = sub_1000A3538();
  sub_100001E38(v2, qword_1000C96B8);
  swift_errorRetain();
  v3 = sub_1000A3518();
  v4 = sub_1000A3CC8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 600);
  v7 = *(v0 + 560);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "[WholeHomeInsights] Failed to get Grid ID %@", v8, 0xCu);
    sub_100022154(v9, &unk_1000C7740, &qword_1000AB610);
  }

  else
  {
  }

  *(v0 + 608) = 0u;
  v11 = *(v0 + 520);
  v30 = *(v0 + 512);
  v31 = *(v0 + 504);
  v29 = *(v0 + 488);
  v12 = *(v0 + 432);
  v13 = *(v0 + 440);
  v14 = *(v0 + 416);
  v16 = *(v0 + 400);
  v15 = *(v0 + 408);
  v35 = *(v0 + 704);
  v17 = *(v0 + 128);
  v32 = v17;
  v33 = *(v0 + 424);
  v34 = *(v0 + 120);
  v18 = *(v0 + 112);
  v19 = *(*(v0 + 496) + 16);
  v19();
  *(v0 + 624) = sub_1000A2D68();
  v20 = type metadata accessor for AMIQueryEngine();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  *(v0 + 632) = v23;
  swift_defaultActor_initialize();
  *(v23 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalIDX) = 0;
  *(v23 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentThresholdIDX) = 0;
  *(v23 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalSubIDX) = 0;
  (*(v15 + 104))(v14, enum case for Calendar.Identifier.gregorian(_:), v16);
  sub_1000A2528();
  (*(v15 + 8))(v14, v16);
  (v19)(v31, v30, v29);
  sub_1000A2558();
  (*(v12 + 16))(v23 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_calendar, v13, v33);
  *(v23 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_query) = v32;
  *(v23 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_stream) = v34;
  v24 = qword_1000C7568;
  v25 = v32;

  if (v35 == 1)
  {
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = qword_1000C9648;
    *(v0 + 640) = qword_1000C9648;
    v27 = sub_100061844;
  }

  else
  {
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = qword_1000C9648;
    *(v0 + 656) = qword_1000C9648;
    v27 = sub_100061C10;
  }

  return _swift_task_switch(v27, v26, 0);
}

uint64_t sub_10006341C()
{
  v1 = v0[85];
  v2 = v0[79];
  v3 = v0[65];
  v15 = v0[84];
  v16 = v0[64];
  v4 = v0[62];
  v14 = v0[61];
  v17 = v0[63];
  v18 = v0[60];
  v19 = v0[59];
  v20 = v0[58];
  v21 = v0[55];
  v22 = v0[52];
  v23 = v0[49];
  v24 = v0[46];
  v25 = v0[43];
  v26 = v0[40];
  v27 = v0[39];
  v28 = v0[38];
  v29 = v0[37];
  v30 = v0[36];
  v31 = v0[35];
  v32 = v0[34];
  v33 = v0[31];
  v34 = v0[30];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[24];
  v8 = v0[25];
  v35 = v0[23];
  v36 = v0[22];
  v10 = v0[20];
  v9 = v0[21];
  v37 = v0[19];

  (*(v9 + 8))(v7, v10);
  (*(v6 + 8))(v5, v8);
  v15(v3, v14);

  v11 = v0[1];
  v12 = v0[87];

  return v11();
}

uint64_t sub_100063668(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100063700(void **a1, uint64_t a2)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  sub_100001E38(v4, qword_1000C96B8);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[EnergySiteQuery] Processing Private Store", v7, 2u);
  }

  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100068338;
  *(v10 + 24) = v9;
  v14[4] = sub_1000683BC;
  v14[5] = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1000636D8;
  v14[3] = &unk_1000BFD00;
  v11 = _Block_copy(v14);
  v12 = v8;

  [v12 performBlockAndWait:v11];

  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

id sub_100063920(void **a1, uint64_t *a2)
{
  v4 = a1;
  v5 = *a1;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 currentQueryGenerationToken];
  v46 = 0;
  v9 = [v7 setQueryGenerationFromToken:v8 error:&v46];

  v10 = v46;
  if (v9)
  {
    sub_1000A2CB8();
    v11 = v10;
    v12 = sub_1000A2CA8();
    [v12 setReturnsDistinctResults:1];
    sub_10000275C(&qword_1000C8600, &qword_1000AC5E0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000AC0E0;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 32) = 0x444965746973;
    *(v13 + 40) = 0xE600000000000000;
    isa = sub_1000A3B48().super.isa;

    [v12 setPropertiesToFetch:isa];

    [v12 setFetchBatchSize:10];
    v15 = *v4;
    v23 = sub_1000A3D68();

    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v24 = sub_1000A3538();
    sub_100001E38(v24, qword_1000C96B8);

    v25 = sub_1000A3518();
    LOBYTE(v26) = sub_1000A3CA8();
    v27 = v23 >> 62;
    if (!os_log_type_enabled(v25, v26))
    {

      goto LABEL_15;
    }

    v2 = swift_slowAlloc();
    *v2 = 134217984;
    if (v27)
    {
      goto LABEL_31;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000A3EC8())
    {
      *(v2 + 4) = i;

      _os_log_impl(&_mh_execute_header, v25, v26, "[EnergySiteQuery] EnergySite count %ld", v2, 0xCu);

LABEL_15:
      if (v27)
      {
        v26 = sub_1000A3EC8();
        if (!v26)
        {
LABEL_27:

          v30 = &_swiftEmptyArrayStorage;
          goto LABEL_28;
        }
      }

      else
      {
        v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_27;
        }
      }

      v43 = v12;
      v44 = a2;
      v45 = v4;
      v46 = &_swiftEmptyArrayStorage;
      v25 = &v46;
      sub_10004A2B8(0, v26 & ~(v26 >> 63), 0);
      if ((v26 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_31:
      ;
    }

    v29 = 0;
    v30 = v46;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v31 = sub_1000A3EA8();
      }

      else
      {
        v31 = *(v23 + 8 * v29 + 32);
      }

      v32 = v31;
      v33 = [v31 siteID];
      v34 = sub_1000A3A88();
      v36 = v35;

      v46 = v30;
      v38 = v30[2];
      v37 = v30[3];
      if (v38 >= v37 >> 1)
      {
        sub_10004A2B8((v37 > 1), v38 + 1, 1);
        v30 = v46;
      }

      ++v29;
      v30[2] = v38 + 1;
      v39 = &v30[2 * v38];
      v39[4] = v34;
      v39[5] = v36;
    }

    while (v26 != v29);

    a2 = v44;
    v4 = v45;
    v12 = v43;
LABEL_28:
    v40 = sub_1000682A0(v30);

    v41 = *a2;
    *a2 = v40;
  }

  else
  {
    v16 = v46;
    sub_1000A2358();

    swift_willThrow();
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v17 = sub_1000A3538();
    sub_100001E38(v17, qword_1000C96B8);
    swift_errorRetain();
    v18 = sub_1000A3518();
    v19 = sub_1000A3CA8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "[EnergySiteQuery] EnergySite not found in Private Store due to %@", v20, 0xCu);
      sub_100022154(v21, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }
  }

  return [*v4 refreshAllObjects];
}

uint64_t sub_100063EB0(void **a1, uint64_t a2)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  sub_100001E38(v4, qword_1000C96B8);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[EnergySiteQuery] Processing Shared Store", v7, 2u);
  }

  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100067320;
  *(v10 + 24) = v9;
  v14[4] = sub_1000683BC;
  v14[5] = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1000636D8;
  v14[3] = &unk_1000BFC88;
  v11 = _Block_copy(v14);
  v12 = v8;

  [v12 performBlockAndWait:v11];

  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

id sub_1000640D0(void **a1, uint64_t a2)
{
  v4 = a1;
  v5 = *a1;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 currentQueryGenerationToken];
  v45 = 0;
  v9 = [v7 setQueryGenerationFromToken:v8 error:&v45];

  v10 = v45;
  if (v9)
  {
    sub_1000A2CB8();
    v11 = v10;
    v12 = sub_1000A2CA8();
    [v12 setReturnsDistinctResults:1];
    sub_10000275C(&qword_1000C8600, &qword_1000AC5E0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000AC0E0;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 32) = 0x444965746973;
    *(v13 + 40) = 0xE600000000000000;
    isa = sub_1000A3B48().super.isa;

    [v12 setPropertiesToFetch:isa];

    [v12 setFetchBatchSize:10];
    v15 = *v4;
    v23 = sub_1000A3D68();

    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v24 = sub_1000A3538();
    sub_100001E38(v24, qword_1000C96B8);

    v25 = sub_1000A3518();
    LOBYTE(v26) = sub_1000A3CA8();
    v27 = v23 >> 62;
    if (!os_log_type_enabled(v25, v26))
    {

      goto LABEL_15;
    }

    v2 = swift_slowAlloc();
    *v2 = 134217984;
    if (v27)
    {
      goto LABEL_31;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000A3EC8())
    {
      *(v2 + 4) = i;

      _os_log_impl(&_mh_execute_header, v25, v26, "[EnergySiteQuery]EnergySite count %ld", v2, 0xCu);

LABEL_15:
      if (v27)
      {
        v26 = sub_1000A3EC8();
        if (!v26)
        {
LABEL_27:

          v30 = &_swiftEmptyArrayStorage;
          goto LABEL_28;
        }
      }

      else
      {
        v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_27;
        }
      }

      v42 = v12;
      v43 = a2;
      v44 = v4;
      v45 = &_swiftEmptyArrayStorage;
      v25 = &v45;
      sub_10004A2B8(0, v26 & ~(v26 >> 63), 0);
      if ((v26 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_31:
      ;
    }

    v29 = 0;
    v30 = v45;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v31 = sub_1000A3EA8();
      }

      else
      {
        v31 = *(v23 + 8 * v29 + 32);
      }

      v32 = v31;
      v33 = [v31 siteID];
      v34 = sub_1000A3A88();
      v36 = v35;

      v45 = v30;
      v38 = v30[2];
      v37 = v30[3];
      if (v38 >= v37 >> 1)
      {
        sub_10004A2B8((v37 > 1), v38 + 1, 1);
        v30 = v45;
      }

      ++v29;
      v30[2] = v38 + 1;
      v39 = &v30[2 * v38];
      v39[4] = v34;
      v39[5] = v36;
    }

    while (v26 != v29);

    v4 = v44;
    v12 = v42;
LABEL_28:
    v40 = sub_1000682A0(v30);

    sub_100064660(v40);
  }

  else
  {
    v16 = v45;
    sub_1000A2358();

    swift_willThrow();
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v17 = sub_1000A3538();
    sub_100001E38(v17, qword_1000C96B8);
    swift_errorRetain();
    v18 = sub_1000A3518();
    v19 = sub_1000A3CA8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "[EnergySiteQuery] EnergySite not found in Shared Store due to %@", v20, 0xCu);
      sub_100022154(v21, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }
  }

  return [*v4 refreshAllObjects];
}

uint64_t sub_100064660(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100095D34(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

id sub_100064764(void *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = [objc_opt_self() currentQueryGenerationToken];
  v55 = 0;
  v9 = [a1 setQueryGenerationFromToken:v8 error:&v55];

  v10 = v55;
  if (v9)
  {
    sub_1000A2CB8();
    v11 = v10;
    v12 = sub_1000A2CA8();
    [v12 setResultType:0];
    sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
    sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000AC0E0;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000321D0();
    *(v13 + 32) = a2;
    *(v13 + 40) = a3;

    v14 = sub_1000A3C98();
    [v12 setPredicate:v14];
    v15 = objc_allocWithZone(NSSortDescriptor);
    v16 = sub_1000A3A78();
    v17 = [v15 initWithKey:v16 ascending:1];

    sub_10000275C(&qword_1000C7EE8, &unk_1000ABD70);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1000ABC60;
    *(v18 + 32) = v17;
    sub_100032224(0, &qword_1000C7EF0, NSSortDescriptor_ptr);
    v19 = v17;
    isa = sub_1000A3B48().super.isa;

    [v12 setSortDescriptors:isa];

    [v12 setFetchBatchSize:100];
    v29 = sub_1000A3D68();
    v54 = a4;
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v30 = sub_1000A3538();
    sub_100001E38(v30, qword_1000C96B8);

    v31 = sub_1000A3518();
    v32 = sub_1000A3CA8();
    v33 = v29 >> 62;
    if (!os_log_type_enabled(v31, v32))
    {

      goto LABEL_16;
    }

    v52 = v14;
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    v14 = v19;
    if (v33)
    {
      goto LABEL_32;
    }

    v35 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      *(v34 + 4) = v35;
      v36 = v34;

      _os_log_impl(&_mh_execute_header, v31, v32, "[EnergySiteQuery] EnergySite count %ld", v36, 0xCu);

      v19 = v14;
      v14 = v52;
LABEL_16:
      if (v33)
      {
        v34 = sub_1000A3EC8();
        if (!v34)
        {
LABEL_29:
        }
      }

      else
      {
        v34 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v34)
        {
          goto LABEL_29;
        }
      }

      if ((v29 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v37 = *(v29 + 32);
        goto LABEL_21;
      }

      __break(1u);
LABEL_32:
      v49 = v34;
      v35 = sub_1000A3EC8();
      v34 = v49;
    }

    v37 = sub_1000A3EA8();
LABEL_21:
    v38 = v37;
    if (v33)
    {
      v39 = sub_1000A3EC8();
    }

    else
    {
      v39 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v53 = v38;
    if (v39 == 1)
    {
      v51 = v19;
      sub_1000A2C68();
      v40 = [v38 siteID];
      sub_1000A3A88();

      v41 = [v38 metadata];
      v42 = sub_1000A23B8();
      v50 = v43;

      v44 = [v38 zoneName];
      sub_1000A3A88();

      v45 = sub_1000A2C58();

      sub_10003228C(v42, v50);

      v46 = v54;
      v47 = *v54;
      *v54 = v45;

      v19 = v51;
    }

    else
    {
      v46 = v54;
    }

    v48 = objc_autoreleasePoolPush();
    sub_100064EF8(v53, v29, v46, &v55);

    objc_autoreleasePoolPop(v48);
  }

  else
  {
    v21 = v55;
    sub_1000A2358();

    swift_willThrow();
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v22 = sub_1000A3538();
    sub_100001E38(v22, qword_1000C96B8);
    swift_errorRetain();
    v23 = sub_1000A3518();
    v24 = sub_1000A3CA8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "[EnergySiteQuery]  EnergySite not found in Store due to %@", v25, 0xCu);
      sub_100022154(v26, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }
  }

  return [a1 refreshAllObjects];
}

void sub_100064EF8(void *a1, unint64_t a2, void **a3, void *a4)
{
  v76 = a4;
  v73 = a3;
  v78 = sub_1000A33D8();
  v88 = *(v78 - 8);
  __chkstk_darwin(v88[8]);
  v87 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v86 = &v72 - v7;
  v8 = sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  __chkstk_darwin(*(*(v8 - 8) + 64));
  v85 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v95 = &v72 - v10;
  v11 = sub_1000A3438();
  __chkstk_darwin(*(*(v11 - 8) + 64));
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = sub_1000A2C98();
  v75 = *(v14 - 8);
  __chkstk_darwin(*(v75 + 64));
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v72 - v17;
  v74 = a1;
  v19 = [a1 metadata];
  v20 = sub_1000A23B8();
  v22 = v21;

  v93 = v20;
  v94 = v22;
  v23 = v14;
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  sub_1000A3428();
  v24 = sub_1000672C0();
  v25 = v23;
  v26 = v89;
  sub_1000A3468();
  v27 = v76;
  v28 = v26;
  if (v26)
  {
LABEL_34:
    *v27 = v28;
    return;
  }

  v81 = v16;
  v82 = v13;
  v84 = v18;
  v29 = a2 >> 62;
  if (a2 >> 62)
  {
    v36 = sub_1000A3EC8();
    if (v36 < 1)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v25 = v36;
    if (sub_1000A3EC8() < 1)
    {
LABEL_16:
      __break(1u);
LABEL_17:
      v30 = &off_1000C6000;
      if ((a2 & 0xC000000000000001) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_5;
    }

    if (sub_1000A3EC8() >= v25)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v30 = &off_1000C6000;
  if (!v25)
  {
    goto LABEL_14;
  }

  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v25 != 1)
  {
    sub_1000A2CB8();

    v31 = 1;
    do
    {
      v32 = v31 + 1;
      sub_1000A3E98(v31);
      v31 = v32;
    }

    while (v25 != v32);
    if (!v29)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:

  if (!v29)
  {
LABEL_9:
    v33 = a2 & 0xFFFFFFFFFFFFFF8;
    v34 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v35 = 1;
    goto LABEL_20;
  }

LABEL_19:

  v33 = sub_1000A3ED8();
  v34 = v37;
  v35 = v38;
  v25 = v39 >> 1;
LABEL_20:
  v40 = v75;
  v41 = v88;
  v89 = 0;
  v83 = v24;
  v72 = v33;
  swift_unknownObjectRetain();
  if (v25 == v35)
  {
    v42 = v84;
LABEL_22:
    swift_unknownObjectRelease_n();
    v43 = v89;
    v44 = sub_1000A3458();
    if (!v43)
    {
      v65 = v44;
      v66 = v45;
      v80 = v23;
      sub_1000A2C68();
      v67 = v74;
      v68 = [v74 siteID];
      sub_1000A3A88();

      v69 = [v67 zoneName];
      sub_1000A3A88();

      v70 = sub_1000A2C58();
      (*(v75 + 8))(v84, v80);
      sub_10003228C(v65, v66);

      v71 = *v73;
      *v73 = v70;

      return;
    }

    (*(v75 + 8))(v42, v23);
    v27 = v76;
    v28 = v43;
    goto LABEL_34;
  }

  v77 = (v41 + 1);
  v79 = (v40 + 8);
  v80 = v23;
  v46 = v25 - v35;
  if (v25 <= v35)
  {
    v47 = v35;
  }

  else
  {
    v47 = v25;
  }

  v48 = v47 - v35;
  v49 = (v34 + 8 * v35);
  while (v48)
  {
    v53 = *v49;
    v54 = [v53 v30[344]];
    v55 = sub_1000A23B8();
    v56 = v23;
    v58 = v57;

    v93 = v55;
    v94 = v58;
    v92 = 0;
    v90 = 0u;
    v91 = 0u;
    sub_1000A3428();
    v59 = v81;
    v60 = v89;
    sub_1000A3468();
    v28 = v60;
    if (v60)
    {

      swift_unknownObjectRelease_n();
      (*v79)(v84, v56);
      v27 = v76;
      goto LABEL_34;
    }

    v88 = objc_autoreleasePoolPush();
    sub_1000A2C88();
    v61 = v86;
    sub_1000A33B8();
    v62 = v84;
    sub_1000A33C8();
    (*v77)(v61, v78);
    sub_1000A2C88();
    v63 = v87;
    sub_1000A33B8();
    v89 = 0;
    v64 = v85;
    sub_1000A33C8();
    (*v77)(v63, v78);
    sub_1000A2C68();
    v42 = v62;
    v50 = v59;
    v51 = v95;
    sub_1000A2C48();
    sub_100022154(v64, &qword_1000C7F58, &qword_1000AC770);
    sub_100022154(v51, &qword_1000C7F58, &qword_1000AC770);
    objc_autoreleasePoolPop(v88);

    v52 = v50;
    v23 = v80;
    (*v79)(v52, v80);
    --v48;
    ++v49;
    --v46;
    v30 = &off_1000C6000;
    if (!v46)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

void *sub_1000657CC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10000275C(&qword_1000C88F8, &unk_1000AC790);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_100065850(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10000275C(&qword_1000C8DE0, &qword_1000AC7A0);
  v4 = *(sub_1000A2A18() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10006594C(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_10006596C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_10006599C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_100065AF4(uint64_t a1, char *a2, unint64_t a3, uint64_t a4)
{
  v39 = sub_1000A2A18();
  v41 = *(v39 - 8);
  __chkstk_darwin(*(v41 + 64));
  v40 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v38 = &v32 - v10;
  v11 = a4 + 56;
  v12 = -1 << *(a4 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v30 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v11;
    *(a1 + 16) = ~v12;
    *(a1 + 24) = v30;
    *(a1 + 32) = v14;
    return a3;
  }

  if (!a3)
  {
    v30 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v32 = -1 << *(a4 + 32);
    v33 = a1;
    result = 0;
    v15 = 0;
    v16 = (63 - v12) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    a1 = 1;
    v36 = a4 + 56;
    v37 = a3;
    v17 = v38;
    while (v14)
    {
      v43 = a2;
LABEL_15:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v42 = v15;
      v21 = a4;
      v22 = *(a4 + 48);
      v23 = v40;
      v24 = v41;
      v25 = *(v41 + 72);
      v26 = v39;
      (*(v41 + 16))(v40, v22 + v25 * (v20 | (v15 << 6)), v39);
      v27 = *(v24 + 32);
      v27(v17, v23, v26);
      v28 = v43;
      v27(v43, v17, v26);
      a3 = v37;
      if (a1 == v37)
      {
        v12 = v32;
        a1 = v33;
        a4 = v21;
        v30 = v42;
        v11 = v36;
        goto LABEL_25;
      }

      a2 = &v28[v25];
      result = a1;
      v29 = __OFADD__(a1++, 1);
      a4 = v21;
      v15 = v42;
      v11 = v36;
      if (v29)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v18 = v15;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v19 >= v16)
      {
        break;
      }

      v14 = *(v11 + 8 * v19);
      ++v18;
      if (v14)
      {
        v43 = a2;
        v15 = v19;
        goto LABEL_15;
      }
    }

    v14 = 0;
    if (v16 <= v15 + 1)
    {
      v31 = v15 + 1;
    }

    else
    {
      v31 = v16;
    }

    v30 = v31 - 1;
    a3 = result;
    v12 = v32;
    a1 = v33;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100065DB4()
{
  *(v0 + 16) = &_swiftEmptySetSingleton;
  if (qword_1000C7568 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C9648;
  *(v0 + 32) = qword_1000C9648;

  return _swift_task_switch(sub_100065E58, v1, 0);
}

uint64_t sub_100065E58()
{
  v1 = *(*(v0 + 32) + 112);
  v2 = sub_10004060C();
  v3 = [v2 newBackgroundContext];
  *(v0 + 40) = v3;
  v4 = sub_1000A3A78();
  [v3 setTransactionAuthor:v4];

  [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v3 setUndoManager:0];
  [v3 setShouldRefreshAfterSave:1];
  [v3 setStalenessInterval:0.0];
  [v3 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_100065F94, 0, 0);
}

uint64_t sub_100065F94()
{
  *(v0 + 24) = *(v0 + 40);
  v1 = objc_autoreleasePoolPush();
  sub_100063700((v0 + 24), v0 + 16);
  *(v0 + 48) = 0;
  v2 = *(v0 + 32);
  objc_autoreleasePoolPop(v1);

  return _swift_task_switch(sub_100066060, v2, 0);
}

uint64_t sub_100066060()
{
  v1 = *(*(v0 + 32) + 120);
  v2 = sub_10004060C();
  v3 = [v2 newBackgroundContext];
  *(v0 + 56) = v3;
  v4 = sub_1000A3A78();
  [v3 setTransactionAuthor:v4];

  [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v3 setUndoManager:0];
  [v3 setShouldRefreshAfterSave:1];
  [v3 setStalenessInterval:0.0];
  [v3 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_10006619C, 0, 0);
}

void sub_10006619C()
{
  v10 = v0;
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  *(v0 + 24) = v1;
  v3 = objc_autoreleasePoolPush();
  sub_100063EB0((v0 + 24), v0 + 16);
  objc_autoreleasePoolPop(v3);
  if (!v2)
  {
    v4 = *(v0 + 16);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = sub_1000657CC(*(v4 + 16), 0);
      v7 = sub_10006599C(&v9, v6 + 4, v5, v4);

      sub_100067318();
      if (v7 != v5)
      {
        __break(1u);
        return;
      }
    }

    else
    {

      v6 = &_swiftEmptyArrayStorage;
    }

    v8 = *(v0 + 8);

    v8(v6);
  }
}

uint64_t sub_100066308(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 256) = a3;
  *(v3 + 128) = a1;
  *(v3 + 136) = a2;
  v4 = *(*(sub_10000275C(&qword_1000C8DC8, &qword_1000AC768) - 8) + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  v5 = *(*(sub_10000275C(&qword_1000C7F58, &qword_1000AC770) - 8) + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v6 = *(*(sub_10000275C(&qword_1000C8DD0, &unk_1000AC778) - 8) + 64) + 15;
  *(v3 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_100066478, 0, 0);
}

uint64_t sub_100066478()
{
  if (qword_1000C7568 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C9648;
  *(v0 + 232) = qword_1000C9648;

  return _swift_task_switch(sub_100066510, v1, 0);
}

uint64_t sub_100066510()
{
  v1 = *(*(v0 + 232) + 112);
  v2 = sub_10004060C();
  v3 = [v2 newBackgroundContext];
  *(v0 + 240) = v3;
  v4 = sub_1000A3A78();
  [v3 setTransactionAuthor:v4];

  [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v3 setUndoManager:0];
  [v3 setShouldRefreshAfterSave:1];
  [v3 setStalenessInterval:0.0];
  [v3 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_10006664C, 0, 0);
}

uint64_t sub_10006664C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 240);
  v4 = objc_autoreleasePoolPush();
  *(v0 + 112) = 0;
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v5[5] = v0 + 112;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100067264;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_100067270;
  *(v0 + 56) = v6;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1000636D8;
  *(v0 + 40) = &unk_1000BFB98;
  v7 = _Block_copy((v0 + 16));
  v8 = *(v0 + 56);
  v9 = v3;

  [v9 performBlockAndWait:v7];
  _Block_release(v7);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
    return _swift_task_switch(v10, v11, v12);
  }

  v13 = *(v0 + 240);
  v14 = *(v0 + 112);

  objc_autoreleasePoolPop(v4);
  if (!v14)
  {
    v11 = *(v0 + 232);
    v10 = sub_100066BD4;
    v12 = 0;

    return _swift_task_switch(v10, v11, v12);
  }

  v46 = v14;
  if (*(v0 + 256) == 1)
  {
    v15 = *(v0 + 216);
    v16 = *(v0 + 224);
    v18 = *(v0 + 200);
    v17 = *(v0 + 208);
    v20 = *(v0 + 184);
    v19 = *(v0 + 192);
    v39 = *(v0 + 176);
    v40 = *(v0 + 168);
    v41 = *(v0 + 160);
    v42 = *(v0 + 152);
    v43 = *(v0 + 144);
    v44 = *(v0 + 240);
    sub_1000A2DB8();
    sub_1000A2DD8();
    sub_1000A2D48();
    sub_1000A2D98();
    v21 = sub_1000A2C78();
    (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
    v22 = sub_1000A2498();
    v23 = *(*(v22 - 8) + 56);
    v23(v15, 1, 1, v22);
    v23(v17, 1, 1, v22);
    v23(v18, 1, 1, v22);
    v23(v19, 1, 1, v22);
    v23(v20, 1, 1, v22);
    v23(v39, 1, 1, v22);
    v23(v40, 1, 1, v22);
    v23(v41, 1, 1, v22);
    v23(v42, 1, 1, v22);
    v24 = sub_1000A3418();
    (*(*(v24 - 8) + 56))(v43, 1, 1, v24);
    v25 = objc_allocWithZone(sub_1000A2E08());
    v26 = sub_1000A2DA8();

    v46 = v26;
  }

  else
  {
  }

  v28 = *(v0 + 216);
  v27 = *(v0 + 224);
  v30 = *(v0 + 200);
  v29 = *(v0 + 208);
  v32 = *(v0 + 184);
  v31 = *(v0 + 192);
  v34 = *(v0 + 168);
  v33 = *(v0 + 176);
  v35 = *(v0 + 152);
  v36 = *(v0 + 160);
  v45 = *(v0 + 144);

  v37 = *(v0 + 8);

  return v37(v46);
}

uint64_t sub_100066BD4()
{
  v1 = *(*(v0 + 232) + 120);
  v2 = sub_10004060C();
  v3 = [v2 newBackgroundContext];
  *(v0 + 248) = v3;
  v4 = sub_1000A3A78();
  [v3 setTransactionAuthor:v4];

  [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v3 setUndoManager:0];
  [v3 setShouldRefreshAfterSave:1];
  [v3 setStalenessInterval:0.0];
  [v3 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_100066D10, 0, 0);
}

uint64_t sub_100066D10()
{
  v1 = *(v0 + 248);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);

  v4 = v1;
  v5 = objc_autoreleasePoolPush();
  *(v0 + 120) = 0;
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v0 + 120;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000683D4;
  *(v7 + 24) = v6;
  *(v0 + 96) = sub_1000683BC;
  *(v0 + 104) = v7;
  *(v0 + 64) = _NSConcreteStackBlock;
  *(v0 + 72) = 1107296256;
  *(v0 + 80) = sub_1000636D8;
  *(v0 + 88) = &unk_1000BFC10;
  v8 = _Block_copy((v0 + 64));
  v9 = *(v0 + 104);

  v10 = v4;

  [v10 performBlockAndWait:v8];
  _Block_release(v8);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = *(v0 + 248);
    v13 = *(v0 + 120);

    objc_autoreleasePoolPop(v5);
    if (v13)
    {
      v44 = v13;
      if (*(v0 + 256) == 1)
      {
        v14 = *(v0 + 216);
        v15 = *(v0 + 224);
        v17 = *(v0 + 200);
        v16 = *(v0 + 208);
        v19 = *(v0 + 184);
        v18 = *(v0 + 192);
        v37 = *(v0 + 176);
        v38 = *(v0 + 168);
        v39 = *(v0 + 160);
        v40 = *(v0 + 152);
        v41 = *(v0 + 144);
        v42 = *(v0 + 248);
        sub_1000A2DB8();
        sub_1000A2DD8();
        sub_1000A2D48();
        sub_1000A2D98();
        v20 = sub_1000A2C78();
        (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
        v21 = sub_1000A2498();
        v22 = *(*(v21 - 8) + 56);
        v22(v14, 1, 1, v21);
        v22(v16, 1, 1, v21);
        v22(v17, 1, 1, v21);
        v22(v18, 1, 1, v21);
        v22(v19, 1, 1, v21);
        v22(v37, 1, 1, v21);
        v22(v38, 1, 1, v21);
        v22(v39, 1, 1, v21);
        v22(v40, 1, 1, v21);
        v23 = sub_1000A3418();
        (*(*(v23 - 8) + 56))(v41, 1, 1, v23);
        v24 = objc_allocWithZone(sub_1000A2E08());
        v25 = sub_1000A2DA8();

        v44 = v25;
      }

      else
      {
      }
    }

    else
    {

      v44 = 0;
    }

    v27 = *(v0 + 216);
    v26 = *(v0 + 224);
    v29 = *(v0 + 200);
    v28 = *(v0 + 208);
    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v33 = *(v0 + 168);
    v32 = *(v0 + 176);
    v34 = *(v0 + 152);
    v35 = *(v0 + 160);
    v43 = *(v0 + 144);

    v36 = *(v0 + 8);

    return v36(v44);
  }

  return result;
}

uint64_t sub_100067270()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100067298(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000672C0()
{
  result = qword_1000C8DD8;
  if (!qword_1000C8DD8)
  {
    sub_1000A2C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C8DD8);
  }

  return result;
}

uint64_t sub_100067328(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 264) = a3;
  *(v3 + 128) = a1;
  *(v3 + 136) = a2;
  v4 = *(*(sub_10000275C(&qword_1000C8DC8, &qword_1000AC768) - 8) + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  v5 = *(*(sub_10000275C(&qword_1000C7F58, &qword_1000AC770) - 8) + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v6 = *(*(sub_10000275C(&qword_1000C8DD0, &unk_1000AC778) - 8) + 64) + 15;
  *(v3 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_100067498, 0, 0);
}

uint64_t sub_100067498()
{
  if (qword_1000C7568 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C9648;
  *(v0 + 232) = qword_1000C9648;

  return _swift_task_switch(sub_100067530, v1, 0);
}

uint64_t sub_100067530()
{
  v1 = *(*(v0 + 232) + 112);
  v2 = sub_10004060C();
  v3 = [v2 newBackgroundContext];
  *(v0 + 240) = v3;
  v4 = sub_1000A3A78();
  [v3 setTransactionAuthor:v4];

  [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v3 setUndoManager:0];
  [v3 setShouldRefreshAfterSave:1];
  [v3 setStalenessInterval:0.0];
  [v3 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_10006766C, 0, 0);
}

uint64_t sub_10006766C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 240);
  v4 = objc_autoreleasePoolPush();
  *(v0 + 112) = 0;
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v5[5] = v0 + 112;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000683D4;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1000683BC;
  *(v0 + 56) = v6;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1000636D8;
  *(v0 + 40) = &unk_1000BFD78;
  v7 = _Block_copy((v0 + 16));
  v8 = *(v0 + 56);
  v9 = v3;

  [v9 performBlockAndWait:v7];
  _Block_release(v7);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
    return _swift_task_switch(v10, v11, v12);
  }

  v13 = *(v0 + 240);
  v14 = *(v0 + 112);
  *(v0 + 248) = v14;

  objc_autoreleasePoolPop(v4);
  if (!v14)
  {
    v11 = *(v0 + 232);
    v10 = sub_100067C04;
    v12 = 0;

    return _swift_task_switch(v10, v11, v12);
  }

  v47 = v14;
  if (*(v0 + 264) == 1)
  {
    v15 = *(v0 + 216);
    v16 = *(v0 + 224);
    v18 = *(v0 + 200);
    v17 = *(v0 + 208);
    v20 = *(v0 + 184);
    v19 = *(v0 + 192);
    v40 = *(v0 + 176);
    v41 = *(v0 + 168);
    v42 = *(v0 + 160);
    v43 = *(v0 + 152);
    v44 = *(v0 + 144);
    v45 = *(v0 + 240);
    sub_1000A2DB8();
    sub_1000A2DD8();
    sub_1000A2D48();
    sub_1000A2D98();
    v21 = sub_1000A2C78();
    (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
    v22 = sub_1000A2498();
    v23 = *(*(v22 - 8) + 56);
    v23(v15, 1, 1, v22);
    v23(v17, 1, 1, v22);
    v23(v18, 1, 1, v22);
    v23(v19, 1, 1, v22);
    v23(v20, 1, 1, v22);
    v23(v40, 1, 1, v22);
    v23(v41, 1, 1, v22);
    v23(v42, 1, 1, v22);
    v23(v43, 1, 1, v22);
    v24 = sub_1000A3418();
    (*(*(v24 - 8) + 56))(v44, 1, 1, v24);
    v25 = objc_allocWithZone(sub_1000A2E08());
    v26 = sub_1000A2DA8();

    v47 = v26;
  }

  else
  {
  }

  v28 = *(v0 + 216);
  v27 = *(v0 + 224);
  v30 = *(v0 + 200);
  v29 = *(v0 + 208);
  v32 = *(v0 + 184);
  v31 = *(v0 + 192);
  v34 = *(v0 + 168);
  v33 = *(v0 + 176);
  v35 = *(v0 + 152);
  v36 = *(v0 + 160);
  v46 = *(v0 + 144);

  v37 = *(v0 + 8);
  v38 = *(v0 + 248) != 0;

  return v37(v47, v38);
}

uint64_t sub_100067C04()
{
  v1 = *(*(v0 + 232) + 120);
  v2 = sub_10004060C();
  v3 = [v2 newBackgroundContext];
  *(v0 + 256) = v3;
  v4 = sub_1000A3A78();
  [v3 setTransactionAuthor:v4];

  [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v3 setUndoManager:0];
  [v3 setShouldRefreshAfterSave:1];
  [v3 setStalenessInterval:0.0];
  [v3 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_100067D40, 0, 0);
}

uint64_t sub_100067D40()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);

  v4 = v1;
  v5 = objc_autoreleasePoolPush();
  *(v0 + 120) = 0;
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v0 + 120;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000683D4;
  *(v7 + 24) = v6;
  *(v0 + 96) = sub_1000683BC;
  *(v0 + 104) = v7;
  *(v0 + 64) = _NSConcreteStackBlock;
  *(v0 + 72) = 1107296256;
  *(v0 + 80) = sub_1000636D8;
  *(v0 + 88) = &unk_1000BFDF0;
  v8 = _Block_copy((v0 + 64));
  v9 = *(v0 + 104);

  v10 = v4;

  [v10 performBlockAndWait:v8];
  _Block_release(v8);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = *(v0 + 256);
    v13 = *(v0 + 120);

    objc_autoreleasePoolPop(v5);
    if (v13)
    {
      v45 = v13;
      if (*(v0 + 264) == 1)
      {
        v14 = *(v0 + 216);
        v15 = *(v0 + 224);
        v17 = *(v0 + 200);
        v16 = *(v0 + 208);
        v19 = *(v0 + 184);
        v18 = *(v0 + 192);
        v38 = *(v0 + 176);
        v39 = *(v0 + 168);
        v40 = *(v0 + 160);
        v41 = *(v0 + 152);
        v42 = *(v0 + 144);
        v43 = *(v0 + 256);
        sub_1000A2DB8();
        sub_1000A2DD8();
        sub_1000A2D48();
        sub_1000A2D98();
        v20 = sub_1000A2C78();
        (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
        v21 = sub_1000A2498();
        v22 = *(*(v21 - 8) + 56);
        v22(v14, 1, 1, v21);
        v22(v16, 1, 1, v21);
        v22(v17, 1, 1, v21);
        v22(v18, 1, 1, v21);
        v22(v19, 1, 1, v21);
        v22(v38, 1, 1, v21);
        v22(v39, 1, 1, v21);
        v22(v40, 1, 1, v21);
        v22(v41, 1, 1, v21);
        v23 = sub_1000A3418();
        (*(*(v23 - 8) + 56))(v42, 1, 1, v23);
        v24 = objc_allocWithZone(sub_1000A2E08());
        v25 = sub_1000A2DA8();

        v45 = v25;
      }

      else
      {
      }
    }

    else
    {

      v45 = 0;
    }

    v27 = *(v0 + 216);
    v26 = *(v0 + 224);
    v29 = *(v0 + 200);
    v28 = *(v0 + 208);
    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v33 = *(v0 + 168);
    v32 = *(v0 + 176);
    v34 = *(v0 + 152);
    v35 = *(v0 + 160);
    v44 = *(v0 + 144);

    v36 = *(v0 + 8);
    v37 = *(v0 + 248) != 0;

    return v36(v45, v37);
  }

  return result;
}

uint64_t sub_1000682A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000A3C68();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100095D34(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100068340()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000683FC()
{
  v1 = sub_1000A2AD8();
  v0[5] = v1;
  v2 = *(v1 - 8);
  v0[6] = v2;
  v3 = *(v2 + 64) + 15;
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000684C4, 0, 0);
}

uint64_t sub_1000684C4()
{
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = sub_100001E38(v3, qword_1000C95F8);
  swift_beginAccess();
  v27 = *(v4 + 16);
  v27(v1, v5, v3);
  sub_1000A2A98();
  sub_100069398(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
  v6 = sub_1000A3DF8();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);
  if (v6)
  {
    v8 = sub_1000A25D8();
    sub_100069398(&qword_1000C8EA0, &type metadata accessor for NetworkError);
    v9 = &enum case for NetworkError.dataUnavailable(_:);
LABEL_7:
    v15 = v0[7];
    v14 = v0[8];
    swift_allocError();
    (*(*(v8 - 8) + 104))(v16, *v9, v8);
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }

  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[5];
  v27(v10, v5, v12);
  sub_1000A2A78();
  v13 = sub_1000A3DF8();
  v7(v11, v12);
  v7(v10, v12);
  if (v13)
  {
    v8 = sub_1000A2608();
    sub_100069398(&qword_1000C8E98, &type metadata accessor for GridLookupError);
    v9 = &enum case for GridLookupError.geohashTileMissing(_:);
    goto LABEL_7;
  }

  v20 = v0[7];
  v19 = v0[8];
  v21 = v0[5];
  v27(v19, v5, v21);
  sub_1000A2A68();
  v22 = sub_1000A3DF8();
  v7(v20, v21);
  v7(v19, v21);
  v23 = (v22 & 1) == 0;
  if (v22)
  {
    v24 = 0xD000000000000012;
  }

  else
  {
    v24 = 0x4F4D5F4F53494143;
  }

  if (v23)
  {
    v25 = 0xEA00000000004B43;
  }

  else
  {
    v25 = 0x80000001000A7200;
  }

  v26 = v0[1];

  return v26(v24, v25);
}

uint64_t sub_1000688B0(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_1000A25F8();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_1000A2688();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = sub_1000A22A8();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v11 = sub_1000A2578();
  v1[17] = v11;
  v12 = *(v11 - 8);
  v1[18] = v12;
  v13 = *(v12 + 64) + 15;
  v1[19] = swift_task_alloc();
  v14 = sub_1000A2498();
  v1[20] = v14;
  v15 = *(v14 - 8);
  v1[21] = v15;
  v16 = *(v15 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v17 = sub_1000A2AD8();
  v1[25] = v17;
  v18 = *(v17 - 8);
  v1[26] = v18;
  v19 = *(v18 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_100068B78, 0, 0);
}

uint64_t sub_100068B78()
{
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = sub_100001E38(v3, qword_1000C95F8);
  swift_beginAccess();
  (*(v4 + 16))(v1, v5, v3);
  sub_1000A2A88();
  sub_100069398(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
  LOBYTE(v5) = sub_1000A3DF8();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = sub_1000A2B18();
    sub_100069398(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for EnergyKitError.guidanceUnavailable(_:), v7);
    swift_willThrow();
    v30 = v0[27];
    v29 = v0[28];
    v32 = v0[23];
    v31 = v0[24];
    v33 = v0[22];
    v34 = v0[19];
    v36 = v0[15];
    v35 = v0[16];
    v37 = v0[14];
    v38 = v0[11];
    v68 = v0[8];

    v39 = v0[1];

    return v39();
  }

  else
  {
    v9 = v0[23];
    v10 = v0[24];
    v11 = v0[21];
    v60 = v0[22];
    v12 = v0[19];
    v70 = v0[20];
    v13 = v0[17];
    v14 = v0[18];
    v65 = v0[16];
    v67 = v0[15];
    v15 = v0[13];
    v16 = v0[8];
    v58 = v0[14];
    v17 = v0[7];
    v53 = v0[12];
    v55 = v0[6];
    v52 = v0[5];
    sub_1000A2478();
    sub_1000A2538();
    sub_1000A2E68();
    (*(v14 + 8))(v12, v13);
    v64 = *(v11 + 8);
    v64(v9, v70);
    v18 = *(v11 + 16);
    v18(v9, v10, v70);
    sub_1000A2278();
    (*(v17 + 16))(v16, v52, v55);
    sub_10000275C(&qword_1000C8E80, &qword_1000AC7D8);
    v19 = *(sub_1000A2718() - 8);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    *(swift_allocObject() + 16) = xmmword_1000AC0E0;
    v22 = *(v15 + 16);
    v22(v67, v65, v53);
    sub_1000A26F8();
    v22(v67, v65, v53);
    sub_10000275C(&qword_1000C8E88, &qword_1000AC7E0);
    v23 = *(sub_1000A2648() - 8);
    v54 = *(v23 + 72);
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    *(swift_allocObject() + 16) = xmmword_1000AC010;
    v18(v9, v10, v70);
    sub_1000A2278();
    sub_1000A2638();
    sub_1000A2408();
    sub_1000A2248();
    sub_1000A2268();
    sub_1000A2638();
    v18(v9, v10, v70);
    sub_1000A2278();
    sub_1000A2658();
    v25 = sub_1000A2238();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_1000A2228();
    sub_100069398(&qword_1000C8E90, &type metadata accessor for HSGuidanceForecast);
    v28 = sub_1000A2218();
    v56 = v0[28];
    v57 = v0[27];
    v41 = v0[24];
    v59 = v0[23];
    v61 = v0[22];
    v42 = v0[20];
    v43 = v0[16];
    v62 = v0[19];
    v63 = v0[15];
    v44 = v0[13];
    v46 = v0[11];
    v45 = v0[12];
    v47 = v0[9];
    v48 = v0[10];
    v66 = v0[14];
    v69 = v0[8];
    v71 = v28;
    v50 = v49;

    (*(v48 + 8))(v46, v47);
    (*(v44 + 8))(v43, v45);
    v64(v41, v42);

    v51 = v0[1];

    return v51(v71, v50);
  }
}

uint64_t sub_100069398(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100069404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v26 - v10;
  sub_100047188(a3, v26 - v10, &qword_1000C8240, &qword_1000AB688);
  v12 = sub_1000A3BE8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100022154(v11, &qword_1000C8240, &qword_1000AB688);
  }

  else
  {
    sub_1000A3BD8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000A3BA8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1000A3AA8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
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

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000696C4(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  __chkstk_darwin(((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = &v15 - v6;
  v8 = sub_1000A2508();
  v9 = *(v8 - 8);
  __chkstk_darwin(*(v9 + 64));
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_100022154(a1, &qword_1000C92C0, &qword_1000ACB30);
    sub_100079F64(a2, v7);
    (*(v9 + 8))(a2, v8);
    return sub_100022154(v7, &qword_1000C92C0, &qword_1000ACB30);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    v13 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_10007B814(v11, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v9 + 8))(a2, v8);
    *v2 = v16;
  }

  return result;
}

void sub_1000698B4()
{
  type metadata accessor for EKSHomeManagerActor();
  swift_allocObject();
  sub_1000698F0();
  qword_1000C96F8 = v0;
}

void sub_1000698F0()
{
  v1 = v0;
  v2 = sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  __chkstk_darwin(((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = &v20 - v3;
  v5 = sub_1000A2508();
  v6 = *(v5 - 8);
  __chkstk_darwin(*(v6 + 64));
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v0 + 128) = &_swiftEmptyDictionarySingleton;
  *(v0 + 112) = 0;
  *(v0 + 120) = &_swiftEmptyDictionarySingleton;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v9 = sub_1000A3538();
  sub_100001E38(v9, qword_1000C96B8);
  v10 = sub_1000A3518();
  v11 = sub_1000A3CA8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[EKSHomeManagerActor] Setting up EKSHomeManagerActor", v12, 2u);
  }

  v13 = sub_1000A3518();
  v14 = sub_1000A3CA8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "[EKSHomeManagerActor] Setting up location services", v15, 2u);
  }

  sub_10007CE10();
  sub_1000A2D28();
  sub_1000A2D28();
  (*(v6 + 56))(v4, 0, 1, v5);
  swift_beginAccess();
  sub_1000696C4(v4, v8);
  swift_endAccess();
  v16 = objc_allocWithZone(NSBundle);
  v17 = sub_1000A3A78();
  v18 = [v16 initWithPath:v17];

  if (v18)
  {
    v19 = objc_allocWithZone(type metadata accessor for EKSHomeManager());
    *(v1 + 152) = sub_1000754AC(8, 0, v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100069C1C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_1000A2AD8();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v7 = sub_1000A2508();
  v3[17] = v7;
  v8 = *(v7 - 8);
  v3[18] = v8;
  v9 = *(v8 + 64) + 15;
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100069D48, v2, 0);
}

uint64_t sub_100069D48()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[11];
  sub_1000A2D28();
  LOBYTE(v4) = sub_1000A24E8();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    (*(v0[18] + 16))(v0[10], v0[11], v0[17]);
    v5 = v0[19];
    v6 = v0[15];
    v7 = v0[16];

    v8 = v0[1];

    return v8();
  }

  else
  {
    if (qword_1000C7550 != -1)
    {
      swift_once();
    }

    v10 = qword_1000C95F0;
    v0[20] = qword_1000C95F0;

    return _swift_task_switch(sub_100069EA0, v10, 0);
  }
}

uint64_t sub_100069EA0()
{
  if ((sub_1000A2D18() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = sub_100001E38(v3, qword_1000C95F8);
  swift_beginAccess();
  (*(v4 + 16))(v1, v5, v3);
  sub_1000A2AA8();
  sub_10007E7E8(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
  LOBYTE(v5) = sub_1000A3DF8();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = 0;
    v8 = *(v0 + 160);
  }

  else
  {
LABEL_6:
    v7 = *(*(v0 + 160) + 145);
  }

  *(v0 + 200) = v7;
  v9 = *(v0 + 96);

  return _swift_task_switch(sub_10006A034, v9, 0);
}

uint64_t sub_10006A034()
{
  v1 = qword_1000C95F0;
  *(v0 + 168) = qword_1000C95F0;

  return _swift_task_switch(sub_10006A0AC, v1, 0);
}

uint64_t sub_10006A0AC()
{
  if ((sub_1000A2D18() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = sub_100001E38(v3, qword_1000C95F8);
  swift_beginAccess();
  (*(v4 + 16))(v1, v5, v3);
  sub_1000A2AA8();
  sub_10007E7E8(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
  LOBYTE(v5) = sub_1000A3DF8();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = 0;
    v8 = *(v0 + 168);
  }

  else
  {
LABEL_6:
    v7 = *(*(v0 + 168) + 146);
  }

  *(v0 + 201) = v7;
  v9 = *(v0 + 96);

  return _swift_task_switch(sub_10006A240, v9, 0);
}

uint64_t sub_10006A240()
{
  v1 = *(v0 + 96);
  if (!*(v1 + 144))
  {
    v6 = MobileGestalt_get_current_device();
    if (v6)
    {
      v9 = v6;
      v10 = MobileGestalt_copy_serialNumber_obj();

      if (v10)
      {
        sub_1000A3A88();

        *(v0 + 64) = sub_1000A3A98();
        *(v0 + 72) = v11;

        v12 = qword_1000C95F0;
        *(v0 + 176) = qword_1000C95F0;

        v6 = sub_10006A3CC;
        v7 = v12;
        v8 = 0;

        return _swift_task_switch(v6, v7, v8);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return _swift_task_switch(v6, v7, v8);
  }

  if ((*(v0 + 200) & 1) != 0 || *(v0 + 201))
  {
    (*(*(v0 + 144) + 16))(*(v0 + 80), *(v0 + 88), *(v0 + 136));
  }

  else
  {
    v2 = *(v1 + 136);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(v1 + 144);

    sub_1000A24C8();
    sub_1000A24A8();
  }

  v13 = *(v0 + 152);
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10006A3CC()
{
  v1 = v0[22];
  v2 = v0[12];
  v0[23] = *(v1 + 112);
  v0[24] = *(v1 + 120);

  return _swift_task_switch(sub_10006A44C, v2, 0);
}

uint64_t sub_10006A44C()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 184);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 201);
    v7 = *(v0 + 200);
    v8 = *(v0 + 96);

    v21 = v4;
    v23._countAndFlagsBits = 45;
    v23._object = 0xE100000000000000;
    sub_1000A3AE8(v23);
    v24._countAndFlagsBits = v3;
    v24._object = v1;
    sub_1000A3AE8(v24);

    v9 = *(v8 + 144);
    *(v8 + 136) = v21;
    *(v8 + 144) = v5;

    if ((v7 & 1) != 0 || v6)
    {
      v12 = *(v0 + 136);
      v13 = *(v0 + 144);
      v15 = *(v0 + 80);
      v14 = *(v0 + 88);

      (*(v13 + 16))(v15, v14, v12);
    }

    else
    {
      v11 = *(v0 + 80);
      v10 = *(v0 + 88);
      sub_1000A24C8();
      sub_1000A24A8();
    }

    v16 = *(v0 + 152);
    v17 = *(v0 + 120);
    v18 = *(v0 + 128);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006A594(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = *(*(sub_10000275C(&qword_1000C92C0, &qword_1000ACB30) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v4 = sub_1000A2508();
  v2[18] = v4;
  v5 = *(v4 - 8);
  v2[19] = v5;
  v6 = *(v5 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_10006A6E0, v1, 0);
}

uint64_t sub_10006A6E0()
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v1 = sub_1000A3538();
  v0[28] = sub_100001E38(v1, qword_1000C96B8);
  v2 = sub_1000A3518();
  v3 = sub_1000A3CA8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[EKSHomeManagerActor] Updating homes", v4, 2u);
  }

  v5 = v0[15];
  v6 = v0[16];

  swift_beginAccess();
  v7 = *(v6 + 120);
  *(v6 + 120) = &_swiftEmptyDictionarySingleton;

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[29] = result;
    if (result)
    {
      goto LABEL_7;
    }

LABEL_21:
    v34 = v0[26];
    v35 = v0[27];
    v36 = v0[24];
    v37 = v0[25];
    v38 = v0[23];
    v44 = v0[22];
    v46 = v0[21];
    v48 = v0[20];
    v39 = v0[18];
    v40 = v0[19];
    v42 = v0[16];
    v41 = v0[17];
    sub_1000A2D28();
    sub_1000A2D28();
    (*(v40 + 56))(v41, 0, 1, v39);
    swift_beginAccess();
    sub_1000696C4(v41, v35);
    swift_endAccess();

    v43 = v0[1];

    return v43();
  }

  if (v0[15] < 0)
  {
    v33 = v0[15];
  }

  result = sub_1000A3EC8();
  v0[29] = result;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_7:
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v0[30] = v10;
      v11 = v0[15];
      v12 = (v11 & 0xC000000000000001) != 0 ? sub_1000A3EA8() : *(v11 + 8 * v10 + 32);
      v13 = v12;
      v0[31] = v12;
      v14 = [v12 restrictedGuests];
      v0[32] = sub_100032224(0, &qword_1000C9378, HMUser_ptr);
      v15 = sub_1000A3B68();

      v16 = [v13 currentUser];
      v0[14] = v16;
      v17 = swift_task_alloc();
      *(v17 + 16) = v0 + 14;
      v18 = sub_1000861C4(sub_10007E888, v17, v15);
      v0[33] = v9;

      if ((v18 & 1) == 0)
      {
        break;
      }

      v10 = v0[30] + 1;
      if (v10 == v0[29])
      {
        goto LABEL_21;
      }

      v9 = v0[33];
    }

    v20 = v0[26];
    v19 = v0[27];
    v21 = v0[19];
    v45 = v0[18];
    v47 = v0[25];
    v22 = v0[16];
    v23 = [v13 uniqueIdentifier];
    sub_1000A24F8();

    sub_1000A24C8();
    sub_1000A3A98();

    sub_1000A2E08();
    sub_1000A2D78();
    sub_1000A24A8();
    v24 = *(v21 + 8);
    v0[34] = v24;
    v0[35] = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v20, v45);
    swift_beginAccess();
    v25 = v13;
    v26 = *(v22 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v22 + 120);
    *(v22 + 120) = 0x8000000000000000;
    sub_10007B9F8(v25, v19, isUniquelyReferenced_nonNull_native);
    v24(v19, v45);
    *(v22 + 120) = v49;
    swift_endAccess();
    v28 = [v25 uniqueIdentifier];
    sub_1000A24F8();

    sub_1000A24C8();
    sub_1000A3A98();

    sub_1000A2D78();
    sub_1000A24A8();
    v24(v19, v45);
    v29 = swift_task_alloc();
    v0[36] = v29;
    *v29 = v0;
    v29[1] = sub_10006AC68;
    v30 = v0[24];
    v31 = v0[25];
    v32 = v0[16];

    return sub_100069C1C(v30, v31);
  }

  return result;
}

uint64_t sub_10006AC68()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_10006AD78, v2, 0);
}

uint64_t sub_10006AD78()
{
  v1 = *(v0 + 248);
  v2 = [v1 owner];
  v3 = [v1 currentUser];
  v4 = v3;
  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_6;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!v3)
  {
    v4 = v2;
    goto LABEL_10;
  }

  v5 = *(v0 + 256);
  LOBYTE(v5) = sub_1000A3DA8();

  if (v5)
  {
LABEL_6:
    v6 = *(v0 + 200);
    v7 = sub_1000A24C8();
    v9 = v8;
    *(v0 + 296) = v8;
    v10 = swift_task_alloc();
    *(v0 + 304) = v10;
    *v10 = v0;
    v10[1] = sub_10006B3D8;

    return sub_100066308(v7, v9, 0);
  }

LABEL_11:
  v55 = *(v0 + 272);
  v58 = *(v0 + 280);
  v12 = *(v0 + 216);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  v15 = *(v0 + 144);
  v16 = *(v0 + 152);
  v17 = *(v0 + 136);
  [*(v0 + 248) setDelegate:{*(*(v0 + 128) + 152), *(v0 + 248)}];
  v18 = *(v16 + 16);
  v18(v12, v14, v15);
  v18(v17, v13, v15);
  (*(v16 + 56))(v17, 0, 1, v15);
  swift_beginAccess();
  sub_1000696C4(v17, v12);
  swift_endAccess();

  v55(v14, v15);
  v55(v13, v15);
  v19 = *(v0 + 240) + 1;
  if (v19 == *(v0 + 232))
  {
LABEL_17:
    v29 = *(v0 + 208);
    v30 = *(v0 + 216);
    v31 = *(v0 + 192);
    v32 = *(v0 + 200);
    v33 = *(v0 + 184);
    v54 = *(v0 + 176);
    v56 = *(v0 + 168);
    v59 = *(v0 + 160);
    v34 = *(v0 + 144);
    v35 = *(v0 + 152);
    v37 = *(v0 + 128);
    v36 = *(v0 + 136);
    sub_1000A2D28();
    sub_1000A2D28();
    (*(v35 + 56))(v36, 0, 1, v34);
    swift_beginAccess();
    sub_1000696C4(v36, v30);
    swift_endAccess();

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    while (1)
    {
      v20 = *(v0 + 264);
      *(v0 + 240) = v19;
      v21 = *(v0 + 120);
      v22 = (v21 & 0xC000000000000001) != 0 ? sub_1000A3EA8() : *(v21 + 8 * v19 + 32);
      v23 = v22;
      *(v0 + 248) = v22;
      v24 = [v22 restrictedGuests];
      *(v0 + 256) = sub_100032224(0, &qword_1000C9378, HMUser_ptr);
      v25 = sub_1000A3B68();

      v26 = [v23 currentUser];
      *(v0 + 112) = v26;
      v27 = swift_task_alloc();
      *(v27 + 16) = v0 + 112;
      v28 = sub_1000861C4(sub_10007E888, v27, v25);
      *(v0 + 264) = v20;

      if ((v28 & 1) == 0)
      {
        break;
      }

      v19 = *(v0 + 240) + 1;
      if (v19 == *(v0 + 232))
      {
        goto LABEL_17;
      }
    }

    v40 = *(v0 + 208);
    v39 = *(v0 + 216);
    v41 = *(v0 + 152);
    v57 = *(v0 + 144);
    v60 = *(v0 + 200);
    v42 = *(v0 + 128);
    v43 = [v23 uniqueIdentifier];
    sub_1000A24F8();

    sub_1000A24C8();
    sub_1000A3A98();

    sub_1000A2E08();
    sub_1000A2D78();
    sub_1000A24A8();
    v44 = *(v41 + 8);
    *(v0 + 272) = v44;
    *(v0 + 280) = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44(v40, v57);
    swift_beginAccess();
    v45 = v23;
    v46 = *(v42 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v42 + 120);
    *(v42 + 120) = 0x8000000000000000;
    sub_10007B9F8(v45, v39, isUniquelyReferenced_nonNull_native);
    v44(v39, v57);
    *(v42 + 120) = v61;
    swift_endAccess();
    v48 = [v45 uniqueIdentifier];
    sub_1000A24F8();

    sub_1000A24C8();
    sub_1000A3A98();

    sub_1000A2D78();
    sub_1000A24A8();
    v44(v39, v57);
    v49 = swift_task_alloc();
    *(v0 + 288) = v49;
    *v49 = v0;
    v49[1] = sub_10006AC68;
    v50 = *(v0 + 192);
    v51 = *(v0 + 200);
    v52 = *(v0 + 128);

    return sub_100069C1C(v50, v51);
  }
}

uint64_t sub_10006B3D8(uint64_t a1)
{
  v2 = *(*v1 + 304);
  v3 = *(*v1 + 296);
  v4 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 312) = a1;

  return _swift_task_switch(sub_10006B50C, v4, 0);
}

uint64_t sub_10006B50C()
{
  v101 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v3 + 16);
  *(v0 + 320) = v4;
  *(v0 + 328) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5 = *(v0 + 224);
  v6 = *(v0 + 200);
  if (v1)
  {
    v4(*(v0 + 184), v6, v2);
    v7 = sub_1000A3518();
    v8 = sub_1000A3CB8();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 312);
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);
    v13 = *(v0 + 184);
    v14 = *(v0 + 144);
    if (v9)
    {
      v95 = *(v0 + 312);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v100[0] = v16;
      *v15 = 136315138;
      sub_10007E7E8(&qword_1000C9340, &type metadata accessor for UUID);
      v17 = sub_1000A3F28();
      v19 = v18;
      v12(v13, v14);
      v20 = sub_1000954AC(v17, v19, v100);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v7, v8, "[EKSHomeManagerActor] Site %s exists", v15, 0xCu);
      sub_10000F7B8(v16);
    }

    else
    {

      v12(v13, v14);
    }

    v92 = *(v0 + 272);
    v97 = *(v0 + 280);
    v33 = *(v0 + 216);
    v35 = *(v0 + 192);
    v34 = *(v0 + 200);
    v36 = *(v0 + 144);
    v37 = *(v0 + 152);
    v38 = *(v0 + 136);
    [*(v0 + 248) setDelegate:{*(*(v0 + 128) + 152), *(v0 + 248)}];
    v39 = *(v37 + 16);
    v39(v33, v35, v36);
    v39(v38, v34, v36);
    (*(v37 + 56))(v38, 0, 1, v36);
    swift_beginAccess();
    sub_1000696C4(v38, v33);
    swift_endAccess();

    v92(v35, v36);
    v92(v34, v36);
    v40 = *(v0 + 240) + 1;
    if (v40 == *(v0 + 232))
    {
LABEL_13:
      v50 = *(v0 + 208);
      v51 = *(v0 + 216);
      v52 = *(v0 + 192);
      v53 = *(v0 + 200);
      v54 = *(v0 + 184);
      v91 = *(v0 + 176);
      v93 = *(v0 + 168);
      v98 = *(v0 + 160);
      v55 = *(v0 + 144);
      v56 = *(v0 + 152);
      v58 = *(v0 + 128);
      v57 = *(v0 + 136);
      sub_1000A2D28();
      sub_1000A2D28();
      (*(v56 + 56))(v57, 0, 1, v55);
      swift_beginAccess();
      sub_1000696C4(v57, v51);
      swift_endAccess();

      v59 = *(v0 + 8);

      return v59();
    }

    else
    {
      while (1)
      {
        v41 = *(v0 + 264);
        *(v0 + 240) = v40;
        v42 = *(v0 + 120);
        v43 = (v42 & 0xC000000000000001) != 0 ? sub_1000A3EA8() : *(v42 + 8 * v40 + 32);
        v44 = v43;
        *(v0 + 248) = v43;
        v45 = [v43 restrictedGuests];
        *(v0 + 256) = sub_100032224(0, &qword_1000C9378, HMUser_ptr);
        v46 = sub_1000A3B68();

        v47 = [v44 currentUser];
        *(v0 + 112) = v47;
        v48 = swift_task_alloc();
        *(v48 + 16) = v0 + 112;
        v49 = sub_1000861C4(sub_10007E888, v48, v46);
        *(v0 + 264) = v41;

        if ((v49 & 1) == 0)
        {
          break;
        }

        v40 = *(v0 + 240) + 1;
        if (v40 == *(v0 + 232))
        {
          goto LABEL_13;
        }
      }

      v77 = *(v0 + 208);
      v76 = *(v0 + 216);
      v78 = *(v0 + 152);
      v94 = *(v0 + 144);
      v99 = *(v0 + 200);
      v79 = *(v0 + 128);
      v80 = [v44 uniqueIdentifier];
      sub_1000A24F8();

      sub_1000A24C8();
      sub_1000A3A98();

      sub_1000A2E08();
      sub_1000A2D78();
      sub_1000A24A8();
      v81 = *(v78 + 8);
      *(v0 + 272) = v81;
      *(v0 + 280) = (v78 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v81(v77, v94);
      swift_beginAccess();
      v82 = v44;
      v83 = *(v79 + 120);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100[0] = *(v79 + 120);
      *(v79 + 120) = 0x8000000000000000;
      sub_10007B9F8(v82, v76, isUniquelyReferenced_nonNull_native);
      v81(v76, v94);
      *(v79 + 120) = v100[0];
      swift_endAccess();
      v85 = [v82 uniqueIdentifier];
      sub_1000A24F8();

      sub_1000A24C8();
      sub_1000A3A98();

      sub_1000A2D78();
      sub_1000A24A8();
      v81(v76, v94);
      v86 = swift_task_alloc();
      *(v0 + 288) = v86;
      *v86 = v0;
      v86[1] = sub_10006AC68;
      v87 = *(v0 + 192);
      v88 = *(v0 + 200);
      v89 = *(v0 + 128);

      return sub_100069C1C(v87, v88);
    }
  }

  else
  {
    v4(*(v0 + 176), v6, v2);
    v21 = sub_1000A3518();
    v22 = sub_1000A3CD8();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 272);
    v25 = *(v0 + 176);
    v26 = *(v0 + 144);
    if (v23)
    {
      v96 = *(v0 + 280);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v100[0] = v28;
      *v27 = 136315138;
      sub_10007E7E8(&qword_1000C9340, &type metadata accessor for UUID);
      v29 = sub_1000A3F28();
      v31 = v30;
      v24(v25, v26);
      v32 = sub_1000954AC(v29, v31, v100);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v21, v22, "[EKSHomeManagerActor] Site %s does not exist. Create", v27, 0xCu);
      sub_10000F7B8(v28);
    }

    else
    {

      v24(v25, v26);
    }

    v62 = *(v0 + 272);
    v61 = *(v0 + 280);
    v63 = *(v0 + 248);
    v64 = *(v0 + 216);
    v65 = *(v0 + 144);
    sub_1000A2B08();
    v66 = [v63 name];
    v67 = sub_1000A3A88();
    v69 = v68;

    *(v0 + 336) = v69;
    v70 = [v63 uniqueIdentifier];
    sub_1000A24F8();

    v71 = sub_1000A24C8();
    v73 = v72;
    *(v0 + 344) = v72;
    v62(v64, v65);
    v74 = async function pointer to static EnergySite.createSite(name:clientProvidedID:)[1];
    v75 = swift_task_alloc();
    *(v0 + 352) = v75;
    *v75 = v0;
    v75[1] = sub_10006BE38;

    return static EnergySite.createSite(name:clientProvidedID:)(v67, v69, v71, v73);
  }
}

uint64_t sub_10006BE38(uint64_t a1)
{
  v2 = *(*v1 + 352);
  v3 = *(*v1 + 344);
  v4 = *(*v1 + 336);
  v5 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 360) = a1;

  return _swift_task_switch(sub_10006BF90, v5, 0);
}

uint64_t sub_10006BF90()
{
  v84 = v0;
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 144);
  if (*(v0 + 360))
  {
    v2(*(v0 + 168), v4, v5);
    v6 = sub_1000A3518();
    v7 = sub_1000A3CD8();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 272);
    v10 = *(v0 + 280);
    v11 = *(v0 + 168);
    v12 = *(v0 + 144);
    if (v8)
    {
      v78 = *(v0 + 360);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v83[0] = v14;
      *v13 = 136315138;
      sub_10007E7E8(&qword_1000C9340, &type metadata accessor for UUID);
      v15 = sub_1000A3F28();
      v17 = v16;
      v9(v11, v12);
      v18 = sub_1000954AC(v15, v17, v83);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v6, v7, "[EKSHomeManagerActor] Site %s created", v13, 0xCu);
      sub_10000F7B8(v14);
    }

    else
    {

      v9(v11, v12);
    }
  }

  else
  {
    v2(*(v0 + 160), v4, v5);
    v19 = sub_1000A3518();
    v20 = sub_1000A3CD8();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 272);
    v23 = *(v0 + 160);
    v24 = *(v0 + 144);
    if (v21)
    {
      v79 = *(v0 + 280);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v83[0] = v26;
      *v25 = 136315138;
      sub_10007E7E8(&qword_1000C9340, &type metadata accessor for UUID);
      v27 = sub_1000A3F28();
      v29 = v28;
      v22(v23, v24);
      v30 = sub_1000954AC(v27, v29, v83);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "[EKSHomeManagerActor] Failed to create site %s", v25, 0xCu);
      sub_10000F7B8(v26);
    }

    else
    {

      v22(v23, v24);
    }
  }

  v75 = *(v0 + 272);
  v80 = *(v0 + 280);
  v31 = *(v0 + 216);
  v33 = *(v0 + 192);
  v32 = *(v0 + 200);
  v34 = *(v0 + 144);
  v35 = *(v0 + 152);
  v36 = *(v0 + 136);
  [*(v0 + 248) setDelegate:{*(*(v0 + 128) + 152), *(v0 + 248)}];
  v37 = *(v35 + 16);
  v37(v31, v33, v34);
  v37(v36, v32, v34);
  (*(v35 + 56))(v36, 0, 1, v34);
  swift_beginAccess();
  sub_1000696C4(v36, v31);
  swift_endAccess();

  v75(v33, v34);
  v75(v32, v34);
  v38 = *(v0 + 240) + 1;
  if (v38 == *(v0 + 232))
  {
LABEL_14:
    v48 = *(v0 + 208);
    v49 = *(v0 + 216);
    v50 = *(v0 + 192);
    v51 = *(v0 + 200);
    v52 = *(v0 + 184);
    v74 = *(v0 + 176);
    v76 = *(v0 + 168);
    v81 = *(v0 + 160);
    v53 = *(v0 + 144);
    v54 = *(v0 + 152);
    v56 = *(v0 + 128);
    v55 = *(v0 + 136);
    sub_1000A2D28();
    sub_1000A2D28();
    (*(v54 + 56))(v55, 0, 1, v53);
    swift_beginAccess();
    sub_1000696C4(v55, v49);
    swift_endAccess();

    v57 = *(v0 + 8);

    return v57();
  }

  else
  {
    while (1)
    {
      v39 = *(v0 + 264);
      *(v0 + 240) = v38;
      v40 = *(v0 + 120);
      v41 = (v40 & 0xC000000000000001) != 0 ? sub_1000A3EA8() : *(v40 + 8 * v38 + 32);
      v42 = v41;
      *(v0 + 248) = v41;
      v43 = [v41 restrictedGuests];
      *(v0 + 256) = sub_100032224(0, &qword_1000C9378, HMUser_ptr);
      v44 = sub_1000A3B68();

      v45 = [v42 currentUser];
      *(v0 + 112) = v45;
      v46 = swift_task_alloc();
      *(v46 + 16) = v0 + 112;
      v47 = sub_1000861C4(sub_10007E888, v46, v44);
      *(v0 + 264) = v39;

      if ((v47 & 1) == 0)
      {
        break;
      }

      v38 = *(v0 + 240) + 1;
      if (v38 == *(v0 + 232))
      {
        goto LABEL_14;
      }
    }

    v60 = *(v0 + 208);
    v59 = *(v0 + 216);
    v61 = *(v0 + 152);
    v77 = *(v0 + 144);
    v82 = *(v0 + 200);
    v62 = *(v0 + 128);
    v63 = [v42 uniqueIdentifier];
    sub_1000A24F8();

    sub_1000A24C8();
    sub_1000A3A98();

    sub_1000A2E08();
    sub_1000A2D78();
    sub_1000A24A8();
    v64 = *(v61 + 8);
    *(v0 + 272) = v64;
    *(v0 + 280) = (v61 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v64(v60, v77);
    swift_beginAccess();
    v65 = v42;
    v66 = *(v62 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83[0] = *(v62 + 120);
    *(v62 + 120) = 0x8000000000000000;
    sub_10007B9F8(v65, v59, isUniquelyReferenced_nonNull_native);
    v64(v59, v77);
    *(v62 + 120) = v83[0];
    swift_endAccess();
    v68 = [v65 uniqueIdentifier];
    sub_1000A24F8();

    sub_1000A24C8();
    sub_1000A3A98();

    sub_1000A2D78();
    sub_1000A24A8();
    v64(v59, v77);
    v69 = swift_task_alloc();
    *(v0 + 288) = v69;
    *v69 = v0;
    v69[1] = sub_10006AC68;
    v70 = *(v0 + 192);
    v71 = *(v0 + 200);
    v72 = *(v0 + 128);

    return sub_100069C1C(v70, v71);
  }
}

uint64_t sub_10006C7AC()
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v1 = sub_1000A3538();
  sub_100001E38(v1, qword_1000C96B8);
  v2 = sub_1000A3518();
  v3 = sub_1000A3CA8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[EKSHomeManagerActor] Updating all homes", v4, 2u);
  }

  v5 = v0[2];

  v6 = *(v5 + 152);
  v0[3] = v6;
  v6;
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_10006C910;

  return sub_10006CBB4();
}

uint64_t sub_10006C910(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 40) = a1;

  if (a1)
  {
    v7 = swift_task_alloc();
    *(v3 + 48) = v7;
    *v7 = v6;
    v7[1] = sub_10006CAA4;
    v8 = *(v3 + 16);

    return sub_10006A594(a1);
  }

  else
  {
    v10 = *(v6 + 8);

    return v10();
  }
}

uint64_t sub_10006CAA4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10006CBD4()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_10006CCC4;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10006CCC4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10006CDDC, 0, 0);
}

uint64_t sub_10006CDDC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager);
  if ([v1 dataSyncState] == 1)
  {
    v2 = sub_1000A3A78();
    v3 = [v1 _beginActiveAssertionWithReason:v2];

    v4 = [v1 homes];
    sub_100032224(0, &qword_1000C9320, HMHome_ptr);
    v5 = sub_1000A3B68();

    [v1 _endActiveAssertion:v3];
    swift_unknownObjectRelease();
    v6 = v5;
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v7 = sub_1000A3538();
    sub_100001E38(v7, qword_1000C96B8);
    v8 = sub_1000A3518();
    v9 = sub_1000A3CB8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "[EKSHomeManager] DataSyncState bad", v10, 2u);
    }

    v6 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v6);
}

uint64_t sub_10006CFD4(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = *(*(sub_10000275C(&qword_1000C92C0, &qword_1000ACB30) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v5 = sub_1000A2508();
  v3[13] = v5;
  v6 = *(v5 - 8);
  v3[14] = v6;
  v7 = *(v6 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10006D100, v2, 0);
}

uint64_t sub_10006D100()
{
  v1 = *(*(v0 + 88) + 152);
  *(v0 + 160) = v1;
  v2 = v1;

  return _swift_task_switch(sub_10006D174, 0, 0);
}

uint64_t sub_10006D174()
{
  v1 = v0[20];
  v2 = swift_task_alloc();
  v0[21] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_10006D264;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10006D264()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return _swift_task_switch(sub_10006D37C, 0, 0);
}

uint64_t sub_10006D37C()
{
  v1 = *(v0 + 88);

  return _swift_task_switch(sub_10006D3E8, v1, 0);
}

uint64_t sub_10006D3E8()
{
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (*(v2 + 16))
  {
    v3 = v0[10];

    v4 = sub_100079C54(v3);
    if (v5)
    {
      v6 = v0[19];
      v7 = v0[13];
      v8 = v0[14];
      v9 = v0[9];
      (*(v8 + 16))(v6, *(v2 + 56) + *(v8 + 72) * v4, v7);

      (*(v8 + 32))(v9, v6, v7);
      (*(v8 + 56))(v9, 0, 1, v7);
      v11 = v0[18];
      v10 = v0[19];
      v13 = v0[16];
      v12 = v0[17];
      v14 = v0[15];
      v15 = v0[12];

      v16 = v0[1];

      return v16();
    }
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v18 = sub_1000A3538();
  v0[23] = sub_100001E38(v18, qword_1000C96B8);
  v19 = sub_1000A3518();
  v20 = sub_1000A3CC8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Failed to find site for venue. Carry out search manually", v21, 2u);
  }

  v22 = swift_task_alloc();
  v0[24] = v22;
  *v22 = v0;
  v22[1] = sub_10006D684;

  return sub_100065D98();
}

uint64_t sub_10006D684(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_10006D79C, v3, 0);
}

void sub_10006D79C()
{
  v37 = v0;
  v1 = *(v0[25] + 16);
  v0[26] = v1;
  if (v1)
  {
    v2 = 0;
    while (1)
    {
      v0[27] = v2;
      v6 = v0[25];
      if (v2 >= *(v6 + 16))
      {
        __break(1u);
        return;
      }

      v7 = v0[13];
      v8 = v0[14];
      v9 = v0[12];
      v10 = v6 + 16 * v2;
      v12 = *(v10 + 32);
      v11 = *(v10 + 40);

      sub_1000A24B8();
      if ((*(v8 + 48))(v9, 1, v7) != 1)
      {
        break;
      }

      v13 = v0[23];
      sub_100022154(v0[12], &qword_1000C92C0, &qword_1000ACB30);

      v14 = sub_1000A3518();
      v15 = sub_1000A3CC8();

      if (os_log_type_enabled(v14, v15))
      {
        v3 = swift_slowAlloc();
        v4 = swift_slowAlloc();
        v36 = v4;
        *v3 = 136315138;
        v5 = sub_1000954AC(v12, v11, &v36);

        *(v3 + 4) = v5;
        _os_log_impl(&_mh_execute_header, v14, v15, "Invalid UUID string for site: %s", v3, 0xCu);
        sub_10000F7B8(v4);
      }

      else
      {
      }

      v2 = v0[27] + 1;
      if (v2 == v0[26])
      {
        v25 = v0[25];
        goto LABEL_13;
      }
    }

    v16 = v0[18];
    v17 = v0[13];
    v18 = v0[14];
    v19 = v0[12];

    v20 = *(v18 + 32);
    v0[28] = v20;
    v0[29] = (v18 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v20(v16, v19, v17);
    v21 = swift_task_alloc();
    v0[30] = v21;
    *v21 = v0;
    v21[1] = sub_10006DAD8;
    v22 = v0[17];
    v23 = v0[18];
    v24 = v0[11];

    sub_100069C1C(v22, v23);
  }

  else
  {
LABEL_13:
    v26 = v0[13];
    v27 = v0[14];
    v28 = v0[9];

    (*(v27 + 56))(v28, 1, 1, v26);
    v30 = v0[18];
    v29 = v0[19];
    v32 = v0[16];
    v31 = v0[17];
    v33 = v0[15];
    v34 = v0[12];

    v35 = v0[1];

    v35();
  }
}

uint64_t sub_10006DAD8()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_10006DBE8, v2, 0);
}

void sub_10006DBE8()
{
  v84 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[11];
  v6 = *(v0[14] + 16);
  v6(v3, v0[17], v4);
  swift_beginAccess();
  v6(v2, v1, v4);
  v7 = *(v5 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + 128);
  v0[8] = v9;
  v10 = v0 + 8;
  *(v5 + 128) = 0x8000000000000000;
  v11 = sub_100079C54(v3);
  v13 = *(v9 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v3) = v12;
  if (*(v9 + 24) >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v26 = v11;
    sub_10007C1FC();
    v11 = v26;
    v21 = *v10;
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v17 = v0[16];
  sub_10007A0FC(v16, isUniquelyReferenced_nonNull_native);
  v18 = v0[8];
  v11 = sub_100079C54(v17);
  if ((v3 & 1) != (v19 & 1))
  {
    v20 = v0[13];

    sub_1000A3F78();
    return;
  }

LABEL_8:
  v21 = *v10;
  if (v3)
  {
LABEL_9:
    v22 = v0[16];
    v23 = v0[13];
    v24 = v0[14];
    (*(v24 + 40))(v21[7] + *(v24 + 72) * v11, v0[15], v23);
    v25 = *(v24 + 8);
    v25(v22, v23);
    goto LABEL_14;
  }

LABEL_12:
  v27 = v0[28];
  v82 = v0[29];
  v28 = v0[15];
  v29 = v0[16];
  v30 = v0[13];
  v31 = v0[14];
  v21[(v11 >> 6) + 8] |= 1 << v11;
  v32 = *(v31 + 72) * v11;
  v6(v21[6] + v32, v29, v30);
  v27(v21[7] + v32, v28, v30);
  v25 = *(v31 + 8);
  v25(v29, v30);
  v33 = v21[2];
  v15 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v15)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v21[2] = v34;
LABEL_14:
  v35 = v0[17];
  v36 = v0[13];
  v38 = v0[10];
  v37 = v0[11];
  v39 = v0[14] + 8;
  v40 = *(v37 + 128);
  *(v37 + 128) = v21;

  swift_endAccess();
  LOBYTE(v38) = sub_1000A24E8();
  v25(v35, v36);
  if (v38)
  {
    v42 = v0[28];
    v41 = v0[29];
    v43 = v0[25];
    v44 = v0[18];
    v45 = v0[13];
    v46 = v0[14];
    v47 = v0[9];

    v42(v47, v44, v45);
    (*(v46 + 56))(v47, 0, 1, v45);
LABEL_18:
    v54 = v0[18];
    v53 = v0[19];
    v56 = v0[16];
    v55 = v0[17];
    v57 = v0[15];
    v58 = v0[12];

    v59 = v0[1];

    v59();
    return;
  }

  v25(v0[18], v0[13]);
  v48 = v0[27] + 1;
  if (v48 == v0[26])
  {
LABEL_17:
    v49 = v0[25];
    v50 = v0[13];
    v51 = v0[14];
    v52 = v0[9];

    (*(v51 + 56))(v52, 1, 1, v50);
    goto LABEL_18;
  }

  while (1)
  {
    v0[27] = v48;
    v63 = v0[25];
    if (v48 >= *(v63 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    v64 = v0[13];
    v65 = v0[14];
    v66 = v0[12];
    v67 = v63 + 16 * v48;
    v69 = *(v67 + 32);
    v68 = *(v67 + 40);

    sub_1000A24B8();
    if ((*(v65 + 48))(v66, 1, v64) != 1)
    {
      break;
    }

    v70 = v0[23];
    sub_100022154(v0[12], &qword_1000C92C0, &qword_1000ACB30);

    v71 = sub_1000A3518();
    v72 = sub_1000A3CC8();

    if (os_log_type_enabled(v71, v72))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v83 = v61;
      *v60 = 136315138;
      v62 = sub_1000954AC(v69, v68, &v83);

      *(v60 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v71, v72, "Invalid UUID string for site: %s", v60, 0xCu);
      sub_10000F7B8(v61);
    }

    else
    {
    }

    v48 = v0[27] + 1;
    if (v48 == v0[26])
    {
      goto LABEL_17;
    }
  }

  v73 = v0[18];
  v74 = v0[13];
  v75 = v0[14];
  v76 = v0[12];

  v77 = *(v75 + 32);
  v0[28] = v77;
  v0[29] = (v75 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v77(v73, v76, v74);
  v78 = swift_task_alloc();
  v0[30] = v78;
  *v78 = v0;
  v78[1] = sub_10006DAD8;
  v79 = v0[17];
  v80 = v0[18];
  v81 = v0[11];

  sub_100069C1C(v79, v80);
}

uint64_t sub_10006E1D4(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = *(*(sub_10000275C(&qword_1000C92C0, &qword_1000ACB30) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v5 = sub_1000A2508();
  v3[23] = v5;
  v6 = *(v5 - 8);
  v3[24] = v6;
  v7 = *(v6 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_10006E2F4, v2, 0);
}

uint64_t sub_10006E2F4()
{
  v1 = *(*(v0 + 168) + 152);
  *(v0 + 232) = v1;
  v2 = v1;

  return _swift_task_switch(sub_10006E368, 0, 0);
}

uint64_t sub_10006E368()
{
  v1 = v0[29];
  v2 = swift_task_alloc();
  v0[30] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_10006E458;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10006E458()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return _swift_task_switch(sub_10006E570, 0, 0);
}

uint64_t sub_10006E570()
{
  v1 = *(v0 + 168);

  return _swift_task_switch(sub_10006E5DC, v1, 0);
}

uint64_t sub_10006E5DC()
{
  v1 = *(v0[21] + 152);
  v0[32] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_10006E684;

  return sub_10006CBB4();
}

uint64_t sub_10006E684(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 256);
  v4 = *(*v1 + 168);
  v6 = *v1;
  *(*v1 + 272) = a1;

  return _swift_task_switch(sub_10006E7B4, v4, 0);
}

uint64_t sub_10006E7B4()
{
  if (v0[34])
  {
    if (qword_1000C7550 != -1)
    {
      swift_once();
    }

    v1 = qword_1000C95F0;
    v0[35] = qword_1000C95F0;

    return _swift_task_switch(sub_10006E98C, v1, 0);
  }

  else
  {
    v2 = sub_1000A2B18();
    sub_10007E7E8(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, enum case for EnergyKitError.siteUnavailable(_:), v2);
    v5 = v0[27];
    v4 = v0[28];
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[22];
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10006E98C()
{
  v1 = v0[35];
  v2 = v0[21];
  v0[36] = *(v1 + 128);
  v0[37] = *(v1 + 136);

  return _swift_task_switch(sub_10006EA10, v2, 0);
}

uint64_t sub_10006EA10()
{
  v1 = v0[34];
  if (!v0[37])
  {
    v14 = &enum case for EnergyKitError.invalidApplicationIdentifier(_:);
    goto LABEL_14;
  }

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[38] = v2;
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

LABEL_22:
  v29 = sub_1000A3EC8();
  v0[38] = v29;
  if (!v29)
  {
LABEL_12:
    v12 = v0[37];
    v13 = v0[34];

    v14 = &enum case for EnergyKitError.siteUnavailable(_:);
LABEL_14:

    v15 = sub_1000A2B18();
    sub_10007E7E8(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *v14, v15);
    v18 = v0[27];
    v17 = v0[28];
    v20 = v0[25];
    v19 = v0[26];
    v21 = v0[22];
    swift_willThrow();

    v22 = v0[1];

    return v22();
  }

LABEL_4:
  v3 = 0;
  while (1)
  {
    v4 = v0[34];
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = sub_1000A3EA8();
    }

    else
    {
      if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(v4 + 8 * v3 + 32);
    }

    v6 = v5;
    v0[39] = v5;
    v0[40] = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v7 = [v5 restrictedGuests];
    sub_100032224(0, &qword_1000C9378, HMUser_ptr);
    v8 = sub_1000A3B68();

    v9 = [v6 currentUser];
    v0[18] = v9;
    v10 = swift_task_alloc();
    *(v10 + 16) = v0 + 18;
    v11 = sub_1000861C4(sub_10007E888, v10, v8);
    v0[41] = 0;

    if ((v11 & 1) == 0)
    {
      break;
    }

    v3 = v0[40];
    if (v3 == v0[38])
    {
      goto LABEL_12;
    }
  }

  v24 = v0[36];
  v25 = v0[37];
  v26 = v0[27];
  v27 = sub_1000A3A78();
  v0[42] = v27;
  v0[2] = v0;
  v0[7] = v26;
  v0[3] = sub_10006EDE8;
  v28 = swift_continuation_init();
  v0[17] = sub_10000275C(&unk_1000C9380, &unk_1000ACA20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10006FA78;
  v0[13] = &unk_1000C0250;
  v0[14] = v28;
  [v6 uniqueIdentifierForBundleIdentifier:v27 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10006EDE8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 344) = v3;
  v4 = *(v1 + 168);
  if (v3)
  {
    v5 = sub_10006F474;
  }

  else
  {
    v5 = sub_10006EF08;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10006EF08()
{
  v1 = v0[42];
  v2 = v0[20];
  v3 = *(v0[24] + 32);
  v3(v0[28], v0[27], v0[23]);

  v4 = sub_1000A24E8();
  v5 = v0[39];
  if ((v4 & 1) == 0)
  {
    (*(v0[24] + 8))(v0[28], v0[23]);

    v20 = v0[40];
    if (v20 == v0[38])
    {
LABEL_13:
      v29 = v0[37];
      v30 = v0[34];

      v31 = sub_1000A2B18();
      sub_10007E7E8(&qword_1000C9370, &type metadata accessor for EnergyKitError);
      swift_allocError();
      (*(*(v31 - 8) + 104))(v32, enum case for EnergyKitError.siteUnavailable(_:), v31);
      v34 = v0[27];
      v33 = v0[28];
      v36 = v0[25];
      v35 = v0[26];
      v37 = v0[22];
      swift_willThrow();

      v19 = v0[1];
      goto LABEL_14;
    }

    v21 = v0[41];
    while (1)
    {
      v22 = v0[34];
      if ((v22 & 0xC000000000000001) != 0)
      {
        v11 = sub_1000A3EA8();
      }

      else
      {
        if (v20 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v11 = *(v22 + 8 * v20 + 32);
      }

      v23 = v11;
      v0[39] = v11;
      v0[40] = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v24 = [v11 restrictedGuests];
      sub_100032224(0, &qword_1000C9378, HMUser_ptr);
      v25 = sub_1000A3B68();

      v26 = [v23 currentUser];
      v0[18] = v26;
      v27 = swift_task_alloc();
      *(v27 + 16) = v0 + 18;
      v28 = sub_1000861C4(sub_10007E888, v27, v25);
      v0[41] = v21;

      if ((v28 & 1) == 0)
      {
        break;
      }

      v20 = v0[40];
      if (v20 == v0[38])
      {
        goto LABEL_13;
      }
    }

    v39 = v0[36];
    v40 = v0[37];
    v41 = v0[27];
    v42 = sub_1000A3A78();
    v0[42] = v42;
    v0[2] = v0;
    v0[7] = v41;
    v0[3] = sub_10006EDE8;
    v43 = swift_continuation_init();
    v0[17] = sub_10000275C(&unk_1000C9380, &unk_1000ACA20);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10006FA78;
    v0[13] = &unk_1000C0250;
    v0[14] = v43;
    [v23 uniqueIdentifierForBundleIdentifier:v42 completionHandler:v0 + 10];
    v11 = v0 + 2;

    return _swift_continuation_await(v11);
  }

  v47 = v3;
  v6 = v0[26];
  v7 = v0[23];
  v8 = v0[24];
  v9 = v0[22];
  sub_1000A2B08();
  v10 = [v5 uniqueIdentifier];
  sub_1000A24F8();

  sub_1000A24C8();
  v46 = *(v8 + 8);
  v46(v6, v7);
  sub_1000A2AF8();

  sub_1000A24B8();

  v11 = (*(v8 + 48))(v9, 1, v7);
  if (v11 == 1)
  {
LABEL_22:
    __break(1u);
    return _swift_continuation_await(v11);
  }

  v12 = v0[39];
  v13 = v0[37];
  v14 = v0[34];
  v15 = v0[27];
  v44 = v0[26];
  v45 = v0[25];
  v16 = v0[22];
  v17 = v0[23];
  v18 = v0[19];
  v46(v0[28], v17);

  v47(v18, v16, v17);

  v19 = v0[1];
LABEL_14:

  return v19();
}

uint64_t sub_10006F474()
{
  v51 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  swift_willThrow();

  if (qword_1000C7570 != -1)
  {
LABEL_21:
    swift_once();
  }

  v3 = *(v0 + 344);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  v7 = *(v0 + 160);
  v8 = sub_1000A3538();
  sub_100001E38(v8, qword_1000C96B8);
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v9 = sub_1000A3518();
  v10 = sub_1000A3CC8();

  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 192);
  v12 = *(v0 + 200);
  v14 = *(v0 + 184);
  if (v11)
  {
    v49 = *(v0 + 312);
    v47 = *(v0 + 344);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50 = v48;
    *v15 = 136315394;
    sub_10007E7E8(&qword_1000C9340, &type metadata accessor for UUID);
    v17 = sub_1000A3F28();
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_1000954AC(v17, v19, &v50);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v16 = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to fetch uniqueIdentifier for home %s: %@", v15, 0x16u);
    sub_100022154(v16, &unk_1000C7740, &qword_1000AB610);

    sub_10000F7B8(v48);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v22 = *(v0 + 320);
  if (v22 == *(v0 + 304))
  {
LABEL_13:
    v31 = *(v0 + 296);
    v32 = *(v0 + 272);

    v33 = sub_1000A2B18();
    sub_10007E7E8(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, enum case for EnergyKitError.siteUnavailable(_:), v33);
    v36 = *(v0 + 216);
    v35 = *(v0 + 224);
    v38 = *(v0 + 200);
    v37 = *(v0 + 208);
    v39 = *(v0 + 176);
    swift_willThrow();

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    while (1)
    {
      v23 = *(v0 + 272);
      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = sub_1000A3EA8();
      }

      else
      {
        if (v22 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v24 = *(v23 + 8 * v22 + 32);
      }

      v25 = v24;
      *(v0 + 312) = v24;
      *(v0 + 320) = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v26 = [v24 restrictedGuests];
      sub_100032224(0, &qword_1000C9378, HMUser_ptr);
      v27 = sub_1000A3B68();

      v28 = [v25 currentUser];
      *(v0 + 144) = v28;
      v29 = swift_task_alloc();
      *(v29 + 16) = v0 + 144;
      v30 = sub_1000861C4(sub_10007E888, v29, v27);
      *(v0 + 328) = 0;

      if ((v30 & 1) == 0)
      {
        break;
      }

      v22 = *(v0 + 320);
      if (v22 == *(v0 + 304))
      {
        goto LABEL_13;
      }
    }

    v42 = *(v0 + 288);
    v43 = *(v0 + 296);
    v44 = *(v0 + 216);
    v45 = sub_1000A3A78();
    *(v0 + 336) = v45;
    *(v0 + 16) = v0;
    *(v0 + 56) = v44;
    *(v0 + 24) = sub_10006EDE8;
    v46 = swift_continuation_init();
    *(v0 + 136) = sub_10000275C(&unk_1000C9380, &unk_1000ACA20);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10006FA78;
    *(v0 + 104) = &unk_1000C0250;
    *(v0 + 112) = v46;
    [v25 uniqueIdentifierForBundleIdentifier:v45 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_10006FA78(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000A2508();
  v6 = *(v5 - 8);
  __chkstk_darwin(*(v6 + 64));
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *sub_100013C5C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000275C(&qword_1000C7860, &qword_1000AB7B8);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return _swift_continuation_throwingResumeWithError(v9, v10);
  }

  else
  {
    sub_1000A24F8();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10006FBE8(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = *(*(sub_10000275C(&qword_1000C92C0, &qword_1000ACB30) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v5 = sub_1000A2508();
  v3[23] = v5;
  v6 = *(v5 - 8);
  v3[24] = v6;
  v7 = *(v6 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return _swift_task_switch(sub_10006FD14, v2, 0);
}

uint64_t sub_10006FD14()
{
  v1 = *(*(v0 + 168) + 152);
  *(v0 + 240) = v1;
  v2 = v1;

  return _swift_task_switch(sub_10006FD88, 0, 0);
}

uint64_t sub_10006FD88()
{
  v1 = v0[30];
  v2 = swift_task_alloc();
  v0[31] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = sub_10006FE78;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10006FE78()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return _swift_task_switch(sub_10006FF90, 0, 0);
}

uint64_t sub_10006FF90()
{
  v1 = *(v0 + 168);

  return _swift_task_switch(sub_10006FFFC, v1, 0);
}

uint64_t sub_10006FFFC()
{
  v1 = *(v0[21] + 152);
  v0[33] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_1000700A4;

  return sub_10006CBB4();
}

uint64_t sub_1000700A4(uint64_t a1)
{
  v2 = *(*v1 + 272);
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 168);
  v6 = *v1;
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_1000701D4, v4, 0);
}

uint64_t sub_1000701D4()
{
  if (v0[35])
  {
    if (qword_1000C7550 != -1)
    {
      swift_once();
    }

    v1 = qword_1000C95F0;
    v0[36] = qword_1000C95F0;

    return _swift_task_switch(sub_1000703C4, v1, 0);
  }

  else
  {
    v2 = sub_1000A2B18();
    sub_10007E7E8(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, enum case for EnergyKitError.siteUnavailable(_:), v2);
    v5 = v0[28];
    v4 = v0[29];
    v7 = v0[26];
    v6 = v0[27];
    v8 = v0[25];
    v9 = v0[22];
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000703C4()
{
  v1 = v0[36];
  v2 = v0[21];
  v0[37] = *(v1 + 128);
  v0[38] = *(v1 + 136);

  return _swift_task_switch(sub_100070448, v2, 0);
}

uint64_t sub_100070448()
{
  v1 = v0[35];
  if (!v0[38])
  {
    v14 = &enum case for EnergyKitError.invalidApplicationIdentifier(_:);
    goto LABEL_14;
  }

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[39] = v2;
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

LABEL_22:
  v30 = sub_1000A3EC8();
  v0[39] = v30;
  if (!v30)
  {
LABEL_12:
    v12 = v0[38];
    v13 = v0[35];

    v14 = &enum case for EnergyKitError.siteUnavailable(_:);
LABEL_14:

    v15 = sub_1000A2B18();
    sub_10007E7E8(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *v14, v15);
    v18 = v0[28];
    v17 = v0[29];
    v20 = v0[26];
    v19 = v0[27];
    v21 = v0[25];
    v22 = v0[22];
    swift_willThrow();

    v23 = v0[1];

    return v23();
  }

LABEL_4:
  v3 = 0;
  while (1)
  {
    v4 = v0[35];
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = sub_1000A3EA8();
    }

    else
    {
      if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(v4 + 8 * v3 + 32);
    }

    v6 = v5;
    v0[40] = v5;
    v0[41] = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v7 = [v5 restrictedGuests];
    sub_100032224(0, &qword_1000C9378, HMUser_ptr);
    v8 = sub_1000A3B68();

    v9 = [v6 currentUser];
    v0[18] = v9;
    v10 = swift_task_alloc();
    *(v10 + 16) = v0 + 18;
    v11 = sub_1000861C4(sub_10007E7B0, v10, v8);
    v0[42] = 0;

    if ((v11 & 1) == 0)
    {
      break;
    }

    v3 = v0[41];
    if (v3 == v0[39])
    {
      goto LABEL_12;
    }
  }

  v25 = v0[37];
  v26 = v0[38];
  v27 = v0[28];
  v28 = sub_1000A3A78();
  v0[43] = v28;
  v0[2] = v0;
  v0[7] = v27;
  v0[3] = sub_10007082C;
  v29 = swift_continuation_init();
  v0[17] = sub_10000275C(&unk_1000C9380, &unk_1000ACA20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10006FA78;
  v0[13] = &unk_1000C0228;
  v0[14] = v29;
  [v6 uniqueIdentifierForBundleIdentifier:v28 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}