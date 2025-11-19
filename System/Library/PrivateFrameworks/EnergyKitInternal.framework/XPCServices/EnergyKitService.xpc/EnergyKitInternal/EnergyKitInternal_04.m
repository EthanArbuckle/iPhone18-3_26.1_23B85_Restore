uint64_t sub_10007082C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 352) = v3;
  v4 = *(v1 + 168);
  if (v3)
  {
    v5 = sub_1000710CC;
  }

  else
  {
    v5 = sub_10007094C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10007094C()
{
  v1 = v0[43];
  v2 = v0[20];
  v3 = *(v0[24] + 32);
  v3(v0[29], v0[28], v0[23]);

  v4 = sub_1000A24E8();
  v5 = v0[40];
  if (v4)
  {
    v6 = v0[26];
    v7 = v0[23];
    v8 = v0[24];
    v9 = v0[22];
    sub_1000A2B08();
    v10 = [v5 uniqueIdentifier];
    sub_1000A24F8();

    sub_1000A24C8();
    v11 = *(v8 + 8);
    v0[45] = v11;
    v0[46] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v6, v7);
    sub_1000A2AF8();

    sub_1000A24B8();

    v12 = (*(v8 + 48))(v9, 1, v7);
    if (v12 != 1)
    {
      v13 = v0[38];
      v14 = v0[35];
      v15 = v0[27];
      v17 = v0[22];
      v16 = v0[23];

      v3(v15, v17, v16);
      v18 = swift_task_alloc();
      v0[47] = v18;
      *v18 = v0;
      v18[1] = sub_100070EDC;
      v19 = v0[27];
      v20 = v0[21];
      v21 = v0[19];

      return sub_100069C1C(v21, v19);
    }

LABEL_23:
    __break(1u);
    return _swift_continuation_await(v12);
  }

  (*(v0[24] + 8))(v0[29], v0[23]);

  v23 = v0[41];
  if (v23 != v0[39])
  {
    v24 = v0[42];
    while (1)
    {
      v25 = v0[35];
      if ((v25 & 0xC000000000000001) != 0)
      {
        v12 = sub_1000A3EA8();
      }

      else
      {
        if (v23 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v12 = *(v25 + 8 * v23 + 32);
      }

      v26 = v12;
      v0[40] = v12;
      v0[41] = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v27 = [v12 restrictedGuests];
      sub_100032224(0, &qword_1000C9378, HMUser_ptr);
      v28 = sub_1000A3B68();

      v29 = [v26 currentUser];
      v0[18] = v29;
      v30 = swift_task_alloc();
      *(v30 + 16) = v0 + 18;
      v31 = sub_1000861C4(sub_10007E7B0, v30, v28);
      v0[42] = v24;

      if ((v31 & 1) == 0)
      {
        break;
      }

      v23 = v0[41];
      if (v23 == v0[39])
      {
        goto LABEL_15;
      }
    }

    v43 = v0[37];
    v44 = v0[38];
    v45 = v0[28];
    v46 = sub_1000A3A78();
    v0[43] = v46;
    v0[2] = v0;
    v0[7] = v45;
    v0[3] = sub_10007082C;
    v47 = swift_continuation_init();
    v0[17] = sub_10000275C(&unk_1000C9380, &unk_1000ACA20);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10006FA78;
    v0[13] = &unk_1000C0228;
    v0[14] = v47;
    [v26 uniqueIdentifierForBundleIdentifier:v46 completionHandler:v0 + 10];
    v12 = v0 + 2;

    return _swift_continuation_await(v12);
  }

LABEL_15:
  v32 = v0[38];
  v33 = v0[35];

  v34 = sub_1000A2B18();
  sub_10007E7E8(&qword_1000C9370, &type metadata accessor for EnergyKitError);
  swift_allocError();
  (*(*(v34 - 8) + 104))(v35, enum case for EnergyKitError.siteUnavailable(_:), v34);
  v37 = v0[28];
  v36 = v0[29];
  v39 = v0[26];
  v38 = v0[27];
  v40 = v0[25];
  v41 = v0[22];
  swift_willThrow();

  v42 = v0[1];

  return v42();
}

uint64_t sub_100070EDC()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return _swift_task_switch(sub_100070FEC, v2, 0);
}

uint64_t sub_100070FEC()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 200);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);

  v2(v5, v8);
  v2(v4, v8);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000710CC()
{
  v52 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  swift_willThrow();

  if (qword_1000C7570 != -1)
  {
LABEL_21:
    swift_once();
  }

  v3 = *(v0 + 352);
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
    v50 = *(v0 + 320);
    v48 = *(v0 + 352);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51 = v49;
    *v15 = 136315394;
    sub_10007E7E8(&qword_1000C9340, &type metadata accessor for UUID);
    v17 = sub_1000A3F28();
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_1000954AC(v17, v19, &v51);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v16 = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to fetch uniqueIdentifier for home %s: %@", v15, 0x16u);
    sub_100022154(v16, &unk_1000C7740, &qword_1000AB610);

    sub_10000F7B8(v49);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v22 = *(v0 + 328);
  if (v22 == *(v0 + 312))
  {
LABEL_13:
    v31 = *(v0 + 304);
    v32 = *(v0 + 280);

    v33 = sub_1000A2B18();
    sub_10007E7E8(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, enum case for EnergyKitError.siteUnavailable(_:), v33);
    v36 = *(v0 + 224);
    v35 = *(v0 + 232);
    v38 = *(v0 + 208);
    v37 = *(v0 + 216);
    v39 = *(v0 + 200);
    v40 = *(v0 + 176);
    swift_willThrow();

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {
    while (1)
    {
      v23 = *(v0 + 280);
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
      *(v0 + 320) = v24;
      *(v0 + 328) = v22 + 1;
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
      v30 = sub_1000861C4(sub_10007E7B0, v29, v27);
      *(v0 + 336) = 0;

      if ((v30 & 1) == 0)
      {
        break;
      }

      v22 = *(v0 + 328);
      if (v22 == *(v0 + 312))
      {
        goto LABEL_13;
      }
    }

    v43 = *(v0 + 296);
    v44 = *(v0 + 304);
    v45 = *(v0 + 224);
    v46 = sub_1000A3A78();
    *(v0 + 344) = v46;
    *(v0 + 16) = v0;
    *(v0 + 56) = v45;
    *(v0 + 24) = sub_10007082C;
    v47 = swift_continuation_init();
    *(v0 + 136) = sub_10000275C(&unk_1000C9380, &unk_1000ACA20);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10006FA78;
    *(v0 + 104) = &unk_1000C0228;
    *(v0 + 112) = v47;
    [v25 uniqueIdentifierForBundleIdentifier:v46 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1000716DC(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_1000716FC, v1, 0);
}

uint64_t sub_1000716FC()
{
  v1 = *(*(v0 + 48) + 152);
  *(v0 + 56) = v1;
  v2 = v1;

  return _swift_task_switch(sub_100071770, 0, 0);
}

uint64_t sub_100071770()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100071860;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100071860()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100071978, 0, 0);
}

uint64_t sub_100071978()
{
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_1000719E0, v1, 0);
}

uint64_t sub_1000719E0()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {
    v3 = v0[5];

    v4 = sub_100079C54(v3);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);
      v7 = v6;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = v0[1];

  return v8(v6);
}

uint64_t sub_100071A9C()
{
  v1[3] = v0;
  v2 = sub_1000A2CF8();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100071B5C, v0, 0);
}

uint64_t sub_100071B5C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 104))(v1, enum case for EnergyKitFeatures.termsAndConditions2025(_:), v3);
  v4 = sub_1000A2CE8();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = *(v0[3] + 152);
    v0[7] = v5;
    v6 = v5;

    return _swift_task_switch(sub_100071D18, 0, 0);
  }

  else
  {
    v7 = sub_1000A3598();
    sub_10007E7E8(&qword_1000C7830, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for EnergyKitError.venueUnavailable(_:), v7);
    swift_willThrow();
    v9 = v0[6];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100071D18()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  v2[2] = v1;
  v2[3] = 0x656D6F4820794DLL;
  v2[4] = 0xE700000000000000;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_100032224(0, &qword_1000C9320, HMHome_ptr);
  *v4 = v0;
  v4[1] = sub_100071E3C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000011, 0x80000001000A73E0, sub_10007E528, v2, v5);
}

uint64_t sub_100071E3C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_100072204;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_100071F58;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100071F58()
{
  v1 = *(v0 + 24);

  *(v0 + 88) = *(v0 + 16);

  return _swift_task_switch(sub_100071FCC, v1, 0);
}

uint64_t sub_100071FCC()
{
  v17 = v0;
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_1000A3538();
  v0[12] = sub_100001E38(v2, qword_1000C96B8);
  v3 = v1;
  v4 = sub_1000A3518();
  v5 = sub_1000A3CA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = [v6 name];
    v10 = sub_1000A3A88();
    v12 = v11;

    v13 = sub_1000954AC(v10, v12, &v16);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "[EKSHomeManagerActor] Successfully created first home: %s", v7, 0xCu);
    sub_10000F7B8(v8);
  }

  if (qword_1000C7590 != -1)
  {
    swift_once();
  }

  v0[13] = qword_1000C96F8;

  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = sub_100072278;

  return sub_10006C78C();
}

uint64_t sub_100072204()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100072278()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_1000723A4, v3, 0);
}

uint64_t sub_1000723A4()
{
  v18 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  v3 = sub_1000A3518();
  v4 = sub_1000A3CA8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = [v5 name];
    v9 = sub_1000A3A88();
    v11 = v10;

    v12 = sub_1000954AC(v9, v11, &v17);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[EKSHomeManagerActor] Successfully refreshed: %s", v6, 0xCu);
    sub_10000F7B8(v7);
  }

  v13 = *(v0 + 48);

  v14 = *(v0 + 8);
  v15 = *(v0 + 88);

  return v14(v15);
}

uint64_t sub_100072524(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1000A2508();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000725F0, v1, 0);
}

uint64_t sub_1000725F0()
{
  v1 = *(*(v0 + 72) + 152);
  *(v0 + 112) = v1;
  v2 = v1;

  return _swift_task_switch(sub_100072664, 0, 0);
}

uint64_t sub_100072664()
{
  v1 = v0[14];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_100072754;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100072754()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return _swift_task_switch(sub_10007286C, 0, 0);
}

uint64_t sub_10007286C()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_1000728D8, v1, 0);
}

uint64_t sub_1000728D8()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (*(v2 + 16))
  {
    v3 = v0[8];

    v4 = sub_100079C54(v3);
    if (v5)
    {
      v7 = v0[12];
      v6 = v0[13];
      v8 = v0[10];
      v9 = v0[11];
      v10 = v0[9];
      (*(v9 + 16))(v7, *(v2 + 56) + *(v9 + 72) * v4, v8);

      (*(v9 + 32))(v6, v7, v8);
      swift_beginAccess();
      v11 = *(v10 + 120);
      v12 = v0[13];
      if (*(v11 + 16))
      {
        v13 = *(v10 + 120);

        v14 = sub_100079C54(v12);
        v15 = v0[13];
        v16 = v0[10];
        v17 = v0[11];
        if (v18)
        {
          v19 = *(v17 + 8);
          v20 = *(*(v11 + 56) + 8 * v14);
          v19(v15, v16);

          goto LABEL_10;
        }

        (*(v17 + 8))(v15, v16);
      }

      else
      {
        (*(v0[11] + 8))(v0[13], v0[10]);
      }
    }

    else
    {
    }
  }

  v20 = 0;
LABEL_10:
  v22 = v0[12];
  v21 = v0[13];

  v23 = v0[1];

  return v23(v20);
}

uint64_t sub_100072AA8(uint64_t a1, double a2)
{
  *(v3 + 72) = v2;
  *(v3 + 64) = a2;
  *(v3 + 56) = a1;
  v4 = sub_1000A2508();
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v7 = sub_10000275C(&qword_1000C9328, &qword_1000AC9D0);
  *(v3 + 104) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_100072C3C, v2, 0);
}

uint64_t sub_100072C3C()
{
  v1 = v0[9];
  v2 = *(*(v1 + 152) + OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager);
  v3 = sub_1000A3A78();
  v0[27] = [v2 _beginActiveAssertionWithReason:v3];

  v4 = *(v1 + 152);
  v0[28] = v4;
  v5 = v4;

  return _swift_task_switch(sub_100072D20, 0, 0);
}

uint64_t sub_100072D20()
{
  v1 = v0[28];
  v2 = swift_task_alloc();
  v0[29] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_100072E10;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100072E10()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return _swift_task_switch(sub_100072F28, 0, 0);
}

uint64_t sub_100072F28()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_100072F94, v1, 0);
}

uint64_t sub_100072F94()
{
  v1 = *(v0 + 72);
  [*(*(v1 + 152) + OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager) _endActiveAssertion:*(v0 + 216)];
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 248) = v2;
  v3 = *(v2 + 32);
  *(v0 + 344) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 64);
  *(v0 + 256) = &_swiftEmptyDictionarySingleton;
  *(v0 + 264) = &_swiftEmptyDictionarySingleton;

  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 272) = v6;
    *(v0 + 280) = v7;
    v10 = *(v0 + 200);
    v9 = *(v0 + 208);
    v11 = *(v0 + 192);
    v12 = *(v0 + 104);
    v13 = *(v0 + 80);
    v14 = *(v0 + 88);
    v15 = __clz(__rbit64(v6)) | (v7 << 6);
    (*(v14 + 16))(v9, *(v2 + 48) + *(v14 + 72) * v15, v13);
    v16 = *(*(v2 + 56) + 8 * v15);
    v17 = *(v12 + 48);
    v18 = *(v14 + 32);
    *(v0 + 288) = v18;
    *(v0 + 296) = (v14 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v18(v10, v9, v13);
    *(v10 + v17) = v16;
    sub_100047188(v10, v11, &qword_1000C9328, &qword_1000AC9D0);
    v19 = *(v11 + *(v12 + 48));
    v20 = v16;

    v21 = sub_1000A24C8();
    v23 = v22;
    *(v0 + 304) = v22;
    v24 = *(v14 + 8);
    *(v0 + 312) = v24;
    *(v0 + 320) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v11, v13);
    v25 = swift_task_alloc();
    *(v0 + 328) = v25;
    *v25 = v0;
    v25[1] = sub_1000732F0;

    return sub_100066308(v21, v23, 0);
  }

  else
  {
    v8 = 0;
    while (((63 - v5) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v2 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v28 = *(v0 + 208);
    v27 = *(v0 + 216);
    v30 = *(v0 + 192);
    v29 = *(v0 + 200);
    v32 = *(v0 + 176);
    v31 = *(v0 + 184);
    v33 = *(v0 + 160);
    v34 = *(v0 + 168);
    v35 = *(v0 + 152);
    v37 = *(v0 + 144);
    v38 = *(v0 + 136);
    v39 = *(v0 + 128);
    v40 = *(v0 + 120);
    v41 = *(v0 + 112);
    v42 = *(v0 + 96);
    swift_unknownObjectRelease();

    v36 = *(v0 + 8);

    return v36(&_swiftEmptyDictionarySingleton);
  }
}

uint64_t sub_1000732F0(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 304);
  v4 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 336) = a1;

  return _swift_task_switch(sub_100073424, v4, 0);
}

uint64_t sub_100073424()
{
  v233 = v0;
  if (qword_1000C7570 != -1)
  {
LABEL_51:
    swift_once();
  }

  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = sub_1000A3538();
  sub_100001E38(v4, qword_1000C96B8);
  sub_100047188(v1, v2, &qword_1000C9328, &qword_1000AC9D0);
  sub_100047188(v1, v3, &qword_1000C9328, &qword_1000AC9D0);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CB8();
  v7 = &off_1000C6000;
  if (os_log_type_enabled(v5, v6))
  {
    v205 = *(v0 + 312);
    v211 = *(v0 + 320);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v214 = *(v0 + 168);
    v217 = *(v0 + 176);
    v10 = *(v0 + 104);
    log = *(v0 + 80);
    v11 = swift_slowAlloc();
    v223 = swift_slowAlloc();
    *(v0 + 48) = v223;
    *v11 = 136315394;
    sub_100047188(v9, v8, &qword_1000C9328, &qword_1000AC9D0);
    v12 = *(v8 + *(v10 + 48));
    v13 = [v12 name];

    v14 = sub_1000A3A88();
    v16 = v15;

    sub_100022154(v9, &qword_1000C9328, &qword_1000AC9D0);
    v17 = v8;
    v7 = &off_1000C6000;
    (v205)(v17, log);
    v18 = sub_1000954AC(v14, v16, (v0 + 48));

    *(v11 + 4) = v18;
    *(v11 + 12) = 1024;
    sub_100047188(v217, v214, &qword_1000C9328, &qword_1000AC9D0);
    v19 = *&v214[*(v10 + 48)];
    v20 = [v19 location];

    if (v20)
    {

      v21 = 1;
    }

    else
    {
      v21 = 0;
    }

    v23 = *(v0 + 320);
    v24 = *(v0 + 176);
    (*(v0 + 312))(*(v0 + 168), *(v0 + 80));
    sub_100022154(v24, &qword_1000C9328, &qword_1000AC9D0);
    *(v11 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "[EKSHomeManagerActor] %s with location: %{BOOL}d", v11, 0x12u);
    sub_10000F7B8(v223);
  }

  else
  {
    v22 = *(v0 + 184);
    sub_100022154(*(v0 + 176), &qword_1000C9328, &qword_1000AC9D0);

    sub_100022154(v22, &qword_1000C9328, &qword_1000AC9D0);
  }

  v25 = *(v0 + 336);
  v27 = *(v0 + 312);
  v26 = *(v0 + 320);
  v28 = *(v0 + 192);
  v29 = *(v0 + 104);
  v30 = *(v0 + 80);
  sub_100047188(*(v0 + 200), v28, &qword_1000C9328, &qword_1000AC9D0);
  v31 = *(v28 + *(v29 + 48));
  v27(v28, v30);
  v32 = [v31 v7[337]];
  v218 = v25;
  if (v25 && (v33 = *(v0 + 336), v34 = sub_1000A2DC8(), v33, v34))
  {
    v35 = v33;
    v36 = sub_1000A2D58();
    v38 = v37;

    if (!v38)
    {
      goto LABEL_16;
    }

    v39 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v39 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v39 && (([v34 coordinate], v40 != -180.0) || (objc_msgSend(v34, "coordinate"), v41 != -180.0)))
    {
      v149 = v35;
      v42 = sub_1000A2DC8();

      if (!v42)
      {
        goto LABEL_17;
      }
    }

    else
    {
LABEL_16:
      v42 = v32;

      if (!v32)
      {
LABEL_17:
        v43 = *(v0 + 336);
        sub_100022154(*(v0 + 200), &qword_1000C9328, &qword_1000AC9D0);

LABEL_37:
        v148 = *(v0 + 256);
        goto LABEL_38;
      }
    }
  }

  else
  {
    v42 = v32;
    if (!v32)
    {
      goto LABEL_17;
    }
  }

  v44 = *(v0 + 200);
  v45 = *(v0 + 152);
  sub_100047188(v44, *(v0 + 160), &qword_1000C9328, &qword_1000AC9D0);
  sub_100047188(v44, v45, &qword_1000C9328, &qword_1000AC9D0);
  v46 = sub_1000A3518();
  v47 = sub_1000A3CB8();
  v215 = v31;
  v224 = v42;
  if (os_log_type_enabled(v46, v47))
  {
    v48 = *(v0 + 312);
    v49 = *(v0 + 192);
    v206 = v47;
    v50 = *(v0 + 160);
    v194 = *(v0 + 320);
    v196 = *(v0 + 152);
    v51 = *(v0 + 104);
    v186 = v51;
    v52 = *(v0 + 80);
    v191 = v52;
    v53 = swift_slowAlloc();
    v232 = swift_slowAlloc();
    *v53 = 136315394;
    sub_100047188(v50, v49, &qword_1000C9328, &qword_1000AC9D0);
    v54 = *(v49 + *(v51 + 48));
    v55 = [v54 name];

    v56 = sub_1000A3A88();
    loga = v46;
    v58 = v57;

    sub_100022154(v50, &qword_1000C9328, &qword_1000AC9D0);
    v48(v49, v52);
    v59 = sub_1000954AC(v56, v58, &v232);

    *(v53 + 4) = v59;
    *(v53 + 12) = 2080;
    sub_100047188(v196, v49, &qword_1000C9328, &qword_1000AC9D0);
    v42 = v224;
    v60 = *(v49 + *(v186 + 48));
    v61 = [v60 location];

    *(v0 + 40) = v61;
    sub_10000275C(&qword_1000C9348, &qword_1000AC9F8);
    v62 = sub_1000A3DC8();
    v64 = v63;
    sub_100022154(v196, &qword_1000C9328, &qword_1000AC9D0);

    v48(v49, v191);
    v65 = sub_1000954AC(v62, v64, &v232);

    *(v53 + 14) = v65;
    _os_log_impl(&_mh_execute_header, loga, v206, "[EKSHomeManagerActor] Loc for %s: %s", v53, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v66 = *(v0 + 152);
    v67 = *(v0 + 160);

    sub_100022154(v66, &qword_1000C9328, &qword_1000AC9D0);
    sub_100022154(v67, &qword_1000C9328, &qword_1000AC9D0);
  }

  v68 = *(v0 + 64);
  [v42 distanceFromLocation:*(v0 + 56)];
  v69 = *(v0 + 200);
  if (v70 > v68)
  {
    sub_100047188(v69, *(v0 + 112), &qword_1000C9328, &qword_1000AC9D0);
    v71 = sub_1000A3518();
    v72 = sub_1000A3CB8();
    v73 = os_log_type_enabled(v71, v72);
    v74 = *(v0 + 336);
    if (v73)
    {
      v207 = *(v0 + 312);
      v212 = *(v0 + 320);
      v75 = *(v0 + 192);
      v226 = *(v0 + 200);
      v219 = *(v0 + 336);
      v77 = *(v0 + 104);
      v76 = *(v0 + 112);
      logb = *(v0 + 80);
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v232 = v79;
      *v78 = 136315138;
      sub_100047188(v76, v75, &qword_1000C9328, &qword_1000AC9D0);
      v80 = *(v75 + *(v77 + 48));
      v81 = [v80 name];

      v82 = sub_1000A3A88();
      v84 = v83;

      sub_100022154(v76, &qword_1000C9328, &qword_1000AC9D0);
      (v207)(v75, logb);
      v85 = sub_1000954AC(v82, v84, &v232);

      *(v78 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v71, v72, "[EKSHomeManagerActor] Loc for %s outside geofence", v78, 0xCu);
      sub_10000F7B8(v79);

      v86 = v226;
    }

    else
    {
      v107 = *(v0 + 200);
      v108 = *(v0 + 112);

      sub_100022154(v108, &qword_1000C9328, &qword_1000AC9D0);
      v86 = v107;
    }

LABEL_36:
    sub_100022154(v86, &qword_1000C9328, &qword_1000AC9D0);
    goto LABEL_37;
  }

  if (!v218)
  {
    v109 = *(v0 + 120);
    v110 = *(v0 + 200);
    sub_100047188(v69, *(v0 + 128), &qword_1000C9328, &qword_1000AC9D0);
    sub_100047188(v110, v109, &qword_1000C9328, &qword_1000AC9D0);
    v111 = sub_1000A3518();
    v112 = sub_1000A3CC8();
    if (os_log_type_enabled(v111, v112))
    {
      v190 = *(v0 + 312);
      v193 = *(v0 + 320);
      logd = *(v0 + 288);
      v209 = *(v0 + 296);
      v113 = *(v0 + 192);
      v228 = *(v0 + 200);
      v114 = *(v0 + 128);
      v198 = *(v0 + 120);
      v115 = *(v0 + 104);
      v188 = v115;
      v221 = v112;
      v116 = *(v0 + 96);
      v117 = *(v0 + 80);
      v118 = swift_slowAlloc();
      v232 = swift_slowAlloc();
      *v118 = 136315394;
      sub_100047188(v114, v113, &qword_1000C9328, &qword_1000AC9D0);
      v119 = *(v113 + *(v115 + 48));
      v120 = [v119 name];

      v121 = sub_1000A3A88();
      v123 = v122;

      sub_100022154(v114, &qword_1000C9328, &qword_1000AC9D0);
      v190(v113, v117);
      v124 = sub_1000954AC(v121, v123, &v232);

      *(v118 + 4) = v124;
      *(v118 + 12) = 2080;
      sub_100047188(v198, v113, &qword_1000C9328, &qword_1000AC9D0);

      (logd)(v116, v113, v117);
      sub_10007E7E8(&qword_1000C9340, &type metadata accessor for UUID);
      v125 = sub_1000A3F28();
      v127 = v126;
      v190(v116, v117);
      sub_100022154(v198, &qword_1000C9328, &qword_1000AC9D0);
      v128 = sub_1000954AC(v125, v127, &v232);

      *(v118 + 14) = v128;
      _os_log_impl(&_mh_execute_header, v111, v221, "[EKSHomeManagerActor] %s:%s missing backing site", v118, 0x16u);
      swift_arrayDestroy();

      v86 = v228;
    }

    else
    {
      v150 = *(v0 + 200);
      v152 = *(v0 + 120);
      v151 = *(v0 + 128);

      sub_100022154(v152, &qword_1000C9328, &qword_1000AC9D0);
      sub_100022154(v151, &qword_1000C9328, &qword_1000AC9D0);
      v86 = v150;
    }

    goto LABEL_36;
  }

  v87 = *(v0 + 136);
  v88 = *(v0 + 200);
  sub_100047188(v69, *(v0 + 144), &qword_1000C9328, &qword_1000AC9D0);
  sub_100047188(v88, v87, &qword_1000C9328, &qword_1000AC9D0);
  v89 = sub_1000A3518();
  v90 = sub_1000A3CC8();
  if (os_log_type_enabled(v89, v90))
  {
    v227 = *(v0 + 320);
    v197 = *(v0 + 288);
    logc = *(v0 + 296);
    v91 = *(v0 + 192);
    v92 = *(v0 + 144);
    v189 = *(v0 + 312);
    v192 = *(v0 + 136);
    v93 = *(v0 + 104);
    v187 = v93;
    v220 = v90;
    v195 = *(v0 + 96);
    v208 = v89;
    v94 = *(v0 + 80);
    v95 = swift_slowAlloc();
    v232 = swift_slowAlloc();
    *v95 = 136315394;
    sub_100047188(v92, v91, &qword_1000C9328, &qword_1000AC9D0);
    v96 = *(v91 + *(v93 + 48));
    v97 = [v96 name];

    v98 = sub_1000A3A88();
    v100 = v99;

    sub_100022154(v92, &qword_1000C9328, &qword_1000AC9D0);
    v189(v91, v94);
    v101 = sub_1000954AC(v98, v100, &v232);

    *(v95 + 4) = v101;
    *(v95 + 12) = 2080;
    sub_100047188(v192, v91, &qword_1000C9328, &qword_1000AC9D0);

    v197(v195, v91, v94);
    sub_10007E7E8(&qword_1000C9340, &type metadata accessor for UUID);
    v102 = sub_1000A3F28();
    v104 = v103;
    v105 = &off_1000C6000;
    v189(v195, v94);
    sub_100022154(v192, &qword_1000C9328, &qword_1000AC9D0);
    v106 = sub_1000954AC(v102, v104, &v232);

    *(v95 + 14) = v106;
    _os_log_impl(&_mh_execute_header, v208, v220, "[EKSHomeManagerActor] Found %s:%s", v95, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v129 = *(v0 + 136);
    v130 = *(v0 + 144);

    sub_100022154(v129, &qword_1000C9328, &qword_1000AC9D0);
    sub_100022154(v130, &qword_1000C9328, &qword_1000AC9D0);
    v105 = &off_1000C6000;
  }

  v229 = *(v0 + 336);
  v131 = *(v0 + 312);
  v132 = *(v0 + 320);
  v133 = *(v0 + 256);
  v135 = *(v0 + 192);
  v134 = *(v0 + 200);
  v136 = *(v0 + 104);
  v137 = *(v0 + 80);
  sub_100047188(v134, v135, &qword_1000C9328, &qword_1000AC9D0);

  v138 = sub_1000A24C8();
  v140 = v139;
  v131(v135, v137);
  v141 = [v215 v105[281]];
  v142 = sub_1000A3A88();
  v144 = v143;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v232 = v133;
  sub_10007BE98(v142, v144, v138, v140, isUniquelyReferenced_nonNull_native);

  v146 = &v232;
  v147 = vld1q_dup_f64(v146);
  v230 = v147;
  sub_100022154(v134, &qword_1000C9328, &qword_1000AC9D0);
  v148 = v230;
LABEL_38:
  v154 = *(v0 + 272);
  v153 = *(v0 + 280);
  *(v0 + 256) = v148;
  v155 = (v154 - 1) & v154;
  if (v155)
  {
    v156 = *(v0 + 248);
LABEL_44:
    *(v0 + 272) = v155;
    *(v0 + 280) = v153;
    v159 = *(v0 + 200);
    v158 = *(v0 + 208);
    v160 = *(v0 + 192);
    v161 = *(v0 + 104);
    v162 = *(v0 + 80);
    v163 = *(v0 + 88);
    v164 = __clz(__rbit64(v155)) | (v153 << 6);
    (*(v163 + 16))(v158, *(v156 + 48) + *(v163 + 72) * v164, v162);
    v165 = *(*(v156 + 56) + 8 * v164);
    v166 = *(v161 + 48);
    v167 = *(v163 + 32);
    *(v0 + 288) = v167;
    *(v0 + 296) = (v163 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v167(v159, v158, v162);
    *(v159 + v166) = v165;
    sub_100047188(v159, v160, &qword_1000C9328, &qword_1000AC9D0);
    v168 = *(v160 + *(v161 + 48));
    v169 = v165;

    v170 = sub_1000A24C8();
    v172 = v171;
    *(v0 + 304) = v171;
    v173 = *(v163 + 8);
    *(v0 + 312) = v173;
    *(v0 + 320) = (v163 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v173(v160, v162);
    v174 = swift_task_alloc();
    *(v0 + 328) = v174;
    *v174 = v0;
    v174[1] = sub_1000732F0;

    return sub_100066308(v170, v172, 0);
  }

  else
  {
    while (1)
    {
      v157 = v153 + 1;
      if (__OFADD__(v153, 1))
      {
        __break(1u);
        goto LABEL_51;
      }

      v156 = *(v0 + 248);
      if (v157 >= (((1 << *(v0 + 344)) + 63) >> 6))
      {
        break;
      }

      v155 = *(v156 + 8 * v157 + 64);
      ++v153;
      if (v155)
      {
        v153 = v157;
        goto LABEL_44;
      }
    }

    v177 = *(v0 + 208);
    v176 = *(v0 + 216);
    v179 = *(v0 + 192);
    v178 = *(v0 + 200);
    v181 = *(v0 + 176);
    v180 = *(v0 + 184);
    v182 = *(v0 + 160);
    v183 = *(v0 + 168);
    v184 = *(v0 + 152);
    loge = *(v0 + 144);
    v210 = *(v0 + 136);
    v213 = *(v0 + 128);
    v216 = *(v0 + 120);
    v222 = *(v0 + 112);
    v225 = *(v0 + 96);
    v231 = v148.f64[1];
    swift_unknownObjectRelease();

    v185 = *(v0 + 8);

    return v185(*&v231);
  }
}

uint64_t sub_100074754()
{
  v1[6] = v0;
  v2 = sub_1000A2508();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = sub_10000275C(&qword_1000C9328, &qword_1000AC9D0);
  v1[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_100074874, v0, 0);
}

uint64_t sub_100074874()
{
  v1 = v0[6];
  v2 = *(*(v1 + 152) + OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager);
  v3 = sub_1000A3A78();
  v0[15] = [v2 _beginActiveAssertionWithReason:v3];

  v4 = *(v1 + 152);
  v0[16] = v4;
  v5 = v4;

  return _swift_task_switch(sub_100074958, 0, 0);
}

uint64_t sub_100074958()
{
  v1 = v0[16];
  v2 = swift_task_alloc();
  v0[17] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_100074A48;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100074A48()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_100074B60, 0, 0);
}

uint64_t sub_100074B60()
{
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_100074BCC, v1, 0);
}

uint64_t sub_100074BCC()
{
  v1 = *(v0 + 48);
  [*(*(v1 + 152) + OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager) _endActiveAssertion:*(v0 + 120)];
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 152) = v2;
  v3 = *(v2 + 32);
  *(v0 + 240) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 64);
  *(v0 + 160) = &_swiftEmptyDictionarySingleton;

  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 168) = v6;
    *(v0 + 176) = v7;
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 56);
    v14 = *(v0 + 64);
    v15 = __clz(__rbit64(v6)) | (v7 << 6);
    v16 = *(v2 + 48);
    v17 = *(v14 + 72);
    *(v0 + 184) = v17;
    v18 = v16 + v17 * v15;
    v19 = *(v14 + 16);
    *(v0 + 192) = v19;
    *(v0 + 200) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v9, v18, v13);
    v20 = *(*(v2 + 56) + 8 * v15);
    v21 = *(v12 + 48);
    (*(v14 + 32))(v10, v9, v13);
    *(v10 + v21) = v20;
    sub_100047188(v10, v11, &qword_1000C9328, &qword_1000AC9D0);
    *(v0 + 208) = *(v11 + *(v12 + 48));
    v22 = *(v14 + 8);
    *(v0 + 216) = v22;
    *(v0 + 224) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23 = v20;
    v22(v11, v13);
    v24 = swift_task_alloc();
    *(v0 + 232) = v24;
    *v24 = v0;
    v24[1] = sub_100074E90;
    v25 = *(v0 + 104);
    v26 = *(v0 + 80);
    v27 = *(v0 + 48);

    return sub_100069C1C(v26, v25);
  }

  else
  {
    v8 = 0;
    while (((63 - v5) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v2 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v30 = *(v0 + 112);
    v29 = *(v0 + 120);
    v32 = *(v0 + 96);
    v31 = *(v0 + 104);
    v34 = *(v0 + 72);
    v33 = *(v0 + 80);
    swift_unknownObjectRelease();

    v35 = *(v0 + 8);

    return v35(&_swiftEmptyDictionarySingleton);
  }
}

uint64_t sub_100074E90()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100074FA0, v2, 0);
}

unint64_t sub_100074FA0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 160);
  v4 = *(v0 + 72);
  (*(v0 + 192))(v4, *(v0 + 80), *(v0 + 56));
  v5 = [v2 name];
  v6 = sub_1000A3A88();
  v8 = v7;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 40) = v3;
  result = sub_100079C54(v4);
  v12 = *(v3 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = v11;
  if (*(*(v0 + 160) + 24) >= v15)
  {
    v74 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = result;
      sub_10007C4C4();
      result = v21;
    }
  }

  else
  {
    v17 = *(v0 + 72);
    sub_10007A548(v15, isUniquelyReferenced_nonNull_native);
    v18 = *(v0 + 40);
    result = sub_100079C54(v17);
    if ((v16 & 1) != (v19 & 1))
    {
      v20 = *(v0 + 56);

      return sub_1000A3F78();
    }

    v74 = v8;
  }

  v22 = *(v0 + 40);
  v24 = *(v0 + 216);
  v23 = *(v0 + 224);
  v25 = *(v0 + 208);
  if (v16)
  {
    v26 = *(v0 + 104);
    v28 = *(v0 + 72);
    v27 = *(v0 + 80);
    v29 = *(v0 + 56);
    v30 = (v22[7] + 16 * result);
    v31 = v30[1];
    *v30 = v6;
    v30[1] = v74;

    v24(v28, v29);
    v24(v27, v29);
    result = sub_100022154(v26, &qword_1000C9328, &qword_1000AC9D0);
    goto LABEL_14;
  }

  v33 = *(v0 + 192);
  v32 = *(v0 + 200);
  v34 = *(v0 + 184);
  v73 = *(v0 + 104);
  v36 = *(v0 + 72);
  v35 = *(v0 + 80);
  v37 = *(v0 + 56);
  v22[(result >> 6) + 8] |= 1 << result;
  v38 = result;
  v33(v22[6] + v34 * result, v36, v37);
  v39 = (v22[7] + 16 * v38);
  *v39 = v6;
  v39[1] = v74;

  v24(v36, v37);
  v24(v35, v37);
  result = sub_100022154(v73, &qword_1000C9328, &qword_1000AC9D0);
  v40 = v22[2];
  v14 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v14)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v22[2] = v41;
LABEL_14:
  v43 = *(v0 + 168);
  v42 = *(v0 + 176);
  *(v0 + 160) = v22;
  v44 = (v43 - 1) & v43;
  if (v44)
  {
    v45 = *(v0 + 152);
LABEL_20:
    *(v0 + 168) = v44;
    *(v0 + 176) = v42;
    v48 = *(v0 + 104);
    v47 = *(v0 + 112);
    v50 = *(v0 + 88);
    v49 = *(v0 + 96);
    v51 = *(v0 + 56);
    v52 = *(v0 + 64);
    v53 = __clz(__rbit64(v44)) | (v42 << 6);
    v54 = *(v45 + 48);
    v55 = *(v52 + 72);
    *(v0 + 184) = v55;
    v56 = v54 + v55 * v53;
    v57 = *(v52 + 16);
    *(v0 + 192) = v57;
    *(v0 + 200) = (v52 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v57(v47, v56, v51);
    v58 = *(*(v45 + 56) + 8 * v53);
    v59 = *(v50 + 48);
    (*(v52 + 32))(v48, v47, v51);
    *(v48 + v59) = v58;
    sub_100047188(v48, v49, &qword_1000C9328, &qword_1000AC9D0);
    *(v0 + 208) = *(v49 + *(v50 + 48));
    v60 = *(v52 + 8);
    *(v0 + 216) = v60;
    *(v0 + 224) = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v61 = v58;
    v60(v49, v51);
    v62 = swift_task_alloc();
    *(v0 + 232) = v62;
    *v62 = v0;
    v62[1] = sub_100074E90;
    v63 = *(v0 + 104);
    v64 = *(v0 + 80);
    v65 = *(v0 + 48);

    return sub_100069C1C(v64, v63);
  }

  else
  {
    while (1)
    {
      v46 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      v45 = *(v0 + 152);
      if (v46 >= (((1 << *(v0 + 240)) + 63) >> 6))
      {
        break;
      }

      v44 = *(v45 + 8 * v46 + 64);
      ++v42;
      if (v44)
      {
        v42 = v46;
        goto LABEL_20;
      }
    }

    v67 = *(v0 + 112);
    v66 = *(v0 + 120);
    v69 = *(v0 + 96);
    v68 = *(v0 + 104);
    v71 = *(v0 + 72);
    v70 = *(v0 + 80);
    swift_unknownObjectRelease();

    v72 = *(v0 + 8);

    return v72(v22);
  }
}

uint64_t sub_100075438()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  v3 = *(v0 + 144);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

char *sub_1000754AC(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = a1;
  v26 = a2;
  v27 = a3;
  ObjectType = swift_getObjectType();
  v3 = sub_1000A3CF8();
  __chkstk_darwin(*(*(v3 - 8) + 64));
  v4 = sub_1000A3568();
  __chkstk_darwin(*(*(v4 - 8) + 64));
  v5 = sub_1000A3D08();
  v6 = *(v5 - 8);
  __chkstk_darwin(*(v6 + 64));
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_serialQueue;
  sub_100032224(0, &qword_1000C92C8, OS_dispatch_queue_ptr);
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  sub_1000A3558();
  v30 = &_swiftEmptyArrayStorage;
  sub_10007E7E8(&qword_1000C92D0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000275C(&qword_1000C92D8, &qword_1000AC930);
  sub_10007DA74(&qword_1000C92E0, &qword_1000C92D8, &qword_1000AC930);
  sub_1000A3E38();
  v9 = sub_1000A3D28();
  v10 = v24;
  *&v24[v23] = v9;
  v11 = objc_allocWithZone(HMMutableHomeManagerConfiguration);
  v12 = [v11 initWithOptions:v25 cachePolicy:v26];
  [v12 setDiscretionary:0];
  v13 = [objc_allocWithZone(NSOperationQueue) init];
  [v12 setDelegateQueue:v13];

  [v12 setAdaptive:1];
  [v12 setInactiveUpdatingLevel:1];
  v14 = objc_allocWithZone(HMFLocationAuthorization);
  v15 = v27;
  v16 = [v14 initWithBundle:v27];
  [v12 setLocationAuthorization:v16];

  v17 = [objc_allocWithZone(HMHomeManager) initWithConfiguration:v12];
  *&v10[OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager] = v17;
  v29.receiver = v10;
  v29.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v29, "init");
  v19 = *&v18[OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager];
  v20 = v18;
  [v19 setDelegate:v20];

  return v20;
}

uint64_t sub_100075864(uint64_t a1, void *a2)
{
  v4 = sub_10000275C(&qword_1000C9338, &qword_1000AC9E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = &v17 - v7;
  v9 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v17 - v10;
  v12 = sub_1000A3BE8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 16))(v8, a1, v4);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v5 + 32))(v14 + v13, v8, v4);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v15 = a2;
  sub_100069404(0, 0, v11, &unk_1000AC9F0, v14);

  return sub_100022154(v11, &qword_1000C8240, &qword_1000AB688);
}

uint64_t sub_100075A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100075A98, 0, 0);
}

uint64_t sub_100075A98()
{
  if (qword_1000C7590 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C96F8;
  *(v0 + 32) = qword_1000C96F8;

  return _swift_task_switch(sub_100075B40, v1, 0);
}

uint64_t sub_100075B40()
{
  *(v0 + 136) = *(*(v0 + 32) + 112);

  return _swift_task_switch(sub_100075BB0, 0, 0);
}

uint64_t sub_100075BB0()
{
  if (*(v0 + 136) == 1)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v1 = sub_1000A3538();
    sub_100001E38(v1, qword_1000C96B8);
    v2 = sub_1000A3518();
    v3 = sub_1000A3CB8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[EKSHomeManager] Homes already loaded", v4, 2u);
    }

    v5 = *(v0 + 16);
    sub_10000275C(&qword_1000C9338, &qword_1000AC9E0);
    sub_1000A3BC8();
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(*(v0 + 24) + OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager);
    *(v0 + 40) = v8;
    v9 = [v8 dataSyncState];
    if (v9)
    {
      if (v9 == 1)
      {
        if (qword_1000C7570 != -1)
        {
          swift_once();
        }

        v10 = sub_1000A3538();
        sub_100001E38(v10, qword_1000C96B8);
        v11 = sub_1000A3518();
        v12 = sub_1000A3CB8();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, v12, "[EKSHomeManager] Sync state good", v13, 2u);
        }

        *(v0 + 48) = qword_1000C96F8;

        v14 = swift_task_alloc();
        *(v0 + 56) = v14;
        *v14 = v0;
        v15 = sub_100076058;
      }

      else
      {
        if (qword_1000C7570 != -1)
        {
          swift_once();
        }

        v21 = sub_1000A3538();
        sub_100001E38(v21, qword_1000C96B8);
        v22 = sub_1000A3518();
        v23 = sub_1000A3CB8();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, "[EKSHomeManager] Sync state updated to good", v24, 2u);
        }

        *(v0 + 112) = qword_1000C96F8;

        v14 = swift_task_alloc();
        *(v0 + 120) = v14;
        *v14 = v0;
        v15 = sub_100076AAC;
      }

      v14[1] = v15;

      return sub_10006C78C();
    }

    else
    {
      if (qword_1000C7570 != -1)
      {
        swift_once();
      }

      v16 = sub_1000A3538();
      *(v0 + 72) = sub_100001E38(v16, qword_1000C96B8);
      v17 = sub_1000A3518();
      v18 = sub_1000A3CC8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "[EKSHomeManager] Sync state unknown", v19, 2u);
      }

      v20 = qword_1000C96F8;
      *(v0 + 80) = qword_1000C96F8;

      return _swift_task_switch(sub_100076258, v20, 0);
    }
  }
}

uint64_t sub_100076058()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100076170, 0, 0);
}

uint64_t sub_100076170()
{
  v1 = qword_1000C96F8;
  *(v0 + 64) = qword_1000C96F8;

  return _swift_task_switch(sub_1000761E8, v1, 0);
}

uint64_t sub_1000761E8()
{
  *(*(v0 + 64) + 112) = 1;

  return _swift_task_switch(sub_10007E8A4, 0, 0);
}

uint64_t sub_100076258()
{
  *(v0 + 137) = *(*(v0 + 80) + 112);

  return _swift_task_switch(sub_1000762C8, 0, 0);
}

uint64_t sub_1000762C8()
{
  if ((*(v0 + 137) & 1) != 0 || (*(v0 + 88) = 0, [*(v0 + 40) dataSyncState] == 1))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v1 = sub_1000A3538();
    sub_100001E38(v1, qword_1000C96B8);
    v2 = sub_1000A3518();
    v3 = sub_1000A3CB8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[EKSHomeManager] Sync state updated to good", v4, 2u);
    }

    *(v0 + 112) = qword_1000C96F8;

    v5 = swift_task_alloc();
    *(v0 + 120) = v5;
    *v5 = v0;
    v5[1] = sub_100076AAC;

    return sub_10006C78C();
  }

  else if (sub_1000A3C48())
  {
    v7 = *(v0 + 72);
    v8 = sub_1000A3518();
    v9 = sub_1000A3CC8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "[EKSHomeManager] Sync state task cancelled", v10, 2u);
    }

    v11 = *(v0 + 16);
    sub_10000275C(&qword_1000C9338, &qword_1000AC9E0);
    sub_1000A3BC8();
    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v13 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
    v14 = swift_task_alloc();
    *(v0 + 96) = v14;
    *v14 = v0;
    v14[1] = sub_10007658C;

    return static Task<>.sleep(nanoseconds:)(1000000000);
  }
}

uint64_t sub_10007658C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_10007E874;
  }

  else
  {
    v3 = sub_1000766A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000766A4()
{
  v1 = qword_1000C96F8;
  *(v0 + 104) = qword_1000C96F8;

  return _swift_task_switch(sub_10007671C, v1, 0);
}

uint64_t sub_10007671C()
{
  *(v0 + 138) = *(*(v0 + 104) + 112);

  return _swift_task_switch(sub_10007678C, 0, 0);
}

uint64_t sub_10007678C()
{
  if ((*(v0 + 138) & 1) != 0 || (v1 = *(v0 + 88) + 1, *(v0 + 88) = v1, [*(v0 + 40) dataSyncState] == 1))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = sub_1000A3538();
    sub_100001E38(v2, qword_1000C96B8);
    v3 = sub_1000A3518();
    v4 = sub_1000A3CB8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[EKSHomeManager] Sync state updated to good", v5, 2u);
    }

    *(v0 + 112) = qword_1000C96F8;

    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_100076AAC;

    return sub_10006C78C();
  }

  if (v1 == 61)
  {
    v8 = *(v0 + 72);
    v9 = sub_1000A3518();
    v10 = sub_1000A3CC8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "[EKSHomeManager] Sync state timed out";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (sub_1000A3C48())
  {
    v13 = *(v0 + 72);
    v9 = sub_1000A3518();
    v10 = sub_1000A3CC8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "[EKSHomeManager] Sync state task cancelled";
      goto LABEL_16;
    }

LABEL_17:

    v14 = *(v0 + 16);
    sub_10000275C(&qword_1000C9338, &qword_1000AC9E0);
    sub_1000A3BC8();
    v15 = *(v0 + 8);

    return v15();
  }

  v16 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v17 = swift_task_alloc();
  *(v0 + 96) = v17;
  *v17 = v0;
  v17[1] = sub_10007658C;

  return static Task<>.sleep(nanoseconds:)(1000000000);
}

uint64_t sub_100076AAC()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100076BC4, 0, 0);
}

uint64_t sub_100076BC4()
{
  v1 = qword_1000C96F8;
  *(v0 + 128) = qword_1000C96F8;

  return _swift_task_switch(sub_100076C3C, v1, 0);
}

uint64_t sub_100076C3C()
{
  *(*(v0 + 128) + 112) = 1;

  return _swift_task_switch(sub_100076CAC, 0, 0);
}

uint64_t sub_100076CAC()
{
  v1 = *(v0 + 16);
  sub_10000275C(&qword_1000C9338, &qword_1000AC9E0);
  sub_1000A3BC8();
  v2 = *(v0 + 8);

  return v2();
}

void sub_100076D24(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000275C(&unk_1000C9360, &unk_1000ACA08);
  v9 = *(v8 - 8);
  __chkstk_darwin(((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v17 - v10;
  v18 = *&a2[OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager];
  v12 = sub_1000A3A78();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a2;
  (*(v9 + 32))(&v14[v13], v11, v8);
  aBlock[4] = sub_10007E60C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100009DA8;
  aBlock[3] = &unk_1000C01B0;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  [v18 addHomeWithName:v12 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_100076F24(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a3;
  v57 = a5;
  v10 = sub_10000275C(&unk_1000C9360, &unk_1000ACA08);
  v11 = *(v10 - 8);
  v58 = *(v11 + 64);
  __chkstk_darwin(((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = &v52 - v12;
  v13 = sub_1000A2498();
  v14 = *(v13 - 8);
  __chkstk_darwin(*(v14 + 64));
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v52 - v17;
  if (a1)
  {
    v55 = v10;
    v19 = qword_1000C7570;
    v54 = a1;
    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1000A3538();
    sub_100001E38(v20, qword_1000C96B8);

    v21 = sub_1000A3518();
    v22 = sub_1000A3CA8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v53 = a6;
      v24 = v23;
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1000954AC(v56, a4, aBlock);
      _os_log_impl(&_mh_execute_header, v21, v22, "[EKSHomeManager] Successfully created home: %s", v24, 0xCu);
      sub_10000F7B8(v25);

      a6 = v53;
    }

    v26 = *(v57 + OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager);
    sub_1000A2478();
    sub_1000A2408();
    v27 = *(v14 + 8);
    v27(v16, v13);
    isa = sub_1000A2418().super.isa;
    v27(v18, v13);
    v29 = v59;
    v30 = v55;
    (*(v11 + 16))(v59, a6, v55);
    v31 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v32 = swift_allocObject();
    (*(v11 + 32))(v32 + v31, v29, v30);
    aBlock[4] = sub_10007E734;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008AE8;
    aBlock[3] = &unk_1000C0200;
    v33 = _Block_copy(aBlock);

    v34 = [v26 _refreshBeforeDate:isa completionHandler:v33];
    _Block_release(v33);
    swift_unknownObjectRelease();

    aBlock[0] = v54;
    return sub_1000A3BC8();
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v36 = sub_1000A3538();
    sub_100001E38(v36, qword_1000C96B8);
    swift_errorRetain();
    v37 = sub_1000A3518();
    v38 = sub_1000A3CC8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v41;
      *v40 = v41;
      _os_log_impl(&_mh_execute_header, v37, v38, "[EKSHomeManager] Failed to create home: %@", v39, 0xCu);
      sub_100022154(v40, &unk_1000C7740, &qword_1000AB610);
    }

    v42 = sub_1000A3598();
    sub_10007E7E8(&qword_1000C7830, &type metadata accessor for EnergyKitError);
    v43 = swift_allocError();
    (*(*(v42 - 8) + 104))(v44, enum case for EnergyKitError.venueUnavailable(_:), v42);
    aBlock[0] = v43;
    sub_1000A3BB8();
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v45 = sub_1000A3538();
    sub_100001E38(v45, qword_1000C96B8);
    v46 = sub_1000A3518();
    v47 = sub_1000A3CC8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "[EKSHomeManager] Failed to create home: unknown error", v48, 2u);
    }

    v49 = sub_1000A3598();
    sub_10007E7E8(&qword_1000C7830, &type metadata accessor for EnergyKitError);
    v50 = swift_allocError();
    (*(*(v49 - 8) + 104))(v51, enum case for EnergyKitError.venueUnavailable(_:), v49);
    aBlock[0] = v50;
    return sub_1000A3BB8();
  }
}

void *sub_100077694(uint64_t a1)
{
  v2 = sub_1000A2C08();
  v3 = *(v2 - 8);
  __chkstk_darwin(*(v3 + 64));
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000A3538();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(*(v7 + 64));
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v3 + 104))(v5, enum case for Logging.daemon(_:), v2);
    swift_errorRetain();
    sub_1000A2B68();
    (*(v3 + 8))(v5, v2);
    swift_errorRetain();
    v11 = sub_1000A3518();
    v12 = sub_1000A3CC8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "[EKSHomeManager] Failed to refresh homes %@", v13, 0xCu);
      sub_100022154(v14, &unk_1000C7740, &qword_1000AB610);
    }

    (*(v7 + 8))(v10, v6);
    v16[1] = a1;
    sub_10000275C(&unk_1000C9360, &unk_1000ACA08);
    return sub_1000A3BB8();
  }

  return result;
}

id sub_10007796C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100077A14(void *a1)
{
  v2 = v1;
  v4 = sub_1000A3548();
  v21 = *(v4 - 8);
  __chkstk_darwin(*(v21 + 64));
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000A3568();
  v7 = *(v20 - 8);
  __chkstk_darwin(*(v7 + 64));
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v10 = sub_1000A3538();
  sub_100001E38(v10, qword_1000C96B8);
  v11 = sub_1000A3518();
  v12 = sub_1000A3CB8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "[EKSHomeManager] homeManagerDidUpdateHomes", v13, 2u);
  }

  v14 = *(v2 + OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_serialQueue);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  aBlock[4] = sub_10007E1EC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000034F0;
  aBlock[3] = &unk_1000C0110;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  sub_1000A3558();
  v22 = &_swiftEmptyArrayStorage;
  sub_10007E7E8(&qword_1000C9300, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000275C(&qword_1000C9308, &unk_1000AC940);
  sub_10007DA74(&unk_1000C9310, &qword_1000C9308, &unk_1000AC940);
  sub_1000A3E38();
  sub_1000A3D18();
  _Block_release(v16);
  (*(v21 + 8))(v6, v4);
  (*(v7 + 8))(v9, v20);
}

uint64_t sub_100077DAC()
{
  v1 = v0[2];
  v2 = sub_1000A3A78();
  v0[3] = [v1 _beginActiveAssertionWithReason:v2];

  if (qword_1000C7590 != -1)
  {
    swift_once();
  }

  v3 = qword_1000C96F8;
  v0[4] = qword_1000C96F8;

  return _swift_task_switch(sub_100077EA4, v3, 0);
}

uint64_t sub_100077EA4()
{
  *(*(v0 + 32) + 112) = 1;

  return _swift_task_switch(sub_100077F14, 0, 0);
}

uint64_t sub_100077F14()
{
  v1 = v0[2];
  v0[5] = qword_1000C96F8;

  v2 = [v1 homes];
  sub_100032224(0, &qword_1000C9320, HMHome_ptr);
  v3 = sub_1000A3B68();
  v0[6] = v3;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100078010;

  return sub_10006A594(v3);
}

uint64_t sub_100078010()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return _swift_task_switch(sub_10007E8C8, 0, 0);
}

uint64_t sub_1000781AC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = &v12 - v6;
  v8 = sub_1000A3BE8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v10 = a1;
  sub_100069404(0, 0, v7, a3, v9);

  return sub_100022154(v7, &qword_1000C8240, &qword_1000AB688);
}

uint64_t sub_1000782E8()
{
  v1 = v0[2];
  v2 = sub_1000A3A78();
  v0[3] = [v1 _beginActiveAssertionWithReason:v2];

  if (qword_1000C7590 != -1)
  {
    swift_once();
  }

  v3 = qword_1000C96F8;
  v0[4] = qword_1000C96F8;

  return _swift_task_switch(sub_1000783E0, v3, 0);
}

uint64_t sub_1000783E0()
{
  *(*(v0 + 32) + 112) = 1;

  return _swift_task_switch(sub_100078450, 0, 0);
}

uint64_t sub_100078450()
{
  v1 = v0[2];
  v0[5] = qword_1000C96F8;

  v2 = [v1 homes];
  sub_100032224(0, &qword_1000C9320, HMHome_ptr);
  v3 = sub_1000A3B68();
  v0[6] = v3;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10007854C;

  return sub_10006A594(v3);
}

uint64_t sub_10007854C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return _swift_task_switch(sub_100078680, 0, 0);
}

uint64_t sub_100078680()
{
  [*(v0 + 16) _endActiveAssertion:*(v0 + 24)];
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007883C(void *a1)
{
  v2 = v1;
  v4 = sub_1000A3548();
  v24 = *(v4 - 8);
  __chkstk_darwin(*(v24 + 64));
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000A3568();
  v7 = *(v23 - 8);
  __chkstk_darwin(*(v7 + 64));
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v10 = sub_1000A3538();
  sub_100001E38(v10, qword_1000C96B8);
  v11 = sub_1000A3518();
  v12 = sub_1000A3CB8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "[EKSHomeManager] homeManagerDidUpdateDataSync", v13, 2u);
  }

  v14 = [a1 dataSyncState];
  v15 = *(v2 + OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_serialQueue);
  if (v14 == 1)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    v30 = sub_10007DE70;
    v31 = v16;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v17 = &unk_1000BFF80;
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    v30 = sub_10007DE38;
    v31 = v18;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v17 = &unk_1000BFF30;
  }

  v28 = sub_1000034F0;
  v29 = v17;
  v19 = _Block_copy(&aBlock);
  v20 = a1;
  sub_1000A3558();
  v25 = &_swiftEmptyArrayStorage;
  sub_10007E7E8(&qword_1000C9300, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000275C(&qword_1000C9308, &unk_1000AC940);
  sub_10007DA74(&unk_1000C9310, &qword_1000C9308, &unk_1000AC940);
  sub_1000A3E38();
  sub_1000A3D18();
  _Block_release(v19);
  (*(v24 + 8))(v6, v4);
  (*(v7 + 8))(v9, v23);
}

uint64_t sub_100078C5C()
{
  v1 = v0[2];
  v2 = sub_1000A3A78();
  v0[3] = [v1 _beginActiveAssertionWithReason:v2];

  if (qword_1000C7590 != -1)
  {
    swift_once();
  }

  v3 = qword_1000C96F8;
  v0[4] = qword_1000C96F8;

  return _swift_task_switch(sub_100078D54, v3, 0);
}

uint64_t sub_100078D54()
{
  *(*(v0 + 32) + 112) = 0;

  return _swift_task_switch(sub_10007E8C8, 0, 0);
}

uint64_t sub_100078E64()
{
  if (qword_1000C7590 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C96F8;
  *(v0 + 16) = qword_1000C96F8;

  return _swift_task_switch(sub_100078F0C, v1, 0);
}

uint64_t sub_100078F0C()
{
  v1 = *(*(v0 + 16) + 152);
  *(v0 + 24) = v1;
  v2 = v1;

  return _swift_task_switch(sub_100078F84, 0, 0);
}

uint64_t sub_100078F84()
{
  v1 = v0[3];
  v2 = *&v1[OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager];

  v3 = sub_1000A3A78();
  v0[4] = [v2 _beginActiveAssertionWithReason:v3];

  v4 = qword_1000C96F8;
  v0[5] = qword_1000C96F8;

  return _swift_task_switch(sub_100079068, v4, 0);
}

uint64_t sub_100079068()
{
  *(*(v0 + 40) + 112) = 1;

  return _swift_task_switch(sub_1000790D8, 0, 0);
}

uint64_t sub_1000790D8()
{
  *(v0 + 48) = qword_1000C96F8;

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10007917C;

  return sub_10006C78C();
}

uint64_t sub_10007917C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100079294, 0, 0);
}

uint64_t sub_100079294()
{
  v1 = qword_1000C96F8;
  *(v0 + 64) = qword_1000C96F8;

  return _swift_task_switch(sub_10007930C, v1, 0);
}

uint64_t sub_10007930C()
{
  v1 = *(*(v0 + 64) + 152);
  *(v0 + 72) = v1;
  v2 = v1;

  return _swift_task_switch(sub_100079384, 0, 0);
}

uint64_t sub_100079384()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = *&v1[OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager];

  [v3 _endActiveAssertion:v2];
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000794CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = &v9 - v4;
  v6 = sub_1000A3BE8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_100069404(0, 0, v5, a2, v7);

  return sub_100022154(v5, &qword_1000C8240, &qword_1000AB688);
}

uint64_t sub_1000795F4()
{
  if (qword_1000C7590 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C96F8;
  *(v0 + 16) = qword_1000C96F8;

  return _swift_task_switch(sub_10007969C, v1, 0);
}

uint64_t sub_10007969C()
{
  v1 = *(*(v0 + 16) + 152);
  *(v0 + 24) = v1;
  v2 = v1;

  return _swift_task_switch(sub_100079714, 0, 0);
}

uint64_t sub_100079714()
{
  v1 = v0[3];
  v2 = *&v1[OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager];

  v3 = sub_1000A3A78();
  v0[4] = [v2 _beginActiveAssertionWithReason:v3];

  v4 = qword_1000C96F8;
  v0[5] = qword_1000C96F8;

  return _swift_task_switch(sub_1000797F8, v4, 0);
}

uint64_t sub_1000797F8()
{
  *(*(v0 + 40) + 112) = 1;

  return _swift_task_switch(sub_100079868, 0, 0);
}

uint64_t sub_100079868()
{
  *(v0 + 48) = qword_1000C96F8;

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10007990C;

  return sub_10006C78C();
}

uint64_t sub_10007990C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100079A24, 0, 0);
}

uint64_t sub_100079A24()
{
  v1 = qword_1000C96F8;
  *(v0 + 64) = qword_1000C96F8;

  return _swift_task_switch(sub_100079A9C, v1, 0);
}

uint64_t sub_100079A9C()
{
  v1 = *(*(v0 + 64) + 152);
  *(v0 + 72) = v1;
  v2 = v1;

  return _swift_task_switch(sub_10007E858, 0, 0);
}

uint64_t sub_100079BAC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_100079BDC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000A3F88();
  sub_1000A3AC8();
  v6 = sub_1000A3F98();

  return sub_100079CEC(a1, a2, v6);
}

unint64_t sub_100079C54(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000A2508();
  sub_10007E7E8(&qword_1000C92F0, &type metadata accessor for UUID);
  v5 = sub_1000A3A38();

  return sub_100079DA4(a1, v5);
}

unint64_t sub_100079CEC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000A3F48())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100079DA4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1000A2508();
  v5 = *(v4 - 8);
  __chkstk_darwin(*(v5 + 64));
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10007E7E8(&qword_1000C92F8, &type metadata accessor for UUID);
      v15 = sub_1000A3A68();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_100079F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100079C54(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10007C1FC();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_1000A2508();
    v14 = *(v13 - 8);
    v22 = v14;
    v15 = *(v14 + 72) * v8;
    (*(v14 + 8))(v12 + v15, v13);
    (*(v22 + 32))(a2, *(v11 + 56) + v15, v13);
    sub_10007B514(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v13;
  }

  else
  {
    v20 = sub_1000A2508();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_10007A0FC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1000A2508();
  v7 = *(v6 - 8);
  __chkstk_darwin(*(v7 + 64));
  v51 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = &v41 - v9;
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_10000275C(&qword_1000C92E8, &qword_1000AC938);
  v47 = a2;
  result = sub_1000A3EF8();
  v52 = result;
  if (*(v10 + 16))
  {
    v42 = v3;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v43 = (v7 + 16);
    v44 = v10;
    v45 = v7;
    v48 = (v7 + 32);
    v19 = v52 + 64;
    while (v17)
    {
      v24 = __clz(__rbit64(v17));
      v50 = (v17 - 1) & v17;
LABEL_17:
      v27 = *(v10 + 48);
      v49 = *(v45 + 72);
      v28 = v49 * (v24 | (v13 << 6));
      if (v47)
      {
        v29 = *v48;
        v30 = v46;
        (*v48)(v46, v27 + v28, v6);
      }

      else
      {
        v29 = *v43;
        v30 = v46;
        (*v43)(v46, v27 + v28, v6);
      }

      v29(v51, *(v10 + 56) + v28, v6);
      v31 = v52;
      v32 = *(v52 + 40);
      sub_10007E7E8(&qword_1000C92F0, &type metadata accessor for UUID);
      result = sub_1000A3A38();
      v33 = -1 << *(v31 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = v52;
      v22 = v49 * v20;
      v23 = *v48;
      (*v48)((*(v52 + 48) + v49 * v20), v30, v6);
      result = (v23)(*(v21 + 56) + v22, v51, v6);
      ++*(v21 + 16);
      v10 = v44;
      v17 = v50;
    }

    v25 = v13;
    while (1)
    {
      v13 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v26 = v14[v13];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v50 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v52;
  return result;
}

uint64_t sub_10007A548(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1000A2508();
  v7 = *(v6 - 8);
  __chkstk_darwin(*(v7 + 64));
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_10000275C(&qword_1000C9330, &qword_1000AC9D8);
  v47 = a2;
  result = sub_1000A3EF8();
  v13 = result;
  if (*(v10 + 16))
  {
    v52 = v9;
    v43 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = (v7 + 16);
    v45 = v10;
    v46 = v7;
    v48 = (v7 + 32);
    v20 = result + 64;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v27 = v24 | (v14 << 6);
      v28 = *(v10 + 48);
      v51 = *(v46 + 72);
      v29 = v28 + v51 * v27;
      if (v47)
      {
        (*v48)(v52, v29, v6);
        v30 = (*(v10 + 56) + 16 * v27);
        v31 = *v30;
        v49 = v30[1];
        v50 = v31;
      }

      else
      {
        (*v44)(v52, v29, v6);
        v32 = (*(v10 + 56) + 16 * v27);
        v33 = *v32;
        v49 = v32[1];
        v50 = v33;
      }

      v34 = *(v13 + 40);
      sub_10007E7E8(&qword_1000C92F0, &type metadata accessor for UUID);
      result = sub_1000A3A38();
      v35 = -1 << *(v13 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v20 + 8 * v37);
          if (v41 != -1)
          {
            v21 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v48)(*(v13 + 48) + v51 * v21, v52, v6);
      v22 = (*(v13 + 56) + 16 * v21);
      v23 = v49;
      *v22 = v50;
      v22[1] = v23;
      ++*(v13 + 16);
      v10 = v45;
    }

    v25 = v14;
    while (1)
    {
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v26 = v15[v14];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v18 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v10 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v15, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v42;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_10007A930(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1000A2508();
  v7 = *(v6 - 8);
  __chkstk_darwin(*(v7 + 64));
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_10000275C(&unk_1000C9390, &unk_1000ACA30);
  v42 = a2;
  result = sub_1000A3EF8();
  v13 = result;
  if (*(v10 + 16))
  {
    v46 = v9;
    v38 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v10;
    v41 = v7;
    v43 = (v7 + 32);
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(v10 + 48);
      v45 = *(v41 + 72);
      v27 = v26 + v45 * v25;
      if (v42)
      {
        (*v43)(v46, v27, v6);
        v44 = *(*(v10 + 56) + 8 * v25);
      }

      else
      {
        (*v39)(v46, v27, v6);
        v44 = *(*(v10 + 56) + 8 * v25);
      }

      v28 = *(v13 + 40);
      sub_10007E7E8(&qword_1000C92F0, &type metadata accessor for UUID);
      result = sub_1000A3A38();
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v43)(*(v13 + 48) + v45 * v21, v46, v6);
      *(*(v13 + 56) + 8 * v21) = v44;
      ++*(v13 + 16);
      v10 = v40;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v15, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_10007AD0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000275C(&qword_1000C93A8, &unk_1000ACA40);
  v39 = a2;
  result = sub_1000A3EF8();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1000A3F88();
      sub_1000A3AC8();
      result = sub_1000A3F98();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10007AFB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000275C(&qword_1000C93A0, &unk_1000AC520);
  v37 = a2;
  result = sub_1000A3EF8();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1000A3F88();
      sub_1000A3AC8();
      result = sub_1000A3F98();
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_10007B254(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000275C(&unk_1000C9350, &qword_1000ACA00);
  v40 = a2;
  result = sub_1000A3EF8();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1000A3F88();
      sub_1000A3AC8();
      result = sub_1000A3F98();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_10007B514(int64_t a1, uint64_t a2)
{
  v4 = sub_1000A2508();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(*(v5 + 64));
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1000A3E48();
    v14 = v12;
    v34 = (v13 + 1) & v12;
    v35 = a2 + 64;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = *(v15 + 56);
    v32 = (v15 - 8);
    v33 = v16;
    do
    {
      v18 = v17 * v11;
      v19 = v14;
      v20 = v15;
      v33(v8, *(a2 + 48) + v17 * v11, v4);
      v21 = *(a2 + 40);
      sub_10007E7E8(&qword_1000C92F0, &type metadata accessor for UUID);
      v22 = sub_1000A3A38();
      result = (*v32)(v8, v4);
      v14 = v19;
      v23 = v22 & v19;
      if (a1 >= v34)
      {
        if (v23 >= v34 && a1 >= v23)
        {
LABEL_15:
          v26 = v17 * a1;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v26 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v27 = *(a2 + 56);
          result = (v27 + v26);
          if (v26 < v18 || result >= v27 + v18 + v17)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v15 = v20;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v28 = v26 == v18;
            v15 = v20;
            v14 = v19;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v34 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v20;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v9 = v35;
    }

    while (((*(v35 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10007B814(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000A2508();
  v27 = *(v8 - 8);
  __chkstk_darwin(*(v27 + 64));
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_100079C54(a2);
  v14 = *(v11 + 16);
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v11 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_10007C1FC();
      goto LABEL_9;
    }

    sub_10007A0FC(v16, a3 & 1);
    v19 = *v4;
    v20 = sub_100079C54(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      v13 = v20;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1000A3F78();
    __break(1u);
    return result;
  }

LABEL_9:
  v22 = *v4;
  if (v17)
  {
    v23 = *(v27 + 40);
    v24 = v22[7] + *(v27 + 72) * v13;

    return v23(v24, a1, v8);
  }

  else
  {
    (*(v27 + 16))(v10, a2, v8);
    return sub_10007C020(v13, v10, a1, v22);
  }
}

void sub_10007B9F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000A2508();
  v9 = *(v8 - 8);
  __chkstk_darwin(*(v9 + 64));
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100079C54(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10007C750();
      goto LABEL_7;
    }

    sub_10007A930(v17, a3 & 1);
    v23 = *v4;
    v24 = sub_100079C54(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_10007C0FC(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1000A3F78();
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

uint64_t sub_10007BBC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100079BDC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10007AD0C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100079BDC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1000A3F78();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10007C9C4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_10007BD3C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100079BDC(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_10007AFB0(v16, a3 & 1);
      v20 = *v5;
      result = sub_100079BDC(a1, a2);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1000A3F78();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10007CB30();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a4;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a1;
  v23[1] = a2;
  *(v22[7] + 8 * result) = a4;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_10007BE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100079BDC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10007B254(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_100079BDC(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1000A3F78();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10007CC98();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_10007C020(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000A2508();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_10007C0FC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000A2508();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_10007C1B4(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

char *sub_10007C1FC()
{
  v1 = v0;
  v33 = sub_1000A2508();
  v37 = *(v33 - 8);
  __chkstk_darwin(*(v37 + 64));
  v35 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v34 = &v29 - v3;
  sub_10000275C(&qword_1000C92E8, &qword_1000AC938);
  v4 = *v0;
  v5 = sub_1000A3EE8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v36 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v38 = (v14 - 1) & v14;
LABEL_14:
        v19 = v37;
        v20 = *(v37 + 72) * (v16 | (v10 << 6));
        v21 = *(v37 + 16);
        v23 = v33;
        v22 = v34;
        v21(v34, *(v4 + 48) + v20, v33);
        v24 = v35;
        v21(v35, *(v4 + 56) + v20, v23);
        v25 = v4;
        v26 = v36;
        v27 = *(v19 + 32);
        v27(*(v36 + 48) + v20, v22, v23);
        v28 = *(v26 + 56);
        v4 = v25;
        result = (v27)(v28 + v20, v24, v23);
        v14 = v38;
      }

      while (v38);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v36;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_10007C4C4()
{
  v1 = v0;
  v35 = sub_1000A2508();
  v37 = *(v35 - 8);
  __chkstk_darwin(*(v37 + 64));
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000275C(&qword_1000C9330, &qword_1000AC9D8);
  v3 = *v0;
  v4 = sub_1000A3EE8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_10007C750()
{
  v1 = v0;
  v31 = sub_1000A2508();
  v33 = *(v31 - 8);
  __chkstk_darwin(*(v33 + 64));
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000275C(&unk_1000C9390, &unk_1000ACA30);
  v3 = *v0;
  v4 = sub_1000A3EE8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_10007C9C4()
{
  v1 = v0;
  sub_10000275C(&qword_1000C93A8, &unk_1000ACA40);
  v2 = *v0;
  v3 = sub_1000A3EE8();
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

        result = v20;
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

void *sub_10007CB30()
{
  v1 = v0;
  sub_10000275C(&qword_1000C93A0, &unk_1000AC520);
  v2 = *v0;
  v3 = sub_1000A3EE8();
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

void *sub_10007CC98()
{
  v1 = v0;
  sub_10000275C(&unk_1000C9350, &qword_1000ACA00);
  v2 = *v0;
  v3 = sub_1000A3EE8();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

id sub_10007CE10()
{
  v0 = objc_opt_self();
  v1 = sub_1000A3A78();
  v2 = [v0 authorizationStatusForBundlePath:v1];

  if ((v2 - 1) < 2)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v8 = sub_1000A3538();
    sub_100001E38(v8, qword_1000C96B8);
    v4 = sub_1000A3518();
    v5 = sub_1000A3CC8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "[EKSHomeManager] Location services not authorized";
      goto LABEL_21;
    }
  }

  else if ((v2 - 3) >= 2)
  {
    if (v2)
    {
      if (qword_1000C7570 != -1)
      {
        swift_once();
      }

      v14 = sub_1000A3538();
      sub_100001E38(v14, qword_1000C96B8);
      v4 = sub_1000A3518();
      v5 = sub_1000A3CC8();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "[EKSHomeManager] Location services unknown";
        goto LABEL_21;
      }
    }

    else
    {
      if (qword_1000C7570 != -1)
      {
        swift_once();
      }

      v9 = sub_1000A3538();
      sub_100001E38(v9, qword_1000C96B8);
      v10 = sub_1000A3518();
      v11 = sub_1000A3CC8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "[EKSHomeManager] Location services not determined. Authorizing", v12, 2u);
      }

      v13 = sub_1000A3A78();
      [v0 setAuthorizationStatusByType:3 forBundlePath:v13];

      v4 = sub_1000A3A78();
      v2 = [v0 authorizationStatusForBundlePath:v4];
    }
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v3 = sub_1000A3538();
    sub_100001E38(v3, qword_1000C96B8);
    v4 = sub_1000A3518();
    v5 = sub_1000A3CC8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "[EKSHomeManager] Location services authorized";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);
    }
  }

  return v2;
}

BOOL sub_10007D188()
{
  v0 = sub_10007CE10();
  v1 = objc_opt_self();
  v2 = sub_1000A3A78();
  LODWORD(v1) = [v1 authorizationStatusForBundlePath:v2];

  v3 = v0 - 3 < 2;
  if ((v1 - 3) > 1)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v8 = sub_1000A3538();
    sub_100001E38(v8, qword_1000C96B8);
    v5 = sub_1000A3518();
    v9 = sub_1000A3CC8();
    if (!os_log_type_enabled(v5, v9))
    {
      v3 = 0;
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, v9, "[EKSHomeManager] Location services not authorized for HomeKit", v10, 2u);
    v3 = 0;
    goto LABEL_10;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  sub_100001E38(v4, qword_1000C96B8);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CA8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[EKSHomeManager] Location services authorized for HomeKit", v7, 2u);
LABEL_10:
  }

LABEL_12:

  return v3;
}

uint64_t sub_10007D378(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a2;
  v27 = a3;
  v8 = v5;
  v10 = sub_1000A3548();
  v29 = *(v10 - 8);
  __chkstk_darwin(*(v29 + 64));
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000A3568();
  v13 = *(v28 - 8);
  __chkstk_darwin(*(v13 + 64));
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v16 = sub_1000A3538();
  sub_100001E38(v16, qword_1000C96B8);
  v17 = sub_1000A3518();
  v18 = sub_1000A3CB8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v25 = v15;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, v26, v19, 2u);
    v15 = v25;
  }

  v20 = *(v8 + OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_serialQueue);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  aBlock[4] = a4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000034F0;
  aBlock[3] = a5;
  v22 = _Block_copy(aBlock);
  v23 = a1;
  sub_1000A3558();
  v30 = &_swiftEmptyArrayStorage;
  sub_10007E7E8(&qword_1000C9300, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000275C(&qword_1000C9308, &unk_1000AC940);
  sub_10007DA74(&unk_1000C9310, &qword_1000C9308, &unk_1000AC940);
  sub_1000A3E38();
  sub_1000A3D18();
  _Block_release(v22);
  (*(v29 + 8))(v12, v10);
  (*(v13 + 8))(v15, v28);
}

uint64_t sub_10007D71C(const char *a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  v8 = sub_1000A3548();
  v23 = *(v8 - 8);
  __chkstk_darwin(*(v23 + 64));
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000A3568();
  v11 = *(v22 - 8);
  __chkstk_darwin(*(v11 + 64));
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v14 = sub_1000A3538();
  sub_100001E38(v14, qword_1000C96B8);
  v15 = sub_1000A3518();
  v16 = sub_1000A3CB8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, a1, v17, 2u);
  }

  v18 = *(v7 + OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_serialQueue);
  aBlock[4] = a2;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000034F0;
  aBlock[3] = a3;
  v19 = _Block_copy(aBlock);
  sub_1000A3558();
  v24 = &_swiftEmptyArrayStorage;
  sub_10007E7E8(&qword_1000C9300, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000275C(&qword_1000C9308, &unk_1000AC940);
  sub_10007DA74(&unk_1000C9310, &qword_1000C9308, &unk_1000AC940);
  sub_1000A3E38();
  sub_1000A3D18();
  _Block_release(v19);
  (*(v23 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v22);
}

uint64_t sub_10007DA5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007DA74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100018734(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007DAC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007DB00()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000153A8;

  return sub_1000795D8();
}

uint64_t sub_10007DBAC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007DBE4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000153A8;

  return sub_100089898(a1, v5);
}

uint64_t sub_10007DC9C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014898;

  return sub_100089898(a1, v5);
}

uint64_t sub_10007DD54()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000153A8;

  return sub_100078E48();
}

uint64_t sub_10007DE00()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007DEAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000153A8;

  return sub_100077D8C(a1, v4, v5, v6);
}

uint64_t sub_10007DF60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000153A8;

  return sub_100078C3C(a1, v4, v5, v6);
}

uint64_t sub_10007E04C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000153A8;

  return sub_100077D8C(a1, v4, v5, v6);
}

uint64_t sub_10007E138(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014898;

  return sub_1000782C8(a1, v4, v5, v6);
}

uint64_t sub_10007E224()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007E264(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000153A8;

  return sub_100077D8C(a1, v4, v5, v6);
}

uint64_t sub_10007E318()
{
  v1 = sub_10000275C(&qword_1000C9338, &qword_1000AC9E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10007E3FC(uint64_t a1)
{
  v4 = *(sub_10000275C(&qword_1000C9338, &qword_1000AC9E0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000153A8;

  return sub_100075A78(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10007E534()
{
  v1 = sub_10000275C(&unk_1000C9360, &unk_1000ACA08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10007E60C(void *a1, uint64_t a2)
{
  v5 = *(sub_10000275C(&unk_1000C9360, &unk_1000ACA08) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_100076F24(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_10007E6A0()
{
  v1 = sub_10000275C(&unk_1000C9360, &unk_1000ACA08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void *sub_10007E734(uint64_t a1)
{
  v2 = *(*(sub_10000275C(&unk_1000C9360, &unk_1000ACA08) - 8) + 80);

  return sub_100077694(a1);
}

uint64_t sub_10007E7E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007E8D0()
{
  EventManager = type metadata accessor for LoadEventManager();
  v1 = *(EventManager + 48);
  v2 = *(EventManager + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC16EnergyKitService16LoadEventManager_lastFetchedGridID;
  v5 = sub_10000275C(&qword_1000C9400, &qword_1000ACAD8);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC16EnergyKitService16LoadEventManager_lastFetchedHome;
  v7 = sub_10000275C(&unk_1000C9410, qword_1000ACAE0);
  result = (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  qword_1000C9700 = v3;
  return result;
}

uint64_t sub_10007E9B8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1000A2508();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_1000A3698();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = *(*(sub_10000275C(&qword_1000C9538, &qword_1000ACB58) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v10 = sub_10000275C(&qword_1000C9400, &qword_1000ACAD8);
  v2[18] = v10;
  v11 = *(v10 - 8);
  v2[19] = v11;
  v12 = *(v11 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10007EB98, v1, 0);
}

uint64_t sub_10007EB98()
{
  v59 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC16EnergyKitService16LoadEventManager_lastFetchedGridID;
  v0[23] = OBJC_IVAR____TtC16EnergyKitService16LoadEventManager_lastFetchedGridID;
  swift_beginAccess();
  sub_100047188(v4 + v5, v3, &qword_1000C9538, &qword_1000ACB58);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[17];
    v7 = &qword_1000C9538;
    v8 = &qword_1000ACB58;
LABEL_9:
    sub_100022154(v6, v7, v8);
    v33 = v0[14];
    v32 = v0[15];
    v35 = v0[12];
    v34 = v0[13];
    v36 = v0[8];
    sub_1000A2A38();
    v0[24] = sub_1000A2A28();
    sub_1000A36A8();
    sub_1000A3648();
    v37 = *(v33 + 8);
    v0[25] = v37;
    v0[26] = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v37(v32, v34);
    v38 = *(&async function pointer to dispatch thunk of HomeEnergyManager.getGridID(token:) + 1);
    v57 = (&async function pointer to dispatch thunk of HomeEnergyManager.getGridID(token:) + async function pointer to dispatch thunk of HomeEnergyManager.getGridID(token:));
    v39 = swift_task_alloc();
    v0[27] = v39;
    *v39 = v0;
    v39[1] = sub_10007F060;
    v40 = v0[12];

    return v57(v40);
  }

  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[10];
  v14 = v0[11];
  v15 = v0[8];
  sub_100086494(v0[17], v0[22], &qword_1000C9400, &qword_1000ACAD8);
  sub_1000A36A8();
  sub_1000A3648();
  (*(v10 + 8))(v9, v11);
  LOBYTE(v15) = sub_1000A24E8();
  v16 = *(v14 + 8);
  v16(v12, v13);
  if ((v15 & 1) == 0)
  {
    v6 = v0[22];
    v7 = &qword_1000C9400;
    v8 = &qword_1000ACAD8;
    goto LABEL_9;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v17 = v0[21];
  v18 = v0[22];
  v19 = sub_1000A3538();
  sub_100001E38(v19, qword_1000C96B8);
  sub_100047188(v18, v17, &qword_1000C9400, &qword_1000ACAD8);
  v20 = sub_1000A3518();
  v21 = sub_1000A3CB8();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[21];
  if (v22)
  {
    v24 = v0[20];
    v25 = v0[18];
    v56 = v0[10];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v58 = v27;
    *v26 = 136315138;
    sub_100086494(v23, v24, &qword_1000C9400, &qword_1000ACAD8);
    v28 = (v24 + *(v25 + 48));
    v29 = *v28;
    v30 = v28[1];
    v16(v24, v56);
    v31 = sub_1000954AC(v29, v30, &v58);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "[LoadEventManager] Cached GridID is %s", v26, 0xCu);
    sub_10000F7B8(v27);
  }

  else
  {

    sub_100022154(v23, &qword_1000C9400, &qword_1000ACAD8);
  }

  v42 = v0[20];
  v43 = v0[18];
  v44 = v0[10];
  sub_100086494(v0[22], v42, &qword_1000C9400, &qword_1000ACAD8);
  v45 = (v42 + *(v43 + 48));
  v46 = *v45;
  v47 = v45[1];
  v16(v42, v44);
  v49 = v0[21];
  v48 = v0[22];
  v50 = v0[20];
  v52 = v0[16];
  v51 = v0[17];
  v53 = v0[15];
  v54 = v0[12];

  v55 = v0[1];

  return v55(v46, v47);
}

uint64_t sub_10007F060(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v5 = *(*v2 + 192);
  v6 = *(*v2 + 96);
  v7 = *(*v2 + 88);
  v8 = *(*v2 + 80);
  v9 = *(*v2 + 72);
  v11 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;

  (*(v7 + 8))(v6, v8);

  return _swift_task_switch(sub_10007F1F8, v9, 0);
}

uint64_t sub_10007F1F8()
{
  v43 = v0;
  v1 = v0[29];
  if (v1)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = sub_1000A3538();
    sub_100001E38(v2, qword_1000C96B8);

    v3 = sub_1000A3518();
    v4 = sub_1000A3CB8();

    v41 = v1;
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[28];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v42 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1000954AC(v5, v1, &v42);
      _os_log_impl(&_mh_execute_header, v3, v4, "[LoadEventManager] Retrieved GridID is %s", v6, 0xCu);
      sub_10000F7B8(v7);
    }

    v8 = v0[25];
    v38 = v0[26];
    v39 = v0[28];
    v40 = v0[23];
    v10 = v0[18];
    v9 = v0[19];
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[13];
    v14 = v0[8];
    v15 = v0[9];
    v16 = (v11 + *(v10 + 48));
    sub_1000A36A8();
    sub_1000A3648();
    v8(v12, v13);
    *v16 = v39;
    v16[1] = v41;
    (*(v9 + 56))(v11, 0, 1, v10);
    swift_beginAccess();

    sub_10008642C(v11, v15 + v40, &qword_1000C9538, &qword_1000ACB58);
    swift_endAccess();
    v17 = v0[28];
    v18 = v0[29];
    v20 = v0[21];
    v19 = v0[22];
    v21 = v0[20];
    v23 = v0[16];
    v22 = v0[17];
    v24 = v0[15];
    v25 = v0[12];

    v26 = v0[1];

    return v26(v17, v18);
  }

  else
  {
    v28 = v0[21];
    v29 = v0[22];
    v30 = v0[20];
    v31 = v0[16];
    v32 = v0[17];
    v33 = v0[15];
    v34 = v0[12];
    v35 = sub_1000A3598();
    sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v35 - 8) + 104))(v36, enum case for EnergyKitError.invalidLoadEvent(_:), v35);
    swift_willThrow();

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_10007F5D0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(sub_10000275C(&qword_1000C9530, &qword_1000ACB50) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = sub_10000275C(&unk_1000C9410, qword_1000ACAE0);
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v6 = *(v5 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10007F6F8, v1, 0);
}

uint64_t sub_10007F6F8()
{
  v41 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC16EnergyKitService16LoadEventManager_lastFetchedHome;
  v0[17] = OBJC_IVAR____TtC16EnergyKitService16LoadEventManager_lastFetchedHome;
  swift_beginAccess();
  sub_100047188(v4 + v5, v3, &qword_1000C9530, &qword_1000ACB50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[11];
    v7 = &qword_1000C9530;
    v8 = &qword_1000ACB50;
LABEL_9:
    sub_100022154(v6, v7, v8);
    if (qword_1000C7550 != -1)
    {
      swift_once();
    }

    v28 = qword_1000C95F0;
    v0[18] = qword_1000C95F0;

    return _swift_task_switch(sub_10007FB6C, v28, 0);
  }

  v9 = v0[8];
  sub_100086494(v0[11], v0[16], &unk_1000C9410, qword_1000ACAE0);
  if ((sub_1000A24E8() & 1) == 0)
  {
    v6 = v0[16];
    v7 = &unk_1000C9410;
    v8 = qword_1000ACAE0;
    goto LABEL_9;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v10 = v0[15];
  v11 = v0[16];
  v12 = sub_1000A3538();
  sub_100001E38(v12, qword_1000C96B8);
  sub_100047188(v11, v10, &unk_1000C9410, qword_1000ACAE0);
  v13 = sub_1000A3518();
  v14 = sub_1000A3CB8();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[15];
  if (v15)
  {
    v17 = v0[14];
    v18 = v0[12];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40 = v20;
    *v19 = 136315138;
    sub_100047188(v16, v17, &unk_1000C9410, qword_1000ACAE0);
    v21 = *(v17 + *(v18 + 48));
    v22 = [v21 name];

    v23 = sub_1000A3A88();
    v25 = v24;

    sub_100022154(v16, &unk_1000C9410, qword_1000ACAE0);
    v26 = sub_1000A2508();
    (*(*(v26 - 8) + 8))(v17, v26);
    v27 = sub_1000954AC(v23, v25, &v40);

    *(v19 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v13, v14, "[LoadEventManager] Cached Home is %s", v19, 0xCu);
    sub_10000F7B8(v20);
  }

  else
  {

    sub_100022154(v16, &unk_1000C9410, qword_1000ACAE0);
  }

  v29 = v0[14];
  v30 = v0[12];
  sub_100086494(v0[16], v29, &unk_1000C9410, qword_1000ACAE0);
  v31 = *(v29 + *(v30 + 48));
  v32 = sub_1000A2508();
  (*(*(v32 - 8) + 8))(v29, v32);
  v34 = v0[15];
  v33 = v0[16];
  v35 = v0[14];
  v37 = v0[10];
  v36 = v0[11];

  v38 = v0[1];

  return v38(v31);
}

uint64_t sub_10007FB6C()
{
  v1 = v0[9];
  v0[19] = *(v0[18] + 120);

  return _swift_task_switch(sub_10007FBE8, v1, 0);
}

uint64_t sub_10007FBE8()
{
  if (v0[19])
  {

    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    v0[20] = qword_1000C96F8;

    v1 = swift_task_alloc();
    v0[21] = v1;
    *v1 = v0;
    v1[1] = sub_10007FDF4;
    v2 = v0[8];

    return sub_1000716DC(v2);
  }

  else
  {
    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];
    v8 = v0[10];
    v7 = v0[11];
    v9 = sub_1000A2B18();
    sub_1000863E4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for EnergyKitError.siteUnavailable(_:), v9);
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10007FDF4(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_10007FF28, v4, 0);
}

uint64_t sub_10007FF28()
{
  v38 = v0;
  v1 = v0[22];
  if (v1)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = sub_1000A3538();
    sub_100001E38(v2, qword_1000C96B8);
    v3 = v1;
    v4 = sub_1000A3518();
    v5 = sub_1000A3CB8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v37 = v7;
      *v6 = 136315138;
      v8 = [v3 name];
      v9 = sub_1000A3A88();
      v11 = v10;

      v12 = sub_1000954AC(v9, v11, &v37);

      *(v6 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "[LoadEventManager] Retrieved Home is %s", v6, 0xCu);
      sub_10000F7B8(v7);
    }

    v13 = v0[17];
    v14 = v0[12];
    v15 = v0[13];
    v17 = v0[9];
    v16 = v0[10];
    v18 = v0[8];
    v19 = *(v14 + 48);
    v20 = sub_1000A2508();
    (*(*(v20 - 8) + 16))(v16, v18, v20);
    *(v16 + v19) = v3;
    (*(v15 + 56))(v16, 0, 1, v14);
    swift_beginAccess();
    v21 = v3;
    sub_10008642C(v16, v17 + v13, &qword_1000C9530, &qword_1000ACB50);
    swift_endAccess();
    v23 = v0[15];
    v22 = v0[16];
    v24 = v0[14];
    v26 = v0[10];
    v25 = v0[11];

    v27 = v0[1];

    return v27(v21);
  }

  else
  {
    v30 = v0[15];
    v29 = v0[16];
    v31 = v0[14];
    v33 = v0[10];
    v32 = v0[11];
    v34 = sub_1000A2B18();
    sub_1000863E4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, enum case for EnergyKitError.siteUnavailable(_:), v34);
    swift_willThrow();

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_1000802E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_10000275C(&qword_1000C92C0, &qword_1000ACB30) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_100080388, v2, 0);
}

uint64_t sub_100080388()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 48) = qword_1000C95F0;

  return _swift_task_switch(sub_100080430, v1, 0);
}

uint64_t sub_100080430()
{
  v1 = v0[4];
  v0[7] = *(v0[6] + 120);

  return _swift_task_switch(sub_1000804AC, v1, 0);
}

uint64_t sub_1000804AC()
{
  if (v0[7])
  {

    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    v0[8] = qword_1000C96F8;

    v1 = swift_task_alloc();
    v0[9] = v1;
    *v1 = v0;
    v1[1] = sub_100080688;
    v2 = v0[5];
    v3 = v0[3];

    return sub_10006CFD4(v2, v3);
  }

  else
  {
    v5 = sub_1000A2B18();
    sub_1000863E4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    v6 = v0[5];
    swift_allocError();
    (*(*(v5 - 8) + 104))(v7, enum case for EnergyKitError.invalidApplicationIdentifier(_:), v5);
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100080688()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_1000807B4, v3, 0);
}

uint64_t sub_1000807B4()
{
  v1 = v0[5];
  v2 = sub_1000A2508();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100022154(v1, &qword_1000C92C0, &qword_1000ACB30);
    v4 = sub_1000A3598();
    sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError);
    v5 = v0[5];
    swift_allocError();
    (*(*(v4 - 8) + 104))(v6, enum case for EnergyKitError.venueUnavailable(_:), v4);
    swift_willThrow();
  }

  else
  {
    (*(v3 + 32))(v0[2], v1, v2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_10008098C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(sub_1000A2498() - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = *(*(sub_10000275C(&qword_1000C9518, &qword_1000ACB38) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v9 = *(*(sub_1000A29D8() - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = sub_1000A2938();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = sub_1000A29A8();
  v6[14] = v13;
  v14 = *(v13 - 8);
  v6[15] = v14;
  v15 = *(v14 + 64) + 15;
  v6[16] = swift_task_alloc();
  v16 = sub_1000A36F8();
  v6[17] = v16;
  v17 = *(v16 - 8);
  v6[18] = v17;
  v18 = *(v17 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v19 = sub_1000A3718();
  v6[21] = v19;
  v20 = *(v19 - 8);
  v6[22] = v20;
  v21 = *(v20 + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v22 = sub_1000A29B8();
  v6[26] = v22;
  v23 = *(v22 - 8);
  v6[27] = v23;
  v24 = *(v23 + 64) + 15;
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v25 = sub_1000A2818();
  v6[30] = v25;
  v26 = *(v25 - 8);
  v6[31] = v26;
  v27 = *(v26 + 64) + 15;
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v28 = sub_1000A3988();
  v6[35] = v28;
  v29 = *(v28 - 8);
  v6[36] = v29;
  v30 = *(v29 + 64) + 15;
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v31 = sub_1000A36D8();
  v6[39] = v31;
  v32 = *(v31 - 8);
  v6[40] = v32;
  v33 = *(v32 + 64) + 15;
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v34 = sub_1000A3628();
  v6[43] = v34;
  v35 = *(v34 - 8);
  v6[44] = v35;
  v36 = *(v35 + 64) + 15;
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v37 = *(*(sub_10000275C(&qword_1000C9520, &qword_1000ACB40) - 8) + 64) + 15;
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v38 = sub_1000A2948();
  v6[52] = v38;
  v39 = *(v38 - 8);
  v6[53] = v39;
  v40 = *(v39 + 64) + 15;
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v41 = sub_1000A3638();
  v6[57] = v41;
  v42 = *(v41 - 8);
  v6[58] = v42;
  v43 = *(v42 + 64) + 15;
  v6[59] = swift_task_alloc();
  v44 = sub_1000A3698();
  v6[60] = v44;
  v45 = *(v44 - 8);
  v6[61] = v45;
  v46 = *(v45 + 64) + 15;
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  v47 = sub_1000A2978();
  v6[66] = v47;
  v48 = *(v47 - 8);
  v6[67] = v48;
  v49 = *(v48 + 64) + 15;
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v50 = sub_1000A3758();
  v6[70] = v50;
  v51 = *(v50 - 8);
  v6[71] = v51;
  v52 = *(v51 + 64) + 15;
  v6[72] = swift_task_alloc();
  v53 = sub_1000A2508();
  v6[73] = v53;
  v54 = *(v53 - 8);
  v6[74] = v54;
  v55 = *(v54 + 64) + 15;
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();

  return _swift_task_switch(sub_100081114, v5, 0);
}

uint64_t sub_100081114()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 616) = qword_1000C95F0;

  return _swift_task_switch(sub_1000811BC, v1, 0);
}

uint64_t sub_1000811BC()
{
  v1 = v0[77];
  v2 = v0[7];
  v0[78] = *(v1 + 112);
  v0[79] = *(v1 + 120);

  return _swift_task_switch(sub_100081240, v2, 0);
}

uint64_t sub_100081240()
{
  v86 = v0;
  if (v0[79])
  {
    v1 = v0[76];
    v2 = v0[74];
    v3 = v0[73];
    v4 = v0[5];
    v5 = v0[3];
    sub_1000A3738();
    LOBYTE(v5) = sub_1000A24E8();
    v6 = *(v2 + 8);
    v6(v1, v3);
    if (v5)
    {
      if (qword_1000C7570 != -1)
      {
        swift_once();
      }

      v7 = v0[79];
      v8 = v0[72];
      v9 = v0[71];
      v10 = v0[70];
      v11 = v0[3];
      v12 = sub_1000A3538();
      sub_100001E38(v12, qword_1000C96B8);
      (*(v9 + 16))(v8, v11, v10);

      v13 = sub_1000A3518();
      v14 = sub_1000A3CB8();

      if (os_log_type_enabled(v13, v14))
      {
        v81 = v0[78];
        v83 = v0[79];
        v15 = v0[76];
        v16 = v0[73];
        v17 = v0[71];
        v75 = v0[72];
        v77 = v0[70];
        v18 = swift_slowAlloc();
        v85[0] = swift_slowAlloc();
        *v18 = 136315394;
        v79 = v14;
        sub_1000A36C8();
        sub_1000863E4(&qword_1000C9340, &type metadata accessor for UUID);
        v19 = sub_1000A3F28();
        v21 = v20;
        v6(v15, v16);
        (*(v17 + 8))(v75, v77);
        v22 = sub_1000954AC(v19, v21, v85);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2080;
        *(v18 + 14) = sub_1000954AC(v81, v83, v85);
        _os_log_impl(&_mh_execute_header, v13, v79, "[LoadEventManager] Processing Load %s from %s", v18, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v45 = v0[72];
        v46 = v0[71];
        v47 = v0[70];

        (*(v46 + 8))(v45, v47);
      }

      v48 = swift_task_alloc();
      v0[80] = v48;
      *v48 = v0;
      v48[1] = sub_100081974;
      v49 = v0[7];
      v50 = v0[3];

      return sub_10007E9B8(v50);
    }

    v27 = v0[79];

    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v28 = sub_1000A3538();
    sub_100001E38(v28, qword_1000C96B8);
    v29 = sub_1000A3518();
    v30 = sub_1000A3CC8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "[LoadEventManager] Event has venueID different from submission venueID", v31, 2u);
    }

    v23 = sub_1000A3598();
    sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError);
    swift_allocError();
    v25 = v32;
    v26 = &enum case for EnergyKitError.invalidLoadEvent(_:);
  }

  else
  {
    v23 = sub_1000A2B18();
    sub_1000863E4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    v25 = v24;
    v26 = &enum case for EnergyKitError.invalidApplicationIdentifier(_:);
  }

  (*(*(v23 - 8) + 104))(v25, *v26, v23);
  swift_willThrow();
  v33 = v0[76];
  v34 = v0[75];
  v35 = v0[72];
  v36 = v0[69];
  v37 = v0[68];
  v38 = v0[65];
  v40 = v0[63];
  v39 = v0[64];
  v41 = v0[62];
  v42 = v0[59];
  v51 = v0[56];
  v52 = v0[55];
  v53 = v0[54];
  v54 = v0[51];
  v55 = v0[50];
  v56 = v0[49];
  v57 = v0[48];
  v58 = v0[47];
  v59 = v0[46];
  v60 = v0[45];
  v61 = v0[42];
  v62 = v0[41];
  v63 = v0[38];
  v64 = v0[37];
  v65 = v0[34];
  v66 = v0[33];
  v67 = v0[32];
  v68 = v0[29];
  v69 = v0[28];
  v70 = v0[25];
  v71 = v0[24];
  v72 = v0[23];
  v73 = v0[20];
  v74 = v0[19];
  v76 = v0[16];
  v78 = v0[13];
  v80 = v0[10];
  v82 = v0[9];
  v84 = v0[8];

  v43 = v0[1];

  return v43();
}

uint64_t sub_100081974(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 640);
  v7 = *v3;
  v5[81] = a1;
  v5[82] = a2;
  v5[83] = v2;

  v8 = v4[7];
  if (v2)
  {
    v9 = sub_100083288;
  }

  else
  {
    v9 = sub_100081AB0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100081AB0()
{
  v1 = v0[82];
  if (!v1)
  {
    v12 = v0[79];
    goto LABEL_5;
  }

  v2 = v0[65];
  v3 = v0[60];
  v4 = v0[61];
  v6 = v0[58];
  v5 = v0[59];
  v7 = v0[57];
  v8 = v0[3];
  sub_1000A36A8();
  sub_1000A3668();
  v9 = *(v4 + 8);
  v9(v2, v3);
  v10 = (*(v6 + 88))(v5, v7);
  if (v10 != enum case for ElectricalLoadEvent.DeviceType.other(_:))
  {
    if (v10 == enum case for ElectricalLoadEvent.DeviceType.hvac(_:))
    {
      v27 = v0[64];
      v28 = v0[60];
      v29 = v0[42];
      v30 = v0[39];
      v31 = v0[40];
      v32 = v0[3];
      sub_1000A36A8();
      sub_1000A3678();
      v9(v27, v28);
      v33 = (*(v31 + 88))(v29, v30);
      if (v33 == enum case for ElectricalLoadEvent.State.off(_:))
      {
        v317 = v9;
        v34 = &enum case for EnergyKit.LoadEvent.LoadState.off(_:);
LABEL_19:
        v53 = v0[62];
        v261 = v0[60];
        v270 = v0[81];
        v54 = v0[31];
        v55 = v0[32];
        v57 = v0[22];
        v56 = v0[23];
        v295 = v0[21];
        v58 = v0[18];
        v276 = v0[30];
        v285 = v0[19];
        v304 = v0[17];
        v59 = v0[3];
        (*(v0[53] + 104))(v0[55], *v34, v0[52]);
        sub_1000A36A8();
        v60 = sub_1000A3658();
        v317(v53, v261);
        v61 = &enum case for EnergyKit.GuidanceBehavior.following(_:);
        *v55 = v270;
        v55[1] = v1;
        if ((v60 & 1) == 0)
        {
          v61 = &enum case for EnergyKit.GuidanceBehavior.ignored(_:);
        }

        (*(v54 + 104))(v55, *v61, v276);
        sub_1000A3728();
        sub_1000A3708();
        v62 = *(v57 + 8);
        v62(v56, v295);
        v63 = (*(v58 + 88))(v285, v304);
        if (v63 == enum case for ElectricalLoadEvent.Session.State.begin(_:))
        {
          v305 = v62;
          v64 = &enum case for EnergyKit.LoadEvent.Session.State.begin(_:);
        }

        else if (v63 == enum case for ElectricalLoadEvent.Session.State.end(_:))
        {
          v305 = v62;
          v64 = &enum case for EnergyKit.LoadEvent.Session.State.end(_:);
        }

        else
        {
          if (v63 != enum case for ElectricalLoadEvent.Session.State.active(_:))
          {
            v111 = v0[79];
            v112 = v0[52];
            v113 = v0[53];
            v114 = v0[31];
            v115 = v0[32];
            v116 = v0[30];
            v117 = v0[18];
            v308 = v0[55];
            v315 = v0[19];
            v118 = v0[17];

            v119 = sub_1000A3598();
            sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError);
            swift_allocError();
            (*(*(v119 - 8) + 104))(v120, enum case for EnergyKitError.invalidLoadEvent(_:), v119);
            swift_willThrow();
            (*(v114 + 8))(v115, v116);
            (*(v113 + 8))(v308, v112);
            (*(v117 + 8))(v315, v118);
            goto LABEL_6;
          }

          v305 = v62;
          v64 = &enum case for EnergyKit.LoadEvent.Session.State.active(_:);
        }

        v247 = v64;
        v72 = v0[76];
        v262 = v0[54];
        v271 = v0[55];
        v73 = v0[53];
        v255 = v0[52];
        v74 = v0[45];
        v277 = v0[44];
        v286 = v0[43];
        v75 = v0[24];
        v76 = v0[21];
        v78 = v0[15];
        v77 = v0[16];
        v223 = v0[14];
        v227 = v0[28];
        v79 = v0[12];
        v231 = v0[11];
        v236 = v0[13];
        v241 = v0[3];
        sub_1000A3728();
        sub_1000A36E8();
        v305(v75, v76);
        (*(v78 + 104))(v77, *v247, v223);
        sub_1000A2998();
        (*(v79 + 104))(v236, enum case for EnergyKit.LoadType.hvac(_:), v231);
        (*(v73 + 16))(v262, v271, v255);
        sub_1000A36B8();
        v80 = sub_1000A35E8();
        result = (*(v277 + 8))(v74, v286);
        if ((v80 & 0x8000000000000000) == 0)
        {
          v296 = v0[54];
          v306 = v0 + 55;
          v81 = v0[32];
          v82 = v0[33];
          v278 = v81;
          v287 = v0[69];
          v84 = v0[30];
          v83 = v0[31];
          v85 = v0[27];
          v86 = v0[28];
          v242 = v0[49];
          v87 = v0[26];
          v256 = v0[48];
          v263 = v0[13];
          v88 = v0[9];
          v248 = v0[10];
          sub_1000A29E8();
          (*(v83 + 16))(v82, v81, v84);
          (*(v85 + 16))(v88, v86, v87);
          (*(v85 + 56))(v88, 0, 1, v87);
          v89 = sub_1000A2988();
          v90 = *(*(v89 - 8) + 56);
          v90(v242, 1, 1, v89);
          v90(v256, 1, 1, v89);
          sub_1000A2968();
          (*(v85 + 8))(v86, v87);
          (*(v83 + 8))(v278, v84);
LABEL_32:
          v91 = *v306;
          v182 = v0[78];
          v183 = v0[79];
          v92 = v0[76];
          v93 = v0[75];
          v94 = v0[74];
          v95 = v0[73];
          v180 = v0[68];
          v181 = v0[69];
          v96 = v0[67];
          v179 = v0[66];
          v184 = v0[72];
          v185 = v0[65];
          v186 = v0[64];
          v187 = v0[63];
          v297 = v0[62];
          v178 = v0[60];
          v188 = v0[59];
          v189 = v0[56];
          v190 = v0[55];
          v192 = v0[54];
          v194 = v0[51];
          v196 = v0[50];
          v198 = v0[49];
          v200 = v0[48];
          v202 = v0[47];
          v204 = v0[46];
          v206 = v0[45];
          v208 = v0[42];
          v210 = v0[41];
          v212 = v0[38];
          v214 = v0[37];
          v216 = v0[34];
          v218 = v0[33];
          v220 = v0[32];
          v224 = v0[29];
          v228 = v0[28];
          v232 = v0[25];
          v237 = v0[24];
          v243 = v0[23];
          v249 = v0[20];
          v257 = v0[19];
          v264 = v0[16];
          v272 = v0[13];
          v279 = v0[10];
          v288 = v0[9];
          v307 = v0[8];
          v97 = v0[6];
          v98 = v0[3];
          v99 = v0[4];
          v177 = v0[2];
          (*(v0[53] + 8))(v91, v0[52]);
          sub_1000A3748();
          v100 = *(v94 + 16);
          v100(v92, v97, v95);
          v100(v93, v99, v95);
          sub_1000A36A8();
          sub_1000A3688();
          v317(v297, v178);
          (*(v96 + 16))(v180, v181, v179);
          sub_1000A2958();
          (*(v96 + 8))(v181, v179);

          v25 = v0[1];
          goto LABEL_7;
        }

        __break(1u);
        goto LABEL_58;
      }

      if (v33 == enum case for ElectricalLoadEvent.State.on(_:))
      {
        v317 = v9;
        v34 = &enum case for EnergyKit.LoadEvent.LoadState.on(_:);
        goto LABEL_19;
      }

      v69 = v0[79];
      v66 = v0[42];
      v68 = v0[39];
      v67 = v0[40];
    }

    else
    {
      if (v10 == enum case for ElectricalLoadEvent.DeviceType.electricVehicle(_:))
      {
        v35 = v0[50];
        v36 = v0[51];
        v37 = v0[47];
        v38 = v0[44];
        v314 = v0[43];
        v317 = v9;
        v302 = v0[3];
        v39 = sub_1000A2988();
        v275 = *(v39 - 8);
        v40 = *(v275 + 56);
        v40(v36, 1, 1, v39);
        v284 = v40;
        v294 = v39;
        v40(v35, 1, 1, v39);
        sub_1000A36B8();
        v303 = sub_1000A35F8();
        LOBYTE(v35) = v41;
        v42 = *(v38 + 8);
        v42(v37, v314);
        if (v35 & 1) != 0 || (v43 = v0[46], v44 = v0[43], v45 = v0[3], sub_1000A36B8(), v46 = sub_1000A3608(), LOBYTE(v45) = v47, v42(v43, v44), (v45))
        {
          v48 = v0[79];
          v50 = v0[50];
          v49 = v0[51];

          v51 = sub_1000A3598();
          sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError);
          swift_allocError();
          (*(*(v51 - 8) + 104))(v52, enum case for EnergyKitError.invalidLoadEvent(_:), v51);
          swift_willThrow();
          sub_100022154(v50, &qword_1000C9520, &qword_1000ACB40);
          sub_100022154(v49, &qword_1000C9520, &qword_1000ACB40);
          goto LABEL_6;
        }

        v250 = v0[49];
        v101 = v0[45];
        v258 = v0[43];
        v265 = v46;
        v102 = v0[37];
        v103 = v0[38];
        v273 = v42;
        v104 = v0[35];
        v105 = v0[36];
        v106 = v0[3];
        sub_1000A36B8();
        sub_1000A3618();
        v42(v101, v258);
        (*(v105 + 104))(v102, enum case for ElectricityFlowDirection.imported(_:), v104);
        LOBYTE(v106) = sub_1000A3968();
        v107 = *(v105 + 8);
        v107(v102, v104);
        v107(v103, v104);
        v108 = *(sub_10000275C(&qword_1000C9528, &qword_1000ACB48) + 48);
        if (v106)
        {
          result = v265;
          if (v265 < 0)
          {
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          v109 = v0[49];
          sub_1000A27C8();
          result = v303;
          if (v303 < 0)
          {
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          v110 = v0 + 51;
        }

        else
        {
          result = v265;
          if (v265 < 0)
          {
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          v121 = v0[49];
          sub_1000A27C8();
          result = v303;
          if (v303 < 0)
          {
LABEL_62:
            __break(1u);
            return result;
          }

          v110 = v0 + 50;
        }

        v122 = *v110;
        v123 = v0[63];
        v266 = v0[60];
        v124 = v0[49];
        v126 = v0[40];
        v125 = v0[41];
        v309 = v0[39];
        v127 = v0[3];
        sub_1000A2738();
        sub_100022154(v122, &qword_1000C9520, &qword_1000ACB40);
        (*(v275 + 104))(v124, enum case for EnergyKit.LoadEvent.Value.energyAndPower(_:), v294);
        v284(v124, 0, 1, v294);
        sub_100086494(v124, v122, &qword_1000C9520, &qword_1000ACB40);
        sub_1000A36A8();
        sub_1000A3678();
        v9(v123, v266);
        v128 = (*(v126 + 88))(v125, v309);
        if (v128 == enum case for ElectricalLoadEvent.State.unplugged(_:))
        {
          v129 = &enum case for EnergyKit.LoadEvent.LoadState.unplugged(_:);
        }

        else
        {
          if (v128 != enum case for ElectricalLoadEvent.State.plugged(_:))
          {
            v142 = v0[79];
            v144 = v0[50];
            v143 = v0[51];
            v146 = v0[40];
            v145 = v0[41];
            v147 = v0[39];

            v148 = sub_1000A3598();
            sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError);
            swift_allocError();
            (*(*(v148 - 8) + 104))(v149, enum case for EnergyKitError.invalidLoadEvent(_:), v148);
            swift_willThrow();
            sub_100022154(v144, &qword_1000C9520, &qword_1000ACB40);
            sub_100022154(v143, &qword_1000C9520, &qword_1000ACB40);
            (*(v146 + 8))(v145, v147);
            goto LABEL_6;
          }

          v129 = &enum case for EnergyKit.LoadEvent.LoadState.plugged(_:);
        }

        v267 = v0[81];
        v130 = v0[62];
        v251 = v0[60];
        v131 = v0[34];
        v132 = v0[31];
        v133 = v0[25];
        v134 = v0[22];
        v298 = v0[21];
        v280 = v0[30];
        v289 = v0[20];
        v135 = v0[18];
        v310 = v0[17];
        v136 = v0[3];
        (*(v0[53] + 104))(v0[56], *v129, v0[52]);
        sub_1000A36A8();
        v137 = sub_1000A3658();
        v317(v130, v251);
        v138 = &enum case for EnergyKit.GuidanceBehavior.following(_:);
        *v131 = v267;
        v131[1] = v1;
        if ((v137 & 1) == 0)
        {
          v138 = &enum case for EnergyKit.GuidanceBehavior.ignored(_:);
        }

        (*(v132 + 104))(v131, *v138, v280);
        sub_1000A3728();
        sub_1000A3708();
        v139 = *(v134 + 8);
        v139(v133, v298);
        v140 = (*(v135 + 88))(v289, v310);
        if (v140 == enum case for ElectricalLoadEvent.Session.State.begin(_:))
        {
          v311 = v139;
          v141 = &enum case for EnergyKit.LoadEvent.Session.State.begin(_:);
        }

        else if (v140 == enum case for ElectricalLoadEvent.Session.State.end(_:))
        {
          v311 = v139;
          v141 = &enum case for EnergyKit.LoadEvent.Session.State.end(_:);
        }

        else
        {
          if (v140 != enum case for ElectricalLoadEvent.Session.State.active(_:))
          {
            v167 = v0[79];
            v168 = v0[53];
            v312 = v0[52];
            v316 = v0[56];
            v170 = v0[50];
            v169 = v0[51];
            v171 = v0[34];
            v173 = v0[30];
            v172 = v0[31];
            v174 = v0[18];
            v292 = v0[17];
            v300 = v0[20];

            v175 = sub_1000A3598();
            sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError);
            swift_allocError();
            (*(*(v175 - 8) + 104))(v176, enum case for EnergyKitError.invalidLoadEvent(_:), v175);
            swift_willThrow();
            (*(v172 + 8))(v171, v173);
            sub_100022154(v170, &qword_1000C9520, &qword_1000ACB40);
            sub_100022154(v169, &qword_1000C9520, &qword_1000ACB40);
            (*(v168 + 8))(v316, v312);
            (*(v174 + 8))(v300, v292);
            goto LABEL_6;
          }

          v311 = v139;
          v141 = &enum case for EnergyKit.LoadEvent.Session.State.active(_:);
        }

        v244 = v141;
        v150 = v0[76];
        v151 = v0[53];
        v268 = v0[54];
        v252 = v0[52];
        v152 = v0[45];
        v281 = v0[56];
        v290 = v0[43];
        v153 = v0[24];
        v154 = v0[21];
        v156 = v0[15];
        v155 = v0[16];
        v221 = v0[14];
        v225 = v0[29];
        v157 = v0[12];
        v229 = v0[11];
        v233 = v0[13];
        v238 = v0[3];
        sub_1000A3728();
        sub_1000A36E8();
        v311(v153, v154);
        (*(v156 + 104))(v155, *v244, v221);
        sub_1000A2998();
        (*(v157 + 104))(v233, enum case for EnergyKit.LoadType.electricVehicle(_:), v229);
        (*(v151 + 16))(v268, v281, v252);
        sub_1000A36B8();
        v158 = sub_1000A35E8();
        result = v273(v152, v290);
        if ((v158 & 0x8000000000000000) == 0)
        {
          v282 = v0[69];
          v291 = v0[54];
          v299 = v0[51];
          v306 = v0 + 56;
          v253 = v0[48];
          v259 = v0[50];
          v160 = v0[33];
          v159 = v0[34];
          v162 = v0[30];
          v161 = v0[31];
          v163 = v0[29];
          v234 = v0[49];
          v165 = v0[26];
          v164 = v0[27];
          v166 = v0[9];
          v239 = v0[10];
          v245 = v0[13];
          sub_1000A29E8();
          (*(v161 + 16))(v160, v159, v162);
          (*(v164 + 16))(v166, v163, v165);
          (*(v164 + 56))(v166, 0, 1, v165);
          sub_100047188(v299, v234, &qword_1000C9520, &qword_1000ACB40);
          sub_100047188(v259, v253, &qword_1000C9520, &qword_1000ACB40);
          sub_1000A2968();
          (*(v164 + 8))(v163, v165);
          (*(v161 + 8))(v159, v162);
          sub_100022154(v259, &qword_1000C9520, &qword_1000ACB40);
          sub_100022154(v299, &qword_1000C9520, &qword_1000ACB40);
          goto LABEL_32;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v65 = v0[79];
      v67 = v0[58];
      v66 = v0[59];
      v68 = v0[57];
    }

    v70 = sub_1000A3598();
    sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v70 - 8) + 104))(v71, enum case for EnergyKitError.invalidLoadEvent(_:), v70);
    swift_willThrow();
    (*(v67 + 8))(v66, v68);
    goto LABEL_6;
  }

  v11 = v0[79];

LABEL_5:

  v13 = sub_1000A3598();
  sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError);
  swift_allocError();
  (*(*(v13 - 8) + 104))(v14, enum case for EnergyKitError.invalidLoadEvent(_:), v13);
  swift_willThrow();
LABEL_6:
  v15 = v0[76];
  v16 = v0[75];
  v17 = v0[72];
  v18 = v0[69];
  v19 = v0[68];
  v20 = v0[65];
  v22 = v0[63];
  v21 = v0[64];
  v23 = v0[62];
  v24 = v0[59];
  v191 = v0[56];
  v193 = v0[55];
  v195 = v0[54];
  v197 = v0[51];
  v199 = v0[50];
  v201 = v0[49];
  v203 = v0[48];
  v205 = v0[47];
  v207 = v0[46];
  v209 = v0[45];
  v211 = v0[42];
  v213 = v0[41];
  v215 = v0[38];
  v217 = v0[37];
  v219 = v0[34];
  v222 = v0[33];
  v226 = v0[32];
  v230 = v0[29];
  v235 = v0[28];
  v240 = v0[25];
  v246 = v0[24];
  v254 = v0[23];
  v260 = v0[20];
  v269 = v0[19];
  v274 = v0[16];
  v283 = v0[13];
  v293 = v0[10];
  v301 = v0[9];
  v313 = v0[8];

  v25 = v0[1];
LABEL_7:

  return v25();
}

uint64_t sub_100083288()
{
  v1 = v0[79];

  v43 = v0[83];
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[72];
  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[65];
  v9 = v0[63];
  v8 = v0[64];
  v10 = v0[62];
  v11 = v0[59];
  v14 = v0[56];
  v15 = v0[55];
  v16 = v0[54];
  v17 = v0[51];
  v18 = v0[50];
  v19 = v0[49];
  v20 = v0[48];
  v21 = v0[47];
  v22 = v0[46];
  v23 = v0[45];
  v24 = v0[42];
  v25 = v0[41];
  v26 = v0[38];
  v27 = v0[37];
  v28 = v0[34];
  v29 = v0[33];
  v30 = v0[32];
  v31 = v0[29];
  v32 = v0[28];
  v33 = v0[25];
  v34 = v0[24];
  v35 = v0[23];
  v36 = v0[20];
  v37 = v0[19];
  v38 = v0[16];
  v39 = v0[13];
  v40 = v0[10];
  v41 = v0[9];
  v42 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000834F0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v3[53] = a2;
  v3[54] = v4;
  v3[52] = a1;
  v6 = sub_1000A2CF8();
  v3[55] = v6;
  v7 = *(v6 - 8);
  v3[56] = v7;
  v8 = *(v7 + 64) + 15;
  v3[57] = swift_task_alloc();
  v9 = sub_1000A2AD8();
  v3[58] = v9;
  v10 = *(v9 - 8);
  v3[59] = v10;
  v11 = *(v10 + 64) + 15;
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v12 = sub_1000A2A18();
  v3[62] = v12;
  v13 = *(v12 - 8);
  v3[63] = v13;
  v14 = *(v13 + 64) + 15;
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v15 = sub_1000A29C8();
  v3[67] = v15;
  v16 = *(v15 - 8);
  v3[68] = v16;
  v17 = *(v16 + 64) + 15;
  v3[69] = swift_task_alloc();
  v18 = *(*(sub_10000275C(&qword_1000C94F8, &qword_1000ACB10) - 8) + 64) + 15;
  v19 = swift_task_alloc();
  v3[70] = v19;
  v20 = sub_1000A2A08();
  v3[71] = v20;
  v21 = *(v20 - 8);
  v3[72] = v21;
  v22 = *(v21 + 64) + 15;
  v3[73] = swift_task_alloc();
  v23 = sub_1000A2508();
  v3[74] = v23;
  v24 = *(v23 - 8);
  v3[75] = v24;
  v25 = *(v24 + 64) + 15;
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v26 = swift_task_alloc();
  v3[78] = v26;
  *v26 = v3;
  v26[1] = sub_100083838;

  return sub_100085120(v19, v4, a2);
}

uint64_t sub_100083838()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v4 = *v1;

  v5 = *(v2 + 432);
  if (v0)
  {

    v6 = sub_100084ABC;
  }

  else
  {
    v6 = sub_100083970;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100083970()
{
  v1 = *(v0 + 560);
  v2 = sub_10000275C(&qword_1000C9500, &qword_1000ACB20);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_100022154(v1, &qword_1000C94F8, &qword_1000ACB10);
    v3 = *(v0 + 616);
    v4 = *(v0 + 608);
    v5 = *(v0 + 584);
    v6 = *(v0 + 560);
    v7 = *(v0 + 552);
    v8 = *(v0 + 528);
    v9 = *(v0 + 520);
    v10 = *(v0 + 512);
    v12 = *(v0 + 480);
    v11 = *(v0 + 488);
    v36 = *(v0 + 456);

    v13 = *(v0 + 8);

    return v13(0);
  }

  else
  {
    v15 = *(v0 + 608);
    v16 = *(v0 + 592);
    v17 = *(v0 + 584);
    v18 = *(v0 + 576);
    v19 = *(v0 + 568);
    v35 = v17;
    v37 = *(v0 + 416);
    v20 = *(v2 + 48);
    v21 = *(v2 + 64);
    v22 = *(*(v0 + 600) + 32);
    v22(*(v0 + 616), v1, v16);
    v22(v15, v1 + v20, v16);
    (*(v18 + 32))(v35, v1 + v21, v19);
    *(v0 + 392) = &_swiftEmptySetSingleton;
    v23 = *(v37 + 16);
    *(v0 + 632) = v23;
    sub_10000275C(&qword_1000C9508, &qword_1000ACB28);
    sub_1000A3C78(v23);
    if (v23)
    {
      v24 = *(v0 + 416);
      v25 = *(sub_1000A3758() - 8);
      v26 = *(v25 + 80);
      *(v0 + 100) = v26;
      v27 = (v26 + 32) & ~v26;
      *(v0 + 640) = *(v25 + 72);
      *(v0 + 188) = enum case for EnergyKit.SomeEnergyKitEvent.load(_:);
      *(v0 + 276) = enum case for SomeEvent.energyKit(_:);
      *(v0 + 648) = 0;
      v28 = swift_task_alloc();
      *(v0 + 656) = v28;
      *v28 = v0;
      v28[1] = sub_100083D38;
      v29 = *(v0 + 616);
      v30 = *(v0 + 608);
      v31 = *(v0 + 552);
      v32 = *(v0 + 424);
      v33 = *(v0 + 432);

      return sub_10008098C(v31, v24 + v27, v30, v32, v29);
    }

    else
    {
      if (qword_1000C7550 != -1)
      {
        swift_once();
      }

      v34 = qword_1000C95F0;
      *(v0 + 672) = qword_1000C95F0;

      return _swift_task_switch(sub_100084100, v34, 0);
    }
  }
}

uint64_t sub_100083D38()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v4 = *v1;
  *(*v1 + 664) = v0;

  v5 = *(v2 + 432);
  if (v0)
  {
    v6 = sub_100084C20;
  }

  else
  {
    v6 = sub_100083E64;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100083E64()
{
  v1 = *(v0 + 276);
  v2 = *(v0 + 188);
  v22 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v7 = *(v0 + 504);
  v8 = *(v0 + 512);
  v9 = *(v0 + 496);
  (*(v3 + 16))(v5);
  v10 = sub_1000A2728();
  (*(*(v10 - 8) + 104))(v5, v2, v10);
  (*(v7 + 104))(v5, v1, v9);
  (*(v7 + 16))(v8, v5, v9);
  sub_100095A54(v6, v8);
  v11 = *(v7 + 8);
  v11(v6, v9);
  v11(v5, v9);
  (*(v3 + 8))(v22, v4);
  v12 = *(v0 + 648) + 1;
  if (v12 == *(v0 + 632))
  {
    if (qword_1000C7550 != -1)
    {
      swift_once();
    }

    v13 = qword_1000C95F0;
    *(v0 + 672) = qword_1000C95F0;

    return _swift_task_switch(sub_100084100, v13, 0);
  }

  else
  {
    *(v0 + 648) = v12;
    v14 = *(v0 + 416) + ((*(v0 + 100) + 32) & ~*(v0 + 100)) + *(v0 + 640) * v12;
    v15 = swift_task_alloc();
    *(v0 + 656) = v15;
    *v15 = v0;
    v15[1] = sub_100083D38;
    v16 = *(v0 + 616);
    v17 = *(v0 + 608);
    v18 = *(v0 + 552);
    v19 = *(v0 + 424);
    v20 = *(v0 + 432);

    return sub_10008098C(v18, v14, v17, v19, v16);
  }
}

uint64_t sub_100084100()
{
  v1 = v0[84];
  v2 = v0[54];
  v0[85] = *(v1 + 112);
  v0[86] = *(v1 + 120);

  return _swift_task_switch(sub_100084184, v2, 0);
}

uint64_t sub_100084184()
{
  v62 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 392);
  *(v0 + 696) = v2;
  v3 = *(v2 + 16);
  *(v0 + 104) = v1;
  v4 = *(v0 + 688);
  *(v0 + 192) = v1;
  LOBYTE(v61) = 0;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 200) = v4;
  *(v0 + 224) = 2;
  *(v0 + 232) = 0;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  *(v0 + 264) = v3;
  *(v0 + 272) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 112) = v4;
  *(v0 + 136) = 2;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 176) = v3;
  *(v0 + 184) = 0;
  sub_100086114(v0 + 192, v0 + 280);
  sub_100086170(v0 + 104);
  type metadata accessor for EKSAnalyticsEvent();
  v5 = swift_allocObject();
  *(v5 + 24) = xmmword_1000ACA50;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 104) = 0;
  *(v5 + 16) = 3;
  *(v0 + 96) = 0;
  *(v0 + 48) = *(v5 + 56);
  *(v0 + 64) = *(v5 + 72);
  *(v0 + 80) = *(v5 + 88);
  *(v0 + 16) = *(v5 + 24);
  *(v0 + 32) = *(v5 + 40);
  v6 = *(v0 + 192);
  *(v5 + 40) = *(v0 + 208);
  *(v5 + 24) = v6;
  v7 = *(v0 + 224);
  v8 = *(v0 + 240);
  v9 = *(v0 + 256);
  *(v5 + 104) = *(v0 + 272);
  *(v5 + 88) = v9;
  *(v5 + 72) = v8;
  *(v5 + 56) = v7;
  sub_100022154(v0 + 16, &qword_1000C8830, &unk_1000AC300);
  sub_10004151C(v5);

  if (!*(v2 + 16))
  {
    goto LABEL_21;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v10 = sub_1000A3538();
  sub_100001E38(v10, qword_1000C96B8);

  v11 = sub_1000A3518();
  v12 = sub_1000A3CA8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(v2 + 16);

    _os_log_impl(&_mh_execute_header, v11, v12, "[LoadEventManager] Uploading %ld Load Events", v13, 0xCu);
  }

  else
  {
  }

  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 480);
  v14 = *(v0 + 488);
  v16 = *(v0 + 464);
  v17 = *(v0 + 472);
  v18 = sub_100001E38(v16, qword_1000C95F8);
  swift_beginAccess();
  (*(v17 + 16))(v14, v18, v16);
  sub_1000A2A58();
  sub_1000863E4(&qword_1000C9510, &type metadata accessor for MockEnergyKitOptions);
  sub_1000A3B28();
  sub_1000A3B28();
  v19 = *(v17 + 8);
  v19(v15, v16);
  v19(v14, v16);
  if (*(v0 + 400) == *(v0 + 408) && (sub_1000A2D18() & 1) != 0)
  {
    v20 = sub_1000A3518();
    v21 = sub_1000A3CC8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "[LoadEventManager] Mocking enabled. Skip submission";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v20, v21, v23, v22, 2u);

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v25 = *(v0 + 448);
  v24 = *(v0 + 456);
  v26 = *(v0 + 440);
  (*(v25 + 104))(v24, enum case for EnergyKitFeatures.eventHistory2025(_:), v26);
  v27 = sub_1000A2CE8();
  (*(v25 + 8))(v24, v26);
  if ((v27 & 1) == 0)
  {
LABEL_17:
    v20 = sub_1000A3518();
    v21 = sub_1000A3CC8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "[LoadEventManager] Feature Disabled. Skip submission";
      goto LABEL_19;
    }

LABEL_20:

LABEL_21:
    v32 = *(v0 + 632) - *(*(v0 + 696) + 16);
    if (v32 < 1)
    {
    }

    else
    {
      v33 = qword_1000C7570;

      if (v33 != -1)
      {
        swift_once();
      }

      v34 = sub_1000A3538();
      sub_100001E38(v34, qword_1000C96B8);
      v35 = sub_1000A3518();
      v36 = sub_1000A3CC8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v35, v36, "[LoadEventManager] Failed to process %ld events", v37, 0xCu);
      }
    }

    v38 = *(v0 + 696);
    v39 = *(v0 + 616);
    v40 = *(v0 + 608);
    v41 = *(v0 + 600);
    v42 = *(v0 + 592);
    (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
    v43 = *(v41 + 8);
    v43(v40, v42);
    v43(v39, v42);

    v60 = *(v38 + 16);

    v44 = *(v0 + 616);
    v45 = *(v0 + 608);
    v46 = *(v0 + 584);
    v47 = *(v0 + 560);
    v48 = *(v0 + 552);
    v49 = *(v0 + 528);
    v50 = *(v0 + 520);
    v51 = *(v0 + 512);
    v52 = *(v0 + 480);
    v53 = *(v0 + 488);
    v59 = *(v0 + 456);

    v54 = *(v0 + 8);

    return v54(v60);
  }

  v28 = *(v2 + 16);
  if (v28)
  {
    v29 = *(v0 + 504);
    v30 = sub_100065850(*(v2 + 16), 0);
    v31 = sub_100065AF4(&v61, &v30[(*(v29 + 80) + 32) & ~*(v29 + 80)], v28, v2);

    sub_100067318();
    if (v31 != v28)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    v30 = &_swiftEmptyArrayStorage;
  }

  *(v0 + 704) = v30;
  v56 = async function pointer to static EventManager.writeEvents(_:scope:)[1];
  v57 = swift_task_alloc();
  *(v0 + 712) = v57;
  *v57 = v0;
  v57[1] = sub_100084960;
  v58 = *(v0 + 584);

  return static EventManager.writeEvents(_:scope:)(v30, v58);
}

uint64_t sub_100084960()
{
  v2 = *v1;
  v3 = *(*v1 + 712);
  v4 = *v1;

  v5 = *(v2 + 704);
  v6 = *(v2 + 432);
  if (v0)
  {

    v7 = sub_100084ECC;
  }

  else
  {

    v7 = sub_1000864FC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100084ABC()
{
  v1 = v0[70];
  v2 = sub_10000275C(&qword_1000C9500, &qword_1000ACB20);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_100022154(v0[70], &qword_1000C94F8, &qword_1000ACB10);
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[73];
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[66];
  v9 = v0[65];
  v10 = v0[64];
  v12 = v0[60];
  v11 = v0[61];
  v15 = v0[57];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_100084C20()
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 664);
  v2 = sub_1000A3538();
  sub_100001E38(v2, qword_1000C96B8);
  swift_errorRetain();
  v3 = sub_1000A3518();
  v4 = sub_1000A3CC8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 664);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[LoadEventManager] Failed to process event %@", v7, 0xCu);
    sub_100022154(v8, &unk_1000C7740, &qword_1000AB610);
  }

  else
  {
    v10 = *(v0 + 664);
  }

  v11 = *(v0 + 648) + 1;
  if (v11 == *(v0 + 632))
  {
    if (qword_1000C7550 != -1)
    {
      swift_once();
    }

    v12 = qword_1000C95F0;
    *(v0 + 672) = qword_1000C95F0;

    return _swift_task_switch(sub_100084100, v12, 0);
  }

  else
  {
    *(v0 + 648) = v11;
    v13 = *(v0 + 416) + ((*(v0 + 100) + 32) & ~*(v0 + 100)) + *(v0 + 640) * v11;
    v14 = swift_task_alloc();
    *(v0 + 656) = v14;
    *v14 = v0;
    v14[1] = sub_100083D38;
    v15 = *(v0 + 616);
    v16 = *(v0 + 608);
    v17 = *(v0 + 552);
    v18 = *(v0 + 424);
    v19 = *(v0 + 432);

    return sub_10008098C(v17, v13, v16, v18, v15);
  }
}

uint64_t sub_100084ECC()
{
  v1 = v0[79] - *(v0[87] + 16);
  if (v1 < 1)
  {
  }

  else
  {
    v2 = qword_1000C7570;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = sub_1000A3538();
    sub_100001E38(v3, qword_1000C96B8);
    v4 = sub_1000A3518();
    v5 = sub_1000A3CC8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v1;
      _os_log_impl(&_mh_execute_header, v4, v5, "[LoadEventManager] Failed to process %ld events", v6, 0xCu);
    }
  }

  v7 = v0[87];
  v8 = v0[77];
  v9 = v0[76];
  v10 = v0[75];
  v11 = v0[74];
  (*(v0[72] + 8))(v0[73], v0[71]);
  v12 = *(v10 + 8);
  v12(v9, v11);
  v12(v8, v11);

  v26 = *(v7 + 16);

  v13 = v0[77];
  v14 = v0[76];
  v15 = v0[73];
  v16 = v0[70];
  v17 = v0[69];
  v18 = v0[66];
  v19 = v0[65];
  v20 = v0[64];
  v21 = v0[60];
  v22 = v0[61];
  v25 = v0[57];

  v23 = v0[1];

  return v23(v26);
}

uint64_t sub_100085120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a2;
  v5 = sub_1000A2A08();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = *(*(sub_10000275C(&qword_1000C92C0, &qword_1000ACB30) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v3[8] = v9;
  v10 = sub_1000A2508();
  v3[9] = v10;
  v11 = *(v10 - 8);
  v3[10] = v11;
  v12 = *(v11 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v13 = swift_task_alloc();
  v3[13] = v13;
  *v13 = v3;
  v13[1] = sub_1000852CC;

  return sub_1000802E8(v9, a3);
}

uint64_t sub_1000852CC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  v5 = *(v2 + 32);
  if (v0)
  {

    v6 = sub_100085404;
  }

  else
  {
    v6 = sub_100085620;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100085404()
{
  v1 = v0[8];
  (*(v0[10] + 56))(v1, 1, 1, v0[9]);
  sub_100022154(v1, &qword_1000C92C0, &qword_1000ACB30);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v2 = sub_1000A3538();
  sub_100001E38(v2, qword_1000C96B8);
  v3 = sub_1000A3518();
  v4 = sub_1000A3CC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[LoadEventManager] Site not found for venue", v5, 2u);
  }

  v6 = sub_1000A3598();
  sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, enum case for EnergyKitError.venueUnavailable(_:), v6);
  swift_willThrow();
  v9 = v0[11];
  v8 = v0[12];
  v11 = v0[7];
  v10 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100085620()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  (*(v3 + 56))(v4, 0, 1, v2);
  v5 = *(v3 + 32);
  v0[14] = v5;
  v0[15] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v5(v1, v4, v2);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_100085718;
  v7 = v0[12];
  v8 = v0[4];

  return sub_10007F5D0(v7);
}

uint64_t sub_100085718(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  v7 = *(v3 + 32);
  if (v1)
  {

    v8 = sub_100085858;
  }

  else
  {
    v8 = sub_100085A60;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100085858()
{
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
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[LoadEventManager] Home not found for site", v4, 2u);
  }

  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];

  v8 = sub_1000A3598();
  sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError);
  swift_allocError();
  (*(*(v8 - 8) + 104))(v9, enum case for EnergyKitError.venueUnavailable(_:), v8);
  swift_willThrow();
  (*(v7 + 8))(v5, v6);
  v11 = v0[11];
  v10 = v0[12];
  v13 = v0[7];
  v12 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100085A60()
{
  v1 = *(v0 + 136);
  v2 = [v1 restrictedGuests];
  sub_100086340();
  v3 = sub_1000A3B68();

  v4 = [v1 currentUser];
  *(v0 + 16) = v4;
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 16;
  v6 = sub_1000861C4(sub_10008638C, v5, v3);

  if ((v6 & 1) == 0)
  {
    v22 = *(v0 + 136);
    v23 = *(v0 + 88);
    v24 = [v22 uniqueIdentifier];
    sub_1000A24F8();

    v25 = [v22 currentUser];
    v26 = [v22 owner];
    v27 = v26;
    if (v25)
    {
      v28 = *(v0 + 136);
      if (v26)
      {
        v29 = sub_1000A3DA8();

        if (v29)
        {
          goto LABEL_12;
        }

LABEL_15:
        v30 = &enum case for EventWriterScope.shared(_:);
        goto LABEL_16;
      }

      v27 = v25;
    }

    else
    {

      if (!v27)
      {
LABEL_12:
        v30 = &enum case for EventWriterScope.owned(_:);
LABEL_16:
        v32 = *(v0 + 112);
        v31 = *(v0 + 120);
        v33 = *(v0 + 88);
        v44 = *(v0 + 96);
        v34 = *(v0 + 72);
        v45 = *(v0 + 64);
        v35 = *(v0 + 48);
        v43 = *(v0 + 56);
        v36 = *(v0 + 40);
        v37 = *(v0 + 24);
        v38 = *v30;
        (*(v35 + 104))();
        v39 = sub_10000275C(&qword_1000C9500, &qword_1000ACB20);
        v40 = *(v39 + 48);
        v41 = *(v39 + 64);
        v32(v37, v33, v34);
        v32(v37 + v40, v44, v34);
        (*(v35 + 32))(v37 + v41, v43, v36);
        (*(*(v39 - 8) + 56))(v37, 0, 1, v39);

        v21 = *(v0 + 8);
        goto LABEL_17;
      }
    }

    goto LABEL_15;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v7 = sub_1000A3538();
  sub_100001E38(v7, qword_1000C96B8);
  v8 = sub_1000A3518();
  v9 = sub_1000A3CC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "[LoadEventManager] User is restricted guest", v10, 2u);
  }

  v11 = *(v0 + 136);
  v12 = *(v0 + 96);
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);

  v15 = sub_1000A3598();
  sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError);
  swift_allocError();
  (*(*(v15 - 8) + 104))(v16, enum case for EnergyKitError.invalidLoadEvent(_:), v15);
  swift_willThrow();

  (*(v14 + 8))(v12, v13);
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  v20 = *(v0 + 56);
  v19 = *(v0 + 64);

  v21 = *(v0 + 8);
LABEL_17:

  return v21();
}

uint64_t sub_100085EF8()
{
  sub_100022154(v0 + OBJC_IVAR____TtC16EnergyKitService16LoadEventManager_lastFetchedGridID, &qword_1000C9538, &qword_1000ACB58);
  sub_100022154(v0 + OBJC_IVAR____TtC16EnergyKitService16LoadEventManager_lastFetchedHome, &qword_1000C9530, &qword_1000ACB50);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for LoadEventManager()
{
  result = qword_1000C93E8;
  if (!qword_1000C93E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100085FBC()
{
  sub_1000860C0(319, &qword_1000C93F8, &qword_1000C9400, &qword_1000ACAD8);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000860C0(319, &qword_1000C9408, &unk_1000C9410, qword_1000ACAE0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000860C0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100018734(a3, a4);
    v5 = sub_1000A3DD8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000861C4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_1000A3EA8();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1000A3EC8();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1000862EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100086340();
  return sub_1000A3DA8() & 1;
}

unint64_t sub_100086340()
{
  result = qword_1000C9378;
  if (!qword_1000C9378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C9378);
  }

  return result;
}

uint64_t sub_10008638C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_100086340();
  return sub_1000A3DA8() & 1;
}

uint64_t sub_1000863E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008642C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000275C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100086494(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000275C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100086500(uint64_t a1, void *a2)
{
  v3 = sub_100013C5C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_1000866F4(__int16 a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = sub_1000A3A88();
  v9 = v8;
  v4[4] = v8;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[5] = v11;
  *v11 = v4;
  v11[1] = sub_1000867E8;

  return sub_100089F78(a1, v7, v9);
}

uint64_t sub_1000867E8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_1000A2348();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1000869A4(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v24 = sub_10000275C(&qword_1000C9560, &qword_1000ACC48);
  __chkstk_darwin(*(*(v24 - 8) + 64));
  v25 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = sub_1000A2BA8();
  v8 = *(v7 - 8);
  __chkstk_darwin(*(v8 + 64));
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = *(v8 + 16);
  v23 = v2;
  v13(v10, v2, v7);
  v21 = sub_100093FD4(&qword_1000C9568, &type metadata accessor for GuidanceOptions);
  sub_1000A3E08();
  v14 = v24;
  sub_100093FD4(&qword_1000C9570, &type metadata accessor for GuidanceOptions);
  v22 = a2;
  v15 = sub_1000A3A68();
  v16 = *(v14 + 48);
  *v6 = (v15 & 1) == 0;
  if (v15)
  {
    (*(v8 + 32))(&v6[v16], v12, v7);
  }

  else
  {
    (*(v8 + 8))(v12, v7);
    v17 = v22;
    v13(&v6[v16], v22, v7);
    v13(v10, v17, v7);
    sub_1000A3E28();
  }

  v18 = v25;
  sub_10009401C(v6, v25);
  v19 = *v18;
  (*(v8 + 32))(v26, &v18[*(v14 + 48)], v7);
  return v19;
}

uint64_t sub_100086E3C(int a1, __int16 a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = sub_1000A3A88();
  v10 = v9;
  v5[4] = v9;
  v11 = sub_1000A3A88();
  v13 = v12;
  v5[5] = v12;
  v14 = a5;
  v15 = swift_task_alloc();
  v5[6] = v15;
  *v15 = v5;
  v15[1] = sub_100086F58;

  return sub_10008C340(v8, v10, a2, v11, v13);
}

uint64_t sub_100086F58(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 24);
  if (v3)
  {
    v12 = sub_1000A2348();

    (v11)[2](v11, 0, v12);

    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 24), a1, 0);
    _Block_release(v11);
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_1000872C0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1000A3A88();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_1000873A8;

  return sub_100092AA4(v5, v7);
}

uint64_t sub_1000873A8(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v5)[2](v5, a1);
  _Block_release(v5);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_100087510(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = sub_1000A2508();
  v2[38] = v3;
  v4 = *(v3 - 8);
  v2[39] = v4;
  v5 = *(v4 + 64) + 15;
  v2[40] = swift_task_alloc();

  return _swift_task_switch(sub_1000875D0, 0, 0);
}

uint64_t sub_1000875D0()
{
  sub_1000A3AA8();
  *(v0 + 328) = os_transaction_create();

  sub_10003690C();
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 336) = qword_1000C95F0;

  return _swift_task_switch(sub_1000876D4, v1, 0);
}

uint64_t sub_1000876D4()
{
  *(v0 + 408) = *(*(v0 + 336) + 144);

  return _swift_task_switch(sub_100087744, 0, 0);
}

uint64_t sub_100087744()
{
  if (*(v0 + 408))
  {
    v1 = swift_task_alloc();
    *(v0 + 344) = v1;
    *v1 = v0;
    v1[1] = sub_1000879A0;

    return sub_100047590(0);
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v3 = sub_1000A3538();
    sub_100001E38(v3, qword_1000C96B8);
    v4 = sub_1000A3518();
    v5 = sub_1000A3CC8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "[SiteOperations] Unauthorized", v6, 2u);
    }

    v7 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for EnergyKitError.siteUnavailable(_:), v7);
    v10 = *(v0 + 320);
    v9 = *(v0 + 328);
    swift_willThrow();
    swift_unknownObjectRelease();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1000879A0(char a1)
{
  v2 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 409) = a1;

  return _swift_task_switch(sub_100087AA0, 0, 0);
}

uint64_t sub_100087AA0()
{
  if (*(v0 + 409) == 1)
  {
    v1 = *(v0 + 288);
    v2 = *(v0 + 296);
    sub_1000A2B08();
    sub_1000A24C8();
    sub_1000A2AF8();

    v3 = sub_1000A3A78();
    *(v0 + 352) = v3;

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 280;
    *(v0 + 88) = sub_100087C7C;
    v4 = swift_continuation_init();
    *(v0 + 264) = sub_10000275C(&qword_1000C7868, &qword_1000AB7E8);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_100086500;
    *(v0 + 232) = &unk_1000C0458;
    *(v0 + 240) = v4;
    [v2 siteFor:v3 completionHandler:v0 + 208];

    return _swift_continuation_await(v0 + 80);
  }

  else
  {
    v5 = qword_1000C95F0;
    *(v0 + 360) = qword_1000C95F0;

    return _swift_task_switch(sub_100087ED8, v5, 0);
  }
}

uint64_t sub_100087C7C()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100087D5C, 0, 0);
}

uint64_t sub_100087D5C()
{
  v1 = *(v0 + 280);

  if (v1)
  {
    v2 = *(v0 + 328);
    swift_unknownObjectRelease();
    v3 = *(v0 + 320);

    v4 = *(v0 + 8);

    return v4(v1);
  }

  else
  {
    v6 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for EnergyKitError.siteUnavailable(_:), v6);
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    swift_willThrow();
    swift_unknownObjectRelease();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100087ED8()
{
  *(v0 + 368) = *(*(v0 + 360) + 120);

  return _swift_task_switch(sub_100087F50, 0, 0);
}

uint64_t sub_100087F50()
{
  if (v0[46])
  {

    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    v0[47] = qword_1000C96F8;

    v1 = swift_task_alloc();
    v0[48] = v1;
    *v1 = v0;
    v1[1] = sub_100088134;
    v2 = v0[40];
    v3 = v0[36];

    return sub_10006E1D4(v2, v3);
  }

  else
  {
    v5 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for EnergyKitError.invalidApplicationIdentifier(_:), v5);
    v8 = v0[40];
    v7 = v0[41];
    swift_willThrow();
    swift_unknownObjectRelease();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100088134()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v7 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = sub_100088638;
  }

  else
  {
    v5 = *(v2 + 376);

    v4 = sub_100088250;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100088250()
{
  v1 = v0[40];
  v2 = v0[37];
  sub_1000A24C8();
  v3 = sub_1000A3A78();
  v0[50] = v3;

  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_100088398;
  v4 = swift_continuation_init();
  v0[25] = sub_10000275C(&qword_1000C7868, &qword_1000AB7E8);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100086500;
  v0[21] = &unk_1000C0430;
  v0[22] = v4;
  [v2 siteFor:v3 completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100088398()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100088478, 0, 0);
}

uint64_t sub_100088478()
{
  v1 = v0[34];
  v2 = v0[50];
  if (v1)
  {
    v3 = v0[41];
    (*(v0[39] + 8))(v0[40], v0[38]);
    swift_unknownObjectRelease();

    v4 = v0[40];

    v5 = v0[1];

    return v5(v1);
  }

  else
  {
    v8 = v0[39];
    v7 = v0[40];
    v9 = v0[38];

    v10 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for EnergyKitError.siteUnavailable(_:), v10);
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
    v12 = v0[40];
    v13 = v0[41];
    swift_willThrow();
    swift_unknownObjectRelease();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100088638()
{
  v1 = v0[47];

  v2 = v0[49];
  v4 = v0[40];
  v3 = v0[41];
  swift_willThrow();
  swift_unknownObjectRelease();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100088850(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_1000A2508();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v3[6] = _Block_copy(a2);
  sub_1000A24F8();
  a3;
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_10008897C;

  return sub_100087510(v9);
}

uint64_t sub_10008897C(void *a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 56);
  v8 = *v2;

  v9 = v5[6];
  v10 = v5[2];
  (*(v5[4] + 8))(v5[5], v5[3]);

  if (v3)
  {
    v11 = sub_1000A2348();

    (v9)[2](v9, 0, v11);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v12 = v6[5];

  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_100088D04(void *a1, void *aBlock, void *a3, double a4)
{
  v4[2] = a1;
  v4[3] = a3;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a3;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_100088DE8;

  return sub_10009308C(v8, a4);
}

uint64_t sub_100088DE8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v8 = *v0;

  isa = sub_1000A3A08().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1000890E8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100089190;

  return sub_100093840();
}

uint64_t sub_100089190()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v6 = *v0;

  isa = sub_1000A3B48().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000892E0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100089320()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000153A8;

  return sub_1000890E8(v2);
}

uint64_t sub_1000893CC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000153A8;

  return v7();
}

uint64_t sub_1000894B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100014898;

  return v8();
}

uint64_t sub_10008959C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v24 - v10;
  sub_100047188(a3, v24 - v10, &qword_1000C8240, &qword_1000AB688);
  v12 = sub_1000A3BE8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100022154(v11, &qword_1000C8240, &qword_1000AB688);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000A3BD8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_1000A3BA8();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_1000A3AA8() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_100022154(a3, &qword_1000C8240, &qword_1000AB688);

    return v22;
  }

LABEL_8:
  sub_100022154(a3, &qword_1000C8240, &qword_1000AB688);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100089898(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100089990;

  return v7(a1);
}

uint64_t sub_100089990()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100089A88()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100089AC0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000153A8;

  return sub_100089898(a1, v5);
}

uint64_t sub_100089B78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014898;

  return sub_100089898(a1, v5);
}

unint64_t sub_100089C30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000275C(&unk_1000C9350, &qword_1000ACA00);
    v3 = sub_1000A3F08();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100079BDC(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100089D44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000275C(&qword_1000C9578, &qword_1000ACC78);
    v3 = sub_1000A3F08();
    v4 = a1 + 32;

    while (1)
    {
      sub_100047188(v4, &v13, &qword_1000C8558, &qword_1000AC0A8);
      v5 = v13;
      v6 = v14;
      result = sub_100079BDC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000413C4(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100089E74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000275C(&qword_1000C93A0, &unk_1000AC520);
    v3 = sub_1000A3F08();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100079BDC(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100089F78(__int16 a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 416) = a2;
  *(v3 + 424) = a3;
  *(v3 + 102) = a1;
  v4 = sub_1000A2BA8();
  *(v3 + 432) = v4;
  v5 = *(v4 - 8);
  *(v3 + 440) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 448) = swift_task_alloc();
  v7 = sub_1000A2C38();
  *(v3 + 456) = v7;
  v8 = *(v7 - 8);
  *(v3 + 464) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 472) = swift_task_alloc();
  *(v3 + 480) = swift_task_alloc();
  v10 = *(*(sub_10000275C(&qword_1000C92C0, &qword_1000ACB30) - 8) + 64) + 15;
  *(v3 + 488) = swift_task_alloc();
  v11 = sub_1000A2508();
  *(v3 + 496) = v11;
  v12 = *(v11 - 8);
  *(v3 + 504) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = swift_task_alloc();
  *(v3 + 528) = swift_task_alloc();
  v14 = sub_1000A2688();
  *(v3 + 536) = v14;
  v15 = *(v14 - 8);
  *(v3 + 544) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 552) = swift_task_alloc();
  *(v3 + 560) = swift_task_alloc();
  v17 = sub_1000A2AD8();
  *(v3 + 568) = v17;
  v18 = *(v17 - 8);
  *(v3 + 576) = v18;
  v19 = *(v18 + 64) + 15;
  *(v3 + 584) = swift_task_alloc();
  *(v3 + 592) = swift_task_alloc();
  v20 = sub_1000A25F8();
  *(v3 + 600) = v20;
  v21 = *(v20 - 8);
  *(v3 + 608) = v21;
  v22 = *(v21 + 64) + 15;
  *(v3 + 616) = swift_task_alloc();
  v23 = *(*(sub_10000275C(&qword_1000C9540, &qword_1000ACC40) - 8) + 64) + 15;
  *(v3 + 624) = swift_task_alloc();
  v24 = sub_1000A2B48();
  *(v3 + 632) = v24;
  v25 = *(v24 - 8);
  *(v3 + 640) = v25;
  v26 = *(v25 + 64) + 15;
  *(v3 + 648) = swift_task_alloc();
  *(v3 + 656) = swift_task_alloc();

  return _swift_task_switch(sub_10008A31C, 0, 0);
}

uint64_t sub_10008A31C()
{
  sub_1000A3AA8();
  v0[83] = os_transaction_create();

  sub_10003690C();
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v1 = sub_1000A3538();
  v0[84] = sub_100001E38(v1, qword_1000C96B8);
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
  v0[85] = qword_1000C95F0;

  return _swift_task_switch(sub_10008A4D8, v5, 0);
}

uint64_t sub_10008A4D8()
{
  *(v0 + 97) = *(*(v0 + 680) + 144);

  v1 = swift_task_alloc();
  *(v0 + 688) = v1;
  *v1 = v0;
  v1[1] = sub_10008A58C;

  return sub_1000472A8(0);
}

uint64_t sub_10008A58C(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 400) = a1;
  *(v3 + 392) = v1;
  v4 = *(v2 + 688);
  v6 = *v1;

  return _swift_task_switch(sub_10008A690, 0, 0);
}

uint64_t sub_10008A690()
{
  v1 = qword_1000C95F0;
  *(v0 + 696) = qword_1000C95F0;

  return _swift_task_switch(sub_10008A708, v1, 0);
}

uint64_t sub_10008A708()
{
  v1 = v0[87];
  v0[88] = *(v1 + 112);
  v0[89] = *(v1 + 120);

  return _swift_task_switch(sub_10008A788, 0, 0);
}

uint64_t sub_10008A788()
{
  v65 = v0;
  if (!*(v0 + 712))
  {
    v1 = &enum case for EnergyKitError.invalidApplicationIdentifier(_:);
    goto LABEL_6;
  }

  if ((*(v0 + 97) & 1) == 0 && !*(v0 + 400))
  {

    v1 = &enum case for EnergyKitError.guidanceUnavailable(_:);
LABEL_6:
    v2 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *v1, v2);
    v4 = *(v0 + 664);
    v5 = *(v0 + 656);
    v6 = *(v0 + 648);
    v7 = *(v0 + 624);
    v8 = *(v0 + 616);
    v9 = *(v0 + 592);
    v10 = *(v0 + 584);
    v11 = *(v0 + 560);
    v55 = *(v0 + 552);
    v56 = *(v0 + 528);
    v57 = *(v0 + 520);
    v58 = *(v0 + 512);
    v59 = *(v0 + 488);
    v60 = *(v0 + 480);
    v61 = *(v0 + 472);
    v62 = *(v0 + 448);
    swift_willThrow();
    swift_unknownObjectRelease();

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(v0 + 672);
  v15 = *(v0 + 424);

  v16 = sub_1000A3518();
  v17 = sub_1000A3CB8();

  if (os_log_type_enabled(v16, v17))
  {
    v19 = *(v0 + 416);
    v18 = *(v0 + 424);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v64 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1000954AC(v19, v18, &v64);
    _os_log_impl(&_mh_execute_header, v16, v17, "[SiteOperations] Location: %s", v20, 0xCu);
    sub_10000F7B8(v21);
  }

  v22 = *(v0 + 640);
  v23 = *(v0 + 632);
  v24 = *(v0 + 624);
  v25 = *(v0 + 102);
  sub_1000A2B28();
  v26 = *(v22 + 48);
  v27 = v26(v24, 1, v23);
  v28 = *(v0 + 656);
  v29 = *(v0 + 640);
  v30 = *(v0 + 632);
  v31 = *(v0 + 624);
  if (v27 == 1)
  {
    v32 = *(v29 + 104);
    v32(v28, enum case for GuidanceType.shift(_:), *(v0 + 632));
    if (v26(v31, 1, v30) != 1)
    {
      sub_100022154(*(v0 + 624), &qword_1000C9540, &qword_1000ACC40);
    }
  }

  else
  {
    (*(v29 + 32))(v28, *(v0 + 624), *(v0 + 632));
    v32 = *(v29 + 104);
  }

  v33 = *(v0 + 656);
  v34 = *(v0 + 648);
  v35 = *(v0 + 640);
  v36 = *(v0 + 632);
  v37 = *(v0 + 616);
  v38 = *(v0 + 608);
  v39 = *(v0 + 600);
  v32(v34, enum case for GuidanceType.reduce(_:), v36);
  sub_100093FD4(&qword_1000C9550, &type metadata accessor for GuidanceType);
  sub_1000A3B28();
  sub_1000A3B28();
  v40 = *(v35 + 8);
  *(v0 + 720) = v40;
  *(v0 + 728) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v40(v34, v36);
  if (*(v0 + 98) == *(v0 + 100))
  {
    v41 = &enum case for HSGuidanceType.reduce(_:);
  }

  else
  {
    v41 = &enum case for HSGuidanceType.shift(_:);
  }

  (*(v38 + 104))(v37, *v41, v39);
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v42 = *(v0 + 592);
  v43 = *(v0 + 584);
  v44 = *(v0 + 576);
  v45 = *(v0 + 568);
  v46 = sub_100001E38(v45, qword_1000C95F8);
  swift_beginAccess();
  (*(v44 + 16))(v42, v46, v45);
  sub_1000A2A58();
  sub_100093FD4(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
  LOBYTE(v46) = sub_1000A3DF8();
  v47 = *(v44 + 8);
  v47(v43, v45);
  v47(v42, v45);
  if ((v46 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
  {
    sub_1000A2A38();
    *(v0 + 776) = sub_1000A2A28();
    v50 = *(&async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + 1);
    v63 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
    v51 = swift_task_alloc();
    *(v0 + 784) = v51;
    *v51 = v0;
    v51[1] = sub_10008B760;
    v52 = *(v0 + 616);
    v54 = *(v0 + 416);
    v53 = *(v0 + 424);
    v68 = 1;
    v67 = 0xE000000000000000;

    __asm { BR              X8 }
  }

  v48 = swift_task_alloc();
  *(v0 + 736) = v48;
  *v48 = v0;
  v48[1] = sub_10008AEA4;
  v49 = *(v0 + 616);

  return sub_1000688B0(v49);
}

uint64_t sub_10008AEA4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 736);
  v14 = *v3;

  if (v2)
  {
    v6[96] = v2;
    v8 = v6[89];
    (*(v6[76] + 8))(v6[77], v6[75]);

    v9 = sub_10008B474;
  }

  else
  {
    v6[93] = 0;
    v10 = v6[77];
    v11 = v6[76];
    v12 = v6[75];
    v6[94] = a2;
    v6[95] = a1;
    (*(v11 + 8))(v10, v12);
    v9 = sub_10008B018;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10008B018()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = *(v0 + 560);
  v5 = *(v0 + 536);
  v6 = sub_1000A2208();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1000A21F8();
  sub_100093FD4(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v3)
  {
    v9 = *(v0 + 760);
    v10 = *(v0 + 752);
    v11 = *(v0 + 728);
    v12 = *(v0 + 712);
    (*(v0 + 720))(*(v0 + 656), *(v0 + 632));

    sub_10003228C(v9, v10);

    v13 = *(v0 + 672);
    swift_errorRetain();
    v14 = sub_1000A3518();
    v15 = sub_1000A3CC8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "[SiteOperations] Grid Fetch Failed: %@", v16, 0xCu);
      sub_100022154(v17, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }

    v27 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, enum case for EnergyKitError.guidanceUnavailable(_:), v27);
    v29 = *(v0 + 664);
    v30 = *(v0 + 656);
    v31 = *(v0 + 648);
    v32 = *(v0 + 624);
    v33 = *(v0 + 616);
    v34 = *(v0 + 592);
    v35 = *(v0 + 584);
    v36 = *(v0 + 560);
    v38 = *(v0 + 552);
    v39 = *(v0 + 528);
    v40 = *(v0 + 520);
    v41 = *(v0 + 512);
    v42 = *(v0 + 488);
    v43 = *(v0 + 480);
    v44 = *(v0 + 472);
    v45 = *(v0 + 448);
    swift_willThrow();
    swift_unknownObjectRelease();

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    v19 = *(v0 + 520);

    sub_1000A2A38();
    *(v0 + 800) = sub_1000A2A28();
    sub_1000A2D28();
    v20 = *(&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + 1);
    v46 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
    v21 = swift_task_alloc();
    *(v0 + 808) = v21;
    *v21 = v0;
    v21[1] = sub_10008B958;
    v22 = *(v0 + 520);
    v23 = *(v0 + 488);
    v24 = *(v0 + 416);
    v25 = *(v0 + 424);

    return v46(v23, v24, v25, v22);
  }
}

uint64_t sub_10008B474()
{
  v1 = *(v0 + 728);
  (*(v0 + 720))(*(v0 + 656), *(v0 + 632));
  v2 = *(v0 + 768);
  v3 = *(v0 + 672);
  swift_errorRetain();
  v4 = sub_1000A3518();
  v5 = sub_1000A3CC8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "[SiteOperations] Grid Fetch Failed: %@", v6, 0xCu);
    sub_100022154(v7, &unk_1000C7740, &qword_1000AB610);
  }

  else
  {
  }

  v9 = sub_1000A2B18();
  sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
  swift_allocError();
  (*(*(v9 - 8) + 104))(v10, enum case for EnergyKitError.guidanceUnavailable(_:), v9);
  v11 = *(v0 + 664);
  v12 = *(v0 + 656);
  v13 = *(v0 + 648);
  v14 = *(v0 + 624);
  v15 = *(v0 + 616);
  v16 = *(v0 + 592);
  v17 = *(v0 + 584);
  v18 = *(v0 + 560);
  v21 = *(v0 + 552);
  v22 = *(v0 + 528);
  v23 = *(v0 + 520);
  v24 = *(v0 + 512);
  v25 = *(v0 + 488);
  v26 = *(v0 + 480);
  v27 = *(v0 + 472);
  v28 = *(v0 + 448);
  swift_willThrow();
  swift_unknownObjectRelease();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10008B760(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 784);
  v8 = *v3;
  *(*v3 + 792) = v2;

  if (v2)
  {
    v9 = sub_10008B8C0;
  }

  else
  {
    v10 = v6[97];

    v6[93] = 0;
    v11 = v6[77];
    v12 = v6[76];
    v13 = v6[75];
    v6[94] = a2;
    v6[95] = a1;
    (*(v12 + 8))(v11, v13);
    v9 = sub_10008B018;
  }

  return _swift_task_switch(v9, 0, 0);
}