uint64_t sub_10008B8C0()
{
  v1 = v0[97];

  v0[96] = v0[99];
  v2 = v0[89];
  (*(v0[76] + 8))(v0[77], v0[75]);

  return _swift_task_switch(sub_10008B474, 0, 0);
}

uint64_t sub_10008B958()
{
  v1 = *v0;
  v2 = *(*v0 + 808);
  v3 = *(*v0 + 800);
  v4 = *(*v0 + 520);
  v5 = *(*v0 + 504);
  v6 = *(*v0 + 496);
  v9 = *v0;

  v7 = *(v5 + 8);
  *(v1 + 816) = v7;
  *(v1 + 824) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);

  return _swift_task_switch(sub_10008BAE4, 0, 0);
}

uint64_t sub_10008BAE4()
{
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 760);
    v5 = *(v0 + 752);
    v74 = *(v0 + 720);
    v77 = *(v0 + 728);
    v6 = *(v0 + 712);
    v71 = *(v0 + 656);
    v7 = *(v0 + 632);
    v8 = *(v0 + 560);
    v9 = *(v0 + 544);
    v10 = *(v0 + 536);

    sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);
    v11 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    v84 = enum case for EnergyKitError.guidanceUnavailable(_:);
    v81 = *(*(v11 - 8) + 104);
    v81(v12);
    swift_willThrow();
    sub_10003228C(v4, v5);
    (*(v9 + 8))(v8, v10);
    v74(v71, v7);
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

    swift_allocError();
    (v81)(v40, v84, v11);
    v41 = *(v0 + 664);
    v42 = *(v0 + 656);
    v43 = *(v0 + 648);
    v44 = *(v0 + 624);
    v45 = *(v0 + 616);
    v46 = *(v0 + 592);
    v47 = *(v0 + 584);
    v48 = *(v0 + 560);
    v68 = *(v0 + 552);
    v70 = *(v0 + 528);
    v73 = *(v0 + 520);
    v76 = *(v0 + 512);
    v79 = *(v0 + 488);
    v80 = *(v0 + 480);
    v83 = *(v0 + 472);
    v86 = *(v0 + 448);
    swift_willThrow();
    swift_unknownObjectRelease();

    v49 = *(v0 + 8);

    return v49();
  }

  else
  {
    v61 = *(v0 + 760);
    v62 = *(v0 + 816);
    v66 = *(v0 + 728);
    v64 = *(v0 + 824);
    v65 = *(v0 + 720);
    v52 = *(v0 + 704);
    v53 = *(v0 + 712);
    v59 = *(v0 + 664);
    v60 = *(v0 + 752);
    v87 = *(v0 + 656);
    v63 = *(v0 + 632);
    v67 = *(v0 + 648);
    v69 = *(v0 + 624);
    v72 = *(v0 + 616);
    v75 = *(v0 + 592);
    v78 = *(v0 + 584);
    v19 = *(v0 + 560);
    v20 = *(v0 + 552);
    v21 = *(v0 + 544);
    v58 = v21;
    v22 = *(v0 + 536);
    v57 = v22;
    v23 = *(v0 + 528);
    v82 = *(v0 + 520);
    v85 = *(v0 + 512);
    v50 = *(v0 + 480);
    v54 = *(v0 + 464);
    v55 = *(v0 + 456);
    v56 = *(v0 + 472);
    v24 = *(v0 + 448);
    v25 = v3;
    v51 = *(v0 + 440);
    v26 = *(v0 + 432);
    (*(v1 + 32))(v23, v25, v2);
    (*(v21 + 16))(v20, v19, v22);
    sub_1000A2D28();
    (*(v1 + 16))(v85, v23, v2);
    *(v0 + 408) = 0;
    sub_100093FD4(&qword_1000C9548, &type metadata accessor for GuidanceOptions);
    sub_1000A3FA8();
    sub_1000A2C18();
    v27 = sub_1000A2B38();
    sub_1000A2C28();
    v28 = sub_1000A2B98();
    (*(v51 + 8))(v24, v26);
    *(v0 + 192) = v52;
    *(v0 + 208) = 0;
    *(v0 + 216) = 0;
    *(v0 + 200) = v53;
    *(v0 + 224) = 2;
    *(v0 + 232) = v27;
    *(v0 + 240) = 0;
    *(v0 + 248) = v28;
    *(v0 + 256) = 0;
    *(v0 + 264) = 0;
    *(v0 + 272) = 1;
    *(v0 + 104) = v52;
    *(v0 + 120) = 0;
    *(v0 + 128) = 0;
    *(v0 + 112) = v53;
    *(v0 + 136) = 2;
    *(v0 + 144) = v27;
    *(v0 + 152) = 0;
    *(v0 + 160) = v28;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 184) = 1;
    sub_100086114(v0 + 192, v0 + 280);
    sub_100086170(v0 + 104);
    type metadata accessor for EKSAnalyticsEvent();
    v29 = swift_allocObject();
    *(v29 + 24) = xmmword_1000ACA50;
    *(v29 + 56) = 0u;
    *(v29 + 72) = 0u;
    *(v29 + 88) = 0u;
    *(v29 + 40) = 0u;
    *(v29 + 104) = 0;
    *(v29 + 16) = 1;
    *(v0 + 96) = 0;
    v30 = *(v29 + 72);
    *(v0 + 48) = *(v29 + 56);
    *(v0 + 64) = v30;
    *(v0 + 80) = *(v29 + 88);
    v31 = *(v29 + 40);
    *(v0 + 16) = *(v29 + 24);
    *(v0 + 32) = v31;
    v32 = *(v0 + 192);
    v33 = *(v0 + 224);
    *(v29 + 40) = *(v0 + 208);
    *(v29 + 24) = v32;
    v34 = *(v0 + 240);
    v35 = *(v0 + 256);
    *(v29 + 104) = *(v0 + 272);
    *(v29 + 88) = v35;
    *(v29 + 72) = v34;
    *(v29 + 56) = v33;
    sub_100022154(v0 + 16, &qword_1000C8830, &unk_1000AC300);
    sub_10004151C(v29);

    (*(v54 + 16))(v56, v50, v55);
    v36 = objc_allocWithZone(sub_1000A2BE8());
    v37 = sub_1000A2BD8();
    swift_unknownObjectRelease();
    sub_10003228C(v61, v60);
    (*(v54 + 8))(v50, v55);
    v62(v23, v2);
    (*(v58 + 8))(v19, v57);
    v65(v87, v63);

    v38 = *(v0 + 8);

    return v38(v37);
  }
}

uint64_t sub_10008C340(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 688) = a5;
  *(v5 + 680) = a4;
  *(v5 + 278) = a3;
  *(v5 + 672) = a2;
  *(v5 + 664) = a1;
  v6 = sub_1000A2C38();
  *(v5 + 696) = v6;
  v7 = *(v6 - 8);
  *(v5 + 704) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 712) = swift_task_alloc();
  *(v5 + 720) = swift_task_alloc();
  v9 = *(*(sub_10000275C(&qword_1000C92C0, &qword_1000ACB30) - 8) + 64) + 15;
  *(v5 + 728) = swift_task_alloc();
  *(v5 + 736) = swift_task_alloc();
  *(v5 + 744) = swift_task_alloc();
  v10 = sub_1000A2508();
  *(v5 + 752) = v10;
  v11 = *(v10 - 8);
  *(v5 + 760) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 768) = swift_task_alloc();
  *(v5 + 776) = swift_task_alloc();
  v13 = sub_1000A2688();
  *(v5 + 784) = v13;
  v14 = *(v13 - 8);
  *(v5 + 792) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 800) = swift_task_alloc();
  *(v5 + 808) = swift_task_alloc();
  v16 = sub_1000A25F8();
  *(v5 + 816) = v16;
  v17 = *(v16 - 8);
  *(v5 + 824) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 832) = swift_task_alloc();
  *(v5 + 840) = swift_task_alloc();
  *(v5 + 848) = swift_task_alloc();
  *(v5 + 856) = swift_task_alloc();
  v19 = sub_1000A2AD8();
  *(v5 + 864) = v19;
  v20 = *(v19 - 8);
  *(v5 + 872) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 880) = swift_task_alloc();
  *(v5 + 888) = swift_task_alloc();
  v22 = sub_1000A2BA8();
  *(v5 + 896) = v22;
  v23 = *(v22 - 8);
  *(v5 + 904) = v23;
  v24 = *(v23 + 64) + 15;
  *(v5 + 912) = swift_task_alloc();
  *(v5 + 920) = swift_task_alloc();
  *(v5 + 928) = swift_task_alloc();
  v25 = *(*(sub_10000275C(&qword_1000C9540, &qword_1000ACC40) - 8) + 64) + 15;
  *(v5 + 936) = swift_task_alloc();
  v26 = sub_1000A2B48();
  *(v5 + 944) = v26;
  v27 = *(v26 - 8);
  *(v5 + 952) = v27;
  v28 = *(v27 + 64) + 15;
  *(v5 + 960) = swift_task_alloc();
  *(v5 + 968) = swift_task_alloc();

  return _swift_task_switch(sub_10008C738, 0, 0);
}

uint64_t sub_10008C738()
{
  sub_1000A3AA8();
  v0[122] = os_transaction_create();

  sub_10003690C();
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v1 = sub_1000A3538();
  v0[123] = sub_100001E38(v1, qword_1000C96B8);
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
  v0[124] = qword_1000C95F0;

  return _swift_task_switch(sub_10008C8F4, v5, 0);
}

uint64_t sub_10008C8F4()
{
  *(v0 + 97) = *(*(v0 + 992) + 144);

  v1 = swift_task_alloc();
  *(v0 + 1000) = v1;
  *v1 = v0;
  v1[1] = sub_10008C9A8;

  return sub_1000472A8(0);
}

uint64_t sub_10008C9A8(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 648) = a1;
  *(v3 + 640) = v1;
  v4 = *(v2 + 1000);
  v6 = *v1;

  return _swift_task_switch(sub_10008CAAC, 0, 0);
}

uint64_t sub_10008CAAC()
{
  v1 = qword_1000C95F0;
  *(v0 + 1008) = qword_1000C95F0;

  return _swift_task_switch(sub_10008CB24, v1, 0);
}

uint64_t sub_10008CB24()
{
  v1 = v0[126];
  v0[127] = *(v1 + 112);
  v0[128] = *(v1 + 120);

  return _swift_task_switch(sub_10008CBA4, 0, 0);
}

uint64_t sub_10008CBA4()
{
  if (!*(v0 + 1024))
  {
    v1 = &enum case for EnergyKitError.invalidApplicationIdentifier(_:);
    goto LABEL_6;
  }

  if ((*(v0 + 97) & 1) == 0 && !*(v0 + 648))
  {

    v1 = &enum case for EnergyKitError.guidanceUnavailable(_:);
LABEL_6:
    v2 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *v1, v2);
    v4 = *(v0 + 976);
    v5 = *(v0 + 968);
    v6 = *(v0 + 960);
    v7 = *(v0 + 936);
    v8 = *(v0 + 928);
    v9 = *(v0 + 920);
    v10 = *(v0 + 912);
    v11 = *(v0 + 888);
    v17 = *(v0 + 880);
    v18 = *(v0 + 856);
    v19 = *(v0 + 848);
    v20 = *(v0 + 840);
    v21 = *(v0 + 832);
    v22 = *(v0 + 808);
    v23 = *(v0 + 800);
    v24 = *(v0 + 776);
    v25 = *(v0 + 768);
    v26 = *(v0 + 744);
    v27 = *(v0 + 736);
    v28 = *(v0 + 728);
    v29 = *(v0 + 720);
    v30 = *(v0 + 712);
    swift_willThrow();
    swift_unknownObjectRelease();

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = swift_task_alloc();
  *(v0 + 1032) = v14;
  *v14 = v0;
  v14[1] = sub_10008CEA4;
  v15 = *(v0 + 672);
  v16 = *(v0 + 664);

  return sub_100066308(v16, v15, 0);
}

uint64_t sub_10008CEA4(uint64_t a1)
{
  v2 = *(*v1 + 1032);
  v4 = *v1;
  *(*v1 + 1040) = a1;

  return _swift_task_switch(sub_10008CFA4, 0, 0);
}

uint64_t sub_10008CFA4()
{
  v74 = v0;
  v1 = *(v0 + 984);
  v2 = *(v0 + 688);

  v3 = sub_1000A3518();
  v4 = sub_1000A3CB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 688);
    v6 = *(v0 + 680);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v73 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000954AC(v6, v5, &v73);
    _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Location: %s", v7, 0xCu);
    sub_10000F7B8(v8);
  }

  v9 = *(v0 + 952);
  v10 = *(v0 + 944);
  v11 = *(v0 + 936);
  v12 = *(v0 + 278);
  sub_1000A2B28();
  v13 = *(v9 + 48);
  v14 = v13(v11, 1, v10);
  v15 = *(v0 + 968);
  v16 = *(v0 + 952);
  v17 = *(v0 + 944);
  v18 = *(v0 + 936);
  if (v14 == 1)
  {
    (*(v16 + 104))(v15, enum case for GuidanceType.reduce(_:), *(v0 + 944));
    if (v13(v18, 1, v17) != 1)
    {
      sub_100022154(*(v0 + 936), &qword_1000C9540, &qword_1000ACC40);
    }
  }

  else
  {
    (*(v16 + 32))(v15, *(v0 + 936), *(v0 + 944));
  }

  v19 = *(v0 + 1040);
  v20 = *(v0 + 928);
  v21 = *(v0 + 896);
  *(v0 + 656) = 0;
  sub_100093FD4(&qword_1000C9548, &type metadata accessor for GuidanceOptions);
  sub_1000A3FA8();
  if (v19)
  {
    v22 = *(v0 + 1040);
    v23 = sub_1000A2D58();
    v25 = v24;

    *(v0 + 1048) = v23;
    *(v0 + 1056) = v25;
    if (v25)
    {
      v26 = v22;
      v27 = sub_1000A2DF8();
      v29 = v28;

      *(v0 + 1064) = v27;
      *(v0 + 1072) = v29;
      if (v29)
      {
        v30 = v26;
        v31 = sub_1000A2DE8();
        v33 = v32;

        *(v0 + 1080) = v31;
        *(v0 + 1088) = v33;
        if (v33)
        {
          v34 = v30;
          v71 = sub_1000A2D98();
          v36 = v35;

          v37 = HIBYTE(v25) & 0xF;
          if ((v25 & 0x2000000000000000) == 0)
          {
            v37 = v23 & 0xFFFFFFFFFFFFLL;
          }

          if (!v37)
          {
            goto LABEL_27;
          }

          v38 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v38 = v27 & 0xFFFFFFFFFFFFLL;
          }

          if (v38)
          {
            if ((v33 & 0x2000000000000000) != 0)
            {
              v39 = HIBYTE(v33) & 0xF;
            }

            else
            {
              v39 = v31 & 0xFFFFFFFFFFFFLL;
            }

            if (v39)
            {
              v40 = HIBYTE(v36) & 0xF;
              if ((v36 & 0x2000000000000000) == 0)
              {
                v40 = v71 & 0xFFFFFFFFFFFFLL;
              }

              if (!v40)
              {
                v41 = *(v0 + 928);
                v42 = *(v0 + 920);
                v43 = *(v0 + 912);
                v44 = *(v0 + 904);
                v45 = *(v0 + 896);
                sub_1000A2B78();
                sub_1000869A4(v42, v43);
                v46 = *(v44 + 8);
                *(v0 + 1096) = v46;
                *(v0 + 1104) = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                v46(v43, v45);
                v46(v42, v45);
                v47 = qword_1000C95F0;
                *(v0 + 1112) = qword_1000C95F0;

                return _swift_task_switch(sub_10008D720, v47, 0);
              }
            }
          }

          else
          {
LABEL_27:
          }
        }
      }
    }
  }

  v48 = *(v0 + 968);
  v49 = *(v0 + 960);
  v50 = *(v0 + 952);
  v51 = *(v0 + 944);
  v52 = *(v0 + 832);
  v53 = *(v0 + 824);
  v54 = *(v0 + 816);
  (*(v50 + 104))(v49, enum case for GuidanceType.reduce(_:), v51);
  sub_100093FD4(&qword_1000C9550, &type metadata accessor for GuidanceType);
  sub_1000A3B28();
  sub_1000A3B28();
  v55 = *(v50 + 8);
  *(v0 + 1336) = v55;
  *(v0 + 1344) = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v55(v49, v51);
  if (*(v0 + 98) == *(v0 + 100))
  {
    v56 = &enum case for HSGuidanceType.reduce(_:);
  }

  else
  {
    v56 = &enum case for HSGuidanceType.shift(_:);
  }

  (*(v53 + 104))(v52, *v56, v54);
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v57 = *(v0 + 888);
  v58 = *(v0 + 880);
  v59 = *(v0 + 872);
  v60 = *(v0 + 864);
  v61 = sub_100001E38(v60, qword_1000C95F8);
  swift_beginAccess();
  (*(v59 + 16))(v57, v61, v60);
  sub_1000A2A58();
  sub_100093FD4(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
  LOBYTE(v61) = sub_1000A3DF8();
  v62 = *(v59 + 8);
  v62(v58, v60);
  v62(v57, v60);
  if ((v61 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
  {
    sub_1000A2A38();
    *(v0 + 1376) = sub_1000A2A28();
    v65 = *(&async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + 1);
    v72 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
    v66 = swift_task_alloc();
    *(v0 + 1384) = v66;
    *v66 = v0;
    v66[1] = sub_100091A10;
    v67 = *(v0 + 832);
    v68 = *(v0 + 688);
    v69 = *(v0 + 680);
    v77 = 1;
    v76 = 0xE000000000000000;

    __asm { BR              X8 }
  }

  v63 = swift_task_alloc();
  *(v0 + 1352) = v63;
  *v63 = v0;
  v63[1] = sub_100090FC0;
  v64 = *(v0 + 832);

  return sub_1000688B0(v64);
}

uint64_t sub_10008D720()
{
  if ((sub_1000A2D18() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  v4 = *(v0 + 864);
  v5 = sub_100001E38(v4, qword_1000C95F8);
  swift_beginAccess();
  (*(v3 + 16))(v1, v5, v4);
  sub_1000A2AA8();
  sub_100093FD4(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
  LOBYTE(v5) = sub_1000A3DF8();
  v6 = *(v3 + 8);
  v6(v2, v4);
  v6(v1, v4);
  if (v5)
  {
    v7 = *(v0 + 1112);

    v8 = sub_10008DF3C;
  }

  else
  {
LABEL_6:
    *(v0 + 185) = *(*(v0 + 1112) + 145);

    v8 = sub_10008D8C4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10008D8C4()
{
  v1 = *(v0 + 185);
  if (*(v0 + 1016) == 0x6C7070612E6D6F63 && *(v0 + 1024) == 0xEF64656D6F682E65)
  {
    v3 = 1;
    if ((sub_1000A2D18() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = sub_1000A3F48();
    if ((sub_1000A2D18() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v45 = v1;
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 888);
  v5 = *(v0 + 880);
  v6 = *(v0 + 872);
  v7 = *(v0 + 864);
  v8 = sub_100001E38(v7, qword_1000C95F8);
  swift_beginAccess();
  v9 = *(v6 + 16);
  v9(v4, v8, v7);
  sub_1000A2A48();
  sub_100093FD4(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
  v44 = sub_1000A3DF8();
  v10 = *(v6 + 8);
  v10(v5, v7);
  v10(v4, v7);
  v9(v4, v8, v7);
  sub_1000A2AA8();
  LOBYTE(v8) = sub_1000A3DF8();
  v10(v5, v7);
  v10(v4, v7);
  if (v8)
  {
    goto LABEL_24;
  }

  v1 = v45;
  v3 |= v44;
LABEL_12:
  if ((v1 & v3) == 1)
  {
    v11 = *(v0 + 1040);
    v12 = sub_1000A2D88();

    if ((v12 & 0x1FFFFFFFFLL) == 0xFFFFFFFFLL)
    {
      v13 = *(v0 + 1088);
      v14 = *(v0 + 1072);
      v15 = *(v0 + 1056);
      v16 = *(v0 + 968);
      v17 = *(v0 + 960);
      v18 = *(v0 + 952);
      v19 = *(v0 + 944);
      v20 = *(v0 + 840);
      v21 = *(v0 + 824);
      v22 = *(v0 + 816);

      (*(v18 + 104))(v17, enum case for GuidanceType.reduce(_:), v19);
      sub_100093FD4(&qword_1000C9550, &type metadata accessor for GuidanceType);
      sub_1000A3B28();
      sub_1000A3B28();
      v23 = *(v18 + 8);
      *(v0 + 1272) = v23;
      *(v0 + 1280) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v23(v17, v19);
      if (*(v0 + 274) == *(v0 + 276))
      {
        v24 = &enum case for HSGuidanceType.reduce(_:);
      }

      else
      {
        v24 = &enum case for HSGuidanceType.shift(_:);
      }

      (*(v21 + 104))(v20, *v24, v22);
      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v25 = *(v0 + 888);
      v26 = *(v0 + 880);
      v27 = *(v0 + 872);
      v28 = *(v0 + 864);
      v29 = sub_100001E38(v28, qword_1000C95F8);
      swift_beginAccess();
      (*(v27 + 16))(v25, v29, v28);
      sub_1000A2A58();
      sub_100093FD4(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
      LOBYTE(v29) = sub_1000A3DF8();
      v30 = *(v27 + 8);
      v30(v26, v28);
      v30(v25, v28);
      if ((v29 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
      {
        sub_1000A2A38();
        *(v0 + 1312) = sub_1000A2A28();
        v39 = *(&async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + 1);
        v46 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
        v40 = swift_task_alloc();
        *(v0 + 1320) = v40;
        *v40 = v0;
        v40[1] = sub_100090DC8;
        v41 = *(v0 + 840);
        v42 = *(v0 + 688);
        v43 = *(v0 + 680);

        __asm { BR              X8 }
      }

      v31 = swift_task_alloc();
      *(v0 + 1288) = v31;
      *v31 = v0;
      v31[1] = sub_100090380;
      v32 = *(v0 + 840);

      return sub_1000688B0(v32);
    }
  }

LABEL_24:
  v34 = *(v0 + 1072);
  v35 = *(v0 + 1056);
  type metadata accessor for RatePlanQuery();
  v36 = swift_task_alloc();
  *(v0 + 1120) = v36;
  *v36 = v0;
  v36[1] = sub_10008E1B0;
  v37 = *(v0 + 1064);
  v38 = *(v0 + 1048);

  return sub_100049CB0(v38, v35, v37, v34);
}

uint64_t sub_10008DF3C()
{
  if (v0[127] != 0x6C7070612E6D6F63 || v0[128] != 0xEF64656D6F682E65)
  {
    sub_1000A3F48();
  }

  if (sub_1000A2D18())
  {
    if (qword_1000C7560 != -1)
    {
      swift_once();
    }

    v2 = v0[111];
    v3 = v0[110];
    v4 = v0[109];
    v5 = v0[108];
    v6 = sub_100001E38(v5, qword_1000C95F8);
    swift_beginAccess();
    v7 = *(v4 + 16);
    v7(v2, v6, v5);
    sub_1000A2A48();
    sub_100093FD4(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
    sub_1000A3DF8();
    v8 = *(v4 + 8);
    v8(v3, v5);
    v8(v2, v5);
    v7(v2, v6, v5);
    sub_1000A2AA8();
    sub_1000A3DF8();
    v8(v3, v5);
    v8(v2, v5);
  }

  v9 = v0[134];
  v10 = v0[132];
  type metadata accessor for RatePlanQuery();
  v11 = swift_task_alloc();
  v0[140] = v11;
  *v11 = v0;
  v11[1] = sub_10008E1B0;
  v12 = v0[133];
  v13 = v0[131];

  return sub_100049CB0(v13, v10, v12, v9);
}

uint64_t sub_10008E1B0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1120);
  v12 = *v3;
  v4[141] = a1;
  v4[142] = a2;

  if (v2)
  {
    v6 = v4[136];
    v7 = v4[134];
    v8 = v4[132];

    v9 = sub_1000926FC;
  }

  else
  {
    v10 = v4[132];

    v9 = sub_10008E304;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10008E304()
{
  v1 = *(v0 + 1136);
  if (v1)
  {
    v2 = *(v0 + 1128) & 0xFFFFFFFFFFFFLL;
    if ((v1 & 0x2000000000000000) != 0)
    {
      v2 = HIBYTE(v1) & 0xF;
    }

    if (v2)
    {
      v3 = *(v0 + 968);
      v4 = *(v0 + 960);
      v5 = *(v0 + 952);
      v6 = *(v0 + 944);
      v7 = *(v0 + 856);
      v8 = *(v0 + 824);
      v9 = *(v0 + 816);
      (*(v5 + 104))(v4, enum case for GuidanceType.reduce(_:), v6);
      sub_100093FD4(&qword_1000C9550, &type metadata accessor for GuidanceType);
      sub_1000A3B28();
      sub_1000A3B28();
      v10 = *(v5 + 8);
      *(v0 + 1144) = v10;
      *(v0 + 1152) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v10(v4, v6);
      if (*(v0 + 188) == *(v0 + 190))
      {
        v11 = &enum case for HSGuidanceType.reduce(_:);
      }

      else
      {
        v11 = &enum case for HSGuidanceType.shift(_:);
      }

      (*(v8 + 104))(v7, *v11, v9);
      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 888);
      v13 = *(v0 + 880);
      v14 = *(v0 + 872);
      v15 = *(v0 + 864);
      v16 = sub_100001E38(v15, qword_1000C95F8);
      swift_beginAccess();
      (*(v14 + 16))(v12, v16, v15);
      sub_1000A2A58();
      sub_100093FD4(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
      LOBYTE(v16) = sub_1000A3DF8();
      v17 = *(v14 + 8);
      v17(v13, v15);
      v17(v12, v15);
      if (v16 & 1) != 0 && (sub_1000A2D18())
      {
        v18 = *(v0 + 1088);
        v19 = *(v0 + 1072);

        v20 = swift_task_alloc();
        *(v0 + 1160) = v20;
        *v20 = v0;
        v20[1] = sub_10008EA30;
        v21 = *(v0 + 856);
        goto LABEL_24;
      }

      v24 = *(v0 + 1088);
      v25 = *(v0 + 1072);
      sub_1000A2A38();
      *(v0 + 1184) = sub_1000A2A28();
      v26 = *(&async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + 1);
      v59 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
      v27 = swift_task_alloc();
      *(v0 + 1192) = v27;
      *v27 = v0;
      v27[1] = sub_10008F4BC;
      v28 = *(v0 + 1128);
      v29 = *(v0 + 1080);
      v30 = *(v0 + 1064);
      v31 = *(v0 + 856);
      v32 = *(v0 + 688);
      v33 = *(v0 + 680);
LABEL_28:

      __asm { BR              X8 }
    }

    v34 = *(v0 + 1088);
    v35 = *(v0 + 1072);
    v36 = *(v0 + 1136);
  }

  else
  {
    v22 = *(v0 + 1088);
    v23 = *(v0 + 1072);
  }

  v37 = *(v0 + 968);
  v38 = *(v0 + 960);
  v39 = *(v0 + 952);
  v40 = *(v0 + 944);
  v41 = *(v0 + 848);
  v42 = *(v0 + 824);
  v43 = *(v0 + 816);
  (*(v39 + 104))(v38, enum case for GuidanceType.reduce(_:), v40);
  sub_100093FD4(&qword_1000C9550, &type metadata accessor for GuidanceType);
  sub_1000A3B28();
  sub_1000A3B28();
  v44 = *(v39 + 8);
  *(v0 + 1208) = v44;
  *(v0 + 1216) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44(v38, v40);
  if (*(v0 + 102) == *(v0 + 186))
  {
    v45 = &enum case for HSGuidanceType.reduce(_:);
  }

  else
  {
    v45 = &enum case for HSGuidanceType.shift(_:);
  }

  (*(v42 + 104))(v41, *v45, v43);
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v46 = *(v0 + 888);
  v47 = *(v0 + 880);
  v48 = *(v0 + 872);
  v49 = *(v0 + 864);
  v50 = sub_100001E38(v49, qword_1000C95F8);
  swift_beginAccess();
  (*(v48 + 16))(v46, v50, v49);
  sub_1000A2A58();
  sub_100093FD4(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
  LOBYTE(v50) = sub_1000A3DF8();
  v51 = *(v48 + 8);
  v51(v47, v49);
  v51(v46, v49);
  if ((v50 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
  {
    sub_1000A2A38();
    *(v0 + 1248) = sub_1000A2A28();
    v54 = *(&async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + 1);
    v59 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
    v55 = swift_task_alloc();
    *(v0 + 1256) = v55;
    *v55 = v0;
    v55[1] = sub_100090188;
    v56 = *(v0 + 848);
    v57 = *(v0 + 688);
    v58 = *(v0 + 680);
    goto LABEL_28;
  }

  v52 = swift_task_alloc();
  *(v0 + 1224) = v52;
  *v52 = v0;
  v52[1] = sub_10008F740;
  v21 = *(v0 + 848);
LABEL_24:

  return sub_1000688B0(v21);
}

uint64_t sub_10008EA30(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1160);
  v8 = *v3;

  if (v2)
  {
    v9 = v6[128];
    (*(v6[103] + 8))(v6[107], v6[102]);

    v6[147] = v2;
    v10 = sub_10008F14C;
  }

  else
  {
    (*(v6[103] + 8))(v6[107], v6[102]);
    v6[46] = v3;
    v6[47] = a1;
    v6[48] = a2;
    v6[49] = 0;
    v6[146] = 0;
    v10 = sub_10008EBB0;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10008EBB0()
{
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[116];
  v4 = v0[115];
  v5 = v0[114];
  v6 = v0[112];
  sub_1000A2B88();
  sub_1000869A4(v4, v5);
  v2(v5, v6);
  v2(v4, v6);
  v7 = v0[47];
  v8 = v0[48];
  v9 = v0[146];
  v10 = v0[143];
  v0[175] = v10;
  v11 = v0[101];
  v12 = v0[98];
  v0[176] = v8;
  v0[177] = v7;
  v13 = sub_1000A2208();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1000A21F8();
  sub_100093FD4(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v9)
  {
    v16 = v0[128];
    v17 = v0[119];
    v67 = v0[118];
    v69 = v0[121];
    v18 = v0[116];
    v65 = v10;
    v19 = v0[113];
    v20 = v0[112];

    sub_10003228C(v7, v8);
    (*(v19 + 8))(v18, v20);
    v65(v69, v67);
    v21 = v0[123];
    swift_errorRetain();
    v22 = sub_1000A3518();
    v23 = sub_1000A3CC8();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[130];
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "[SiteOperations] Grid Fetch Failed: %@", v26, 0xCu);
      sub_100022154(v27, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }

    v42 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v42 - 8) + 104))(v43, enum case for EnergyKitError.guidanceUnavailable(_:), v42);
    v44 = v0[122];
    v45 = v0[121];
    v46 = v0[120];
    v47 = v0[117];
    v48 = v0[116];
    v49 = v0[115];
    v50 = v0[114];
    v51 = v0[111];
    v53 = v0[110];
    v54 = v0[107];
    v55 = v0[106];
    v56 = v0[105];
    v57 = v0[104];
    v58 = v0[101];
    v59 = v0[100];
    v60 = v0[97];
    v61 = v0[96];
    v62 = v0[93];
    v63 = v0[92];
    v64 = v0[91];
    v66 = v0[90];
    v68 = v0[89];
    swift_willThrow();
    swift_unknownObjectRelease();

    v52 = v0[1];

    return v52();
  }

  else
  {
    v29 = v0[95];
    v30 = v0[94];
    v31 = v0[92];
    v32 = v0[84];
    v33 = v0[83];

    sub_1000A2A38();
    v0[178] = sub_1000A2A28();
    sub_1000A24B8();
    v34 = *(v29 + 48);
    v0[179] = v34;
    v0[180] = (v29 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    result = v34(v31, 1, v30);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v36 = *(&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + 1);
      v70 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
      v37 = swift_task_alloc();
      v0[181] = v37;
      *v37 = v0;
      v37[1] = sub_100091C08;
      v38 = v0[93];
      v39 = v0[92];
      v40 = v0[86];
      v41 = v0[85];

      return v70(v38, v41, v40, v39);
    }
  }

  return result;
}

uint64_t sub_10008F14C()
{
  v1 = *(v0 + 1152);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 1104);
  v4 = *(v0 + 968);
  v5 = *(v0 + 944);
  (*(v0 + 1096))(*(v0 + 928), *(v0 + 896));
  v2(v4, v5);
  v6 = *(v0 + 1176);
  v7 = *(v0 + 984);
  swift_errorRetain();
  v8 = sub_1000A3518();
  v9 = sub_1000A3CC8();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1040);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "[SiteOperations] Grid Fetch Failed: %@", v12, 0xCu);
    sub_100022154(v13, &unk_1000C7740, &qword_1000AB610);
  }

  else
  {
  }

  v15 = sub_1000A2B18();
  sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
  swift_allocError();
  (*(*(v15 - 8) + 104))(v16, enum case for EnergyKitError.guidanceUnavailable(_:), v15);
  v17 = *(v0 + 976);
  v18 = *(v0 + 968);
  v19 = *(v0 + 960);
  v20 = *(v0 + 936);
  v21 = *(v0 + 928);
  v22 = *(v0 + 920);
  v23 = *(v0 + 912);
  v24 = *(v0 + 888);
  v27 = *(v0 + 880);
  v28 = *(v0 + 856);
  v29 = *(v0 + 848);
  v30 = *(v0 + 840);
  v31 = *(v0 + 832);
  v32 = *(v0 + 808);
  v33 = *(v0 + 800);
  v34 = *(v0 + 776);
  v35 = *(v0 + 768);
  v36 = *(v0 + 744);
  v37 = *(v0 + 736);
  v38 = *(v0 + 728);
  v39 = *(v0 + 720);
  v40 = *(v0 + 712);
  swift_willThrow();
  swift_unknownObjectRelease();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10008F4BC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1192);
  v8 = *v3;
  v6[150] = v2;

  v9 = v6[148];
  v10 = v6[142];
  v11 = v6[136];
  v12 = v6[134];
  if (v2)
  {
    v13 = v6[128];

    v14 = sub_10008F6BC;
  }

  else
  {
    (*(v6[103] + 8))(v6[107], v6[102]);

    v6[46] = v3;
    v6[47] = a1;
    v6[48] = a2;
    v6[49] = 0;
    v6[146] = 0;
    v14 = sub_10008EBB0;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_10008F6BC()
{
  (*(v0[103] + 8))(v0[107], v0[102]);
  v0[147] = v0[150];

  return _swift_task_switch(sub_10008F14C, 0, 0);
}

uint64_t sub_10008F740(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1224);
  v8 = *v3;

  if (v2)
  {
    v6[155] = v2;
    v9 = v6[128];
    (*(v6[103] + 8))(v6[106], v6[102]);

    v10 = sub_10008FE18;
  }

  else
  {
    v6[50] = v3;
    v6[51] = a1;
    v6[52] = a2;
    v6[53] = 0;
    v6[154] = 0;
    (*(v6[103] + 8))(v6[106], v6[102]);
    v10 = sub_10008F8C0;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10008F8C0()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[154];
  v4 = v0[151];
  v0[175] = v4;
  v5 = v0[101];
  v6 = v0[98];
  v0[176] = v2;
  v0[177] = v1;
  v7 = sub_1000A2208();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1000A21F8();
  sub_100093FD4(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v3)
  {
    v10 = v0[128];
    v11 = v0[119];
    v61 = v0[118];
    v63 = v0[121];
    v12 = v0[116];
    v59 = v4;
    v13 = v0[113];
    v14 = v0[112];

    sub_10003228C(v1, v2);
    (*(v13 + 8))(v12, v14);
    v59(v63, v61);
    v15 = v0[123];
    swift_errorRetain();
    v16 = sub_1000A3518();
    v17 = sub_1000A3CC8();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[130];
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "[SiteOperations] Grid Fetch Failed: %@", v20, 0xCu);
      sub_100022154(v21, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }

    v36 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, enum case for EnergyKitError.guidanceUnavailable(_:), v36);
    v38 = v0[122];
    v39 = v0[121];
    v40 = v0[120];
    v41 = v0[117];
    v42 = v0[116];
    v43 = v0[115];
    v44 = v0[114];
    v45 = v0[111];
    v47 = v0[110];
    v48 = v0[107];
    v49 = v0[106];
    v50 = v0[105];
    v51 = v0[104];
    v52 = v0[101];
    v53 = v0[100];
    v54 = v0[97];
    v55 = v0[96];
    v56 = v0[93];
    v57 = v0[92];
    v58 = v0[91];
    v60 = v0[90];
    v62 = v0[89];
    swift_willThrow();
    swift_unknownObjectRelease();

    v46 = v0[1];

    return v46();
  }

  else
  {
    v23 = v0[95];
    v24 = v0[94];
    v25 = v0[92];
    v26 = v0[84];
    v27 = v0[83];

    sub_1000A2A38();
    v0[178] = sub_1000A2A28();
    sub_1000A24B8();
    v28 = *(v23 + 48);
    v0[179] = v28;
    v0[180] = (v23 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    result = v28(v25, 1, v24);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v30 = *(&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + 1);
      v64 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
      v31 = swift_task_alloc();
      v0[181] = v31;
      *v31 = v0;
      v31[1] = sub_100091C08;
      v32 = v0[93];
      v33 = v0[92];
      v34 = v0[86];
      v35 = v0[85];

      return v64(v32, v35, v34, v33);
    }
  }

  return result;
}

uint64_t sub_10008FE18()
{
  v1 = *(v0 + 1216);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1104);
  v4 = *(v0 + 968);
  v5 = *(v0 + 944);
  (*(v0 + 1096))(*(v0 + 928), *(v0 + 896));
  v2(v4, v5);
  v6 = *(v0 + 1240);
  v7 = *(v0 + 984);
  swift_errorRetain();
  v8 = sub_1000A3518();
  v9 = sub_1000A3CC8();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1040);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "[SiteOperations] Grid Fetch Failed: %@", v12, 0xCu);
    sub_100022154(v13, &unk_1000C7740, &qword_1000AB610);
  }

  else
  {
  }

  v15 = sub_1000A2B18();
  sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
  swift_allocError();
  (*(*(v15 - 8) + 104))(v16, enum case for EnergyKitError.guidanceUnavailable(_:), v15);
  v17 = *(v0 + 976);
  v18 = *(v0 + 968);
  v19 = *(v0 + 960);
  v20 = *(v0 + 936);
  v21 = *(v0 + 928);
  v22 = *(v0 + 920);
  v23 = *(v0 + 912);
  v24 = *(v0 + 888);
  v27 = *(v0 + 880);
  v28 = *(v0 + 856);
  v29 = *(v0 + 848);
  v30 = *(v0 + 840);
  v31 = *(v0 + 832);
  v32 = *(v0 + 808);
  v33 = *(v0 + 800);
  v34 = *(v0 + 776);
  v35 = *(v0 + 768);
  v36 = *(v0 + 744);
  v37 = *(v0 + 736);
  v38 = *(v0 + 728);
  v39 = *(v0 + 720);
  v40 = *(v0 + 712);
  swift_willThrow();
  swift_unknownObjectRelease();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100090188(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1256);
  v8 = *v3;
  *(*v3 + 1264) = v2;

  if (v2)
  {
    v9 = sub_1000902E8;
  }

  else
  {
    v10 = v6[156];

    v6[50] = v3;
    v6[51] = a1;
    v6[52] = a2;
    v6[53] = 0;
    v6[154] = 0;
    (*(v6[103] + 8))(v6[106], v6[102]);
    v9 = sub_10008F8C0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000902E8()
{
  v1 = v0[156];

  v0[155] = v0[158];
  v2 = v0[128];
  (*(v0[103] + 8))(v0[106], v0[102]);

  return _swift_task_switch(sub_10008FE18, 0, 0);
}

uint64_t sub_100090380(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1288);
  v8 = *v3;

  if (v2)
  {
    v6[163] = v2;
    v9 = v6[128];
    (*(v6[103] + 8))(v6[105], v6[102]);

    v10 = sub_100090A58;
  }

  else
  {
    v6[54] = v3;
    v6[55] = a1;
    v6[56] = a2;
    v6[57] = 0;
    v6[162] = 0;
    (*(v6[103] + 8))(v6[105], v6[102]);
    v10 = sub_100090500;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100090500()
{
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[162];
  v4 = v0[159];
  v0[175] = v4;
  v5 = v0[101];
  v6 = v0[98];
  v0[176] = v2;
  v0[177] = v1;
  v7 = sub_1000A2208();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1000A21F8();
  sub_100093FD4(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v3)
  {
    v10 = v0[128];
    v11 = v0[119];
    v61 = v0[118];
    v63 = v0[121];
    v12 = v0[116];
    v59 = v4;
    v13 = v0[113];
    v14 = v0[112];

    sub_10003228C(v1, v2);
    (*(v13 + 8))(v12, v14);
    v59(v63, v61);
    v15 = v0[123];
    swift_errorRetain();
    v16 = sub_1000A3518();
    v17 = sub_1000A3CC8();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[130];
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "[SiteOperations] Grid Fetch Failed: %@", v20, 0xCu);
      sub_100022154(v21, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }

    v36 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, enum case for EnergyKitError.guidanceUnavailable(_:), v36);
    v38 = v0[122];
    v39 = v0[121];
    v40 = v0[120];
    v41 = v0[117];
    v42 = v0[116];
    v43 = v0[115];
    v44 = v0[114];
    v45 = v0[111];
    v47 = v0[110];
    v48 = v0[107];
    v49 = v0[106];
    v50 = v0[105];
    v51 = v0[104];
    v52 = v0[101];
    v53 = v0[100];
    v54 = v0[97];
    v55 = v0[96];
    v56 = v0[93];
    v57 = v0[92];
    v58 = v0[91];
    v60 = v0[90];
    v62 = v0[89];
    swift_willThrow();
    swift_unknownObjectRelease();

    v46 = v0[1];

    return v46();
  }

  else
  {
    v23 = v0[95];
    v24 = v0[94];
    v25 = v0[92];
    v26 = v0[84];
    v27 = v0[83];

    sub_1000A2A38();
    v0[178] = sub_1000A2A28();
    sub_1000A24B8();
    v28 = *(v23 + 48);
    v0[179] = v28;
    v0[180] = (v23 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    result = v28(v25, 1, v24);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v30 = *(&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + 1);
      v64 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
      v31 = swift_task_alloc();
      v0[181] = v31;
      *v31 = v0;
      v31[1] = sub_100091C08;
      v32 = v0[93];
      v33 = v0[92];
      v34 = v0[86];
      v35 = v0[85];

      return v64(v32, v35, v34, v33);
    }
  }

  return result;
}

uint64_t sub_100090A58()
{
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1104);
  v4 = *(v0 + 968);
  v5 = *(v0 + 944);
  (*(v0 + 1096))(*(v0 + 928), *(v0 + 896));
  v2(v4, v5);
  v6 = *(v0 + 1304);
  v7 = *(v0 + 984);
  swift_errorRetain();
  v8 = sub_1000A3518();
  v9 = sub_1000A3CC8();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1040);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "[SiteOperations] Grid Fetch Failed: %@", v12, 0xCu);
    sub_100022154(v13, &unk_1000C7740, &qword_1000AB610);
  }

  else
  {
  }

  v15 = sub_1000A2B18();
  sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
  swift_allocError();
  (*(*(v15 - 8) + 104))(v16, enum case for EnergyKitError.guidanceUnavailable(_:), v15);
  v17 = *(v0 + 976);
  v18 = *(v0 + 968);
  v19 = *(v0 + 960);
  v20 = *(v0 + 936);
  v21 = *(v0 + 928);
  v22 = *(v0 + 920);
  v23 = *(v0 + 912);
  v24 = *(v0 + 888);
  v27 = *(v0 + 880);
  v28 = *(v0 + 856);
  v29 = *(v0 + 848);
  v30 = *(v0 + 840);
  v31 = *(v0 + 832);
  v32 = *(v0 + 808);
  v33 = *(v0 + 800);
  v34 = *(v0 + 776);
  v35 = *(v0 + 768);
  v36 = *(v0 + 744);
  v37 = *(v0 + 736);
  v38 = *(v0 + 728);
  v39 = *(v0 + 720);
  v40 = *(v0 + 712);
  swift_willThrow();
  swift_unknownObjectRelease();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100090DC8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1320);
  v8 = *v3;
  *(*v3 + 1328) = v2;

  if (v2)
  {
    v9 = sub_100090F28;
  }

  else
  {
    v10 = v6[164];

    v6[54] = v3;
    v6[55] = a1;
    v6[56] = a2;
    v6[57] = 0;
    v6[162] = 0;
    (*(v6[103] + 8))(v6[105], v6[102]);
    v9 = sub_100090500;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100090F28()
{
  v1 = v0[164];

  v0[163] = v0[166];
  v2 = v0[128];
  (*(v0[103] + 8))(v0[105], v0[102]);

  return _swift_task_switch(sub_100090A58, 0, 0);
}

uint64_t sub_100090FC0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1352);
  v8 = *v3;

  if (v2)
  {
    v6[171] = v2;
    v9 = v6[128];
    (*(v6[103] + 8))(v6[104], v6[102]);

    v10 = sub_100091698;
  }

  else
  {
    v6[58] = v3;
    v6[59] = a1;
    v6[60] = a2;
    v6[61] = 0;
    v6[170] = 0;
    (*(v6[103] + 8))(v6[104], v6[102]);
    v10 = sub_100091140;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100091140()
{
  v1 = v0[59];
  v2 = v0[60];
  v3 = v0[170];
  v4 = v0[167];
  v0[175] = v4;
  v5 = v0[101];
  v6 = v0[98];
  v0[176] = v2;
  v0[177] = v1;
  v7 = sub_1000A2208();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1000A21F8();
  sub_100093FD4(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v3)
  {
    v10 = v0[128];
    v11 = v0[119];
    v61 = v0[118];
    v63 = v0[121];
    v12 = v0[116];
    v59 = v4;
    v13 = v0[113];
    v14 = v0[112];

    sub_10003228C(v1, v2);
    (*(v13 + 8))(v12, v14);
    v59(v63, v61);
    v15 = v0[123];
    swift_errorRetain();
    v16 = sub_1000A3518();
    v17 = sub_1000A3CC8();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[130];
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "[SiteOperations] Grid Fetch Failed: %@", v20, 0xCu);
      sub_100022154(v21, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }

    v36 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, enum case for EnergyKitError.guidanceUnavailable(_:), v36);
    v38 = v0[122];
    v39 = v0[121];
    v40 = v0[120];
    v41 = v0[117];
    v42 = v0[116];
    v43 = v0[115];
    v44 = v0[114];
    v45 = v0[111];
    v47 = v0[110];
    v48 = v0[107];
    v49 = v0[106];
    v50 = v0[105];
    v51 = v0[104];
    v52 = v0[101];
    v53 = v0[100];
    v54 = v0[97];
    v55 = v0[96];
    v56 = v0[93];
    v57 = v0[92];
    v58 = v0[91];
    v60 = v0[90];
    v62 = v0[89];
    swift_willThrow();
    swift_unknownObjectRelease();

    v46 = v0[1];

    return v46();
  }

  else
  {
    v23 = v0[95];
    v24 = v0[94];
    v25 = v0[92];
    v26 = v0[84];
    v27 = v0[83];

    sub_1000A2A38();
    v0[178] = sub_1000A2A28();
    sub_1000A24B8();
    v28 = *(v23 + 48);
    v0[179] = v28;
    v0[180] = (v23 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    result = v28(v25, 1, v24);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v30 = *(&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + 1);
      v64 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
      v31 = swift_task_alloc();
      v0[181] = v31;
      *v31 = v0;
      v31[1] = sub_100091C08;
      v32 = v0[93];
      v33 = v0[92];
      v34 = v0[86];
      v35 = v0[85];

      return v64(v32, v35, v34, v33);
    }
  }

  return result;
}

uint64_t sub_100091698()
{
  v1 = v0[168];
  v2 = v0[167];
  v3 = v0[121];
  v4 = v0[118];
  (*(v0[113] + 8))(v0[116], v0[112]);
  v2(v3, v4);
  v5 = v0[171];
  v6 = v0[123];
  swift_errorRetain();
  v7 = sub_1000A3518();
  v8 = sub_1000A3CC8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[130];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[SiteOperations] Grid Fetch Failed: %@", v11, 0xCu);
    sub_100022154(v12, &unk_1000C7740, &qword_1000AB610);
  }

  else
  {
  }

  v14 = sub_1000A2B18();
  sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
  swift_allocError();
  (*(*(v14 - 8) + 104))(v15, enum case for EnergyKitError.guidanceUnavailable(_:), v14);
  v16 = v0[122];
  v17 = v0[121];
  v18 = v0[120];
  v19 = v0[117];
  v20 = v0[116];
  v21 = v0[115];
  v22 = v0[114];
  v23 = v0[111];
  v26 = v0[110];
  v27 = v0[107];
  v28 = v0[106];
  v29 = v0[105];
  v30 = v0[104];
  v31 = v0[101];
  v32 = v0[100];
  v33 = v0[97];
  v34 = v0[96];
  v35 = v0[93];
  v36 = v0[92];
  v37 = v0[91];
  v38 = v0[90];
  v39 = v0[89];
  swift_willThrow();
  swift_unknownObjectRelease();

  v24 = v0[1];

  return v24();
}

uint64_t sub_100091A10(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1384);
  v8 = *v3;
  *(*v3 + 1392) = v2;

  if (v2)
  {
    v9 = sub_100091B70;
  }

  else
  {
    v10 = v6[172];

    v6[58] = v3;
    v6[59] = a1;
    v6[60] = a2;
    v6[61] = 0;
    v6[170] = 0;
    (*(v6[103] + 8))(v6[104], v6[102]);
    v9 = sub_100091140;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100091B70()
{
  v1 = v0[172];

  v0[171] = v0[174];
  v2 = v0[128];
  (*(v0[103] + 8))(v0[104], v0[102]);

  return _swift_task_switch(sub_100091698, 0, 0);
}

uint64_t sub_100091C08()
{
  v1 = *v0;
  v2 = *(*v0 + 1448);
  v3 = *(*v0 + 1424);
  v4 = *(*v0 + 760);
  v5 = *(*v0 + 752);
  v6 = *(*v0 + 736);
  v9 = *v0;

  v7 = *(v4 + 8);
  *(v1 + 1456) = v7;
  *(v1 + 1464) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v6, v5);

  return _swift_task_switch(sub_100091D94, 0, 0);
}

uint64_t sub_100091D94()
{
  v1 = *(v0 + 1440);
  v2 = *(v0 + 1432);
  v3 = *(v0 + 752);
  v4 = *(v0 + 744);
  if (v2(v4, 1, v3) == 1)
  {
    v5 = *(v0 + 1416);
    v6 = *(v0 + 1408);
    v7 = *(v0 + 1024);
    v98 = *(v0 + 968);
    v101 = *(v0 + 1400);
    v92 = *(v0 + 952);
    v95 = *(v0 + 944);
    v8 = *(v0 + 904);
    v86 = *(v0 + 896);
    v89 = *(v0 + 928);
    v9 = *(v0 + 808);
    v10 = *(v0 + 792);
    v11 = *(v0 + 784);

    sub_100022154(v4, &qword_1000C92C0, &qword_1000ACB30);
    v12 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError);
    swift_allocError();
    v109 = enum case for EnergyKitError.guidanceUnavailable(_:);
    v106 = *(*(v12 - 8) + 104);
    v106(v13);
    swift_willThrow();
    sub_10003228C(v5, v6);
    (*(v10 + 8))(v9, v11);
    (*(v8 + 8))(v89, v86);
    v101(v98, v95);
    v14 = *(v0 + 984);
    swift_errorRetain();
    v15 = sub_1000A3518();
    v16 = sub_1000A3CC8();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 1040);
    if (v17)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "[SiteOperations] Grid Fetch Failed: %@", v19, 0xCu);
      sub_100022154(v20, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }

    swift_allocError();
    (v106)(v47, v109, v12);
    v48 = *(v0 + 976);
    v49 = *(v0 + 968);
    v50 = *(v0 + 960);
    v51 = *(v0 + 936);
    v52 = *(v0 + 928);
    v53 = *(v0 + 920);
    v54 = *(v0 + 912);
    v55 = *(v0 + 888);
    v78 = *(v0 + 880);
    v80 = *(v0 + 856);
    v82 = *(v0 + 848);
    v84 = *(v0 + 840);
    v85 = *(v0 + 832);
    v88 = *(v0 + 808);
    v91 = *(v0 + 800);
    v94 = *(v0 + 776);
    v97 = *(v0 + 768);
    v100 = *(v0 + 744);
    v103 = *(v0 + 736);
    v105 = *(v0 + 728);
    v108 = *(v0 + 720);
    v112 = *(v0 + 712);
    swift_willThrow();
    swift_unknownObjectRelease();

    v56 = *(v0 + 8);

    return v56();
  }

  else
  {
    v22 = *(v0 + 800);
    v23 = *(v0 + 792);
    v24 = *(v0 + 784);
    v25 = *(v0 + 728);
    v110 = *(v0 + 672);
    v113 = *(v0 + 808);
    v26 = *(v0 + 664);
    (*(*(v0 + 760) + 32))(*(v0 + 776), v4, v3);
    (*(v23 + 16))(v22, v113, v24);
    sub_1000A24B8();
    result = v2(v25, 1, v3);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v74 = *(v0 + 1456);
      v75 = *(v0 + 1464);
      v70 = *(v0 + 1408);
      v71 = *(v0 + 1416);
      v73 = *(v0 + 1040);
      v57 = *(v0 + 1016);
      v58 = *(v0 + 1024);
      v63 = *(v0 + 968);
      v28 = *(v0 + 952);
      v76 = v28;
      v77 = *(v0 + 944);
      v81 = *(v0 + 960);
      v83 = *(v0 + 936);
      v29 = *(v0 + 928);
      v66 = v29;
      v67 = *(v0 + 976);
      v30 = *(v0 + 920);
      v31 = *(v0 + 904);
      v32 = *(v0 + 896);
      v87 = *(v0 + 912);
      v90 = *(v0 + 888);
      v93 = *(v0 + 880);
      v96 = *(v0 + 856);
      v102 = *(v0 + 848);
      v104 = *(v0 + 840);
      v107 = *(v0 + 832);
      v72 = *(v0 + 808);
      v79 = *(v0 + 800);
      v68 = *(v0 + 792);
      v69 = *(v0 + 784);
      v33 = *(v0 + 776);
      v64 = v33;
      v65 = *(v0 + 752);
      v111 = *(v0 + 744);
      v114 = *(v0 + 736);
      v99 = *(v0 + 728);
      v34 = *(v0 + 720);
      v59 = *(v0 + 704);
      v60 = *(v0 + 696);
      v61 = *(v0 + 712);
      (*(*(v0 + 760) + 16))(*(v0 + 768));
      (*(v31 + 16))(v30, v29, v32);
      sub_1000A2C18();
      v35 = sub_1000A2B38();
      sub_1000A2C28();
      v36 = sub_1000A2B98();
      v62 = *(v31 + 8);
      v62(v30, v32);
      *(v0 + 192) = v57;
      *(v0 + 208) = 0;
      *(v0 + 216) = 0;
      *(v0 + 200) = v58;
      *(v0 + 224) = 2;
      *(v0 + 232) = v35;
      *(v0 + 240) = 0;
      *(v0 + 248) = v36;
      *(v0 + 256) = 0;
      *(v0 + 264) = 0;
      *(v0 + 272) = 1;
      *(v0 + 104) = v57;
      *(v0 + 120) = 0;
      *(v0 + 128) = 0;
      *(v0 + 112) = v58;
      *(v0 + 136) = 2;
      *(v0 + 144) = v35;
      *(v0 + 152) = 0;
      *(v0 + 160) = v36;
      *(v0 + 168) = 0;
      *(v0 + 176) = 0;
      *(v0 + 184) = 1;
      sub_100086114(v0 + 192, v0 + 280);
      sub_100086170(v0 + 104);
      type metadata accessor for EKSAnalyticsEvent();
      v37 = swift_allocObject();
      *(v37 + 24) = xmmword_1000ACA50;
      *(v37 + 56) = 0u;
      *(v37 + 72) = 0u;
      *(v37 + 88) = 0u;
      *(v37 + 40) = 0u;
      *(v37 + 104) = 0;
      *(v37 + 16) = 2;
      *(v0 + 96) = 0;
      v38 = *(v37 + 72);
      *(v0 + 48) = *(v37 + 56);
      *(v0 + 64) = v38;
      *(v0 + 80) = *(v37 + 88);
      v39 = *(v37 + 40);
      *(v0 + 16) = *(v37 + 24);
      *(v0 + 32) = v39;
      v40 = *(v0 + 192);
      v41 = *(v0 + 224);
      *(v37 + 40) = *(v0 + 208);
      *(v37 + 24) = v40;
      v42 = *(v0 + 240);
      v43 = *(v0 + 256);
      *(v37 + 104) = *(v0 + 272);
      *(v37 + 88) = v43;
      *(v37 + 72) = v42;
      *(v37 + 56) = v41;
      sub_100022154(v0 + 16, &qword_1000C8830, &unk_1000AC300);
      sub_10004151C(v37);

      (*(v59 + 16))(v61, v34, v60);
      v44 = objc_allocWithZone(sub_1000A2BE8());
      v45 = sub_1000A2BD8();
      swift_unknownObjectRelease();
      sub_10003228C(v71, v70);

      (*(v59 + 8))(v34, v60);
      v74(v64, v65);
      (*(v68 + 8))(v72, v69);
      v62(v66, v32);
      (*(v76 + 8))(v63, v77);

      v46 = *(v0 + 8);

      return v46(v45);
    }
  }

  return result;
}

uint64_t sub_1000926FC()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);
  v4 = *(v0 + 944);
  v5 = *(v0 + 848);
  v6 = *(v0 + 824);
  v7 = *(v0 + 816);
  (*(v3 + 104))(v2, enum case for GuidanceType.reduce(_:), v4);
  sub_100093FD4(&qword_1000C9550, &type metadata accessor for GuidanceType);
  sub_1000A3B28();
  sub_1000A3B28();
  v8 = *(v3 + 8);
  *(v0 + 1208) = v8;
  *(v0 + 1216) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v4);
  if (*(v0 + 102) == *(v0 + 186))
  {
    v9 = &enum case for HSGuidanceType.reduce(_:);
  }

  else
  {
    v9 = &enum case for HSGuidanceType.shift(_:);
  }

  (*(v6 + 104))(v5, *v9, v7);
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 888);
  v11 = *(v0 + 880);
  v12 = *(v0 + 872);
  v13 = *(v0 + 864);
  v14 = sub_100001E38(v13, qword_1000C95F8);
  swift_beginAccess();
  (*(v12 + 16))(v10, v14, v13);
  sub_1000A2A58();
  sub_100093FD4(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
  LOBYTE(v14) = sub_1000A3DF8();
  v15 = *(v12 + 8);
  v15(v11, v13);
  v15(v10, v13);
  if ((v14 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
  {
    sub_1000A2A38();
    *(v0 + 1248) = sub_1000A2A28();
    v19 = *(&async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + 1);
    v24 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
    v20 = swift_task_alloc();
    *(v0 + 1256) = v20;
    *v20 = v0;
    v20[1] = sub_100090188;
    v21 = *(v0 + 848);
    v22 = *(v0 + 688);
    v23 = *(v0 + 680);

    __asm { BR              X8 }
  }

  v16 = swift_task_alloc();
  *(v0 + 1224) = v16;
  *v16 = v0;
  v16[1] = sub_10008F740;
  v17 = *(v0 + 848);

  return sub_1000688B0(v17);
}

uint64_t sub_100092AA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100092AC4, 0, 0);
}

uint64_t sub_100092AC4()
{
  sub_1000A3AA8();
  *(v0 + 32) = os_transaction_create();

  sub_10003690C();
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Connection established to EnergyKit API", v4, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v5 = qword_1000C95F0;
  *(v0 + 40) = qword_1000C95F0;

  return _swift_task_switch(sub_100092C7C, v5, 0);
}

uint64_t sub_100092C7C()
{
  *(v0 + 72) = *(*(v0 + 40) + 144);

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100092D30;

  return sub_1000472A8(0);
}

uint64_t sub_100092D30(char a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 73) = a1;

  return _swift_task_switch(sub_100092E30, 0, 0);
}

uint64_t sub_100092E30()
{
  v1 = *(v0 + 73);
  if ((*(v0 + 72) & 1) != 0 || *(v0 + 73))
  {
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_100092F28;
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);

    return sub_100066308(v7, v6, v1 ^ 1u);
  }

  else
  {
    v2 = *(v0 + 32);
    swift_unknownObjectRelease();
    v3 = *(v0 + 8);

    return v3(0);
  }
}

uint64_t sub_100092F28(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_100093028, 0, 0);
}

uint64_t sub_100093028()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[8];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_10009308C(uint64_t a1, double a2)
{
  *(v2 + 376) = a2;
  *(v2 + 368) = a1;
  return _swift_task_switch(sub_1000930B0, 0, 0);
}

uint64_t sub_1000930B0()
{
  sub_1000A3AA8();
  *(v0 + 384) = os_transaction_create();

  sub_10003690C();
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 392) = qword_1000C95F0;

  return _swift_task_switch(sub_1000931B4, v1, 0);
}

uint64_t sub_1000931B4()
{
  *(v0 + 97) = *(*(v0 + 392) + 144);

  return _swift_task_switch(sub_100093224, 0, 0);
}

uint64_t sub_100093224()
{
  if (*(v0 + 97))
  {
    v1 = qword_1000C95F0;
    *(v0 + 400) = qword_1000C95F0;

    return _swift_task_switch(sub_1000933B4, v1, 0);
  }

  else
  {
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
      _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Unauthorized", v5, 2u);
    }

    v6 = *(v0 + 384);

    v7 = sub_100089C30(&_swiftEmptyArrayStorage);
    swift_unknownObjectRelease();
    v8 = *(v0 + 8);

    return v8(v7);
  }
}

uint64_t sub_1000933B4()
{
  v1 = v0[50];
  v0[51] = *(v1 + 112);
  v0[52] = *(v1 + 120);

  return _swift_task_switch(sub_100093434, 0, 0);
}

uint64_t sub_100093434()
{
  if (*(v0 + 52))
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    *(v0 + 53) = qword_1000C96F8;

    v1 = swift_task_alloc();
    *(v0 + 54) = v1;
    *v1 = v0;
    v1[1] = sub_10009356C;
    v2 = v0[47];
    v3 = *(v0 + 46);

    return sub_100072AA8(v3, v2);
  }

  else
  {
    v5 = *(v0 + 48);
    v6 = sub_100089C30(&_swiftEmptyArrayStorage);
    swift_unknownObjectRelease();
    v7 = *(v0 + 1);

    return v7(v6);
  }
}

uint64_t sub_10009356C(uint64_t a1)
{
  v2 = *(*v1 + 432);
  v3 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 440) = a1;

  return _swift_task_switch(sub_10009368C, 0, 0);
}

uint64_t sub_10009368C()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 384);
  v4 = *(*(v0 + 440) + 16) != 0;
  *(v0 + 192) = v2;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 200) = v1;
  *(v0 + 224) = v4;
  *(v0 + 232) = 0;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  *(v0 + 264) = 0;
  *(v0 + 272) = 1;
  *(v0 + 104) = v2;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 112) = v1;
  *(v0 + 136) = v4;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 176) = 0;
  *(v0 + 184) = 1;
  sub_100086114(v0 + 192, v0 + 280);
  sub_100086170(v0 + 104);
  type metadata accessor for EKSAnalyticsEvent();
  v5 = swift_allocObject();
  *(v5 + 24) = xmmword_1000ACA50;
  *(v5 + 16) = 0;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 104) = 0;
  *(v0 + 96) = 0;
  v6 = *(v5 + 72);
  *(v0 + 48) = *(v5 + 56);
  *(v0 + 64) = v6;
  *(v0 + 80) = *(v5 + 88);
  v7 = *(v5 + 40);
  *(v0 + 16) = *(v5 + 24);
  *(v0 + 32) = v7;
  v8 = *(v0 + 192);
  v9 = *(v0 + 224);
  *(v5 + 40) = *(v0 + 208);
  *(v5 + 24) = v8;
  v10 = *(v0 + 240);
  v11 = *(v0 + 256);
  *(v5 + 104) = *(v0 + 272);
  *(v5 + 88) = v11;
  *(v5 + 72) = v10;
  *(v5 + 56) = v9;
  sub_100022154(v0 + 16, &qword_1000C8830, &unk_1000AC300);
  sub_10004151C(v5);

  swift_unknownObjectRelease();
  v12 = *(v0 + 440);
  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_10009385C()
{
  sub_1000A3AA8();
  *(v0 + 16) = os_transaction_create();

  sub_10003690C();
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 24) = qword_1000C95F0;

  return _swift_task_switch(sub_100093960, v1, 0);
}

uint64_t sub_100093960()
{
  *(v0 + 32) = *(*(v0 + 24) + 120);

  return _swift_task_switch(sub_1000939D8, 0, 0);
}

uint64_t sub_1000939D8()
{
  if (v0[4])
  {

    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_100093AC4;

    return sub_100065D98();
  }

  else
  {
    v3 = v0[2];
    swift_unknownObjectRelease();
    v4 = v0[1];

    return v4(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100093AC4(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100093BC4, 0, 0);
}

uint64_t sub_100093BC4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100093C28()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100093C70()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000153A8;

  return sub_100088D04(v2, v5, v4, v3);
}

uint64_t sub_100093D38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000153A8;

  return sub_100088850(v2, v3, v4);
}

uint64_t sub_100093E04()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014898;

  return sub_1000872C0(v2, v3, v4);
}

uint64_t sub_100093EB8()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100093F08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000153A8;

  return sub_100086E3C(v2, v6, v3, v4, v5);
}

uint64_t sub_100093FD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009401C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000275C(&qword_1000C9560, &qword_1000ACC48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009408C()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000940D4()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000153A8;

  return sub_1000866F4(v5, v2, v3, v4);
}

uint64_t sub_1000941D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_10000275C(&qword_1000C8240, &qword_1000AB688) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100038E0C(a3, v26 - v10);
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

      sub_100022154(a3, &qword_1000C8240, &qword_1000AB688);

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

  sub_100022154(a3, &qword_1000C8240, &qword_1000AB688);
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

uint64_t sub_1000944C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = v16;
  v8[3] = v17;
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_1000945A0;

  return sub_100097D90(a5, a6, a7, a8);
}

uint64_t sub_1000945A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_1000A21E4;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = sub_1000A21E0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000949C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v15;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_100094A78;

  return sub_10009F918(a5, a6, a7);
}

uint64_t sub_100094A78(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_100094C28;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = sub_100094BA0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100094BA0()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(v1, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100094C28()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  swift_errorRetain();
  v3(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100094E30()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094E68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100094EC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100014898;

  return sub_1000949C0(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_100094FAC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_100094FE4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_100095044(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000275C(&qword_1000C95D0, &qword_1000ACCE0);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_1000951C8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000275C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

_BYTE **sub_1000953A4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1000953B4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100095450(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000954AC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1000954AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100095578(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_10000F814(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000F7B8(v11);
  return v7;
}

unint64_t sub_100095578(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100095684(a5, a6);
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
    result = sub_1000A3EB8();
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

char *sub_100095684(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000956D0(a1, a2);
  sub_100095800(&off_1000BDDA8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000956D0(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000958EC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000A3EB8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000A3B08();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000958EC(v10, 0);
        result = sub_1000A3E88();
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

uint64_t sub_100095800(uint64_t result)
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

  result = sub_100095960(result, v12, 1, v3);
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

void *sub_1000958EC(uint64_t a1, uint64_t a2)
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

  sub_10000275C(&qword_1000C9588, &qword_1000ACCA8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100095960(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000275C(&qword_1000C9588, &qword_1000ACCA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100095A54(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1000A2A18();
  v7 = *(v6 - 8);
  __chkstk_darwin(*(v7 + 64));
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1000A2190(&qword_1000C95B8, &type metadata accessor for SomeEvent);
  v35 = a2;
  v12 = sub_1000A3A38();
  v13 = v10 + 56;
  v33 = v10 + 56;
  v34 = v10;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v30 = v3;
    v31 = a1;
    v32 = ~v14;
    v29 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v28[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v9, *(v34 + 48) + v19 * v15, v6);
      sub_1000A2190(&qword_1000C95C0, &type metadata accessor for SomeEvent);
      v22 = sub_1000A3A68();
      v23 = *v20;
      (*v20)(v9, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v32;
      v16 = v21;
      if (((*(v33 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v30;
        a1 = v31;
        v7 = v29;
        goto LABEL_7;
      }
    }

    v23(v35, v6);
    v21(v31, *(v34 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v24 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v35;
    v16(v9, v35, v6);
    v36 = *v3;
    sub_100096A7C(v9, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v36;
    (*(v7 + 32))(a1, v26, v6);
    return 1;
  }
}

uint64_t sub_100095D34(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1000A3F88();
  sub_1000A3AC8();
  v9 = sub_1000A3F98();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1000A3F48() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100096D44(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100095E84(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1000A3808();
  v7 = *(v6 - 8);
  __chkstk_darwin(*(v7 + 64));
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1000A2190(&qword_1000C95A0, &type metadata accessor for ElectricityGuidance.Options);
  v35 = a2;
  v12 = sub_1000A3A38();
  v13 = v10 + 56;
  v33 = v10 + 56;
  v34 = v10;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v30 = v3;
    v31 = a1;
    v32 = ~v14;
    v29 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v28[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v9, *(v34 + 48) + v19 * v15, v6);
      sub_1000A2190(&qword_1000C95A8, &type metadata accessor for ElectricityGuidance.Options);
      v22 = sub_1000A3A68();
      v23 = *v20;
      (*v20)(v9, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v32;
      v16 = v21;
      if (((*(v33 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v30;
        a1 = v31;
        v7 = v29;
        goto LABEL_7;
      }
    }

    v23(v35, v6);
    v21(v31, *(v34 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v24 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v35;
    v16(v9, v35, v6);
    v36 = *v3;
    sub_100096EC4(v9, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v36;
    (*(v7 + 32))(a1, v26, v6);
    return 1;
  }
}

uint64_t sub_100096164(uint64_t a1)
{
  v2 = v1;
  v40 = sub_1000A2A18();
  v4 = *(v40 - 8);
  __chkstk_darwin(*(v4 + 64));
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v7 = *(*v2 + 24);
  }

  sub_10000275C(&qword_1000C95C8, &qword_1000ACCD8);
  result = sub_1000A3E68();
  v9 = result;
  if (*(v6 + 16))
  {
    v34 = v2;
    v35 = v6;
    v10 = 0;
    v11 = (v6 + 56);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v12 + 63) >> 6;
    v38 = v4 + 32;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(v6 + 48) + *(v4 + 72) * (v18 | (v10 << 6));
      v22 = *(v4 + 32);
      v36 = *(v4 + 72);
      v37 = v22;
      v22(v39, v21, v40);
      v23 = v9;
      v24 = *(v9 + 40);
      sub_1000A2190(&qword_1000C95B8, &type metadata accessor for SomeEvent);
      result = sub_1000A3A38();
      v9 = v23;
      v25 = -1 << *(v23 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v37(*(v23 + 48) + v17 * v36, v39, v40);
      ++*(v23 + 16);
      v6 = v35;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v6 + 32);
    if (v32 >= 64)
    {
      bzero(v11, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    v2 = v34;
    *(v6 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

uint64_t sub_1000964C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000275C(&qword_1000C7888, qword_1000AB8B8);
  result = sub_1000A3E68();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1000A3F88();
      sub_1000A3AC8();
      result = sub_1000A3F98();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100096720(uint64_t a1)
{
  v2 = v1;
  v40 = sub_1000A3808();
  v4 = *(v40 - 8);
  __chkstk_darwin(*(v4 + 64));
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v7 = *(*v2 + 24);
  }

  sub_10000275C(&qword_1000C95B0, &qword_1000ACCD0);
  result = sub_1000A3E68();
  v9 = result;
  if (*(v6 + 16))
  {
    v34 = v2;
    v35 = v6;
    v10 = 0;
    v11 = (v6 + 56);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v12 + 63) >> 6;
    v38 = v4 + 32;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(v6 + 48) + *(v4 + 72) * (v18 | (v10 << 6));
      v22 = *(v4 + 32);
      v36 = *(v4 + 72);
      v37 = v22;
      v22(v39, v21, v40);
      v23 = v9;
      v24 = *(v9 + 40);
      sub_1000A2190(&qword_1000C95A0, &type metadata accessor for ElectricityGuidance.Options);
      result = sub_1000A3A38();
      v9 = v23;
      v25 = -1 << *(v23 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v37(*(v23 + 48) + v17 * v36, v39, v40);
      ++*(v23 + 16);
      v6 = v35;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v6 + 32);
    if (v32 >= 64)
    {
      bzero(v11, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    v2 = v34;
    *(v6 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

uint64_t sub_100096A7C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1000A2A18();
  v7 = *(v6 - 8);
  __chkstk_darwin(*(v7 + 64));
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100096164(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1000972E8(&type metadata accessor for SomeEvent, &qword_1000C95C8, &qword_1000ACCD8);
      goto LABEL_12;
    }

    sub_100097520(v10 + 1);
  }

  v12 = *v3;
  v13 = *(*v3 + 40);
  sub_1000A2190(&qword_1000C95B8, &type metadata accessor for SomeEvent);
  v14 = sub_1000A3A38();
  v15 = v12 + 56;
  v31 = v12;
  v16 = -1 << *(v12 + 32);
  a2 = v14 & ~v16;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v9, *(v31 + 48) + v21 * a2, v6);
      sub_1000A2190(&qword_1000C95C0, &type metadata accessor for SomeEvent);
      v22 = sub_1000A3A68();
      (*(v19 - 8))(v9, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1000A3F68();
  __break(1u);
  return result;
}

Swift::Int sub_100096D44(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000964C0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10009718C();
      goto LABEL_16;
    }

    sub_10009783C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1000A3F88();
  sub_1000A3AC8();
  result = sub_1000A3F98();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1000A3F48();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1000A3F68();
  __break(1u);
  return result;
}

uint64_t sub_100096EC4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1000A3808();
  v7 = *(v6 - 8);
  __chkstk_darwin(*(v7 + 64));
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100096720(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1000972E8(&type metadata accessor for ElectricityGuidance.Options, &qword_1000C95B0, &qword_1000ACCD0);
      goto LABEL_12;
    }

    sub_100097A74(v10 + 1);
  }

  v12 = *v3;
  v13 = *(*v3 + 40);
  sub_1000A2190(&qword_1000C95A0, &type metadata accessor for ElectricityGuidance.Options);
  v14 = sub_1000A3A38();
  v15 = v12 + 56;
  v31 = v12;
  v16 = -1 << *(v12 + 32);
  a2 = v14 & ~v16;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v9, *(v31 + 48) + v21 * a2, v6);
      sub_1000A2190(&qword_1000C95A8, &type metadata accessor for ElectricityGuidance.Options);
      v22 = sub_1000A3A68();
      (*(v19 - 8))(v9, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1000A3F68();
  __break(1u);
  return result;
}

void *sub_10009718C()
{
  v1 = v0;
  sub_10000275C(&qword_1000C7888, qword_1000AB8B8);
  v2 = *v0;
  v3 = sub_1000A3E58();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1000972E8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = &v26 - v9;
  sub_10000275C(a2, a3);
  v11 = *v3;
  v12 = sub_1000A3E58();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_100097520(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1000A2A18();
  v4 = *(v36 - 8);
  __chkstk_darwin(*(v4 + 64));
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10000275C(&qword_1000C95C8, &qword_1000ACCD8);
  v9 = sub_1000A3E68();
  result = v7;
  if (*(v7 + 16))
  {
    v31 = v2;
    v11 = 0;
    v12 = v7 + 56;
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v34 = v4 + 16;
    v35 = v4;
    v17 = v9 + 56;
    v32 = (v4 + 32);
    v33 = result;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v35 + 72);
      (*(v35 + 16))(v6, *(result + 48) + v22 * (v19 | (v11 << 6)), v36);
      v23 = *(v9 + 40);
      sub_1000A2190(&qword_1000C95B8, &type metadata accessor for SomeEvent);
      result = sub_1000A3A38();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      (*v32)(*(v9 + 48) + v18 * v22, v6, v36);
      ++*(v9 + 16);
      result = v33;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v21 = *(v12 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v9;
  }

  return result;
}

uint64_t sub_10009783C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000275C(&qword_1000C7888, qword_1000AB8B8);
  result = sub_1000A3E68();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1000A3F88();

      sub_1000A3AC8();
      result = sub_1000A3F98();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100097A74(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1000A3808();
  v4 = *(v36 - 8);
  __chkstk_darwin(*(v4 + 64));
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10000275C(&qword_1000C95B0, &qword_1000ACCD0);
  v9 = sub_1000A3E68();
  result = v7;
  if (*(v7 + 16))
  {
    v31 = v2;
    v11 = 0;
    v12 = v7 + 56;
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v34 = v4 + 16;
    v35 = v4;
    v17 = v9 + 56;
    v32 = (v4 + 32);
    v33 = result;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v35 + 72);
      (*(v35 + 16))(v6, *(result + 48) + v22 * (v19 | (v11 << 6)), v36);
      v23 = *(v9 + 40);
      sub_1000A2190(&qword_1000C95A0, &type metadata accessor for ElectricityGuidance.Options);
      result = sub_1000A3A38();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      (*v32)(*(v9 + 48) + v18 * v22, v6, v36);
      ++*(v9 + 16);
      result = v33;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v21 = *(v12 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v9;
  }

  return result;
}

uint64_t sub_100097D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[90] = a4;
  v4[89] = a3;
  v4[88] = a2;
  v4[87] = a1;
  v5 = sub_1000A37F8();
  v4[91] = v5;
  v6 = *(v5 - 8);
  v4[92] = v6;
  v7 = *(v6 + 64) + 15;
  v4[93] = swift_task_alloc();
  v8 = sub_1000A2648();
  v4[94] = v8;
  v9 = *(v8 - 8);
  v4[95] = v9;
  v10 = *(v9 + 64) + 15;
  v4[96] = swift_task_alloc();
  v11 = *(*(sub_1000A22A8() - 8) + 64) + 15;
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v12 = sub_1000A3818();
  v4[99] = v12;
  v13 = *(v12 - 8);
  v4[100] = v13;
  v14 = *(v13 + 64) + 15;
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v15 = sub_1000A2688();
  v4[103] = v15;
  v16 = *(v15 - 8);
  v4[104] = v16;
  v17 = *(v16 + 64) + 15;
  v4[105] = swift_task_alloc();
  v18 = sub_1000A2AD8();
  v4[106] = v18;
  v19 = *(v18 - 8);
  v4[107] = v19;
  v20 = *(v19 + 64) + 15;
  v4[108] = swift_task_alloc();
  v4[109] = swift_task_alloc();
  v21 = sub_1000A3808();
  v4[110] = v21;
  v22 = *(v21 - 8);
  v4[111] = v22;
  v23 = *(v22 + 64) + 15;
  v4[112] = swift_task_alloc();
  v4[113] = swift_task_alloc();
  v24 = sub_1000A37B8();
  v4[114] = v24;
  v25 = *(v24 - 8);
  v4[115] = v25;
  v26 = *(v25 + 64) + 15;
  v4[116] = swift_task_alloc();
  v4[117] = swift_task_alloc();
  v27 = sub_1000A3778();
  v4[118] = v27;
  v28 = *(v27 - 8);
  v4[119] = v28;
  v29 = *(v28 + 64) + 15;
  v4[120] = swift_task_alloc();
  v4[121] = swift_task_alloc();
  v30 = sub_1000A37D8();
  v4[122] = v30;
  v31 = *(v30 - 8);
  v4[123] = v31;
  v32 = *(v31 + 64) + 15;
  v4[124] = swift_task_alloc();
  v4[125] = swift_task_alloc();
  v33 = sub_1000A25F8();
  v4[126] = v33;
  v34 = *(v33 - 8);
  v4[127] = v34;
  v35 = *(v34 + 64) + 15;
  v4[128] = swift_task_alloc();
  v4[129] = swift_task_alloc();
  v4[130] = swift_task_alloc();
  v4[131] = swift_task_alloc();
  v4[132] = swift_task_alloc();
  v36 = *(*(sub_10000275C(&qword_1000C92C0, &qword_1000ACB30) - 8) + 64) + 15;
  v4[133] = swift_task_alloc();
  v4[134] = swift_task_alloc();
  v37 = sub_1000A2508();
  v4[135] = v37;
  v38 = *(v37 - 8);
  v4[136] = v38;
  v39 = *(v38 + 64) + 15;
  v4[137] = swift_task_alloc();
  v4[138] = swift_task_alloc();
  v4[139] = swift_task_alloc();
  v4[140] = swift_task_alloc();

  return _swift_task_switch(sub_10009830C, 0, 0);
}

uint64_t sub_10009830C()
{
  sub_1000A3AA8();
  v0[141] = os_transaction_create();

  sub_10003690C();
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v1 = sub_1000A3538();
  v0[142] = sub_100001E38(v1, qword_1000C96B8);
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
  v0[143] = qword_1000C95F0;

  return _swift_task_switch(sub_1000984C8, v5, 0);
}

uint64_t sub_1000984C8()
{
  *(v0 + 97) = *(*(v0 + 1144) + 144);

  return _swift_task_switch(sub_100098538, 0, 0);
}

uint64_t sub_100098538()
{
  v1 = qword_1000C95F0;
  *(v0 + 1152) = qword_1000C95F0;

  return _swift_task_switch(sub_1000985B0, v1, 0);
}

uint64_t sub_1000985B0()
{
  v1 = v0[144];
  v0[145] = *(v1 + 112);
  v0[146] = *(v1 + 120);

  return _swift_task_switch(sub_100098630, 0, 0);
}

uint64_t sub_100098630()
{
  if (*(v0 + 1168))
  {
    if (*(v0 + 97) == 1)
    {
      if (qword_1000C7590 != -1)
      {
        swift_once();
      }

      *(v0 + 1176) = qword_1000C96F8;

      v1 = swift_task_alloc();
      *(v0 + 1184) = v1;
      *v1 = v0;
      v1[1] = sub_1000989B0;
      v2 = *(v0 + 1072);
      v3 = *(v0 + 696);

      return sub_10006CFD4(v2, v3);
    }
  }

  v5 = sub_1000A3598();
  sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError);
  swift_allocError();
  (*(*(v5 - 8) + 104))(v6, enum case for EnergyKitError.guidanceUnavailable(_:), v5);
  v7 = *(v0 + 1128);
  v8 = *(v0 + 1120);
  v9 = *(v0 + 1112);
  v10 = *(v0 + 1104);
  v11 = *(v0 + 1096);
  v12 = *(v0 + 1072);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  v16 = *(v0 + 1048);
  v17 = *(v0 + 1040);
  v18 = *(v0 + 1032);
  v19 = *(v0 + 1024);
  v20 = *(v0 + 1000);
  v21 = *(v0 + 992);
  v22 = *(v0 + 968);
  v23 = *(v0 + 960);
  v24 = *(v0 + 936);
  v25 = *(v0 + 928);
  v26 = *(v0 + 904);
  v27 = *(v0 + 896);
  v28 = *(v0 + 872);
  v29 = *(v0 + 864);
  v30 = *(v0 + 840);
  v31 = *(v0 + 816);
  v32 = *(v0 + 808);
  v33 = *(v0 + 784);
  v34 = *(v0 + 776);
  v35 = *(v0 + 768);
  v36 = *(v0 + 744);
  swift_willThrow();
  swift_unknownObjectRelease();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1000989B0()
{
  v1 = *(*v0 + 1184);
  v2 = *(*v0 + 1176);
  v4 = *v0;

  return _swift_task_switch(sub_100098AC8, 0, 0);
}

uint64_t sub_100098AC8()
{
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  v4 = *(v1 + 48);
  v0[149] = v4;
  v0[150] = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v2) == 1)
  {
    v5 = v0[146];

    sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);
    v6 = sub_1000A3598();
    sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for EnergyKitError.guidanceUnavailable(_:), v6);
    v8 = v0[141];
    v9 = v0[140];
    v10 = v0[139];
    v11 = v0[138];
    v12 = v0[137];
    v13 = v0[134];
    v14 = v0[133];
    v15 = v0[132];
    v24 = v0[131];
    v25 = v0[130];
    v26 = v0[129];
    v27 = v0[128];
    v28 = v0[125];
    v29 = v0[124];
    v30 = v0[121];
    v31 = v0[120];
    v32 = v0[117];
    v33 = v0[116];
    v34 = v0[113];
    v35 = v0[112];
    v36 = v0[109];
    v37 = v0[108];
    v38 = v0[105];
    v39 = v0[102];
    v40 = v0[101];
    v41 = v0[98];
    v42 = v0[97];
    v43 = v0[96];
    v44 = v0[93];
    swift_willThrow();
    swift_unknownObjectRelease();

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[140];
    v19 = *(v1 + 32);
    v0[151] = v19;
    v0[152] = (v1 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v19(v18, v3, v2);
    v20 = sub_1000A24C8();
    v22 = v21;
    v0[153] = v21;
    v23 = swift_task_alloc();
    v0[154] = v23;
    *v23 = v0;
    v23[1] = sub_100098EA4;

    return sub_100066308(v20, v22, 0);
  }
}

uint64_t sub_100098EA4(uint64_t a1)
{
  v2 = *(*v1 + 1232);
  v3 = *(*v1 + 1224);
  v5 = *v1;
  *(*v1 + 1240) = a1;

  return _swift_task_switch(sub_100098FC4, 0, 0);
}

uint64_t sub_100098FC4()
{
  v83 = v0;
  v1 = *(v0 + 1136);
  v2 = *(v0 + 720);

  v3 = sub_1000A3518();
  v4 = sub_1000A3CB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 720);
    v6 = *(v0 + 712);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v82 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000954AC(v6, v5, &v82);
    _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Location: %s", v7, 0xCu);
    sub_10000F7B8(v8);
  }

  v9 = *(v0 + 1056);
  v10 = *(v0 + 1016);
  v11 = *(v0 + 1008);
  v12 = *(v0 + 1000);
  v13 = *(v0 + 984);
  v14 = *(v0 + 976);
  v15 = *(v0 + 968);
  v16 = *(v0 + 952);
  v17 = *(v0 + 944);
  v18 = *(v0 + 704);
  v19 = enum case for HSGuidanceType.reduce(_:);
  *(v0 + 100) = enum case for HSGuidanceType.reduce(_:);
  v20 = *(v10 + 104);
  *(v0 + 1248) = v20;
  *(v0 + 1256) = (v10 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v80 = v19;
  v20(v9);
  sub_1000A39F8();
  sub_1000A37C8();
  v21 = *(v13 + 8);
  *(v0 + 1264) = v21;
  *(v0 + 1272) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v12, v14);
  v22 = (*(v16 + 88))(v15, v17);
  if (v22 == enum case for ElectricityGuidance.SuggestedAction.shift(_:))
  {
    v23 = *(v0 + 1056);
    v24 = *(v0 + 1008);
    (*(*(v0 + 1016) + 8))(v23, v24);
    v25 = enum case for HSGuidanceType.shift(_:);
    v26 = v23;
  }

  else
  {
    if (v22 != enum case for ElectricityGuidance.SuggestedAction.reduce(_:))
    {
      (*(*(v0 + 952) + 8))(*(v0 + 968), *(v0 + 944));
      goto LABEL_9;
    }

    v27 = *(v0 + 1056);
    v24 = *(v0 + 1008);
    (*(*(v0 + 1016) + 8))(v27, v24);
    v26 = v27;
    v25 = v80;
  }

  (v20)(v26, v25, v24);
LABEL_9:
  v28 = *(v0 + 1240);
  v29 = *(v0 + 936);
  v30 = *(v0 + 912);
  *(v0 + 680) = &_swiftEmptySetSingleton;
  *(v0 + 688) = 0;
  sub_1000A2190(&qword_1000C9580, &type metadata accessor for ElectricityGuidance.AnalyticsOptions);
  sub_1000A3FA8();
  if (v28)
  {
    v31 = *(v0 + 1240);
    v32 = sub_1000A2D58();
    v34 = v33;

    *(v0 + 1280) = v32;
    *(v0 + 1288) = v34;
    if (v34)
    {
      v35 = v31;
      v36 = sub_1000A2DF8();
      v38 = v37;

      *(v0 + 1296) = v36;
      *(v0 + 1304) = v38;
      if (v38)
      {
        v39 = v35;
        v40 = sub_1000A2DE8();
        v42 = v41;

        *(v0 + 1312) = v40;
        *(v0 + 1320) = v42;
        if (v42)
        {
          v43 = v39;
          v78 = sub_1000A2D98();
          v79 = v44;

          v45 = HIBYTE(v34) & 0xF;
          if ((v34 & 0x2000000000000000) == 0)
          {
            v45 = v32 & 0xFFFFFFFFFFFFLL;
          }

          if (!v45)
          {
            goto LABEL_29;
          }

          v46 = HIBYTE(v38) & 0xF;
          if ((v38 & 0x2000000000000000) == 0)
          {
            v46 = v36 & 0xFFFFFFFFFFFFLL;
          }

          if (v46)
          {
            if ((v42 & 0x2000000000000000) != 0)
            {
              v47 = HIBYTE(v42) & 0xF;
            }

            else
            {
              v47 = v40 & 0xFFFFFFFFFFFFLL;
            }

            if (v47)
            {
              v48 = HIBYTE(v79) & 0xF;
              if ((v79 & 0x2000000000000000) == 0)
              {
                v48 = v78 & 0xFFFFFFFFFFFFLL;
              }

              if (!v48)
              {
                v49 = *(v0 + 904);
                v50 = *(v0 + 896);
                v51 = *(v0 + 888);
                v52 = *(v0 + 880);
                v53 = enum case for ElectricityGuidance.Options.locationHasRatePlan(_:);
                v54 = *(v51 + 104);
                *(v0 + 1328) = v54;
                *(v0 + 1336) = (v51 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
                v54(v50, v53, v52);
                sub_100095E84(v49, v50);
                v55 = *(v51 + 8);
                *(v0 + 1344) = v55;
                *(v0 + 1352) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                v55(v49, v52);
                v56 = qword_1000C95F0;
                *(v0 + 1360) = qword_1000C95F0;

                return _swift_task_switch(sub_1000997F4, v56, 0);
              }
            }
          }

          else
          {
LABEL_29:
          }
        }
      }
    }
  }

  v57 = *(v0 + 1056);
  v58 = *(v0 + 1040);
  v59 = *(v0 + 1024);
  v60 = *(v0 + 1016);
  v61 = *(v0 + 1008);
  (v20)(v58, v80, v61);
  sub_1000A2190(&qword_1000C9598, &type metadata accessor for HSGuidanceType);
  sub_1000A3B28();
  sub_1000A3B28();
  v62 = *(v60 + 8);
  *(v0 + 1568) = v62;
  *(v0 + 1576) = (v60 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v62(v58, v61);
  if (*(v0 + 98) == *(v0 + 186))
  {
    v63 = v80;
  }

  else
  {
    v63 = enum case for HSGuidanceType.shift(_:);
  }

  (v20)(v59, v63, v61);
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 872);
  v65 = *(v0 + 864);
  v66 = *(v0 + 856);
  v67 = *(v0 + 848);
  v68 = sub_100001E38(v67, qword_1000C95F8);
  swift_beginAccess();
  (*(v66 + 16))(v64, v68, v67);
  sub_1000A2A58();
  sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
  LOBYTE(v68) = sub_1000A3DF8();
  v69 = *(v66 + 8);
  v69(v65, v67);
  v69(v64, v67);
  if ((v68 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
  {
    sub_1000A2A38();
    *(v0 + 1608) = sub_1000A2A28();
    v72 = *(&async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + 1);
    v81 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
    v73 = swift_task_alloc();
    *(v0 + 1616) = v73;
    *v73 = v0;
    v73[1] = sub_10009E690;
    v74 = *(v0 + 1024);
    v75 = *(v0 + 720);
    v76 = *(v0 + 712);
    v86 = 1;
    v85 = 0xE000000000000000;

    __asm { BR              X8 }
  }

  v70 = swift_task_alloc();
  *(v0 + 1584) = v70;
  *v70 = v0;
  v70[1] = sub_10009DBA8;
  v71 = *(v0 + 1024);

  return sub_1000688B0(v71);
}

uint64_t sub_1000997F4()
{
  if ((sub_1000A2D18() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 872);
  v2 = *(v0 + 864);
  v3 = *(v0 + 856);
  v4 = *(v0 + 848);
  v5 = sub_100001E38(v4, qword_1000C95F8);
  swift_beginAccess();
  (*(v3 + 16))(v1, v5, v4);
  sub_1000A2AA8();
  sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
  LOBYTE(v5) = sub_1000A3DF8();
  v6 = *(v3 + 8);
  v6(v2, v4);
  v6(v1, v4);
  if (v5)
  {
    v7 = *(v0 + 1360);

    v8 = sub_10009A274;
  }

  else
  {
LABEL_6:
    *(v0 + 185) = *(*(v0 + 1360) + 145);

    v8 = sub_100099998;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100099998()
{
  v1 = *(v0 + 185);
  v2 = *(v0 + 1160) == 0x6C7070612E6D6F63 && *(v0 + 1168) == 0xEF64656D6F682E65;
  if (v2 || (sub_1000A3F48() & 1) != 0 || *(v0 + 1160) == 0xD00000000000001CLL && *(v0 + 1168) == 0x80000001000A6870)
  {
    v3 = 1;
    if ((sub_1000A2D18() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v3 = sub_1000A3F48();
    if ((sub_1000A2D18() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v61 = v1;
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 872);
  v5 = *(v0 + 864);
  v6 = *(v0 + 856);
  v7 = *(v0 + 848);
  v8 = sub_100001E38(v7, qword_1000C95F8);
  swift_beginAccess();
  v60 = *(v6 + 16);
  v60(v4, v8, v7);
  sub_1000A2A48();
  sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
  v9 = sub_1000A3DF8();
  v10 = *(v6 + 8);
  v10(v5, v7);
  v10(v4, v7);
  if (v9)
  {
    v11 = *(v0 + 1136);
    v12 = sub_1000A3518();
    v13 = sub_1000A3CC8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "[GuidanceOperations] Mock Guidance Request As HomeKit", v14, 2u);
    }

    v3 = 1;
  }

  v15 = *(v0 + 872);
  v16 = *(v0 + 864);
  v17 = *(v0 + 848);
  v60(v15, v8, v17);
  sub_1000A2AA8();
  v18 = sub_1000A3DF8();
  v10(v16, v17);
  v10(v15, v17);
  v1 = v61;
  if (v18)
  {
    v19 = *(v0 + 1136);
    v20 = sub_1000A3518();
    v21 = sub_1000A3CC8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "[GuidanceOperations] Mock SPI Disabled", v22, 2u);
    }

LABEL_32:
    v46 = sub_1000A2CF8();
    *(v0 + 392) = v46;
    *(v0 + 400) = sub_1000A2190(&qword_1000C7D68, &type metadata accessor for EnergyKitFeatures);
    v47 = sub_100021D50((v0 + 368));
    (*(*(v46 - 8) + 104))(v47, enum case for EnergyKitFeatures.costInclusionInGuidanceAPI2025(_:), v46);
    LOBYTE(v46) = sub_1000A25B8();
    sub_10000F7B8((v0 + 368));
    if (v46)
    {
      if (qword_1000C7588 != -1)
      {
        swift_once();
      }

      v48 = swift_task_alloc();
      *(v0 + 1368) = v48;
      *v48 = v0;
      v48[1] = sub_10009A784;
      v49 = *(v0 + 1120);

      return sub_10004D838(v49);
    }

    goto LABEL_38;
  }

LABEL_20:
  if ((v1 & v3) != 1)
  {
    goto LABEL_32;
  }

  v23 = *(v0 + 1240);
  v24 = sub_1000A2D88();

  if ((v24 & 0x1FFFFFFFFLL) != 0xFFFFFFFFLL)
  {
LABEL_38:
    v50 = *(v0 + 1304);
    v51 = *(v0 + 1288);
    type metadata accessor for RatePlanQuery();
    v52 = swift_task_alloc();
    *(v0 + 1376) = v52;
    *v52 = v0;
    v52[1] = sub_10009ACDC;
    v53 = *(v0 + 1296);
    v54 = *(v0 + 1280);

    return sub_100049CB0(v54, v51, v53, v50);
  }

  v25 = *(v0 + 1320);
  v26 = *(v0 + 1304);
  v27 = *(v0 + 1288);
  v28 = *(v0 + 1256);
  v29 = *(v0 + 1248);
  v30 = *(v0 + 100);
  v31 = *(v0 + 1056);
  v32 = *(v0 + 1040);
  v62 = *(v0 + 1032);
  v33 = *(v0 + 1016);
  v34 = *(v0 + 1008);

  v29(v32, v30, v34);
  sub_1000A2190(&qword_1000C9598, &type metadata accessor for HSGuidanceType);
  sub_1000A3B28();
  sub_1000A3B28();
  v35 = *(v33 + 8);
  *(v0 + 1504) = v35;
  *(v0 + 1512) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v32, v34);
  if (*(v0 + 274) == *(v0 + 276))
  {
    v36 = v30;
  }

  else
  {
    v36 = enum case for HSGuidanceType.shift(_:);
  }

  v29(v62, v36, v34);
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v37 = *(v0 + 872);
  v38 = *(v0 + 864);
  v39 = *(v0 + 856);
  v40 = *(v0 + 848);
  v41 = sub_100001E38(v40, qword_1000C95F8);
  swift_beginAccess();
  (*(v39 + 16))(v37, v41, v40);
  sub_1000A2A58();
  sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
  LOBYTE(v41) = sub_1000A3DF8();
  v42 = *(v39 + 8);
  v42(v38, v40);
  v42(v37, v40);
  if ((v41 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
  {
    sub_1000A2A38();
    *(v0 + 1544) = sub_1000A2A28();
    v55 = *(&async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + 1);
    v63 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
    v56 = swift_task_alloc();
    *(v0 + 1552) = v56;
    *v56 = v0;
    v56[1] = sub_10009D9B8;
    v57 = *(v0 + 1032);
    v58 = *(v0 + 720);
    v59 = *(v0 + 712);

    __asm { BR              X8 }
  }

  v43 = swift_task_alloc();
  *(v0 + 1520) = v43;
  *v43 = v0;
  v43[1] = sub_10009CE80;
  v44 = *(v0 + 1032);

  return sub_1000688B0(v44);
}

uint64_t sub_10009A274()
{
  v1 = v0[145] == 0x6C7070612E6D6F63 && v0[146] == 0xEF64656D6F682E65;
  if (!v1 && (sub_1000A3F48() & 1) == 0 && (v0[145] != 0xD00000000000001CLL || v0[146] != 0x80000001000A6870))
  {
    sub_1000A3F48();
  }

  if (sub_1000A2D18())
  {
    if (qword_1000C7560 != -1)
    {
      swift_once();
    }

    v2 = v0[109];
    v3 = v0[108];
    v4 = v0[107];
    v5 = v0[106];
    v6 = sub_100001E38(v5, qword_1000C95F8);
    swift_beginAccess();
    v31 = *(v4 + 16);
    v31(v2, v6, v5);
    sub_1000A2A48();
    sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
    v7 = sub_1000A3DF8();
    v8 = *(v4 + 8);
    v8(v3, v5);
    v8(v2, v5);
    if (v7)
    {
      v9 = v0[142];
      v10 = sub_1000A3518();
      v11 = sub_1000A3CC8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "[GuidanceOperations] Mock Guidance Request As HomeKit", v12, 2u);
      }
    }

    v13 = v0[109];
    v14 = v0[108];
    v15 = v0[106];
    v31(v13, v6, v15);
    sub_1000A2AA8();
    v16 = sub_1000A3DF8();
    v8(v14, v15);
    v8(v13, v15);
    if (v16)
    {
      v17 = v0[142];
      v18 = sub_1000A3518();
      v19 = sub_1000A3CC8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "[GuidanceOperations] Mock SPI Disabled", v20, 2u);
      }
    }
  }

  v21 = sub_1000A2CF8();
  v0[49] = v21;
  v0[50] = sub_1000A2190(&qword_1000C7D68, &type metadata accessor for EnergyKitFeatures);
  v22 = sub_100021D50(v0 + 46);
  (*(*(v21 - 8) + 104))(v22, enum case for EnergyKitFeatures.costInclusionInGuidanceAPI2025(_:), v21);
  LOBYTE(v21) = sub_1000A25B8();
  sub_10000F7B8(v0 + 46);
  if (v21)
  {
    if (qword_1000C7588 != -1)
    {
      swift_once();
    }

    v23 = swift_task_alloc();
    v0[171] = v23;
    *v23 = v0;
    v23[1] = sub_10009A784;
    v24 = v0[140];

    return sub_10004D838(v24);
  }

  else
  {
    v26 = v0[163];
    v27 = v0[161];
    type metadata accessor for RatePlanQuery();
    v28 = swift_task_alloc();
    v0[172] = v28;
    *v28 = v0;
    v28[1] = sub_10009ACDC;
    v29 = v0[162];
    v30 = v0[160];

    return sub_100049CB0(v30, v27, v29, v26);
  }
}

uint64_t sub_10009A784(char a1)
{
  v2 = *(*v1 + 1368);
  v4 = *v1;
  *(*v1 + 273) = a1;

  return _swift_task_switch(sub_10009A884, 0, 0);
}

uint64_t sub_10009A884()
{
  if (*(v0 + 273) == 1)
  {
    v1 = *(v0 + 1304);
    v2 = *(v0 + 1288);
    type metadata accessor for RatePlanQuery();
    v3 = swift_task_alloc();
    *(v0 + 1376) = v3;
    *v3 = v0;
    v3[1] = sub_10009ACDC;
    v4 = *(v0 + 1296);
    v5 = *(v0 + 1280);

    return sub_100049CB0(v5, v2, v4, v1);
  }

  else
  {
    v7 = *(v0 + 1320);
    v8 = *(v0 + 1304);
    v9 = *(v0 + 1288);
    v10 = *(v0 + 1256);
    v11 = *(v0 + 1248);
    v12 = *(v0 + 100);
    v13 = *(v0 + 1056);
    v14 = *(v0 + 1040);
    v32 = *(v0 + 1032);
    v15 = *(v0 + 1016);
    v16 = *(v0 + 1008);

    v11(v14, v12, v16);
    sub_1000A2190(&qword_1000C9598, &type metadata accessor for HSGuidanceType);
    sub_1000A3B28();
    sub_1000A3B28();
    v17 = *(v15 + 8);
    *(v0 + 1504) = v17;
    *(v0 + 1512) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v14, v16);
    if (*(v0 + 274) == *(v0 + 276))
    {
      v18 = v12;
    }

    else
    {
      v18 = enum case for HSGuidanceType.shift(_:);
    }

    v11(v32, v18, v16);
    if (qword_1000C7560 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 872);
    v20 = *(v0 + 864);
    v21 = *(v0 + 856);
    v22 = *(v0 + 848);
    v23 = sub_100001E38(v22, qword_1000C95F8);
    swift_beginAccess();
    (*(v21 + 16))(v19, v23, v22);
    sub_1000A2A58();
    sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
    LOBYTE(v23) = sub_1000A3DF8();
    v24 = *(v21 + 8);
    v24(v20, v22);
    v24(v19, v22);
    if ((v23 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
    {
      sub_1000A2A38();
      *(v0 + 1544) = sub_1000A2A28();
      v27 = *(&async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + 1);
      v33 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
      v28 = swift_task_alloc();
      *(v0 + 1552) = v28;
      *v28 = v0;
      v28[1] = sub_10009D9B8;
      v29 = *(v0 + 1032);
      v30 = *(v0 + 720);
      v31 = *(v0 + 712);

      __asm { BR              X8 }
    }

    v25 = swift_task_alloc();
    *(v0 + 1520) = v25;
    *v25 = v0;
    v25[1] = sub_10009CE80;
    v26 = *(v0 + 1032);

    return sub_1000688B0(v26);
  }
}

uint64_t sub_10009ACDC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1376);
  v12 = *v3;
  v4[173] = a1;
  v4[174] = a2;

  if (v2)
  {
    v6 = v4[165];
    v7 = v4[163];
    v8 = v4[161];

    v9 = sub_10009F590;
  }

  else
  {
    v10 = v4[161];

    v9 = sub_10009AE30;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10009AE30()
{
  v1 = *(v0 + 1392);
  if (v1)
  {
    v2 = *(v0 + 1384) & 0xFFFFFFFFFFFFLL;
    if ((v1 & 0x2000000000000000) != 0)
    {
      v2 = HIBYTE(v1) & 0xF;
    }

    if (v2)
    {
      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 872);
      v4 = *(v0 + 864);
      v5 = *(v0 + 856);
      v6 = *(v0 + 848);
      v7 = sub_100001E38(v6, qword_1000C95F8);
      swift_beginAccess();
      (*(v5 + 16))(v3, v7, v6);
      sub_1000A2A58();
      sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
      LOBYTE(v7) = sub_1000A3DF8();
      v8 = *(v5 + 8);
      v8(v4, v6);
      v8(v3, v6);
      if (v7 & 1) != 0 && (sub_1000A2D18())
      {
        v9 = *(v0 + 1320);
        v10 = *(v0 + 1304);

        v11 = swift_task_alloc();
        *(v0 + 1400) = v11;
        *v11 = v0;
        v11[1] = sub_10009B430;
        v12 = *(v0 + 1056);
        goto LABEL_21;
      }

      v15 = *(v0 + 1320);
      v16 = *(v0 + 1304);
      sub_1000A2A38();
      *(v0 + 1424) = sub_1000A2A28();
      v17 = *(&async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + 1);
      v51 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
      v18 = swift_task_alloc();
      *(v0 + 1432) = v18;
      *v18 = v0;
      v18[1] = sub_10009BFA4;
      v19 = *(v0 + 1384);
      v20 = *(v0 + 1312);
      v21 = *(v0 + 1296);
      v22 = *(v0 + 1056);
      v23 = *(v0 + 720);
      v24 = *(v0 + 712);
LABEL_25:

      __asm { BR              X8 }
    }

    v25 = *(v0 + 1320);
    v26 = *(v0 + 1304);
    v27 = *(v0 + 1392);
  }

  else
  {
    v13 = *(v0 + 1320);
    v14 = *(v0 + 1304);
  }

  v28 = *(v0 + 1256);
  v29 = *(v0 + 1248);
  v30 = *(v0 + 100);
  v31 = *(v0 + 1056);
  v32 = *(v0 + 1048);
  v33 = *(v0 + 1040);
  v34 = *(v0 + 1016);
  v35 = *(v0 + 1008);
  v29(v33, v30, v35);
  sub_1000A2190(&qword_1000C9598, &type metadata accessor for HSGuidanceType);
  sub_1000A3B28();
  sub_1000A3B28();
  v36 = *(v34 + 8);
  *(v0 + 1440) = v36;
  *(v0 + 1448) = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v33, v35);
  if (*(v0 + 188) == *(v0 + 190))
  {
    v37 = v30;
  }

  else
  {
    v37 = enum case for HSGuidanceType.shift(_:);
  }

  v29(v32, v37, v35);
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 872);
  v39 = *(v0 + 864);
  v40 = *(v0 + 856);
  v41 = *(v0 + 848);
  v42 = sub_100001E38(v41, qword_1000C95F8);
  swift_beginAccess();
  (*(v40 + 16))(v38, v42, v41);
  sub_1000A2A58();
  sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
  LOBYTE(v42) = sub_1000A3DF8();
  v43 = *(v40 + 8);
  v43(v39, v41);
  v43(v38, v41);
  if ((v42 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
  {
    sub_1000A2A38();
    *(v0 + 1480) = sub_1000A2A28();
    v46 = *(&async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + 1);
    v51 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
    v47 = swift_task_alloc();
    *(v0 + 1488) = v47;
    *v47 = v0;
    v47[1] = sub_10009CC90;
    v48 = *(v0 + 1048);
    v49 = *(v0 + 720);
    v50 = *(v0 + 712);
    goto LABEL_25;
  }

  v44 = swift_task_alloc();
  *(v0 + 1456) = v44;
  *v44 = v0;
  v44[1] = sub_10009C158;
  v12 = *(v0 + 1048);
LABEL_21:

  return sub_1000688B0(v12);
}

uint64_t sub_10009B430(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1400);
  v8 = *v3;

  if (v2)
  {
    v9 = v6[85];
    v6[177] = v2;
    v10 = v6[146];

    v11 = sub_10009BBA0;
  }

  else
  {
    v6[51] = v3;
    v6[52] = a1;
    v6[53] = a2;
    v6[54] = 0;
    v6[176] = 0;
    v11 = sub_10009B580;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10009B580()
{
  v75 = *(v0 + 1352);
  v1 = *(v0 + 1344);
  v2 = *(v0 + 1336);
  v3 = *(v0 + 936);
  v4 = *(v0 + 928);
  v5 = *(v0 + 920);
  v6 = *(v0 + 912);
  v7 = *(v0 + 904);
  v8 = *(v0 + 896);
  v9 = *(v0 + 880);
  (*(v0 + 1328))(v8, enum case for ElectricityGuidance.Options.guidanceIncorporatesRatePlan(_:), v9);
  sub_100095E84(v7, v8);
  v1(v7, v9);
  sub_1000A3798();
  (*(v5 + 8))(v3, v6);
  (*(v5 + 32))(v3, v4, v6);
  v10 = *(v0 + 416);
  v11 = *(v0 + 424);
  v12 = *(v0 + 1408);
  v13 = *(v0 + 840);
  v14 = *(v0 + 824);
  *(v0 + 1632) = v11;
  *(v0 + 1640) = v10;
  v15 = sub_1000A2208();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_1000A21F8();
  sub_1000A2190(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v12)
  {
    v18 = *(v0 + 1168);
    v19 = *(v0 + 1016);
    v73 = *(v0 + 1008);
    v76 = *(v0 + 1056);
    v20 = *(v0 + 936);
    v21 = *(v0 + 920);
    v22 = *(v0 + 912);

    sub_10003228C(v10, v11);
    (*(v21 + 8))(v20, v22);
    v23 = *(v0 + 680);

    (*(v19 + 8))(v76, v73);
    v24 = *(v0 + 1136);
    swift_errorRetain();
    v25 = sub_1000A3518();
    v26 = sub_1000A3CC8();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 1240);
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "[SiteOperations] Grid Fetch Failed: %@", v29, 0xCu);
      sub_100022154(v30, &unk_1000C7740, &qword_1000AB610);

      v25 = v28;
    }

    else
    {
    }

    v39 = *(v0 + 1120);
    v40 = *(v0 + 1088);
    v41 = *(v0 + 1080);

    (*(v40 + 8))(v39, v41);
    v42 = sub_1000A3598();
    sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v42 - 8) + 104))(v43, enum case for EnergyKitError.guidanceUnavailable(_:), v42);
    v44 = *(v0 + 1128);
    v45 = *(v0 + 1120);
    v46 = *(v0 + 1112);
    v47 = *(v0 + 1104);
    v48 = *(v0 + 1096);
    v49 = *(v0 + 1072);
    v50 = *(v0 + 1064);
    v51 = *(v0 + 1056);
    v53 = *(v0 + 1048);
    v54 = *(v0 + 1040);
    v55 = *(v0 + 1032);
    v56 = *(v0 + 1024);
    v57 = *(v0 + 1000);
    v58 = *(v0 + 992);
    v59 = *(v0 + 968);
    v60 = *(v0 + 960);
    v61 = *(v0 + 936);
    v62 = *(v0 + 928);
    v63 = *(v0 + 904);
    v64 = *(v0 + 896);
    v65 = *(v0 + 872);
    v66 = *(v0 + 864);
    v67 = *(v0 + 840);
    v68 = *(v0 + 816);
    v69 = *(v0 + 808);
    v70 = *(v0 + 784);
    v71 = *(v0 + 776);
    v72 = *(v0 + 768);
    v74 = *(v0 + 744);
    swift_willThrow();
    swift_unknownObjectRelease();

    v52 = *(v0 + 8);

    return v52();
  }

  else
  {

    sub_1000A2A38();
    *(v0 + 1648) = sub_1000A2A28();
    v32 = *(&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + 1);
    v77 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
    v33 = swift_task_alloc();
    *(v0 + 1656) = v33;
    *v33 = v0;
    v33[1] = sub_10009E87C;
    v34 = *(v0 + 1120);
    v35 = *(v0 + 1064);
    v36 = *(v0 + 720);
    v37 = *(v0 + 712);

    return v77(v35, v37, v36, v34);
  }
}

uint64_t sub_10009BBA0()
{
  v1 = v0[132];
  v2 = v0[127];
  v3 = v0[126];
  (*(v0[115] + 8))(v0[117], v0[114]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[177];
  v5 = v0[142];
  swift_errorRetain();
  v6 = sub_1000A3518();
  v7 = sub_1000A3CC8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[155];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "[SiteOperations] Grid Fetch Failed: %@", v10, 0xCu);
    sub_100022154(v11, &unk_1000C7740, &qword_1000AB610);

    v6 = v9;
  }

  else
  {
  }

  v13 = v0[140];
  v14 = v0[136];
  v15 = v0[135];

  (*(v14 + 8))(v13, v15);
  v16 = sub_1000A3598();
  sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError);
  swift_allocError();
  (*(*(v16 - 8) + 104))(v17, enum case for EnergyKitError.guidanceUnavailable(_:), v16);
  v18 = v0[141];
  v19 = v0[140];
  v20 = v0[139];
  v21 = v0[138];
  v22 = v0[137];
  v23 = v0[134];
  v24 = v0[133];
  v25 = v0[132];
  v28 = v0[131];
  v29 = v0[130];
  v30 = v0[129];
  v31 = v0[128];
  v32 = v0[125];
  v33 = v0[124];
  v34 = v0[121];
  v35 = v0[120];
  v36 = v0[117];
  v37 = v0[116];
  v38 = v0[113];
  v39 = v0[112];
  v40 = v0[109];
  v41 = v0[108];
  v42 = v0[105];
  v43 = v0[102];
  v44 = v0[101];
  v45 = v0[98];
  v46 = v0[97];
  v47 = v0[96];
  v48 = v0[93];
  swift_willThrow();
  swift_unknownObjectRelease();

  v26 = v0[1];

  return v26();
}

uint64_t sub_10009BFA4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1432);
  v8 = *v3;

  v9 = v6[178];
  if (v2)
  {
    v10 = v6[174];
    v11 = v6[165];
    v12 = v6[163];
    v13 = v6[85];

    v6[177] = v2;
    v14 = v6[146];

    v15 = sub_10009BBA0;
  }

  else
  {
    v16 = v6[174];
    v17 = v6[165];
    v18 = v6[163];

    v6[51] = v3;
    v6[52] = a1;
    v6[53] = a2;
    v6[54] = 0;
    v6[176] = 0;
    v15 = sub_10009B580;
  }

  return _swift_task_switch(v15, 0, 0);
}

uint64_t sub_10009C158(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1456);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v6 + 1168);

    *(v6 + 1472) = v2;
    v10 = *(v6 + 1448);
    (*(v6 + 1440))(*(v6 + 1048), *(v6 + 1008));
    v11 = *(v6 + 680);

    v12 = sub_10009C894;
  }

  else
  {
    *(v6 + 440) = v3;
    *(v6 + 448) = a1;
    *(v6 + 456) = a2;
    *(v6 + 464) = 0;
    *(v6 + 1464) = 0;
    v13 = *(v6 + 1448);
    (*(v6 + 1440))(*(v6 + 1048), *(v6 + 1008));
    v12 = sub_10009C2CC;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_10009C2CC()
{
  v1 = v0[117];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[114];
  sub_1000A3788();
  (*(v3 + 8))(v1, v4);
  (*(v3 + 32))(v1, v2, v4);
  v5 = v0[56];
  v6 = v0[57];
  v7 = v0[183];
  v8 = v0[105];
  v9 = v0[103];
  v0[204] = v6;
  v0[205] = v5;
  v10 = sub_1000A2208();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1000A21F8();
  sub_1000A2190(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v7)
  {
    v13 = v0[146];
    v14 = v0[127];
    v68 = v0[126];
    v70 = v0[132];
    v15 = v0[117];
    v16 = v0[115];
    v17 = v0[114];

    sub_10003228C(v5, v6);
    (*(v16 + 8))(v15, v17);
    v18 = v0[85];

    (*(v14 + 8))(v70, v68);
    v19 = v0[142];
    swift_errorRetain();
    v20 = sub_1000A3518();
    v21 = sub_1000A3CC8();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[155];
    if (v22)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "[SiteOperations] Grid Fetch Failed: %@", v24, 0xCu);
      sub_100022154(v25, &unk_1000C7740, &qword_1000AB610);

      v20 = v23;
    }

    else
    {
    }

    v34 = v0[140];
    v35 = v0[136];
    v36 = v0[135];

    (*(v35 + 8))(v34, v36);
    v37 = sub_1000A3598();
    sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, enum case for EnergyKitError.guidanceUnavailable(_:), v37);
    v39 = v0[141];
    v40 = v0[140];
    v41 = v0[139];
    v42 = v0[138];
    v43 = v0[137];
    v44 = v0[134];
    v45 = v0[133];
    v46 = v0[132];
    v48 = v0[131];
    v49 = v0[130];
    v50 = v0[129];
    v51 = v0[128];
    v52 = v0[125];
    v53 = v0[124];
    v54 = v0[121];
    v55 = v0[120];
    v56 = v0[117];
    v57 = v0[116];
    v58 = v0[113];
    v59 = v0[112];
    v60 = v0[109];
    v61 = v0[108];
    v62 = v0[105];
    v63 = v0[102];
    v64 = v0[101];
    v65 = v0[98];
    v66 = v0[97];
    v67 = v0[96];
    v69 = v0[93];
    swift_willThrow();
    swift_unknownObjectRelease();

    v47 = v0[1];

    return v47();
  }

  else
  {

    sub_1000A2A38();
    v0[206] = sub_1000A2A28();
    v27 = *(&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + 1);
    v71 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
    v28 = swift_task_alloc();
    v0[207] = v28;
    *v28 = v0;
    v28[1] = sub_10009E87C;
    v29 = v0[140];
    v30 = v0[133];
    v31 = v0[90];
    v32 = v0[89];

    return v71(v30, v32, v31, v29);
  }
}

uint64_t sub_10009C894()
{
  v1 = v0[181];
  v2 = v0[180];
  v3 = v0[132];
  v4 = v0[126];
  (*(v0[115] + 8))(v0[117], v0[114]);
  v2(v3, v4);
  v5 = v0[184];
  v6 = v0[142];
  swift_errorRetain();
  v7 = sub_1000A3518();
  v8 = sub_1000A3CC8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[155];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[SiteOperations] Grid Fetch Failed: %@", v11, 0xCu);
    sub_100022154(v12, &unk_1000C7740, &qword_1000AB610);

    v7 = v10;
  }

  else
  {
  }

  v14 = v0[140];
  v15 = v0[136];
  v16 = v0[135];

  (*(v15 + 8))(v14, v16);
  v17 = sub_1000A3598();
  sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError);
  swift_allocError();
  (*(*(v17 - 8) + 104))(v18, enum case for EnergyKitError.guidanceUnavailable(_:), v17);
  v19 = v0[141];
  v20 = v0[140];
  v21 = v0[139];
  v22 = v0[138];
  v23 = v0[137];
  v24 = v0[134];
  v25 = v0[133];
  v26 = v0[132];
  v29 = v0[131];
  v30 = v0[130];
  v31 = v0[129];
  v32 = v0[128];
  v33 = v0[125];
  v34 = v0[124];
  v35 = v0[121];
  v36 = v0[120];
  v37 = v0[117];
  v38 = v0[116];
  v39 = v0[113];
  v40 = v0[112];
  v41 = v0[109];
  v42 = v0[108];
  v43 = v0[105];
  v44 = v0[102];
  v45 = v0[101];
  v46 = v0[98];
  v47 = v0[97];
  v48 = v0[96];
  v49 = v0[93];
  swift_willThrow();
  swift_unknownObjectRelease();

  v27 = v0[1];

  return v27();
}

uint64_t sub_10009CC90(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1488);
  v8 = *v3;
  *(*v3 + 1496) = v2;

  if (v2)
  {
    v9 = sub_10009CDE8;
  }

  else
  {
    v10 = *(v6 + 1480);

    *(v6 + 440) = v3;
    *(v6 + 448) = a1;
    *(v6 + 456) = a2;
    *(v6 + 464) = 0;
    *(v6 + 1464) = 0;
    v11 = *(v6 + 1448);
    (*(v6 + 1440))(*(v6 + 1048), *(v6 + 1008));
    v9 = sub_10009C2CC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10009CDE8()
{
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1168);

  *(v0 + 1472) = *(v0 + 1496);
  v3 = *(v0 + 1448);
  (*(v0 + 1440))(*(v0 + 1048), *(v0 + 1008));
  v4 = *(v0 + 680);

  return _swift_task_switch(sub_10009C894, 0, 0);
}

uint64_t sub_10009CE80(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1520);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v6 + 1168);

    *(v6 + 1536) = v2;
    v10 = *(v6 + 1512);
    (*(v6 + 1504))(*(v6 + 1032), *(v6 + 1008));
    v11 = *(v6 + 680);

    v12 = sub_10009D5BC;
  }

  else
  {
    *(v6 + 472) = v3;
    *(v6 + 480) = a1;
    *(v6 + 488) = a2;
    *(v6 + 496) = 0;
    *(v6 + 1528) = 0;
    v13 = *(v6 + 1512);
    (*(v6 + 1504))(*(v6 + 1032), *(v6 + 1008));
    v12 = sub_10009CFF4;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_10009CFF4()
{
  v1 = v0[117];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[114];
  sub_1000A3788();
  (*(v3 + 8))(v1, v4);
  (*(v3 + 32))(v1, v2, v4);
  v5 = v0[60];
  v6 = v0[61];
  v7 = v0[191];
  v8 = v0[105];
  v9 = v0[103];
  v0[204] = v6;
  v0[205] = v5;
  v10 = sub_1000A2208();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1000A21F8();
  sub_1000A2190(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v7)
  {
    v13 = v0[146];
    v14 = v0[127];
    v68 = v0[126];
    v70 = v0[132];
    v15 = v0[117];
    v16 = v0[115];
    v17 = v0[114];

    sub_10003228C(v5, v6);
    (*(v16 + 8))(v15, v17);
    v18 = v0[85];

    (*(v14 + 8))(v70, v68);
    v19 = v0[142];
    swift_errorRetain();
    v20 = sub_1000A3518();
    v21 = sub_1000A3CC8();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[155];
    if (v22)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "[SiteOperations] Grid Fetch Failed: %@", v24, 0xCu);
      sub_100022154(v25, &unk_1000C7740, &qword_1000AB610);

      v20 = v23;
    }

    else
    {
    }

    v34 = v0[140];
    v35 = v0[136];
    v36 = v0[135];

    (*(v35 + 8))(v34, v36);
    v37 = sub_1000A3598();
    sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, enum case for EnergyKitError.guidanceUnavailable(_:), v37);
    v39 = v0[141];
    v40 = v0[140];
    v41 = v0[139];
    v42 = v0[138];
    v43 = v0[137];
    v44 = v0[134];
    v45 = v0[133];
    v46 = v0[132];
    v48 = v0[131];
    v49 = v0[130];
    v50 = v0[129];
    v51 = v0[128];
    v52 = v0[125];
    v53 = v0[124];
    v54 = v0[121];
    v55 = v0[120];
    v56 = v0[117];
    v57 = v0[116];
    v58 = v0[113];
    v59 = v0[112];
    v60 = v0[109];
    v61 = v0[108];
    v62 = v0[105];
    v63 = v0[102];
    v64 = v0[101];
    v65 = v0[98];
    v66 = v0[97];
    v67 = v0[96];
    v69 = v0[93];
    swift_willThrow();
    swift_unknownObjectRelease();

    v47 = v0[1];

    return v47();
  }

  else
  {

    sub_1000A2A38();
    v0[206] = sub_1000A2A28();
    v27 = *(&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + 1);
    v71 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
    v28 = swift_task_alloc();
    v0[207] = v28;
    *v28 = v0;
    v28[1] = sub_10009E87C;
    v29 = v0[140];
    v30 = v0[133];
    v31 = v0[90];
    v32 = v0[89];

    return v71(v30, v32, v31, v29);
  }
}

uint64_t sub_10009D5BC()
{
  v1 = v0[189];
  v2 = v0[188];
  v3 = v0[132];
  v4 = v0[126];
  (*(v0[115] + 8))(v0[117], v0[114]);
  v2(v3, v4);
  v5 = v0[192];
  v6 = v0[142];
  swift_errorRetain();
  v7 = sub_1000A3518();
  v8 = sub_1000A3CC8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[155];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[SiteOperations] Grid Fetch Failed: %@", v11, 0xCu);
    sub_100022154(v12, &unk_1000C7740, &qword_1000AB610);

    v7 = v10;
  }

  else
  {
  }

  v14 = v0[140];
  v15 = v0[136];
  v16 = v0[135];

  (*(v15 + 8))(v14, v16);
  v17 = sub_1000A3598();
  sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError);
  swift_allocError();
  (*(*(v17 - 8) + 104))(v18, enum case for EnergyKitError.guidanceUnavailable(_:), v17);
  v19 = v0[141];
  v20 = v0[140];
  v21 = v0[139];
  v22 = v0[138];
  v23 = v0[137];
  v24 = v0[134];
  v25 = v0[133];
  v26 = v0[132];
  v29 = v0[131];
  v30 = v0[130];
  v31 = v0[129];
  v32 = v0[128];
  v33 = v0[125];
  v34 = v0[124];
  v35 = v0[121];
  v36 = v0[120];
  v37 = v0[117];
  v38 = v0[116];
  v39 = v0[113];
  v40 = v0[112];
  v41 = v0[109];
  v42 = v0[108];
  v43 = v0[105];
  v44 = v0[102];
  v45 = v0[101];
  v46 = v0[98];
  v47 = v0[97];
  v48 = v0[96];
  v49 = v0[93];
  swift_willThrow();
  swift_unknownObjectRelease();

  v27 = v0[1];

  return v27();
}

uint64_t sub_10009D9B8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1552);
  v8 = *v3;
  *(*v3 + 1560) = v2;

  if (v2)
  {
    v9 = sub_10009DB10;
  }

  else
  {
    v10 = *(v6 + 1544);

    *(v6 + 472) = v3;
    *(v6 + 480) = a1;
    *(v6 + 488) = a2;
    *(v6 + 496) = 0;
    *(v6 + 1528) = 0;
    v11 = *(v6 + 1512);
    (*(v6 + 1504))(*(v6 + 1032), *(v6 + 1008));
    v9 = sub_10009CFF4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10009DB10()
{
  v1 = *(v0 + 1544);
  v2 = *(v0 + 1168);

  *(v0 + 1536) = *(v0 + 1560);
  v3 = *(v0 + 1512);
  (*(v0 + 1504))(*(v0 + 1032), *(v0 + 1008));
  v4 = *(v0 + 680);

  return _swift_task_switch(sub_10009D5BC, 0, 0);
}

uint64_t sub_10009DBA8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1584);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v6 + 1168);

    *(v6 + 1600) = v2;
    v10 = *(v6 + 1576);
    (*(v6 + 1568))(*(v6 + 1024), *(v6 + 1008));
    v11 = sub_10009E294;
  }

  else
  {
    *(v6 + 504) = v3;
    *(v6 + 512) = a1;
    *(v6 + 520) = a2;
    *(v6 + 528) = 0;
    *(v6 + 1592) = 0;
    v12 = *(v6 + 1576);
    (*(v6 + 1568))(*(v6 + 1024), *(v6 + 1008));
    v11 = sub_10009DD18;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10009DD18()
{
  v1 = v0[64];
  v2 = v0[65];
  v3 = v0[199];
  v4 = v0[105];
  v5 = v0[103];
  v0[204] = v2;
  v0[205] = v1;
  v6 = sub_1000A2208();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1000A21F8();
  sub_1000A2190(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v3)
  {
    v9 = v0[146];
    v10 = v0[127];
    v64 = v0[126];
    v66 = v0[132];
    v11 = v0[117];
    v12 = v0[115];
    v13 = v0[114];

    sub_10003228C(v1, v2);
    (*(v12 + 8))(v11, v13);
    v14 = v0[85];

    (*(v10 + 8))(v66, v64);
    v15 = v0[142];
    swift_errorRetain();
    v16 = sub_1000A3518();
    v17 = sub_1000A3CC8();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[155];
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "[SiteOperations] Grid Fetch Failed: %@", v20, 0xCu);
      sub_100022154(v21, &unk_1000C7740, &qword_1000AB610);

      v16 = v19;
    }

    else
    {
    }

    v30 = v0[140];
    v31 = v0[136];
    v32 = v0[135];

    (*(v31 + 8))(v30, v32);
    v33 = sub_1000A3598();
    sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, enum case for EnergyKitError.guidanceUnavailable(_:), v33);
    v35 = v0[141];
    v36 = v0[140];
    v37 = v0[139];
    v38 = v0[138];
    v39 = v0[137];
    v40 = v0[134];
    v41 = v0[133];
    v42 = v0[132];
    v44 = v0[131];
    v45 = v0[130];
    v46 = v0[129];
    v47 = v0[128];
    v48 = v0[125];
    v49 = v0[124];
    v50 = v0[121];
    v51 = v0[120];
    v52 = v0[117];
    v53 = v0[116];
    v54 = v0[113];
    v55 = v0[112];
    v56 = v0[109];
    v57 = v0[108];
    v58 = v0[105];
    v59 = v0[102];
    v60 = v0[101];
    v61 = v0[98];
    v62 = v0[97];
    v63 = v0[96];
    v65 = v0[93];
    swift_willThrow();
    swift_unknownObjectRelease();

    v43 = v0[1];

    return v43();
  }

  else
  {

    sub_1000A2A38();
    v0[206] = sub_1000A2A28();
    v23 = *(&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + 1);
    v67 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
    v24 = swift_task_alloc();
    v0[207] = v24;
    *v24 = v0;
    v24[1] = sub_10009E87C;
    v25 = v0[140];
    v26 = v0[133];
    v27 = v0[90];
    v28 = v0[89];

    return v67(v26, v28, v27, v25);
  }
}

uint64_t sub_10009E294()
{
  v1 = v0[197];
  v2 = v0[196];
  v3 = v0[132];
  v4 = v0[126];
  (*(v0[115] + 8))(v0[117], v0[114]);
  v2(v3, v4);
  v5 = v0[200];
  v6 = v0[142];
  swift_errorRetain();
  v7 = sub_1000A3518();
  v8 = sub_1000A3CC8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[155];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[SiteOperations] Grid Fetch Failed: %@", v11, 0xCu);
    sub_100022154(v12, &unk_1000C7740, &qword_1000AB610);

    v7 = v10;
  }

  else
  {
  }

  v14 = v0[140];
  v15 = v0[136];
  v16 = v0[135];

  (*(v15 + 8))(v14, v16);
  v17 = sub_1000A3598();
  sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError);
  swift_allocError();
  (*(*(v17 - 8) + 104))(v18, enum case for EnergyKitError.guidanceUnavailable(_:), v17);
  v19 = v0[141];
  v20 = v0[140];
  v21 = v0[139];
  v22 = v0[138];
  v23 = v0[137];
  v24 = v0[134];
  v25 = v0[133];
  v26 = v0[132];
  v29 = v0[131];
  v30 = v0[130];
  v31 = v0[129];
  v32 = v0[128];
  v33 = v0[125];
  v34 = v0[124];
  v35 = v0[121];
  v36 = v0[120];
  v37 = v0[117];
  v38 = v0[116];
  v39 = v0[113];
  v40 = v0[112];
  v41 = v0[109];
  v42 = v0[108];
  v43 = v0[105];
  v44 = v0[102];
  v45 = v0[101];
  v46 = v0[98];
  v47 = v0[97];
  v48 = v0[96];
  v49 = v0[93];
  swift_willThrow();
  swift_unknownObjectRelease();

  v27 = v0[1];

  return v27();
}

uint64_t sub_10009E690(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1616);
  v8 = *v3;
  *(*v3 + 1624) = v2;

  if (v2)
  {
    v9 = sub_10009E7EC;
  }

  else
  {
    v10 = *(v6 + 1608);

    *(v6 + 504) = v3;
    *(v6 + 512) = a1;
    *(v6 + 520) = a2;
    *(v6 + 528) = 0;
    *(v6 + 1592) = 0;
    v11 = *(v6 + 1576);
    (*(v6 + 1568))(*(v6 + 1024), *(v6 + 1008));
    v9 = sub_10009DD18;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10009E7EC()
{
  v1 = *(v0 + 1608);
  v2 = *(v0 + 1168);

  *(v0 + 1600) = *(v0 + 1624);
  v3 = *(v0 + 1576);
  (*(v0 + 1568))(*(v0 + 1024), *(v0 + 1008));

  return _swift_task_switch(sub_10009E294, 0, 0);
}

uint64_t sub_10009E87C()
{
  v1 = *(*v0 + 1656);
  v2 = *(*v0 + 1648);
  v4 = *v0;

  return _swift_task_switch(sub_10009E994, 0, 0);
}

uint64_t sub_10009E994()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1064);
  if ((*(v0 + 1192))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 1632);
    v5 = *(v0 + 1168);
    v6 = *(v0 + 1016);
    v132 = *(v0 + 1008);
    v136 = *(v0 + 1056);
    v129 = *(v0 + 936);
    v7 = *(v0 + 920);
    v123 = *(v0 + 1640);
    v126 = *(v0 + 912);
    v8 = *(v0 + 840);
    v9 = *(v0 + 832);
    v10 = *(v0 + 824);
    v11 = *(v0 + 680);

    sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);
    v12 = sub_1000A3598();
    sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError);
    swift_allocError();
    v148 = enum case for EnergyKitError.guidanceUnavailable(_:);
    v143 = *(*(v12 - 8) + 104);
    v143(v13);
    swift_willThrow();
    sub_10003228C(v123, v4);
    (*(v9 + 8))(v8, v10);
    (*(v7 + 8))(v129, v126);
    (*(v6 + 8))(v136, v132);
    v14 = *(v0 + 1136);
    swift_errorRetain();
    v15 = sub_1000A3518();
    v16 = sub_1000A3CC8();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 1240);
    if (v17)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "[SiteOperations] Grid Fetch Failed: %@", v19, 0xCu);
      sub_100022154(v20, &unk_1000C7740, &qword_1000AB610);

      v15 = v18;
    }

    else
    {
    }

    v47 = *(v0 + 1120);
    v48 = *(v0 + 1088);
    v49 = *(v0 + 1080);

    (*(v48 + 8))(v47, v49);
    swift_allocError();
    (v143)(v50, v148, v12);
    v51 = *(v0 + 1128);
    v52 = *(v0 + 1120);
    v53 = *(v0 + 1112);
    v54 = *(v0 + 1104);
    v55 = *(v0 + 1096);
    v56 = *(v0 + 1072);
    v57 = *(v0 + 1064);
    v58 = *(v0 + 1056);
    v97 = *(v0 + 1048);
    v99 = *(v0 + 1040);
    v101 = *(v0 + 1032);
    v103 = *(v0 + 1024);
    v105 = *(v0 + 1000);
    v107 = *(v0 + 992);
    v109 = *(v0 + 968);
    v111 = *(v0 + 960);
    v113 = *(v0 + 936);
    v115 = *(v0 + 928);
    v117 = *(v0 + 904);
    v119 = *(v0 + 896);
    v121 = *(v0 + 872);
    v124 = *(v0 + 864);
    v127 = *(v0 + 840);
    v130 = *(v0 + 816);
    v134 = *(v0 + 808);
    v138 = *(v0 + 784);
    v141 = *(v0 + 776);
    v146 = *(v0 + 768);
    v151 = *(v0 + 744);
    swift_willThrow();
    swift_unknownObjectRelease();

    v59 = *(v0 + 8);

    return v59();
  }

  else
  {
    v149 = *(v0 + 1264);
    v153 = *(v0 + 1272);
    v22 = *(v0 + 1216);
    v23 = *(v0 + 1112);
    v24 = *(v0 + 1104);
    v25 = *(v0 + 1088);
    v26 = *(v0 + 992);
    v140 = *(v0 + 976);
    v133 = *(v0 + 1096);
    v137 = *(v0 + 960);
    v27 = *(v0 + 840);
    v144 = *(v0 + 784);
    v28 = *(v0 + 704);
    v29 = *(v0 + 696);
    (*(v0 + 1208))(v23, v3, v2);
    v30 = *(v25 + 16);
    v30(v24, v23, v2);
    v30(v133, v29, v2);
    sub_1000A39F8();
    sub_1000A37C8();
    v149(v26, v140);
    sub_1000A2678();
    v31 = sub_1000A2668();
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = *(v0 + 760);
      v34 = *(v0 + 736);
      v35 = *(v33 + 16);
      v33 += 16;
      v36 = v31 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
      v145 = *(v33 + 56);
      v150 = v35;
      v37 = (v33 - 8);
      v38 = &_swiftEmptyArrayStorage;
      do
      {
        v39 = *(v0 + 776);
        v40 = *(v0 + 768);
        v41 = *(v0 + 752);
        v42 = *(v0 + 744);
        v150(v40, v36, v41);
        sub_1000A2628();
        sub_1000A2618();
        sub_1000A37E8();
        (*v37)(v40, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1000951C8(0, v38[2] + 1, 1, v38, &qword_1000C9590, &qword_1000ACCB0, &type metadata accessor for ElectricityGuidance.Value);
        }

        v44 = v38[2];
        v43 = v38[3];
        if (v44 >= v43 >> 1)
        {
          v38 = sub_1000951C8(v43 > 1, v44 + 1, 1, v38, &qword_1000C9590, &qword_1000ACCB0, &type metadata accessor for ElectricityGuidance.Value);
        }

        v45 = *(v0 + 744);
        v46 = *(v0 + 728);
        v38[2] = v44 + 1;
        (*(v34 + 32))(v38 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v44, v45, v46);
        v36 += v145;
        --v32;
      }

      while (v32);
    }

    v87 = *(v0 + 1632);
    v88 = *(v0 + 1640);
    v90 = *(v0 + 1240);
    v61 = *(v0 + 1168);
    v62 = *(v0 + 1160);
    v85 = *(v0 + 1128);
    v93 = *(v0 + 1104);
    v94 = *(v0 + 1112);
    v63 = *(v0 + 1088);
    v92 = *(v0 + 1080);
    v100 = *(v0 + 1120);
    v102 = *(v0 + 1072);
    v83 = *(v0 + 1056);
    v106 = *(v0 + 1064);
    v108 = *(v0 + 1048);
    v110 = *(v0 + 1040);
    v112 = *(v0 + 1032);
    v95 = *(v0 + 1096);
    v96 = *(v0 + 1016);
    v98 = *(v0 + 1008);
    v114 = *(v0 + 1024);
    v116 = *(v0 + 1000);
    v118 = *(v0 + 992);
    v120 = *(v0 + 968);
    v104 = *(v0 + 960);
    v82 = *(v0 + 936);
    v122 = *(v0 + 928);
    v89 = *(v0 + 920);
    v91 = *(v0 + 912);
    v125 = *(v0 + 904);
    v128 = *(v0 + 896);
    v131 = *(v0 + 872);
    v139 = *(v0 + 864);
    v86 = *(v0 + 840);
    v64 = *(v0 + 832);
    v84 = *(v0 + 824);
    v79 = *(v0 + 816);
    v154 = *(v0 + 808);
    v65 = *(v0 + 800);
    v80 = *(v0 + 792);
    v135 = *(v0 + 784);
    v142 = *(v0 + 776);
    v147 = *(v0 + 768);
    v152 = *(v0 + 744);
    v66 = *(v0 + 680);
    sub_1000A3768();
    v67 = sub_1000A25E8();
    v68 = sub_1000A37A8();
    *(v0 + 192) = v62;
    *(v0 + 208) = 0;
    *(v0 + 216) = 0;
    *(v0 + 200) = v61;
    *(v0 + 224) = 2;
    *(v0 + 232) = v67;
    *(v0 + 240) = 0;
    *(v0 + 248) = v68;
    *(v0 + 256) = 0;
    *(v0 + 264) = 0;
    *(v0 + 272) = 1;
    *(v0 + 104) = v62;
    *(v0 + 120) = 0;
    *(v0 + 128) = 0;
    *(v0 + 112) = v61;
    *(v0 + 136) = 2;
    *(v0 + 144) = v67;
    *(v0 + 152) = 0;
    *(v0 + 160) = v68;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 184) = 1;
    sub_100086114(v0 + 192, v0 + 280);
    sub_100086170(v0 + 104);
    type metadata accessor for EKSAnalyticsEvent();
    v69 = swift_allocObject();
    *(v69 + 24) = xmmword_1000ACA50;
    *(v69 + 56) = 0u;
    *(v69 + 72) = 0u;
    *(v69 + 88) = 0u;
    *(v69 + 40) = 0u;
    *(v69 + 104) = 0;
    *(v69 + 16) = 2;
    *(v0 + 96) = 0;
    v70 = *(v69 + 72);
    *(v0 + 48) = *(v69 + 56);
    *(v0 + 64) = v70;
    *(v0 + 80) = *(v69 + 88);
    v71 = *(v69 + 40);
    *(v0 + 16) = *(v69 + 24);
    *(v0 + 32) = v71;
    v72 = *(v0 + 192);
    v73 = *(v0 + 224);
    *(v69 + 40) = *(v0 + 208);
    *(v69 + 24) = v72;
    v74 = *(v0 + 240);
    v75 = *(v0 + 256);
    *(v69 + 104) = *(v0 + 272);
    *(v69 + 88) = v75;
    *(v69 + 72) = v74;
    *(v69 + 56) = v73;
    sub_100022154(v0 + 16, &qword_1000C8830, &unk_1000AC300);
    sub_10004151C(v69);

    (*(v65 + 16))(v154, v79, v80);
    v76 = objc_allocWithZone(sub_1000A39E8());
    v81 = sub_1000A39D8();
    swift_unknownObjectRelease();
    sub_10003228C(v88, v87);

    (*(v65 + 8))(v79, v80);
    v77 = *(v63 + 8);
    v77(v94, v92);
    (*(v64 + 8))(v86, v84);
    (*(v89 + 8))(v82, v91);
    (*(v96 + 8))(v83, v98);
    v77(v100, v92);

    v78 = *(v0 + 8);

    return v78(v81);
  }
}

uint64_t sub_10009F590()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 100);
  v4 = *(v0 + 1056);
  v5 = *(v0 + 1048);
  v6 = *(v0 + 1040);
  v7 = *(v0 + 1016);
  v8 = *(v0 + 1008);
  v2(v6, v3, v8);
  sub_1000A2190(&qword_1000C9598, &type metadata accessor for HSGuidanceType);
  sub_1000A3B28();
  sub_1000A3B28();
  v9 = *(v7 + 8);
  *(v0 + 1440) = v9;
  *(v0 + 1448) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v8);
  if (*(v0 + 188) == *(v0 + 190))
  {
    v10 = v3;
  }

  else
  {
    v10 = enum case for HSGuidanceType.shift(_:);
  }

  v2(v5, v10, v8);
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 872);
  v12 = *(v0 + 864);
  v13 = *(v0 + 856);
  v14 = *(v0 + 848);
  v15 = sub_100001E38(v14, qword_1000C95F8);
  swift_beginAccess();
  (*(v13 + 16))(v11, v15, v14);
  sub_1000A2A58();
  sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
  LOBYTE(v15) = sub_1000A3DF8();
  v16 = *(v13 + 8);
  v16(v12, v14);
  v16(v11, v14);
  if ((v15 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
  {
    sub_1000A2A38();
    *(v0 + 1480) = sub_1000A2A28();
    v20 = *(&async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + 1);
    v25 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
    v21 = swift_task_alloc();
    *(v0 + 1488) = v21;
    *v21 = v0;
    v21[1] = sub_10009CC90;
    v22 = *(v0 + 1048);
    v23 = *(v0 + 720);
    v24 = *(v0 + 712);

    __asm { BR              X8 }
  }

  v17 = swift_task_alloc();
  *(v0 + 1456) = v17;
  *v17 = v0;
  v17[1] = sub_10009C158;
  v18 = *(v0 + 1048);

  return sub_1000688B0(v18);
}

uint64_t sub_10009F918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[51] = a2;
  v3[52] = a3;
  v3[50] = a1;
  v4 = sub_1000A37B8();
  v3[53] = v4;
  v5 = *(v4 - 8);
  v3[54] = v5;
  v6 = *(v5 + 64) + 15;
  v3[55] = swift_task_alloc();
  v7 = sub_1000A37F8();
  v3[56] = v7;
  v8 = *(v7 - 8);
  v3[57] = v8;
  v9 = *(v8 + 64) + 15;
  v3[58] = swift_task_alloc();
  v10 = sub_1000A2648();
  v3[59] = v10;
  v11 = *(v10 - 8);
  v3[60] = v11;
  v12 = *(v11 + 64) + 15;
  v3[61] = swift_task_alloc();
  v13 = *(*(sub_1000A22A8() - 8) + 64) + 15;
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v14 = sub_1000A3818();
  v3[64] = v14;
  v15 = *(v14 - 8);
  v3[65] = v15;
  v16 = *(v15 + 64) + 15;
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v17 = *(*(sub_10000275C(&qword_1000C92C0, &qword_1000ACB30) - 8) + 64) + 15;
  v3[68] = swift_task_alloc();
  v18 = sub_1000A2508();
  v3[69] = v18;
  v19 = *(v18 - 8);
  v3[70] = v19;
  v20 = *(v19 + 64) + 15;
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v21 = sub_1000A2688();
  v3[75] = v21;
  v22 = *(v21 - 8);
  v3[76] = v22;
  v23 = *(v22 + 64) + 15;
  v3[77] = swift_task_alloc();
  v24 = sub_1000A2AD8();
  v3[78] = v24;
  v25 = *(v24 - 8);
  v3[79] = v25;
  v26 = *(v25 + 64) + 15;
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v27 = sub_1000A3778();
  v3[82] = v27;
  v28 = *(v27 - 8);
  v3[83] = v28;
  v29 = *(v28 + 64) + 15;
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v30 = sub_1000A37D8();
  v3[86] = v30;
  v31 = *(v30 - 8);
  v3[87] = v31;
  v32 = *(v31 + 64) + 15;
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v33 = sub_1000A25F8();
  v3[90] = v33;
  v34 = *(v33 - 8);
  v3[91] = v34;
  v35 = *(v34 + 64) + 15;
  v3[92] = swift_task_alloc();

  return _swift_task_switch(sub_10009FDDC, 0, 0);
}

uint64_t sub_10009FDDC()
{
  sub_1000A3AA8();
  v0[93] = os_transaction_create();

  sub_10003690C();
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v1 = sub_1000A3538();
  v0[94] = sub_100001E38(v1, qword_1000C96B8);
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
  v0[95] = qword_1000C95F0;

  return _swift_task_switch(sub_10009FF98, v5, 0);
}

uint64_t sub_10009FF98()
{
  *(v0 + 97) = *(*(v0 + 760) + 144);

  return _swift_task_switch(sub_1000A0008, 0, 0);
}

uint64_t sub_1000A0008()
{
  v1 = qword_1000C95F0;
  *(v0 + 768) = qword_1000C95F0;

  return _swift_task_switch(sub_1000A0080, v1, 0);
}

uint64_t sub_1000A0080()
{
  v1 = v0[96];
  v0[97] = *(v1 + 112);
  v0[98] = *(v1 + 120);

  return _swift_task_switch(sub_1000A0100, 0, 0);
}

uint64_t sub_1000A0100()
{
  v65 = v0;
  if (*(v0 + 784))
  {
    if (*(v0 + 97) == 1)
    {
      v1 = *(v0 + 752);
      v2 = *(v0 + 416);

      v3 = sub_1000A3518();
      v4 = sub_1000A3CB8();

      if (os_log_type_enabled(v3, v4))
      {
        v6 = *(v0 + 408);
        v5 = *(v0 + 416);
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v64 = v8;
        *v7 = 136315138;
        *(v7 + 4) = sub_1000954AC(v6, v5, &v64);
        _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Location: %s", v7, 0xCu);
        sub_10000F7B8(v8);
      }

      v9 = *(v0 + 720);
      v10 = *(v0 + 712);
      v11 = *(v0 + 696);
      v12 = *(v0 + 688);
      v13 = *(v0 + 680);
      v14 = *(v0 + 664);
      v15 = *(v0 + 656);
      v16 = *(v0 + 400);
      v17 = *(*(v0 + 728) + 104);
      v62 = enum case for HSGuidanceType.reduce(_:);
      v17(*(v0 + 736));
      sub_1000A39F8();
      sub_1000A37C8();
      v18 = *(v11 + 8);
      *(v0 + 792) = v18;
      *(v0 + 800) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v18(v10, v12);
      v19 = (*(v14 + 88))(v13, v15);
      if (v19 == enum case for ElectricityGuidance.SuggestedAction.shift(_:))
      {
        v20 = *(v0 + 736);
        v21 = *(v0 + 720);
        (*(*(v0 + 728) + 8))(v20, v21);
        (v17)(v20, enum case for HSGuidanceType.shift(_:), v21);
      }

      else if (v19 == enum case for ElectricityGuidance.SuggestedAction.reduce(_:))
      {
        v34 = *(v0 + 736);
        v35 = *(v0 + 720);
        (*(*(v0 + 728) + 8))(v34, v35);
        (v17)(v34, v62, v35);
      }

      else
      {
        (*(*(v0 + 664) + 8))(*(v0 + 680), *(v0 + 656));
      }

      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v36 = *(v0 + 648);
      v37 = *(v0 + 640);
      v38 = *(v0 + 632);
      v39 = *(v0 + 624);
      v40 = sub_100001E38(v39, qword_1000C95F8);
      swift_beginAccess();
      (*(v38 + 16))(v36, v40, v39);
      sub_1000A2A58();
      sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions);
      LOBYTE(v40) = sub_1000A3DF8();
      v41 = *(v38 + 8);
      v41(v37, v39);
      v41(v36, v39);
      if ((v40 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
      {
        sub_1000A2A38();
        *(v0 + 848) = sub_1000A2A28();
        v44 = *(&async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + 1);
        v63 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
        v45 = swift_task_alloc();
        *(v0 + 856) = v45;
        *v45 = v0;
        v45[1] = sub_1000A1118;
        v46 = *(v0 + 736);
        v48 = *(v0 + 408);
        v47 = *(v0 + 416);
        v68 = 1;
        v67 = 0xE000000000000000;

        __asm { BR              X8 }
      }

      v42 = swift_task_alloc();
      *(v0 + 808) = v42;
      *v42 = v0;
      v42[1] = sub_1000A07EC;
      v43 = *(v0 + 736);

      return sub_1000688B0(v43);
    }
  }

  v22 = sub_1000A3598();
  sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError);
  swift_allocError();
  (*(*(v22 - 8) + 104))(v23, enum case for EnergyKitError.guidanceUnavailable(_:), v22);
  v24 = *(v0 + 744);
  v25 = *(v0 + 736);
  v26 = *(v0 + 712);
  v27 = *(v0 + 704);
  v28 = *(v0 + 680);
  v29 = *(v0 + 672);
  v30 = *(v0 + 648);
  v31 = *(v0 + 640);
  v49 = *(v0 + 616);
  v50 = *(v0 + 592);
  v51 = *(v0 + 584);
  v52 = *(v0 + 576);
  v53 = *(v0 + 568);
  v54 = *(v0 + 544);
  v55 = *(v0 + 536);
  v56 = *(v0 + 528);
  v57 = *(v0 + 504);
  v58 = *(v0 + 496);
  v59 = *(v0 + 488);
  v60 = *(v0 + 464);
  v61 = *(v0 + 440);
  swift_willThrow();
  swift_unknownObjectRelease();

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1000A07EC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 808);
  v8 = *v3;

  if (v2)
  {
    v9 = v6[98];

    v6[105] = v2;
    v10 = sub_1000A0DDC;
  }

  else
  {
    v6[102] = 0;
    v6[103] = a2;
    v6[104] = a1;
    v10 = sub_1000A0930;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1000A0930()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[77];
  v5 = v0[75];
  v6 = sub_1000A2208();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1000A21F8();
  sub_1000A2190(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v3)
  {
    v9 = v0[104];
    v10 = v0[103];
    v11 = v0[98];
    (*(v0[91] + 8))(v0[92], v0[90]);

    sub_10003228C(v9, v10);

    v12 = v0[94];
    swift_errorRetain();
    v13 = sub_1000A3518();
    v14 = sub_1000A3CC8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "[SiteOperations] Grid Fetch Failed: %@", v15, 0xCu);
      sub_100022154(v16, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }

    v26 = sub_1000A3598();
    sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, enum case for EnergyKitError.guidanceUnavailable(_:), v26);
    v28 = v0[93];
    v29 = v0[92];
    v30 = v0[89];
    v31 = v0[88];
    v32 = v0[85];
    v33 = v0[84];
    v34 = v0[81];
    v35 = v0[80];
    v37 = v0[77];
    v38 = v0[74];
    v39 = v0[73];
    v40 = v0[72];
    v41 = v0[71];
    v42 = v0[68];
    v43 = v0[67];
    v44 = v0[66];
    v45 = v0[63];
    v46 = v0[62];
    v47 = v0[61];
    v48 = v0[58];
    v49 = v0[55];
    swift_willThrow();
    swift_unknownObjectRelease();

    v36 = v0[1];

    return v36();
  }

  else
  {
    v18 = v0[73];

    sub_1000A2A38();
    v0[109] = sub_1000A2A28();
    sub_1000A2D28();
    v19 = *(&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + 1);
    v50 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
    v20 = swift_task_alloc();
    v0[110] = v20;
    *v20 = v0;
    v20[1] = sub_1000A12D8;
    v21 = v0[73];
    v22 = v0[68];
    v23 = v0[51];
    v24 = v0[52];

    return v50(v22, v23, v24, v21);
  }
}

uint64_t sub_1000A0DDC()
{
  (*(v0[91] + 8))(v0[92], v0[90]);
  v1 = v0[105];
  v2 = v0[94];
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

  else
  {
  }

  v8 = sub_1000A3598();
  sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError);
  swift_allocError();
  (*(*(v8 - 8) + 104))(v9, enum case for EnergyKitError.guidanceUnavailable(_:), v8);
  v10 = v0[93];
  v11 = v0[92];
  v12 = v0[89];
  v13 = v0[88];
  v14 = v0[85];
  v15 = v0[84];
  v16 = v0[81];
  v17 = v0[80];
  v20 = v0[77];
  v21 = v0[74];
  v22 = v0[73];
  v23 = v0[72];
  v24 = v0[71];
  v25 = v0[68];
  v26 = v0[67];
  v27 = v0[66];
  v28 = v0[63];
  v29 = v0[62];
  v30 = v0[61];
  v31 = v0[58];
  v32 = v0[55];
  swift_willThrow();
  swift_unknownObjectRelease();

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000A1118(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 856);
  v8 = *v3;
  *(*v3 + 864) = v2;

  if (v2)
  {
    v9 = sub_1000A125C;
  }

  else
  {
    v10 = v6[106];

    v6[102] = 0;
    v6[103] = a2;
    v6[104] = a1;
    v9 = sub_1000A0930;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000A125C()
{
  v1 = v0[106];
  v2 = v0[98];

  v0[105] = v0[108];

  return _swift_task_switch(sub_1000A0DDC, 0, 0);
}

uint64_t sub_1000A12D8()
{
  v1 = *v0;
  v2 = *(*v0 + 880);
  v3 = *(*v0 + 872);
  v4 = *(*v0 + 584);
  v5 = *(*v0 + 560);
  v6 = *(*v0 + 552);
  v9 = *v0;

  v7 = *(v5 + 8);
  *(v1 + 888) = v7;
  *(v1 + 896) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);

  return _swift_task_switch(sub_1000A1464, 0, 0);
}

uint64_t sub_1000A1464()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 832);
    v5 = *(v0 + 824);
    v6 = *(v0 + 784);
    v7 = *(v0 + 728);
    v100 = *(v0 + 720);
    v103 = *(v0 + 736);
    v8 = *(v0 + 616);
    v9 = *(v0 + 608);
    v10 = *(v0 + 600);

    sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);
    v11 = sub_1000A3598();
    sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError);
    swift_allocError();
    v115 = enum case for EnergyKitError.guidanceUnavailable(_:);
    v110 = *(*(v11 - 8) + 104);
    v110(v12);
    swift_willThrow();
    sub_10003228C(v4, v5);
    (*(v9 + 8))(v8, v10);
    (*(v7 + 8))(v103, v100);
    v13 = *(v0 + 752);
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

    swift_allocError();
    (v110)(v39, v115, v11);
    v40 = *(v0 + 744);
    v41 = *(v0 + 736);
    v42 = *(v0 + 712);
    v43 = *(v0 + 704);
    v44 = *(v0 + 680);
    v45 = *(v0 + 672);
    v46 = *(v0 + 648);
    v47 = *(v0 + 640);
    v84 = *(v0 + 616);
    v86 = *(v0 + 592);
    v88 = *(v0 + 584);
    v90 = *(v0 + 576);
    v92 = *(v0 + 568);
    v94 = *(v0 + 544);
    v96 = *(v0 + 536);
    v98 = *(v0 + 528);
    v101 = *(v0 + 504);
    v105 = *(v0 + 496);
    v108 = *(v0 + 488);
    v113 = *(v0 + 464);
    v118 = *(v0 + 440);
    swift_willThrow();
    swift_unknownObjectRelease();

    v48 = *(v0 + 8);

    return v48();
  }

  else
  {
    v116 = *(v0 + 792);
    v120 = *(v0 + 800);
    v19 = *(v0 + 704);
    v104 = *(v0 + 672);
    v20 = *(v0 + 616);
    v21 = *(v0 + 592);
    v22 = *(v0 + 576);
    v23 = *(v0 + 568);
    v107 = *(v0 + 504);
    v111 = *(v0 + 688);
    v24 = *(v0 + 400);
    (*(v1 + 32))(v21, v3, v2);
    (*(v1 + 16))(v22, v21, v2);
    sub_1000A2D28();
    sub_1000A39F8();
    sub_1000A37C8();
    v116(v19, v111);
    sub_1000A2678();
    v25 = sub_1000A2668();
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = *(v0 + 480);
      v28 = *(v0 + 456);
      v29 = *(v27 + 16);
      v27 += 16;
      v30 = v25 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
      v112 = *(v27 + 56);
      v117 = v29;
      v31 = (v27 - 8);
      v32 = &_swiftEmptyArrayStorage;
      do
      {
        v33 = *(v0 + 488);
        v34 = *(v0 + 472);
        v117(v33, v30, v34);
        sub_1000A2628();
        sub_1000A2618();
        sub_1000A37E8();
        (*v31)(v33, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_1000951C8(0, v32[2] + 1, 1, v32, &qword_1000C9590, &qword_1000ACCB0, &type metadata accessor for ElectricityGuidance.Value);
        }

        v36 = v32[2];
        v35 = v32[3];
        if (v36 >= v35 >> 1)
        {
          v32 = sub_1000951C8(v35 > 1, v36 + 1, 1, v32, &qword_1000C9590, &qword_1000ACCB0, &type metadata accessor for ElectricityGuidance.Value);
        }

        v37 = *(v0 + 464);
        v38 = *(v0 + 448);
        v32[2] = v36 + 1;
        (*(v28 + 32))(v32 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v36, v37, v38);
        v30 += v112;
        --v26;
      }

      while (v26);
    }

    v81 = *(v0 + 888);
    v82 = *(v0 + 896);
    v75 = *(v0 + 824);
    v76 = *(v0 + 832);
    v50 = *(v0 + 784);
    v51 = *(v0 + 776);
    v73 = *(v0 + 744);
    v71 = *(v0 + 736);
    v83 = *(v0 + 728);
    v85 = *(v0 + 720);
    v87 = *(v0 + 712);
    v89 = *(v0 + 704);
    v91 = *(v0 + 680);
    v80 = *(v0 + 672);
    v97 = *(v0 + 648);
    v99 = *(v0 + 640);
    v77 = *(v0 + 608);
    v78 = *(v0 + 600);
    v79 = *(v0 + 616);
    v74 = *(v0 + 592);
    v102 = *(v0 + 584);
    v93 = *(v0 + 576);
    v95 = *(v0 + 568);
    v72 = *(v0 + 552);
    v109 = *(v0 + 544);
    v70 = *(v0 + 528);
    v52 = *(v0 + 520);
    v68 = *(v0 + 536);
    v69 = *(v0 + 512);
    v106 = *(v0 + 504);
    v114 = *(v0 + 496);
    v119 = *(v0 + 488);
    v121 = *(v0 + 464);
    v53 = *(v0 + 432);
    v54 = *(v0 + 440);
    v55 = *(v0 + 424);
    sub_1000A3768();
    v56 = sub_1000A25E8();
    *(v0 + 392) = 0;
    sub_1000A2190(&qword_1000C9580, &type metadata accessor for ElectricityGuidance.AnalyticsOptions);
    sub_1000A3FA8();
    v57 = sub_1000A37A8();
    (*(v53 + 8))(v54, v55);
    *(v0 + 192) = v51;
    *(v0 + 208) = 0;
    *(v0 + 216) = 0;
    *(v0 + 200) = v50;
    *(v0 + 224) = 2;
    *(v0 + 232) = v56;
    *(v0 + 240) = 0;
    *(v0 + 248) = v57;
    *(v0 + 256) = 0;
    *(v0 + 264) = 0;
    *(v0 + 272) = 1;
    *(v0 + 104) = v51;
    *(v0 + 120) = 0;
    *(v0 + 128) = 0;
    *(v0 + 112) = v50;
    *(v0 + 136) = 2;
    *(v0 + 144) = v56;
    *(v0 + 152) = 0;
    *(v0 + 160) = v57;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 184) = 1;
    sub_100086114(v0 + 192, v0 + 280);
    sub_100086170(v0 + 104);
    type metadata accessor for EKSAnalyticsEvent();
    v58 = swift_allocObject();
    *(v58 + 24) = xmmword_1000ACA50;
    *(v58 + 56) = 0u;
    *(v58 + 72) = 0u;
    *(v58 + 88) = 0u;
    *(v58 + 40) = 0u;
    *(v58 + 104) = 0;
    *(v58 + 16) = 1;
    *(v0 + 96) = 0;
    v59 = *(v58 + 72);
    *(v0 + 48) = *(v58 + 56);
    *(v0 + 64) = v59;
    *(v0 + 80) = *(v58 + 88);
    v60 = *(v58 + 40);
    *(v0 + 16) = *(v58 + 24);
    *(v0 + 32) = v60;
    v61 = *(v0 + 192);
    v62 = *(v0 + 224);
    *(v58 + 40) = *(v0 + 208);
    *(v58 + 24) = v61;
    v63 = *(v0 + 240);
    v64 = *(v0 + 256);
    *(v58 + 104) = *(v0 + 272);
    *(v58 + 88) = v64;
    *(v58 + 72) = v63;
    *(v58 + 56) = v62;
    sub_100022154(v0 + 16, &qword_1000C8830, &unk_1000AC300);
    sub_10004151C(v58);

    (*(v52 + 16))(v70, v68, v69);
    v65 = objc_allocWithZone(sub_1000A39E8());
    v66 = sub_1000A39D8();
    swift_unknownObjectRelease();
    sub_10003228C(v76, v75);
    (*(v52 + 8))(v68, v69);
    v81(v74, v72);
    (*(v77 + 8))(v79, v78);
    (*(v83 + 8))(v71, v85);

    v67 = *(v0 + 8);

    return v67(v66);
  }
}

uint64_t sub_1000A1F14()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_1000A2024(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1000A2508() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[3];
  v18 = v1[2];
  v10 = v1[4];
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + v7 + 8);
  v15 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1000153A8;

  return sub_1000944C8(a1, v18, v9, v10, v1 + v5, v11, v12, v13);
}

uint64_t sub_1000A2190(unint64_t *a1, void (*a2)(uint64_t))
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