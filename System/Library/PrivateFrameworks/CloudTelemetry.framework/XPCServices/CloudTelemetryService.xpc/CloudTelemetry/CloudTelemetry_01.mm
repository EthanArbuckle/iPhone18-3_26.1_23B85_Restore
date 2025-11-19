void sub_100015890(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = (*(*v2 + 168))(v39);
  v8 = v7;
  v9 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v8;
  v38 = *v8;
  *v8 = 0x8000000000000000;
  v13 = sub_10000A0FC(a1, a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_20;
  }

  v17 = v12;
  if (v11[3] >= v16)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100018AD4();
    }
  }

  else
  {
    sub_100018834(v16, isUniquelyReferenced_nonNull_native);
    v18 = sub_10000A0FC(a1, a2);
    if ((v17 & 1) != (v19 & 1))
    {
LABEL_23:
      sub_10007A6C0();
      __break(1u);
      return;
    }

    v13 = v18;
  }

  v20 = *v8;
  *v8 = v38;

  v21 = *v8;
  if (v17)
  {
    goto LABEL_10;
  }

  v21[(v13 >> 6) + 8] |= 1 << v13;
  v22 = (v21[6] + 16 * v13);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * v13) = 0;
  v23 = v21[2];
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_23;
  }

  v21[2] = v25;

LABEL_10:
  v26 = v21[7];
  v27 = *(v26 + 8 * v13);
  v24 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v24)
  {
    *(v26 + 8 * v13) = v28;
    v6(v39, 0);
    if (qword_1000A1530 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  swift_once();
LABEL_12:
  v29 = sub_100079BA0();
  sub_1000070F4(v29, qword_1000A1538);

  v30 = sub_100079B80();
  v31 = sub_10007A160();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39[0] = v33;
    *v32 = 136446466;
    *(v32 + 4) = sub_100006B00(a1, a2, v39);
    *(v32 + 12) = 2048;
    v34 = (*(*v3 + 152))();
    if (*(v34 + 16) && (v35 = sub_10000A0FC(a1, a2), (v36 & 1) != 0))
    {
      v37 = *(*(v34 + 56) + 8 * v35);
    }

    else
    {
      v37 = 0;
    }

    *(v32 + 14) = v37;

    _os_log_impl(&_mh_execute_header, v30, v31, "registered use for session config for %{public}s, now %lld uses", v32, 0x16u);
    sub_1000070A8(v33);
  }

  else
  {
  }
}

void sub_100015BE8(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = v64 - v12;
  v14 = (*(v8 + 152))(v11);
  if (*(v14 + 16))
  {
    v15 = sub_10000A0FC(a1, a2);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);

      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        __break(1u);
      }

      else if (qword_1000A1530 == -1)
      {
        goto LABEL_5;
      }

      swift_once();
LABEL_5:
      LODWORD(v66) = a3;
      v19 = sub_100079BA0();
      v20 = sub_1000070F4(v19, qword_1000A1538);

      v64[1] = v20;
      v21 = sub_100079B80();
      v22 = sub_10007A160();

      v23 = os_log_type_enabled(v21, v22);
      v65 = a1;
      if (v23)
      {
        v24 = v17 - 1;
        v25 = v8;
        v26 = v13;
        v27 = a1;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v68[0] = v29;
        *v28 = 136446466;
        v30 = v27;
        v13 = v26;
        v8 = v25;
        v18 = v24;
        *(v28 + 4) = sub_100006B00(v30, a2, v68);
        *(v28 + 12) = 2050;
        *(v28 + 14) = v24;
        _os_log_impl(&_mh_execute_header, v21, v22, "session config finished for %{public}s with %{public}lld uses remaining", v28, 0x16u);
        sub_1000070A8(v29);
      }

      v31 = *(*v4 + 168);
      if (v18 > 0)
      {
        v32 = v31(v68);
        v34 = v33;
        v35 = *v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = *v34;
        *v34 = 0x8000000000000000;
        sub_100018FE8(v18, v65, a2, isUniquelyReferenced_nonNull_native);
        v37 = *v34;
        *v34 = v67;

        v32(v68, 0);
        return;
      }

      v43 = v31(v68);
      v44 = v65;
      sub_100018C3C(v65, a2);
      v45 = v43(v68, 0);
      if (v66)
      {
        v46 = v8;
        v47 = (*(*v4 + 176))(v45);
        v48 = sub_1000163E8(v44, a2, v47);

        v49 = sub_100079B80();
        v50 = sub_10007A160();

        v51 = os_log_type_enabled(v49, v50);
        if (v48)
        {
          if (v51)
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v68[0] = v53;
            *v52 = 136446210;
            *(v52 + 4) = sub_100006B00(v44, a2, v68);
            _os_log_impl(&_mh_execute_header, v49, v50, "not evicting %{public}s: already running", v52, 0xCu);
            sub_1000070A8(v53);
          }

          return;
        }

        if (v51)
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v68[0] = v58;
          *v57 = 136446210;
          *(v57 + 4) = sub_100006B00(v44, a2, v68);
          _os_log_impl(&_mh_execute_header, v49, v50, "starting eviction timer for %{public}s", v57, 0xCu);
          sub_1000070A8(v58);
        }

        v59 = *(*v4 + 192);

        v60 = v59(v68);
        sub_100018CE8(&v67, v44, a2);

        v60(v68, 0);
        v61 = sub_10007A0A0();
        (*(*(v61 - 8) + 56))(v13, 1, 1, v61);
        v62 = sub_100019DE4();
        v63 = swift_allocObject();
        v63[2] = v4;
        v63[3] = v62;
        v63[4] = v4;
        v63[5] = v44;
        v63[6] = a2;
        v63[7] = v46;
        swift_retain_n();

        sub_100005244(0, 0, v13, &unk_10007C438, v63);
      }

      else
      {
        v54 = sub_10007A0A0();
        (*(*(v54 - 8) + 56))(v13, 1, 1, v54);
        v55 = sub_100019DE4();
        v56 = swift_allocObject();
        v56[2] = v4;
        v56[3] = v55;
        v56[4] = v44;
        v56[5] = a2;
        v56[6] = v4;
        v56[7] = v8;
        swift_retain_n();

        sub_100014B7C(0, 0, v13, &unk_10007C428, v56);
      }

      return;
    }
  }

  if (qword_1000A1530 != -1)
  {
    swift_once();
  }

  v38 = sub_100079BA0();
  sub_1000070F4(v38, qword_1000A1538);

  v66 = sub_100079B80();
  v39 = sub_10007A170();

  if (os_log_type_enabled(v66, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v68[0] = v41;
    *v40 = 136446210;
    *(v40 + 4) = sub_100006B00(a1, a2, v68);
    _os_log_impl(&_mh_execute_header, v66, v39, "session config finished with no use count for %{public}s", v40, 0xCu);
    sub_1000070A8(v41);
  }

  else
  {
    v42 = v66;
  }
}

uint64_t sub_1000163E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_10007A730();
  sub_100079EC0();
  v7 = sub_10007A760();
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
    if (v12 || (sub_10007A610() & 1) != 0)
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

uint64_t sub_1000164E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v8 = swift_task_alloc();
  v6[13] = v8;
  *v8 = v6;
  v8[1] = sub_100016588;

  return static Task<>.sleep(nanoseconds:)(10000000000);
}

uint64_t sub_100016588()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_100016CB0;
  }

  else
  {
    v4 = sub_1000166B0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000166B0()
{
  v32 = v0;
  if (qword_1000A1530 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_100079BA0();
  sub_1000070F4(v2, qword_1000A1538);

  v3 = sub_100079B80();
  v4 = sub_10007A160();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100006B00(v6, v5, &v31);
    _os_log_impl(&_mh_execute_header, v3, v4, "eviction timer fired: %{public}s", v7, 0xCu);
    sub_1000070A8(v8);
  }

  v9 = (*(**(v0 + 80) + 152))();
  if (*(v9 + 16) && (v10 = sub_10000A0FC(*(v0 + 88), *(v0 + 96)), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);

    if (v12)
    {
      v14 = *(v0 + 88);
      v13 = *(v0 + 96);
      v15 = (*(**(v0 + 80) + 192))(v0 + 48);
      sub_1000198C0(v14, v13);

      v15(v0 + 48, 0);
      v16 = *(v0 + 8);

      return v16();
    }
  }

  else
  {
  }

  v18 = *(v0 + 96);

  v19 = sub_100079B80();
  v20 = sub_10007A160();

  if (os_log_type_enabled(v19, v20))
  {
    v22 = *(v0 + 88);
    v21 = *(v0 + 96);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31 = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_100006B00(v22, v21, &v31);
    _os_log_impl(&_mh_execute_header, v19, v20, "requesting eviction for %{public}s", v23, 0xCu);
    sub_1000070A8(v24);
  }

  v25 = *(**(*(v0 + 80) + 112) + 152);
  v30 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  *(v0 + 120) = v27;
  *v27 = v0;
  v27[1] = sub_100016AD0;
  v29 = *(v0 + 88);
  v28 = *(v0 + 96);

  return v30(v29, v28);
}

uint64_t sub_100016AD0()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return _swift_task_switch(sub_100016BE0, v2, 0);
}

uint64_t sub_100016BE0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = (*(**(v0 + 80) + 192))(v0 + 48);
  sub_1000198C0(v2, v1);

  v3(v0 + 48, 0);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100016CB0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = (*(**(v0 + 80) + 192))(v0 + 16);
  sub_1000198C0(v2, v1);

  v3(v0 + 16, 0);
  v4 = *(v0 + 8);
  v5 = *(v0 + 112);

  return v4();
}

uint64_t sub_100016D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100016DA4, a6, 0);
}

uint64_t sub_100016DA4()
{
  v17 = v0;
  if (qword_1000A1530 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_100079BA0();
  sub_1000070F4(v2, qword_1000A1538);

  v3 = sub_100079B80();
  v4 = sub_10007A160();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100006B00(v6, v5, &v16);
    _os_log_impl(&_mh_execute_header, v3, v4, "requesting immediate eviction for %{public}s", v7, 0xCu);
    sub_1000070A8(v8);
  }

  v9 = *(**(v0[4] + 112) + 152);
  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = sub_100016FF0;
  v13 = v0[2];
  v12 = v0[3];

  return v15(v13, v12);
}

uint64_t sub_100016FF0()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100017104()
{
  v1 = (*(**(v0 + 48) + 128))();
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1000172B8;

    return sub_100022884();
  }

  else
  {
    if (qword_1000A1530 != -1)
    {
      swift_once();
    }

    v4 = sub_100079BA0();
    sub_1000070F4(v4, qword_1000A1538);
    v5 = sub_100079B80();
    v6 = sub_10007A180();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "failed to check last DNU setting : diskCache nil", v7, 2u);
    }

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1000172B8(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 72) = v1;

  v7 = *(v3 + 48);
  if (v1)
  {
    v8 = sub_100017D18;
  }

  else
  {
    v8 = sub_1000173F0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000173F0()
{
  v1 = *(v0 + 144);
  if (v1 == 2)
  {
    if (qword_1000A1530 != -1)
    {
      swift_once();
    }

    v2 = sub_100079BA0();
    sub_1000070F4(v2, qword_1000A1538);
    v3 = sub_100079B80();
    v4 = sub_10007A190();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "resetting clientIDs due to missing lastDNU setting", v5, 2u);
    }

    v6 = *(v0 + 56);

    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v8 = sub_1000179BC;
LABEL_13:
    v7[1] = v8;

    return sub_100022658();
  }

  if ((sub_10003F7D8() & 1) != (v1 & 1))
  {
    if (qword_1000A1530 != -1)
    {
      swift_once();
    }

    v9 = sub_100079BA0();
    sub_1000070F4(v9, qword_1000A1538);
    v10 = sub_100079B80();
    v11 = sub_10007A190();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 144);
      v13 = swift_slowAlloc();
      *v13 = 67240448;
      *(v13 + 4) = v12 & 1;
      *(v13 + 8) = 1026;
      *(v13 + 10) = sub_10003F7D8() & 1;
      _os_log_impl(&_mh_execute_header, v10, v11, "DNU status changed (%{BOOL,public}d -> %{BOOL,public}d), resetting clientIDs", v13, 0xEu);
    }

    v14 = *(v0 + 56);

    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v8 = sub_1000176C0;
    goto LABEL_13;
  }

  v16 = *(v0 + 56);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000176C0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_100017EDC;
  }

  else
  {
    v6 = sub_1000177EC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000177EC()
{
  v1 = *(v0 + 56);
  v2 = sub_10003F7D8();
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_100017890;

  return sub_100022B38(v2 & 1);
}

uint64_t sub_100017890()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1000180A0;
  }

  else
  {
    v6 = sub_10001A478;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000179BC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_100018264;
  }

  else
  {
    v6 = sub_100017AE8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100017AE8()
{
  v1 = *(v0 + 56);
  v2 = sub_10003F7D8();
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_100017B8C;

  return sub_100022B38(v2 & 1);
}

uint64_t sub_100017B8C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_100018428;
  }

  else
  {
    v6 = sub_100017CB8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100017CB8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100017D18()
{
  v17 = v0;
  v1 = v0[9];
  v2 = v0[7];

  if (qword_1000A1530 != -1)
  {
    swift_once();
  }

  v3 = sub_100079BA0();
  sub_1000070F4(v3, qword_1000A1538);
  swift_errorRetain();
  v4 = sub_100079B80();
  v5 = sub_10007A180();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = sub_10007A6D0();
    v13 = sub_100006B00(v11, v12, &v16);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed to check last DNU setting: %{public}s", v6, 0xCu);
    sub_1000070A8(v7);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100017EDC()
{
  v17 = v0;
  v1 = v0[11];
  v2 = v0[7];

  if (qword_1000A1530 != -1)
  {
    swift_once();
  }

  v3 = sub_100079BA0();
  sub_1000070F4(v3, qword_1000A1538);
  swift_errorRetain();
  v4 = sub_100079B80();
  v5 = sub_10007A180();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = sub_10007A6D0();
    v13 = sub_100006B00(v11, v12, &v16);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed to check last DNU setting: %{public}s", v6, 0xCu);
    sub_1000070A8(v7);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000180A0()
{
  v17 = v0;
  v1 = v0[13];
  v2 = v0[7];

  if (qword_1000A1530 != -1)
  {
    swift_once();
  }

  v3 = sub_100079BA0();
  sub_1000070F4(v3, qword_1000A1538);
  swift_errorRetain();
  v4 = sub_100079B80();
  v5 = sub_10007A180();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = sub_10007A6D0();
    v13 = sub_100006B00(v11, v12, &v16);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed to check last DNU setting: %{public}s", v6, 0xCu);
    sub_1000070A8(v7);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100018264()
{
  v17 = v0;
  v1 = v0[15];
  v2 = v0[7];

  if (qword_1000A1530 != -1)
  {
    swift_once();
  }

  v3 = sub_100079BA0();
  sub_1000070F4(v3, qword_1000A1538);
  swift_errorRetain();
  v4 = sub_100079B80();
  v5 = sub_10007A180();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = sub_10007A6D0();
    v13 = sub_100006B00(v11, v12, &v16);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed to check last DNU setting: %{public}s", v6, 0xCu);
    sub_1000070A8(v7);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100018428()
{
  v17 = v0;
  v1 = v0[17];
  v2 = v0[7];

  if (qword_1000A1530 != -1)
  {
    swift_once();
  }

  v3 = sub_100079BA0();
  sub_1000070F4(v3, qword_1000A1538);
  swift_errorRetain();
  v4 = sub_100079B80();
  v5 = sub_10007A180();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = sub_10007A6D0();
    v13 = sub_100006B00(v11, v12, &v16);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed to check last DNU setting: %{public}s", v6, 0xCu);
    sub_1000070A8(v7);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000185EC()
{
  v1 = v0[14];

  swift_weakDestroy();
  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100018644(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001873C;

  return v7(a1);
}

uint64_t sub_10001873C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100018834(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000712C(&qword_10009E610, &unk_10007C508);
  v38 = a2;
  result = sub_10007A4C0();
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
      sub_10007A730();
      sub_100079EC0();
      result = sub_10007A760();
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

void *sub_100018AD4()
{
  v1 = v0;
  sub_10000712C(&qword_10009E610, &unk_10007C508);
  v2 = *v0;
  v3 = sub_10007A4B0();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

uint64_t sub_100018C3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_10000A0FC(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100018AD4();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_100018E38(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_100018CE8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_10007A730();
  sub_100079EC0();
  v9 = sub_10007A760();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_10007A610() & 1) != 0)
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

    sub_1000193AC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100018E38(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10007A2F0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_10007A730();

      sub_100079EC0();
      v13 = sub_10007A760();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100018FE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10000A0FC(a2, a3);
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
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100018834(v16, a4 & 1);
      v20 = *v5;
      result = sub_10000A0FC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_10007A6C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100018AD4();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
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

uint64_t sub_10001914C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000712C(&qword_10009E608, &qword_10007E4A0);
  result = sub_10007A370();
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
      sub_10007A730();
      sub_100079EC0();
      result = sub_10007A760();
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

Swift::Int sub_1000193AC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_10001914C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10001952C();
      goto LABEL_16;
    }

    sub_100019688(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_10007A730();
  sub_100079EC0();
  result = sub_10007A760();
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

      result = sub_10007A610();
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
  result = sub_10007A6B0();
  __break(1u);
  return result;
}

void *sub_10001952C()
{
  v1 = v0;
  sub_10000712C(&qword_10009E608, &qword_10007E4A0);
  v2 = *v0;
  v3 = sub_10007A360();
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

uint64_t sub_100019688(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000712C(&qword_10009E608, &qword_10007E4A0);
  result = sub_10007A370();
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
      sub_10007A730();

      sub_100079EC0();
      result = sub_10007A760();
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

uint64_t sub_1000198C0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_10007A730();
  sub_100079EC0();
  v7 = sub_10007A760();
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
    if (v12 || (sub_10007A610() & 1) != 0)
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
    sub_10001952C();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1000199FC(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_1000199FC(unint64_t result)
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

    v9 = sub_10007A2F0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_10007A730();

        sub_100079EC0();
        v15 = sub_10007A760();

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

unint64_t sub_100019BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000712C(&qword_10009E610, &unk_10007C508);
    v3 = sub_10007A4D0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000A0FC(v5, v6);
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

unint64_t sub_100019CBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000712C(&qword_10009E618, &qword_10007C528);
    v3 = sub_10007A4D0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000A0FC(v5, v6);
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

unint64_t sub_100019DE4()
{
  result = qword_10009E4B0;
  if (!qword_10009E4B0)
  {
    type metadata accessor for SessionCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E4B0);
  }

  return result;
}

uint64_t sub_100019E38()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019E78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_100019E90(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100019F48()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100019F90()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007838;

  return sub_100016D80(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10001A038()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001A080()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007838;

  return sub_1000164E0(v5, v6, v7, v2, v3, v4);
}

__n128 sub_10001A128(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001A13C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001A184(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001A1D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001A244(uint64_t a1)
{
  v2 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001A2AC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001A2E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001A474;

  return sub_100018644(a1, v5);
}

uint64_t sub_10001A39C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001A3DC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001A474;

  return sub_100014A60(v3, v4, v5, v2);
}

uint64_t sub_10001A4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x79745F746E657665 && a2 == 0xEB00000000736570)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10007A610();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001A52C(uint64_t a1)
{
  v2 = sub_10001B198();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001A568(uint64_t a1)
{
  v2 = sub_10001B198();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001A5A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10001A760(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_10001A5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x675F747069726373 && a2 == 0xED00007370756F72)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10007A610();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001A688(uint64_t a1)
{
  v2 = sub_10001B144();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001A6C4(uint64_t a1)
{
  v2 = sub_10001B144();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10001A700@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10001A9D0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10001A72C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10001AB80(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_10001A760(uint64_t *a1)
{
  v3 = sub_10000712C(&qword_10009E680, &qword_10007C8F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14[-1] - v6;
  v8 = a1[4];
  sub_10000751C(a1, a1[3]);
  sub_10001B198();
  sub_10007A790();
  if (v1)
  {
    sub_1000070A8(a1);
    return v8;
  }

  v15 = v4;
  v9 = a1[4];
  sub_10000751C(a1, a1[3]);
  v10 = sub_10007A770();
  v11 = *(v10 + 16);
  if (v11)
  {
    sub_10001378C(v10 + 40 * v11 - 8, v14);

    sub_10000751C(v14, v14[3]);
    v8 = sub_10007A7D0();
    sub_1000070A8(v14);
    sub_10000712C(&qword_10009E688, &unk_10007C900);
    sub_10001B240(&qword_10009E690, &qword_10009E688, &unk_10007C900, sub_10001B2BC);
    sub_10007A570();
    (*(v15 + 8))(v7, v3);
    sub_1000070A8(a1);
    return v8;
  }

  __break(1u);
  return result;
}

void *sub_10001A9D0(uint64_t *a1)
{
  v3 = sub_10000712C(&qword_10009E660, &qword_10007C8E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_10000751C(a1, a1[3]);
  sub_10001B144();
  sub_10007A790();
  if (v1)
  {
    sub_1000070A8(a1);
  }

  else
  {
    sub_10000712C(&qword_10009E668, &qword_10007C8F0);
    sub_10001B240(&qword_10009E670, &qword_10009E668, &qword_10007C8F0, sub_10001B1EC);
    sub_10007A570();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_1000070A8(a1);
  }

  return v9;
}

uint64_t sub_10001AB80(uint64_t *a1)
{
  v3 = a1[4];
  sub_10000751C(a1, a1[3]);
  v4 = sub_10007A770();
  v5 = *(v4 + 16);
  if (v5)
  {
    sub_10001378C(v4 + 40 * v5 - 8, v15);

    sub_10000751C(v15, v15[3]);
    v6 = sub_10007A7D0();
    v8 = v7;
    sub_1000070A8(v15);
    v9 = v6 == 0x6F736A5F70747468 && v8 == 0xE90000000000006ELL;
    if (v9 || (sub_10007A610() & 1) != 0)
    {

      sub_10001378C(a1, v15);
      v10 = sub_10001A760(v15);
      if (v1)
      {
        return sub_1000070A8(a1);
      }

      v12 = v10;
      goto LABEL_10;
    }

    if (v6 == 0x6C61636F6CLL && v8 == 0xE500000000000000)
    {
    }

    else
    {
      v13 = sub_10007A610();

      if ((v13 & 1) == 0)
      {
        v12 = 0;
LABEL_10:
        sub_1000070A8(a1);
        return v12;
      }
    }

    sub_10001378C(a1, v15);
    v14 = sub_10001A9D0(v15);
    if (v1)
    {
      return sub_1000070A8(a1);
    }

    v12 = v14;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_10001AD84()
{
  result = qword_10009E620;
  if (!qword_10009E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E620);
  }

  return result;
}

unint64_t sub_10001ADDC()
{
  result = qword_10009E628;
  if (!qword_10009E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E628);
  }

  return result;
}

unint64_t sub_10001AE34()
{
  result = qword_10009E630;
  if (!qword_10009E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E630);
  }

  return result;
}

unint64_t sub_10001AE8C()
{
  result = qword_10009E638;
  if (!qword_10009E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E638);
  }

  return result;
}

unint64_t sub_10001AEE4()
{
  result = qword_10009E640;
  if (!qword_10009E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E640);
  }

  return result;
}

unint64_t sub_10001AF3C()
{
  result = qword_10009E648;
  if (!qword_10009E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E648);
  }

  return result;
}

uint64_t sub_10001AF90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10001AFD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001B058(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 sub_10001B074(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10001B088(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001B0D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_10001B118(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_10001B144()
{
  result = qword_10009E650;
  if (!qword_10009E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E650);
  }

  return result;
}

unint64_t sub_10001B198()
{
  result = qword_10009E658;
  if (!qword_10009E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E658);
  }

  return result;
}

unint64_t sub_10001B1EC()
{
  result = qword_10009E678;
  if (!qword_10009E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E678);
  }

  return result;
}

uint64_t sub_10001B240(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000072D8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001B2BC()
{
  result = qword_10009E698;
  if (!qword_10009E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E698);
  }

  return result;
}

uint64_t sub_10001B314()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6C50);
  sub_1000070F4(v0, qword_1000A6C50);
  return sub_100079B90();
}

void *sub_10001B388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v6[14] = a1;
  v6[15] = a2;
  v6[16] = a3;
  return v6;
}

uint64_t sub_10001B3DC()
{
  v1[39] = v0;
  v2 = *(*(sub_10000712C(&qword_10009E000, &qword_10007BA70) - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v3 = type metadata accessor for CachedSession();
  v1[41] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[42] = swift_task_alloc();
  v5 = sub_100079A00();
  v1[43] = v5;
  v6 = *(v5 - 8);
  v1[44] = v6;
  v7 = *(v6 + 64) + 15;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();

  return _swift_task_switch(sub_10001B510, v0, 0);
}

uint64_t sub_10001B510()
{
  if (qword_1000A1C50 != -1)
  {
    swift_once();
  }

  v1 = sub_100079BA0();
  v0[47] = sub_1000070F4(v1, qword_1000A6C50);
  v2 = sub_100079B80();
  v3 = sub_10007A160();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "starting submission activity", v4, 2u);
  }

  v5 = v0[39];

  v6 = *(v5 + 112);
  v0[48] = v6;
  if (!v6 || (v7 = v0[39], v8 = *(v7 + 120), (v0[49] = v8) == 0) || (v9 = *(v7 + 128), (v0[50] = v9) == 0))
  {
    v13 = sub_100079B80();
    v14 = sub_10007A190();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "submission activity skipped due to bad initialization", v15, 2u);
    }

    goto LABEL_13;
  }

  if (sub_10007A0E0())
  {
    v11 = v0[49];
    v10 = v0[50];
    v12 = v0[48];

LABEL_13:
    v17 = v0[45];
    v16 = v0[46];
    v18 = v0[42];
    v19 = v0[40];

    v20 = v0[1];

    return v20();
  }

  v22 = v0[48];
  v23 = v0[46];
  sub_1000799C0();
  v24 = swift_task_alloc();
  v0[51] = v24;
  *v24 = v0;
  v24[1] = sub_10001B7A0;

  return sub_100021594(50);
}

uint64_t sub_10001B7A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  *(v4 + 416) = a1;
  *(v4 + 424) = v1;

  v7 = *(v3 + 312);
  if (v1)
  {
    v8 = sub_10001D434;
  }

  else
  {
    v8 = sub_10001B8D4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10001B8D4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v25 = v3;
  v4 = v3[52];
  v5 = v4[2];
  v3[54] = v5;
  if (v5)
  {
    v6 = v3[49];
    v7 = (*v6 + 248) & 0xFFFFFFFFFFFFLL | 0x7F8D000000000000;
    v3[55] = *(*v6 + 248);
    v3[56] = v7;
    v3[57] = 0;
    if (v4[2])
    {
      v8 = v3[47];
      v9 = v4[4];
      v3[58] = v9;
      v10 = v4[5];
      v3[59] = v10;
      swift_bridgeObjectRetain_n();
      v11 = sub_100079B80();
      v12 = sub_10007A190();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v24 = v14;
        *v13 = 136446210;
        *(v13 + 4) = sub_100006B00(v9, v10, &v24);
        _os_log_impl(&_mh_execute_header, v11, v12, "sending events for client type: %{public}s", v13, 0xCu);
        sub_1000070A8(v14);
      }

      a2 = v3[49];
      a1 = sub_10001BB0C;
      a3 = 0;
    }

    else
    {
      __break(1u);
    }

    return _swift_task_switch(a1, a2, a3);
  }

  else
  {
    v16 = v3[49];
    v15 = v3[50];
    v17 = v3[48];
    (*(v3[44] + 8))(v3[46], v3[43]);

    v19 = v3[45];
    v18 = v3[46];
    v20 = v3[42];
    v21 = v3[40];

    v22 = v3[1];

    return v22();
  }
}

uint64_t sub_10001BB0C()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 392);
  v3 = *(v0 + 312);
  (*(v0 + 440))(*(v0 + 464), *(v0 + 472));

  return _swift_task_switch(sub_10001BB80, v3, 0);
}

uint64_t sub_10001BB80()
{
  v1 = v0[59];
  v2 = v0[48];

  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_10001BC2C;
  v5 = v0[58];
  v4 = v0[59];

  return sub_1000218D4(v5, v4, 50);
}

uint64_t sub_10001BC2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 480);
  v11 = *v2;
  v3[61] = a1;
  v3[62] = v1;

  if (v1)
  {
    v5 = v3[59];
    v6 = v3[52];
    v7 = v3[39];

    v8 = sub_10001D604;
    v9 = v7;
  }

  else
  {
    v9 = v3[39];
    v8 = sub_10001BD60;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10001BD60(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 488);
  v5 = *(v4 + 16);
  *(v3 + 504) = v5;
  if (!v5)
  {
    v14 = *(v3 + 472);
    v15 = *(v3 + 392);

    *(v3 + 640) = variable initialization expression of Daemon.mode() & 1;
    v16 = *v15;
    *(v3 + 624) = *(*v15 + 256);
    *(v3 + 632) = (v16 + 256) & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;
    a2 = *(v3 + 392);
    a1 = sub_10001D0EC;
    a3 = 0;

    return _swift_task_switch(a1, a2, a3);
  }

  *(v3 + 512) = 0;
  if (!*(v4 + 16))
  {
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  *(v3 + 64) = *(v4 + 80);
  *(v3 + 32) = v7;
  *(v3 + 48) = v8;
  *(v3 + 16) = v6;
  sub_100009B00(v3 + 16, v3 + 72);
  v9 = *(v3 + 384);
  v10 = *sub_10000F41C();
  v11 = *sub_10000F410();
  v12 = swift_task_alloc();
  *(v3 + 520) = v12;
  *v12 = v3;
  v12[1] = sub_10001BEF4;

  return sub_100021010(v3 + 16, v10, v11);
}

uint64_t sub_10001BEF4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 520);
  v12 = *v2;
  v3[66] = a1;
  v3[67] = v1;

  if (v1)
  {
    v5 = v3[61];
    v6 = v3[59];
    v7 = v3[52];
    v8 = v3[39];

    sub_100019EF4((v3 + 2));

    v9 = sub_10001D8B4;
    v10 = v8;
  }

  else
  {
    v10 = v3[39];
    v9 = sub_10001C048;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_10001C048()
{
  v1 = *(v0 + 528);
  if (*(v1 + 2))
  {
    v2 = *(v0 + 400);
    v3 = *(v0 + 360);
    v4 = *(v0 + 336);
    v5 = v1[4];
    v6 = *(v1 + 6);
    v7 = *(v1 + 7);
    v8 = *(v1 + 8);
    (*(*(v0 + 352) + 16))(v3, *(v0 + 368), *(v0 + 344));
    sub_100009B00(v0 + 16, v0 + 128);

    sub_100009BA8(v0 + 16, v6, v7, v3, v8, v4, v5);
    v9 = *(*v2 + 120);
    v30 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 544) = v11;
    *v11 = v0;
    v11[1] = sub_10001C390;
    v12 = *(v0 + 328);
    v13 = *(v0 + 336);

    return (v30)(v13, v12, &off_100095D60);
  }

  else
  {
    sub_100019EF4(v0 + 16);

    v15 = *(v0 + 512) + 1;
    if (v15 == *(v0 + 504))
    {
      v16 = *(v0 + 488);

      v17 = *(v0 + 384);
      v18 = swift_task_alloc();
      *(v0 + 480) = v18;
      *v18 = v0;
      v18[1] = sub_10001BC2C;
      v20 = *(v0 + 464);
      v19 = *(v0 + 472);

      return sub_1000218D4(v20, v19, 50);
    }

    else
    {
      *(v0 + 512) = v15;
      v21 = *(v0 + 488);
      if (v15 >= *(v21 + 16))
      {
        __break(1u);
      }

      else
      {
        v22 = v21 + 56 * v15;
        v23 = *(v22 + 32);
        v24 = *(v22 + 48);
        v25 = *(v22 + 64);
        *(v0 + 64) = *(v22 + 80);
        *(v0 + 32) = v24;
        *(v0 + 48) = v25;
        *(v0 + 16) = v23;
        sub_100009B00(v0 + 16, v0 + 72);
        v26 = *(v0 + 384);
        v27 = *sub_10000F41C();
        v28 = *sub_10000F410();
        v29 = swift_task_alloc();
        *(v0 + 520) = v29;
        *v29 = v0;
        v29[1] = sub_10001BEF4;

        return sub_100021010(v0 + 16, v27, v28);
      }
    }
  }

  return result;
}

uint64_t sub_10001C390(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 544);
  v7 = *v3;
  v5[69] = a1;
  v5[70] = a2;
  v5[71] = v2;

  v8 = v4[39];
  if (v2)
  {
    v9 = sub_10001DB64;
  }

  else
  {
    v9 = sub_10001C4CC;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10001C4CC()
{
  v68 = v0;
  if (v0[69])
  {
    v1 = v0[70];
    v2 = *(v0[66] + 16);
    v3 = _swiftEmptyArrayStorage;
    if (v2)
    {
      v62 = v0[70];
      v63 = v0[69];
      v0[37] = _swiftEmptyArrayStorage;
      sub_10001E8EC(0, v2, 0);
      v0 = v66;
      v4 = 0;
      v3 = v66[37];
      do
      {
        v5 = (v0[66] + v4);
        v7 = v5[5];
        v6 = v5[6];
        v8 = v5[7];
        v9 = v5[8];
        v0[37] = v3;
        v11 = v3[2];
        v10 = v3[3];
        v12 = v11 + 1;

        if (v11 >= v10 >> 1)
        {
          sub_10001E8EC((v10 > 1), v11 + 1, 1);
          v3 = v66[37];
        }

        v3[2] = v12;
        v13 = &v3[4 * v11];
        v13[4] = v7;
        v13[5] = v6;
        v13[6] = v8;
        v13[7] = v9;
        v4 += 40;
        --v2;
        v0 = v66;
      }

      while (v2);
    }

    else
    {
      v12 = _swiftEmptyArrayStorage[2];
      if (!v12)
      {
        v27 = _swiftEmptyArrayStorage;

LABEL_17:
        v66[72] = v27;
        ObjectType = swift_getObjectType();
        v36 = *(v1 + 8);
        v65 = (v36 + *v36);
        v37 = v36[1];
        v38 = swift_task_alloc();
        v66[73] = v38;
        *v38 = v66;
        v38[1] = sub_10001CB4C;

        return (v65)(v27, ObjectType, v1);
      }

      v62 = v0[70];
      v64 = v0[69];
    }

    v0[38] = _swiftEmptyArrayStorage;
    sub_10001276C(0, v12, 0);
    v27 = v0[38];
    v28 = v3 + 7;
    do
    {
      v29 = *(v28 - 2);
      v30 = *(v28 - 1);
      v31 = *v28;
      v66[38] = v27;
      v32 = v27[2];
      v33 = v27[3];

      if (v32 >= v33 >> 1)
      {
        sub_10001276C((v33 > 1), v32 + 1, 1);
        v27 = v66[38];
      }

      v27[2] = v32 + 1;
      v34 = &v27[3 * v32];
      v34[4] = v29;
      v34[5] = v30;
      v34[6] = v31;
      v28 += 4;
      --v12;
    }

    while (v12);

    v1 = v62;
    goto LABEL_17;
  }

  sub_10001EC6C();
  swift_allocError();
  swift_willThrow();
  v14 = v0[59];
  v15 = v0[47];
  sub_10001EC0C(v0[42], type metadata accessor for CachedSession);

  swift_errorRetain();
  v16 = sub_100079B80();
  v17 = sub_10007A170();

  if (os_log_type_enabled(v16, v17))
  {
    v19 = v0[58];
    v18 = v0[59];
    v20 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v20 = 136446466;
    *(v20 + 4) = sub_100006B00(v19, v18, v67);
    *(v20 + 12) = 2082;
    swift_getErrorValue();
    v22 = v0[29];
    v21 = v0[30];
    v23 = v0[31];
    v24 = sub_10007A6D0();
    v26 = sub_100006B00(v24, v25, v67);

    *(v20 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "failed to send sendOneMessage events for clientType %{public}s: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v40 = *(v0[66] + 16);
  v41 = v0;
  if (v40)
  {
    v0[33] = _swiftEmptyArrayStorage;
    sub_10001E8EC(0, v40, 0);
    v41 = v66;
    v42 = 0;
    v43 = v66[33];
    do
    {
      v44 = (v41[66] + v42);
      v45 = v44[5];
      v46 = v44[6];
      v47 = v44[7];
      v48 = v44[8];
      v41[33] = v43;
      v50 = v43[2];
      v49 = v43[3];

      if (v50 >= v49 >> 1)
      {
        sub_10001E8EC((v49 > 1), v50 + 1, 1);
        v43 = v66[33];
      }

      v43[2] = v50 + 1;
      v51 = &v43[4 * v50];
      v51[4] = v45;
      v51[5] = v46;
      v51[6] = v47;
      v51[7] = v48;
      v42 += 40;
      --v40;
      v41 = v66;
    }

    while (v40);
    v52 = v66[66];

    v53 = v43[2];
    if (v53)
    {
      goto LABEL_27;
    }
  }

  else
  {

    v43 = _swiftEmptyArrayStorage;
    v53 = _swiftEmptyArrayStorage[2];
    if (v53)
    {
LABEL_27:
      v41[34] = _swiftEmptyArrayStorage;
      sub_10001E8CC(0, v53, 0);
      v41 = v66;
      v54 = v66[34];
      v55 = v54[2];
      v56 = 4;
      do
      {
        v57 = v43[v56];
        v41[34] = v54;
        v58 = v54[3];
        if (v55 >= v58 >> 1)
        {
          sub_10001E8CC((v58 > 1), v55 + 1, 1);
          v41 = v66;
          v54 = v66[34];
        }

        v54[2] = v55 + 1;
        v54[v55 + 4] = v57;
        v56 += 4;
        ++v55;
        --v53;
      }

      while (v53);

      goto LABEL_34;
    }
  }

  v54 = _swiftEmptyArrayStorage;
LABEL_34:
  v41[75] = v54;
  v59 = v41;
  v60 = v41[48];
  v61 = swift_task_alloc();
  v59[76] = v61;
  *v61 = v59;
  v61[1] = sub_10001CEFC;

  return sub_100021438(v54);
}

uint64_t sub_10001CB4C()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v4 = *v1;
  *(*v1 + 592) = v0;

  v5 = *(v2 + 576);
  v6 = *(v2 + 312);

  if (v0)
  {
    v7 = sub_10001DF0C;
  }

  else
  {
    v7 = sub_10001CC94;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10001CC94()
{
  v1 = v0;
  v2 = v0[69];
  v3 = v0[42];
  swift_unknownObjectRelease();
  sub_10001EC0C(v3, type metadata accessor for CachedSession);
  v4 = *(v0[66] + 16);
  if (v4)
  {
    v0[33] = _swiftEmptyArrayStorage;
    sub_10001E8EC(0, v4, 0);
    v5 = 0;
    v25 = v0;
    v6 = v0[33];
    do
    {
      v7 = (v25[66] + v5);
      v9 = v7[5];
      v8 = v7[6];
      v10 = v7[7];
      v11 = v7[8];
      v25[33] = v6;
      v13 = v6[2];
      v12 = v6[3];

      if (v13 >= v12 >> 1)
      {
        sub_10001E8EC((v12 > 1), v13 + 1, 1);
        v6 = v25[33];
      }

      v6[2] = v13 + 1;
      v14 = &v6[4 * v13];
      v14[4] = v9;
      v14[5] = v8;
      v14[6] = v10;
      v14[7] = v11;
      v5 += 40;
      --v4;
    }

    while (v4);
    v1 = v25;
    v15 = v25[66];

    v16 = v6[2];
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_13:

    v17 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v6 = _swiftEmptyArrayStorage;
  v16 = _swiftEmptyArrayStorage[2];
  if (!v16)
  {
    goto LABEL_13;
  }

LABEL_7:
  v1[34] = _swiftEmptyArrayStorage;
  sub_10001E8CC(0, v16, 0);
  v17 = v1[34];
  v18 = v17[2];
  v19 = 4;
  do
  {
    v20 = v6[v19];
    v1[34] = v17;
    v21 = v17[3];
    if (v18 >= v21 >> 1)
    {
      sub_10001E8CC((v21 > 1), v18 + 1, 1);
      v17 = v1[34];
    }

    v17[2] = v18 + 1;
    v17[v18 + 4] = v20;
    v19 += 4;
    ++v18;
    --v16;
  }

  while (v16);

LABEL_14:
  v1[75] = v17;
  v22 = v1[48];
  v23 = swift_task_alloc();
  v1[76] = v23;
  *v23 = v1;
  v23[1] = sub_10001CEFC;

  return sub_100021438(v17);
}

uint64_t sub_10001CEFC()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v8 = *v1;
  *(*v1 + 616) = v0;

  v4 = *(v2 + 600);
  if (v0)
  {
    v5 = *(v2 + 312);

    sub_100019EF4(v2 + 16);
    v6 = sub_10001E2BC;
  }

  else
  {
    v5 = *(v2 + 312);

    v6 = sub_10001D030;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10001D030()
{
  v1 = *(v0 + 384);
  v2 = *sub_10000F41C();
  v3 = *sub_10000F410();
  v4 = swift_task_alloc();
  *(v0 + 520) = v4;
  *v4 = v0;
  v4[1] = sub_10001BEF4;

  return sub_100021010(v0 + 16, v2, v3);
}

uint64_t sub_10001D0EC()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 392);
  v3 = *(v0 + 312);
  (*(v0 + 624))(*(v0 + 464), *(v0 + 472), *(v0 + 640));

  return _swift_task_switch(sub_10001D17C, v3, 0);
}

uint64_t sub_10001D17C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v31 = v3;
  v4 = v3[57] + 1;
  if (v4 == v3[54])
  {
    v5 = v3[52];
    v6 = v3[46];
    v7 = v3[43];
    v8 = v3[44];

    (*(v8 + 8))(v6, v7);
    if (sub_10007A0E0())
    {
      v10 = v3[49];
      v9 = v3[50];
      v11 = v3[48];

      v13 = v3[45];
      v12 = v3[46];
      v14 = v3[42];
      v15 = v3[40];

      v16 = v3[1];

      return v16();
    }

    else
    {
      v27 = v3[48];
      v28 = v3[46];
      sub_1000799C0();
      v29 = swift_task_alloc();
      v3[51] = v29;
      *v29 = v3;
      v29[1] = sub_10001B7A0;

      return sub_100021594(50);
    }
  }

  else
  {
    v3[57] = v4;
    v18 = v3[52];
    if (v4 >= *(v18 + 16))
    {
      __break(1u);
    }

    else
    {
      v19 = v3[47];
      v20 = v18 + 16 * v4;
      v21 = *(v20 + 32);
      v3[58] = v21;
      v22 = *(v20 + 40);
      v3[59] = v22;
      swift_bridgeObjectRetain_n();
      v23 = sub_100079B80();
      v24 = sub_10007A190();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v30 = v26;
        *v25 = 136446210;
        *(v25 + 4) = sub_100006B00(v21, v22, &v30);
        _os_log_impl(&_mh_execute_header, v23, v24, "sending events for client type: %{public}s", v25, 0xCu);
        sub_1000070A8(v26);
      }

      a2 = v3[49];
      a1 = sub_10001BB0C;
      a3 = 0;
    }

    return _swift_task_switch(a1, a2, a3);
  }
}

uint64_t sub_10001D434()
{
  v23 = v0;
  v1 = v0[53];
  v2 = v0[47];
  (*(v0[44] + 8))(v0[46], v0[43]);
  swift_errorRetain();
  v3 = sub_100079B80();
  v4 = sub_10007A170();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[25];
    v10 = sub_10007A6D0();
    v12 = sub_100006B00(v10, v11, &v22);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "error running sendOneMessage submission: %s", v5, 0xCu);
    sub_1000070A8(v6);
  }

  else
  {
  }

  v14 = v0[49];
  v13 = v0[50];
  v15 = v0[48];

  v17 = v0[45];
  v16 = v0[46];
  v18 = v0[42];
  v19 = v0[40];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10001D604()
{
  v29 = v0;
  v1 = v0[62];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[47];
  (*(v0[44] + 8))(v0[46], v0[43]);
  swift_errorRetain();
  v5 = sub_100079B80();
  v6 = sub_10007A170();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[23];
    v9 = v0[24];
    v11 = v0[25];
    v12 = sub_10007A6D0();
    v14 = sub_100006B00(v12, v13, &v28);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "error running sendOneMessage submission: %s", v7, 0xCu);
    sub_1000070A8(v8);
  }

  else
  {
  }

  v15 = v0[49];
  v16 = v0[50];
  v17 = v0[48];
  if (v2)
  {
    v18 = v0[40];
    v19 = sub_10007A0A0();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v15;
    v20[5] = v3;
    v20[6] = v2;

    sub_100014B7C(0, 0, v18, &unk_10007C930, v20);
  }

  else
  {
    v21 = v0[50];
  }

  v23 = v0[45];
  v22 = v0[46];
  v24 = v0[42];
  v25 = v0[40];

  v26 = v0[1];

  return v26();
}

uint64_t sub_10001D8B4()
{
  v29 = v0;
  v1 = v0[67];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[47];
  (*(v0[44] + 8))(v0[46], v0[43]);
  swift_errorRetain();
  v5 = sub_100079B80();
  v6 = sub_10007A170();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[23];
    v9 = v0[24];
    v11 = v0[25];
    v12 = sub_10007A6D0();
    v14 = sub_100006B00(v12, v13, &v28);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "error running sendOneMessage submission: %s", v7, 0xCu);
    sub_1000070A8(v8);
  }

  else
  {
  }

  v15 = v0[49];
  v16 = v0[50];
  v17 = v0[48];
  if (v2)
  {
    v18 = v0[40];
    v19 = sub_10007A0A0();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v15;
    v20[5] = v3;
    v20[6] = v2;

    sub_100014B7C(0, 0, v18, &unk_10007C930, v20);
  }

  else
  {
    v21 = v0[50];
  }

  v23 = v0[45];
  v22 = v0[46];
  v24 = v0[42];
  v25 = v0[40];

  v26 = v0[1];

  return v26();
}

uint64_t sub_10001DB64()
{
  v39 = v0;
  v1 = v0;
  v2 = v0[71];
  v3 = v0[59];
  v4 = v0[47];
  sub_10001EC0C(v0[42], type metadata accessor for CachedSession);

  swift_errorRetain();
  v5 = sub_100079B80();
  v6 = sub_10007A170();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[58];
    v7 = v0[59];
    v9 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_100006B00(v8, v7, &v38);
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v11 = v0[29];
    v10 = v0[30];
    v12 = v0[31];
    v13 = sub_10007A6D0();
    v15 = sub_100006B00(v13, v14, &v38);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "failed to send sendOneMessage events for clientType %{public}s: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = *(v0[66] + 16);
  if (v16)
  {
    v0[33] = _swiftEmptyArrayStorage;
    sub_10001E8EC(0, v16, 0);
    v17 = 0;
    v37 = v0;
    v18 = v0[33];
    do
    {
      v19 = (v37[66] + v17);
      v21 = v19[5];
      v20 = v19[6];
      v22 = v19[7];
      v23 = v19[8];
      v37[33] = v18;
      v25 = v18[2];
      v24 = v18[3];

      if (v25 >= v24 >> 1)
      {
        sub_10001E8EC((v24 > 1), v25 + 1, 1);
        v18 = v37[33];
      }

      v18[2] = v25 + 1;
      v26 = &v18[4 * v25];
      v26[4] = v21;
      v26[5] = v20;
      v26[6] = v22;
      v26[7] = v23;
      v17 += 40;
      --v16;
    }

    while (v16);
    v1 = v37;
    v27 = v37[66];

    v28 = v18[2];
    if (v28)
    {
      goto LABEL_10;
    }

LABEL_16:

    v29 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v18 = _swiftEmptyArrayStorage;
  v28 = _swiftEmptyArrayStorage[2];
  if (!v28)
  {
    goto LABEL_16;
  }

LABEL_10:
  v1[34] = _swiftEmptyArrayStorage;
  sub_10001E8CC(0, v28, 0);
  v29 = v1[34];
  v30 = v29[2];
  v31 = 4;
  do
  {
    v32 = v18[v31];
    v1[34] = v29;
    v33 = v29[3];
    if (v30 >= v33 >> 1)
    {
      sub_10001E8CC((v33 > 1), v30 + 1, 1);
      v29 = v1[34];
    }

    v29[2] = v30 + 1;
    v29[v30 + 4] = v32;
    v31 += 4;
    ++v30;
    --v28;
  }

  while (v28);

LABEL_17:
  v1[75] = v29;
  v34 = v1[48];
  v35 = swift_task_alloc();
  v1[76] = v35;
  *v35 = v1;
  v35[1] = sub_10001CEFC;

  return sub_100021438(v29);
}

uint64_t sub_10001DF0C()
{
  v40 = v0;
  v1 = v0;
  v2 = v0[69];
  swift_unknownObjectRelease();
  v3 = v0[74];
  v4 = v0[59];
  v5 = v0[47];
  sub_10001EC0C(v0[42], type metadata accessor for CachedSession);

  swift_errorRetain();
  v6 = sub_100079B80();
  v7 = sub_10007A170();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[58];
    v8 = v0[59];
    v10 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v10 = 136446466;
    *(v10 + 4) = sub_100006B00(v9, v8, &v39);
    *(v10 + 12) = 2082;
    swift_getErrorValue();
    v12 = v0[29];
    v11 = v0[30];
    v13 = v0[31];
    v14 = sub_10007A6D0();
    v16 = sub_100006B00(v14, v15, &v39);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "failed to send sendOneMessage events for clientType %{public}s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = *(v0[66] + 16);
  if (v17)
  {
    v0[33] = _swiftEmptyArrayStorage;
    sub_10001E8EC(0, v17, 0);
    v18 = 0;
    v38 = v0;
    v19 = v0[33];
    do
    {
      v20 = (v38[66] + v18);
      v22 = v20[5];
      v21 = v20[6];
      v23 = v20[7];
      v24 = v20[8];
      v38[33] = v19;
      v26 = v19[2];
      v25 = v19[3];

      if (v26 >= v25 >> 1)
      {
        sub_10001E8EC((v25 > 1), v26 + 1, 1);
        v19 = v38[33];
      }

      v19[2] = v26 + 1;
      v27 = &v19[4 * v26];
      v27[4] = v22;
      v27[5] = v21;
      v27[6] = v23;
      v27[7] = v24;
      v18 += 40;
      --v17;
    }

    while (v17);
    v1 = v38;
    v28 = v38[66];

    v29 = v19[2];
    if (v29)
    {
      goto LABEL_10;
    }

LABEL_16:

    v30 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v19 = _swiftEmptyArrayStorage;
  v29 = _swiftEmptyArrayStorage[2];
  if (!v29)
  {
    goto LABEL_16;
  }

LABEL_10:
  v1[34] = _swiftEmptyArrayStorage;
  sub_10001E8CC(0, v29, 0);
  v30 = v1[34];
  v31 = v30[2];
  v32 = 4;
  do
  {
    v33 = v19[v32];
    v1[34] = v30;
    v34 = v30[3];
    if (v31 >= v34 >> 1)
    {
      sub_10001E8CC((v34 > 1), v31 + 1, 1);
      v30 = v1[34];
    }

    v30[2] = v31 + 1;
    v30[v31 + 4] = v33;
    v32 += 4;
    ++v31;
    --v29;
  }

  while (v29);

LABEL_17:
  v1[75] = v30;
  v35 = v1[48];
  v36 = swift_task_alloc();
  v1[76] = v36;
  *v36 = v1;
  v36[1] = sub_10001CEFC;

  return sub_100021438(v30);
}

void sub_10001E2BC()
{
  v33 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 472);
  v3 = *(v0 + 376);

  swift_errorRetain();
  v4 = sub_100079B80();
  v5 = sub_10007A170();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 616);
    v8 = *(v0 + 464);
    v7 = *(v0 + 472);
    v9 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_100006B00(v8, v7, &v32);
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v11 = *(v0 + 208);
    v10 = *(v0 + 216);
    v12 = *(v0 + 224);
    v13 = sub_10007A6D0();
    v15 = sub_100006B00(v13, v14, &v32);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed to remove sendOneMessage events for clientType %{public}s: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = *(v0 + 616);
  }

  v17 = *(v0 + 512) + 1;
  if (v17 == *(v0 + 504))
  {
    v18 = *(v0 + 488);

    v19 = *(v0 + 384);
    v20 = swift_task_alloc();
    *(v0 + 480) = v20;
    *v20 = v0;
    v20[1] = sub_10001BC2C;
    v22 = *(v0 + 464);
    v21 = *(v0 + 472);

    sub_1000218D4(v22, v21, 50);
  }

  else
  {
    *(v0 + 512) = v17;
    v23 = *(v0 + 488);
    if (v17 >= *(v23 + 16))
    {
      __break(1u);
    }

    else
    {
      v24 = v23 + 56 * v17;
      v25 = *(v24 + 32);
      v26 = *(v24 + 48);
      v27 = *(v24 + 64);
      *(v0 + 64) = *(v24 + 80);
      *(v0 + 32) = v26;
      *(v0 + 48) = v27;
      *(v0 + 16) = v25;
      sub_100009B00(v0 + 16, v0 + 72);
      v28 = *(v0 + 384);
      v29 = *sub_10000F41C();
      v30 = *sub_10000F410();
      v31 = swift_task_alloc();
      *(v0 + 520) = v31;
      *v31 = v0;
      v31[1] = sub_10001BEF4;

      sub_100021010(v0 + 16, v29, v30);
    }
  }
}

uint64_t sub_10001E5D8()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10001E620()
{
  v2 = *(*v0 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100007838;

  return v6();
}

uint64_t sub_10001E730()
{
  v0 = SubmitEventsActivityConfig.activityFlags.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = *v0;
}

uint64_t sub_10001E774()
{
  v0 = SubmitEventsActivityConfig.identifier.unsafeMutableAddressor();
  v1 = *v0;
  v2 = *(v0 + 1);

  return v1;
}

uint64_t sub_10001E7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10001E7CC, 0, 0);
}

uint64_t sub_10001E7CC()
{
  v1 = *(v0 + 16);
  *(v0 + 56) = variable initialization expression of Daemon.mode() & 1;
  v2 = *v1 + 256;
  *(v0 + 40) = *v2;
  *(v0 + 48) = v2 & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;

  return _swift_task_switch(sub_10001E860, v1, 0);
}

uint64_t sub_10001E860()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  (*(v0 + 40))(*(v0 + 24), *(v0 + 32), *(v0 + 56));
  v3 = *(v0 + 8);

  return v3();
}

char *sub_10001E8CC(char *a1, int64_t a2, char a3)
{
  result = sub_10001E90C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001E8EC(char *a1, int64_t a2, char a3)
{
  result = sub_10001EA10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001E90C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009E778, &qword_10007CAB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10001EA10(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009E780, &unk_10007CAC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10001EB1C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001EB64()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007838;

  return sub_10001E7A8(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10001EC0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001EC6C()
{
  result = qword_10009E6A0;
  if (!qword_10009E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E6A0);
  }

  return result;
}

unint64_t sub_10001ECC4()
{
  result = qword_10009E6A8;
  if (!qword_10009E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E6A8);
  }

  return result;
}

unint64_t sub_10001ED1C(uint64_t a1)
{
  result = sub_10001ED44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001ED44()
{
  result = qword_10009E6B0;
  if (!qword_10009E6B0)
  {
    type metadata accessor for SubmitEventsActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E6B0);
  }

  return result;
}

uint64_t sub_10001EDCC()
{
  v0 = NSHomeDirectory();
  sub_100079E20();

  sub_1000797D0();
}

uint64_t sub_10001EE54()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A1F68);
  sub_1000070F4(v0, qword_1000A1F68);
  return sub_100079B90();
}

uint64_t DiskCache.__allocating_init(rootCacheURL:)(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000030A0;

  return DiskCache.init(rootCacheURL:)(a1);
}

uint64_t DiskCache.init(rootCacheURL:)(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v2[18] = *v1;
  v3 = *(*(type metadata accessor for SQLiteDB.Location() - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v4 = *(*(sub_10000712C(&qword_10009E788, &qword_10007E390) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v5 = sub_1000798B0();
  v2[21] = v5;
  v6 = *(v5 - 8);
  v2[22] = v6;
  v7 = *(v6 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_10001F0D0, 0, 0);
}

uint64_t sub_10001F0D0()
{
  v1 = v0[23];
  v3 = v0[16];
  v2 = v0[17];
  swift_defaultActor_initialize();
  sub_1000406E4(v3, 0x636163746E657665, 0xEB000000002F6568, v1);
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[20];
  sub_100079810();
  v9 = *(v7 + 8);
  v0[25] = v9;
  v0[26] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v6);
  sub_10000712C(&qword_10009E010, &unk_10007BA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10007B7C0;
  *(inited + 32) = NSURLFileSizeKey;
  v11 = NSURLFileSizeKey;
  sub_100009474(inited);
  swift_setDeallocating();
  sub_100009668(inited + 32);
  sub_1000797C0();
  v12 = v0[20];

  v13 = sub_100079750();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 0, 1, v13);
  v15 = sub_100079730();
  LOBYTE(v8) = v16;
  (*(v14 + 8))(v12, v13);
  if (v8)
  {
    goto LABEL_14;
  }

  v17 = sub_10003F2A0();
  swift_beginAccess();
  if (*v17)
  {
    if (v15 <= 0x140000000)
    {
LABEL_14:
      v23 = v0[24];
      v24 = v0[21];
      v25 = v0[22];
      v26 = v0[19];
      type metadata accessor for SQLiteDB();
      (*(v25 + 16))(v26, v23, v24);
      (*(v25 + 56))(v26, 0, 1, v24);
      *(v0[17] + 112) = sub_10005A004(v26);
      v38 = swift_task_alloc();
      v0[27] = v38;
      *v38 = v0;
      v38[1] = sub_10001F728;
      v39 = v0[17];

      return DiskCache.schemaVersion.getter();
    }
  }

  else if (v15 <= 3221225472)
  {
    goto LABEL_14;
  }

  if (*sub_10003F788())
  {
    if (qword_1000A1F60 != -1)
    {
      swift_once();
    }

    v18 = sub_100079BA0();
    sub_1000070F4(v18, qword_1000A1F68);
    v19 = sub_100079B80();
    v20 = sub_10007A170();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134349312;
      *(v21 + 4) = v15;
      *(v21 + 12) = 2050;
      swift_beginAccess();
      v22 = 3221225472;
      if (*v17)
      {
        v22 = 0x140000000;
      }

      *(v21 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v19, v20, "cache size %{public}ld exceeded maximum %{public}ld - cache delete overridden", v21, 0x16u);
    }

    goto LABEL_14;
  }

  if (qword_1000A1F60 != -1)
  {
    swift_once();
  }

  v40 = sub_100079BA0();
  sub_1000070F4(v40, qword_1000A1F68);
  v41 = sub_100079B80();
  v42 = sub_10007A170();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134349312;
    *(v43 + 4) = v15;
    *(v43 + 12) = 2050;
    swift_beginAccess();
    v44 = 3221225472;
    if (*v17)
    {
      v44 = 0x140000000;
    }

    *(v43 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v41, v42, "cache size %{public}ld exceeded maximum %{public}ld - deleting cache", v43, 0x16u);
  }

  v45 = v0[24];
  v46 = v0[21];

  sub_100023424();
  swift_allocError();
  *v47 = 1;
  swift_willThrow();
  v9(v45, v46);
  v27 = v0[21];
  v28 = v0[22];
  v30 = v0[17];
  v29 = v0[18];
  v31 = v0[16];
  swift_defaultActor_destroy();
  (*(v28 + 8))(v31, v27);
  swift_deallocPartialClassInstance();
  v33 = v0[23];
  v32 = v0[24];
  v35 = v0[19];
  v34 = v0[20];

  v36 = v0[1];

  return v36();
}

uint64_t sub_10001F728(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 216);
  v7 = *v2;

  v9 = *(v4 + 136);
  if (v1)
  {

    sub_100024AD8(&qword_10009E790, v10, type metadata accessor for DiskCache);
    swift_getObjectType();
    v11 = sub_10007A050();
    v13 = v12;
    v14 = sub_10001FCC4;
  }

  else
  {
    *(v5 + 224) = a1;
    sub_100024AD8(&qword_10009E790, v8, type metadata accessor for DiskCache);
    swift_getObjectType();
    v11 = sub_10007A050();
    v13 = v15;
    v14 = sub_10001F914;
  }

  return _swift_task_switch(v14, v11, v13);
}

uint64_t sub_10001F914()
{
  v1 = v0[28];
  if (v1 > 8)
  {
    v6 = v0[25];
    v5 = v0[26];
    v7 = v0[23];
    v8 = v0[24];
    v9 = v0[21];
    v10 = v0[19];
    v6(v0[16], v9);
    v6(v8, v9);

    v11 = v0[1];
    v12 = v0[17];

    return v11(v12);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[29] = v2;
    *v2 = v0;
    v2[1] = sub_10001FA58;
    v3 = v0[17];

    return sub_100020150(v1);
  }
}

uint64_t sub_10001FA58()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  v2[30] = v0;

  v5 = v2[17];
  v7 = sub_100024AD8(&qword_10009E790, v6, type metadata accessor for DiskCache);
  if (v0)
  {
    v2[31] = v7;
    swift_getObjectType();
    v8 = sub_10007A050();
    v10 = v9;
    v11 = sub_10001FD58;
  }

  else
  {
    swift_getObjectType();
    v8 = sub_10007A050();
    v10 = v12;
    v11 = sub_10001FC04;
  }

  return _swift_task_switch(v11, v8, v10);
}

uint64_t sub_10001FC04()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[19];
  v2(v0[16], v5);
  v2(v4, v5);

  v7 = v0[1];
  v8 = v0[17];

  return v7(v8);
}

uint64_t sub_10001FCC4()
{
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_10001FA58;
  v2 = *(v0 + 136);

  return sub_100020150(0);
}

uint64_t sub_10001FD58()
{
  v1 = *(*(v0 + 136) + 112);
  *(v0 + 256) = v1;

  return _swift_task_switch(sub_10001FDD0, v1, 0);
}

uint64_t sub_10001FDD0()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[17];
  sub_10005A488();

  swift_getObjectType();
  v5 = sub_10007A050();

  return _swift_task_switch(sub_10001FE68, v5, v4);
}

uint64_t sub_10001FE68()
{
  v1 = v0[30];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[21];
  v7 = v0[16];
  v6 = v0[17];
  swift_willThrow();
  v3(v7, v5);
  v3(v4, v5);

  v8 = v0[30];
  v10 = v0[23];
  v9 = v0[24];
  v12 = v0[19];
  v11 = v0[20];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10001FF58()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = 0x6E6F6973726576;
  *(v2 + 24) = 0xE700000000000000;

  return _swift_task_switch(sub_10001FFE8, v1, 0);
}

uint64_t sub_10001FFE8()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_10005A2A8(0xD000000000000025, 0x8000000100082E30, sub_100023478);
  v0[6] = 0;
  v3 = v0[5];

  v4 = v0[2];
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1000200E0()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_100020150(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100020170, v1, 0);
}

uint64_t sub_100020170()
{
  if (v0[2])
  {
    if (qword_1000A1F60 != -1)
    {
      swift_once();
    }

    v1 = sub_100079BA0();
    sub_1000070F4(v1, qword_1000A1F68);
    v2 = sub_100079B80();
    v3 = sub_10007A190();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "unsupported prior database version - deleting disk cache", v4, 2u);
    }

    sub_100023424();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = *(v0[3] + 112);
    v0[4] = v8;

    return _swift_task_switch(sub_100020300, v8, 0);
  }
}

uint64_t sub_100020300()
{
  v1 = v0[4];
  sub_10005A470();
  v0[5] = 0;
  v2 = v0[3];

  return _swift_task_switch(sub_1000203CC, v2, 0);
}

uint64_t sub_1000203CC()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[2] = 0x6E6F6973726576;
  v2[3] = 0xE700000000000000;
  v2[4] = 9;

  return _swift_task_switch(sub_10002045C, v1, 0);
}

uint64_t sub_10002045C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_10005A2A8(0xD000000000000060, 0x80000001000833A0, sub_100024B40);
  v0[7] = v2;
  if (v2)
  {
    v4 = v0[3];
    v5 = sub_10002065C;
  }

  else
  {
    v6 = v0[6];
    v7 = v0[3];

    v5 = sub_100020534;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100020534()
{
  if (qword_1000A1F60 != -1)
  {
    swift_once();
  }

  v1 = sub_100079BA0();
  sub_1000070F4(v1, qword_1000A1F68);
  v2 = sub_100079B80();
  v3 = sub_10007A190();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = 9;
    _os_log_impl(&_mh_execute_header, v2, v3, "initialized disk cache with version %lld", v4, 0xCu);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10002065C()
{
  v1 = v0[6];

  v2 = v0[7];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000206C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000712C(&qword_10009E868, "ʋ");
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10007B7D0;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = &off_100098A58;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 96) = &type metadata for Int64;
  *(v9 + 104) = &off_100098A18;
  *(v9 + 72) = a4;
  v10 = *(*a1 + 192);

  v10(v9);

  if (!v4)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t sub_1000207CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1000207F0, v3, 0);
}

uint64_t sub_1000207F0()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 40) + 112);
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;

  return _swift_task_switch(sub_100020878, v2, 0);
}

uint64_t sub_100020878()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_10005A2A8(0xD0000000000000AFLL, 0x8000000100082E60, sub_1000234A4);
  v0[8] = 0;
  v3 = v0[7];
  v4 = v0[5];

  return _swift_task_switch(sub_100024B3C, v4, 0);
}

uint64_t sub_100020950()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1000209B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v6 = sub_100079A00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 32))(a3, a4);
  v27 = getTimeIntervalSince1970(Date:)();
  (*(v7 + 8))(v10, v6);
  sub_10000712C(&qword_10009E868, "ʋ");
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10007CAD0;
  v12 = (*(a4 + 16))(a3, a4);
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = &off_100098A58;
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = *(a4 + 8);
  v14(v29, a3, a4);
  v15 = v29[0];
  v16 = v29[1];

  sub_100019EF4(v29);
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = &off_100098A58;
  *(v11 + 72) = v15;
  *(v11 + 80) = v16;
  v14(v30, a3, a4);
  v17 = v30[2];
  v18 = v30[3];

  sub_100019EF4(v30);
  *(v11 + 136) = &type metadata for String;
  *(v11 + 144) = &off_100098A58;
  *(v11 + 112) = v17;
  *(v11 + 120) = v18;
  v14(v31, a3, a4);
  sub_100019EF4(v31);
  v19 = v32;
  *(v11 + 176) = &type metadata for Bool;
  *(v11 + 184) = &off_1000989D8;
  *(v11 + 152) = v19;
  v14(v33, a3, a4);
  sub_100019EF4(v33);
  v20 = v34;
  *(v11 + 216) = &type metadata for Bool;
  *(v11 + 224) = &off_1000989D8;
  *(v11 + 192) = v20;
  v14(v35, a3, a4);
  v21 = v35[5];
  v22 = v35[6];

  sub_100019EF4(v35);
  *(v11 + 256) = &type metadata for String;
  *(v11 + 264) = &off_100098A58;
  *(v11 + 232) = v21;
  *(v11 + 240) = v22;
  v23 = v28;
  v24 = (*(a4 + 24))(a3, a4);
  *(v11 + 296) = &type metadata for Double;
  *(v11 + 304) = &off_100098A38;
  *(v11 + 272) = v24;
  *(v11 + 336) = &type metadata for Int64;
  *(v11 + 344) = &off_100098A18;
  *(v11 + 312) = v27;
  v25 = v35[9];
  (*(*v23 + 192))(v11);

  if (!v25)
  {
    return (*(*v23 + 176))(result);
  }

  return result;
}

uint64_t sub_100020D38(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 32) = a2;
  *(v7 + 24) = a3;
  *(v7 + 16) = a1;
  return _swift_task_switch(sub_100020D64, v6, 0);
}

uint64_t sub_100020D64()
{
  v1 = v0[4];
  v2 = sub_1000799B0();
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v6 = 0;
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  v6 = v5;
LABEL_6:
  v7 = sub_1000234C4(v0[5]);
  v0[7] = 0;
  v0[8] = v8;
  v9 = v7;
  v10 = v8;
  v11 = v0[3];
  v12 = v0[2];
  v13 = *(v0[6] + 112);
  v0[9] = v13;
  v14 = swift_task_alloc();
  v0[10] = v14;
  v14[2] = v12;
  v14[3] = v11;
  v14[4] = v6;
  v14[5] = v9;
  v14[6] = v10;
  v2 = sub_100020EBC;
  v3 = v13;
  v4 = 0;

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100020EBC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  sub_10005A2A8(0xD0000000000000C4, 0x8000000100082F10, sub_100023800);
  v0[11] = v3;
  if (v3)
  {
    v4 = v0[6];
    v5 = sub_100020FA0;
  }

  else
  {
    v6 = v0[10];
    v7 = v0[8];
    v8 = v0[6];

    v5 = sub_100024B3C;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100020FA0()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[11];
  v4 = v0[1];

  return v4();
}

uint64_t sub_100021010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100021034, v3, 0);
}

uint64_t sub_100021034()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v1 + 112);
  v0[7] = v5;
  v6 = swift_task_alloc();
  v0[8] = v6;
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = v1;

  return _swift_task_switch(sub_1000210C8, v5, 0);
}

uint64_t sub_1000210C8()
{
  v2 = v0[7];
  v1 = v0[8];
  sub_10000712C(&qword_10009E7A0, &qword_10007CB50);
  sub_10005A2A8(0xD000000000000185, 0x8000000100082FE0, sub_1000239D4);
  v0[9] = 0;
  v3 = v0[8];
  v4 = v0[6];

  return _swift_task_switch(sub_1000211B4, v4, 0);
}

uint64_t sub_1000211D0()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_100021234@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_10000712C(&qword_10009E868, "ʋ");
  v11 = swift_allocObject();
  v13 = a2[1];
  v22 = *a2;
  v12 = v22;
  *(v11 + 16) = xmmword_10007CAE0;
  *(v11 + 32) = v12;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = &off_100098A58;
  v21 = v13;
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = &off_100098A58;
  *(v11 + 72) = v13;
  v19 = a2[2];
  v20 = *(a2 + 6);
  v14 = v19;
  *(v11 + 136) = &type metadata for Bool;
  *(v11 + 144) = &off_1000989D8;
  *(v11 + 112) = v14;
  v15 = BYTE1(v19);
  *(v11 + 176) = &type metadata for Bool;
  *(v11 + 184) = &off_1000989D8;
  *(v11 + 152) = v15;
  *(v11 + 216) = &type metadata for String;
  *(v11 + 224) = &off_100098A58;
  *(v11 + 192) = *(a2 + 40);
  *(v11 + 256) = &type metadata for Int64;
  *(v11 + 264) = &off_100098A18;
  *(v11 + 232) = a3;
  *(v11 + 296) = &type metadata for Int64;
  *(v11 + 304) = &off_100098A18;
  *(v11 + 272) = a4;
  v16 = *(*a1 + 192);
  sub_10002423C(&v22, v18);
  sub_10002423C(&v21, v18);
  sub_1000248A8(&v19, v18);
  v16(v11);

  if (!v5)
  {
    v18[0] = _swiftEmptyArrayStorage;
    __chkstk_darwin(result);
    (*(*a1 + 144))(sub_100024904);
    result = v18[0];
    *a5 = v18[0];
  }

  return result;
}

uint64_t sub_100021438(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100021458, v1, 0);
}

uint64_t sub_100021458()
{
  v1 = v0[2];
  v2 = *(v0[3] + 112);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return _swift_task_switch(sub_1000214D4, v2, 0);
}

uint64_t sub_1000214D4()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_10005A304(sub_1000239F4);
  v0[6] = 0;
  v3 = v0[5];
  v4 = v0[3];

  return _swift_task_switch(sub_100024B3C, v4, 0);
}

uint64_t sub_100021594(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_1000215B4, v1, 0);
}

uint64_t sub_1000215B4()
{
  v1 = v0[3];
  v2 = *(v0[4] + 112);
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;

  return _swift_task_switch(sub_100021630, v2, 0);
}

uint64_t sub_100021630()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_10000712C(&qword_10009E130, &qword_10007BCF0);
  sub_10005A2A8(0xD000000000000045, 0x8000000100083170, sub_100023B30);
  v0[7] = 0;
  v3 = v0[6];
  v4 = v0[4];

  return _swift_task_switch(sub_100024B58, v4, 0);
}

uint64_t sub_10002171C()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void *sub_100021780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_10000712C(&qword_10009E868, "ʋ");
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10007B7C0;
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &off_1000989F8;
  *(v7 + 32) = a2;
  (*(*a1 + 192))();

  if (!v3)
  {
    __chkstk_darwin(result);
    (*(*a1 + 144))(sub_1000246A0);
    result = _swiftEmptyArrayStorage;
    *a3 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1000218D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1000218F8, v3, 0);
}

uint64_t sub_1000218F8()
{
  v1 = *(v0 + 40);
  v5 = *(v0 + 24);
  v2 = *(*(v0 + 48) + 112);
  *(v0 + 56) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = v5;
  *(v3 + 32) = v1;

  return _swift_task_switch(sub_10002198C, v2, 0);
}

uint64_t sub_10002198C()
{
  v2 = v0[7];
  v1 = v0[8];
  sub_10000712C(&qword_10009E7A8, &qword_10007CB78);
  sub_10005A2A8(0xD000000000000091, 0x80000001000831C0, sub_100023B4C);
  v0[9] = 0;
  v3 = v0[8];
  v4 = v0[6];

  return _swift_task_switch(sub_100024B58, v4, 0);
}

void *sub_100021A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_10000712C(&qword_10009E868, "ʋ");
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10007B7D0;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = &off_100098A58;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 96) = &type metadata for Int;
  *(v11 + 104) = &off_1000989F8;
  *(v11 + 72) = a4;
  v12 = *(*a1 + 192);

  v12(v11);

  if (!v5)
  {
    __chkstk_darwin(result);
    (*(*a1 + 144))(sub_100024484);
    result = _swiftEmptyArrayStorage;
    *a5 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100021C08(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_100021C28, v1, 0);
}

uint64_t sub_100021C28()
{
  v1 = v0[3];
  v2 = *(v0[4] + 112);
  v0[5] = v2;
  v0[6] = 0;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;

  return _swift_task_switch(sub_100021CA4, v2, 0);
}

uint64_t sub_100021CA4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_10005A304(sub_100023B6C);
  v0[8] = v2;
  if (v2)
  {
    v4 = v0[4];
    v5 = sub_100020950;
  }

  else
  {
    v6 = v0[7];
    v7 = v0[4];

    v5 = sub_100021D64;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100021D64()
{
  if (v0[2] == 50)
  {
    v0[6] = v0[8];
    v1 = v0[5];
    v2 = v0[3];
    v3 = swift_task_alloc();
    v0[7] = v3;
    *(v3 + 16) = v2;

    return _swift_task_switch(sub_100021CA4, v1, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100021E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v13 = a3;
  v6 = sub_100079A00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  (*(*a1 + 128))(0xD00000000000004BLL, 0x8000000100083470, sub_100024320, v10, &type metadata for ()[8]);

  if (!v3)
  {
    result = (*(*a1 + 136))(result);
    *v13 = result;
  }

  return result;
}

uint64_t sub_100021FF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100022018, v2, 0);
}

uint64_t sub_100022018()
{
  v1 = v0[3];
  v2 = *(v0[4] + 112);
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;

  return _swift_task_switch(sub_100022094, v2, 0);
}

uint64_t sub_100022094()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  sub_10000712C(&qword_10009E7B0, &qword_10007CB90);
  sub_10005A2A8(0xD000000000000046, 0x8000000100083260, sub_100023B88);
  v0[7] = 0;
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000221AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1000599E4(0, a1, &type metadata for String, &off_100098A48);
  if (v9)
  {
    sub_10005996C(1, a1, &type metadata for Int64, &off_100098A08);
    v4 = sub_10000712C(&qword_10009E870, &qword_10007CCE0);
    v5 = *(v4 + 48);
    *a2 = v8;
    a2[1] = v9;
    sub_1000799A0();
    return (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
  }

  else
  {
    sub_100023424();
    swift_allocError();
    *v7 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1000222DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100022304, v4, 0);
}

uint64_t sub_100022304()
{
  v1 = v0[4];
  v2 = v0[6];
  if (v1)
  {
    v3 = v0[5];
    v5 = v0[2];
    v4 = v0[3];
    v6 = *(v2 + 112);
    v0[7] = v6;
    v7 = swift_task_alloc();
    v0[8] = v7;
    v7[2] = v3;
    v7[3] = v5;
    v7[4] = v4;
    v7[5] = v1;
    v8 = sub_1000223D0;
  }

  else
  {
    v9 = v0[2];
    v6 = *(v2 + 112);
    v0[10] = v6;
    v10 = swift_task_alloc();
    v0[11] = v10;
    *(v10 + 16) = v9;
    v8 = sub_1000224C0;
  }

  return _swift_task_switch(v8, v6, 0);
}

uint64_t sub_1000223D0()
{
  v2 = v0[7];
  v1 = v0[8];
  sub_10005A2A8(0xD0000000000000A8, 0x80000001000832F0, sub_100023ED8);
  v0[9] = 0;
  v3 = v0[8];
  v4 = v0[6];

  return _swift_task_switch(sub_1000224A8, v4, 0);
}

uint64_t sub_1000224C0()
{
  v2 = v0[10];
  v1 = v0[11];
  sub_10005A2A8(0xD000000000000038, 0x80000001000832B0, sub_100023DB0);
  v0[12] = 0;
  v3 = v0[11];
  v4 = v0[6];

  return _swift_task_switch(sub_100024B3C, v4, 0);
}

uint64_t sub_100022598()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000225F8()
{
  v1 = v0[11];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100022678()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v0[5] = 0;
  return _swift_task_switch(sub_10002269C, v1, 0);
}

uint64_t sub_10002269C()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_10005A304(sub_1000227AC);
  v0[6] = v2;
  v3 = v0[3];
  if (v2)
  {
    v4 = sub_100022794;
  }

  else
  {
    v4 = sub_100022748;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100022748()
{
  if (*(v0 + 16) != 50)
  {
    return (*(v0 + 8))();
  }

  *(v0 + 40) = *(v0 + 48);
  return _swift_task_switch(sub_10002269C, *(v0 + 32), 0);
}

uint64_t sub_1000227AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + 128))(0xD00000000000001DLL, 0x8000000100083450, sub_10002286C, 0, &type metadata for ()[8]);
  if (!v2)
  {
    result = (*(*a1 + 136))(result);
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000228A4()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = 0x554E447473616CLL;
  *(v2 + 24) = 0xE700000000000000;

  return _swift_task_switch(sub_100022934, v1, 0);
}

uint64_t sub_100022934()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_10005A2A8(0xD000000000000025, 0x8000000100082E30, sub_10002403C);
  v0[6] = 0;
  v3 = v0[5];

  v4 = v0[2] != 0;
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_100022A34()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  *(v0 + 16) = v2;
  swift_errorRetain();
  sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 56) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v8 = *(v0 + 48);

    v9 = *(v0 + 16);

    v10 = *(v0 + 8);

    return v10(2);
  }

  else
  {
    v4 = *(v0 + 16);

    v5 = *(v0 + 8);
    v6 = *(v0 + 48);

    return v5();
  }
}

uint64_t sub_100022B38(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_100022B5C, v1, 0);
}

uint64_t sub_100022B5C()
{
  v1 = *(v0 + 48);
  v2 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  v3[2] = 0x554E447473616CLL;
  v3[3] = 0xE700000000000000;
  v3[4] = v1;

  return _swift_task_switch(sub_100022BF4, v2, 0);
}

uint64_t sub_100022BF4()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_10005A2A8(0xD000000000000060, 0x80000001000833A0, sub_100024068);
  v0[5] = 0;
  v3 = v0[4];
  v4 = v0[2];

  return _swift_task_switch(sub_100024B3C, v4, 0);
}

uint64_t sub_100022CCC()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_100022D50()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_100022D74, v1, 0);
}

uint64_t sub_100022D74()
{
  v1 = v0[3];
  sub_10005A2A8(0x4D5555434156, 0xE600000000000000, sub_100024B20);
  v0[4] = 0;
  v2 = v0[2];

  return _swift_task_switch(sub_100024B3C, v2, 0);
}

uint64_t DiskCache.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DiskCache.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void *sub_100022EF8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_10000712C(&qword_10009E880, &qword_10007CCF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000712C(&qword_10009E888, &unk_10007CD00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100023040(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009E278, &qword_10007CCF0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10002314C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009E878, &qword_10007CCE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100023274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_10000712C(&qword_10009E868, "ʋ");
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10007B7C0;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = &off_100098A58;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  v14 = *(*a1 + 192);

  v14(v13);

  if (!v6)
  {
    result = (*(*a1 + 160))(&v16, a4, a5);
    *a6 = v16;
  }

  return result;
}

uint64_t sub_100023398(uint64_t a1)
{
  v2 = sub_10000712C(&qword_10009E788, &qword_10007E390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100023424()
{
  result = qword_10009E798;
  if (!qword_10009E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E798);
  }

  return result;
}

uint64_t sub_1000234C4(uint64_t a1)
{
  v3 = sub_100079E70();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100079620();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_100079610();
  v30[1] = a1;

  sub_10000712C(&unk_10009EB50, &unk_10007D3B0);
  sub_1000075B4();
  v10 = sub_100079600();
  if (v1)
  {

    return v6;
  }

  v12 = v10;
  v13 = v11;

  v15 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(v13);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v15 != 2)
  {
    v16 = 0;
    goto LABEL_13;
  }

  v18 = *(v12 + 16);
  v17 = *(v12 + 24);
  v16 = v17 - v18;
  if (__OFSUB__(v17, v18))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v12), v12))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v16 = HIDWORD(v12) - v12;
  }

LABEL_13:
  v19 = sub_10000F41C();
  if (*v19 < v16)
  {
    v20 = v19;
    if (qword_1000A1F60 != -1)
    {
      swift_once();
    }

    v21 = sub_100079BA0();
    sub_1000070F4(v21, qword_1000A1F68);
    sub_100007230(v12, v13);
    v22 = sub_100079B80();
    v6 = sub_10007A170();
    if (!os_log_type_enabled(v22, v6))
    {
      sub_1000071DC(v12, v13);
LABEL_31:

      sub_100023424();
      swift_allocError();
      *v29 = 0;
      swift_willThrow();
      sub_1000071DC(v12, v13);

      return v6;
    }

    result = swift_slowAlloc();
    *result = 134349312;
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        v23 = 0;
        goto LABEL_30;
      }

      v26 = *(v12 + 16);
      v25 = *(v12 + 24);
      v27 = __OFSUB__(v25, v26);
      v23 = v25 - v26;
      if (!v27)
      {
        goto LABEL_30;
      }

      __break(1u);
    }

    else if (!v15)
    {
      v23 = BYTE6(v13);
LABEL_30:
      *(result + 4) = v23;
      v28 = result;
      sub_1000071DC(v12, v13);
      *(v28 + 12) = 2050;
      *(v28 + 14) = *v20;
      _os_log_impl(&_mh_execute_header, v22, v6, "event too large: (%{public}ld > %{public}lld", v28, 0x16u);

      goto LABEL_31;
    }

    LODWORD(v23) = HIDWORD(v12) - v12;
    if (!__OFSUB__(HIDWORD(v12), v12))
    {
      v23 = v23;
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  sub_100079E60();
  result = sub_100079E40();
  if (v24)
  {
    v6 = result;
    sub_1000071DC(v12, v13);

    return v6;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100023800(uint64_t a1)
{
  v3 = v1;
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = v3[6];
  sub_10000712C(&qword_10009E868, "ʋ");
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10007CAD0;
  v19 = *v5;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = &off_100098A58;
  *(v10 + 32) = *v5;
  v18 = v5[1];
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = &off_100098A58;
  *(v10 + 72) = v5[1];
  v16 = v5[2];
  v17 = *(v5 + 6);
  v11 = v16;
  *(v10 + 136) = &type metadata for Bool;
  *(v10 + 144) = &off_1000989D8;
  *(v10 + 112) = v11;
  v12 = BYTE1(v16);
  *(v10 + 176) = &type metadata for Bool;
  *(v10 + 184) = &off_1000989D8;
  *(v10 + 152) = v12;
  *(v10 + 216) = &type metadata for String;
  *(v10 + 224) = &off_100098A58;
  *(v10 + 192) = *(v5 + 40);
  *(v10 + 256) = &type metadata for Double;
  *(v10 + 264) = &off_100098A38;
  *(v10 + 232) = v6;
  *(v10 + 296) = &type metadata for Int64;
  *(v10 + 304) = &off_100098A18;
  *(v10 + 272) = v8;
  *(v10 + 336) = &type metadata for String;
  *(v10 + 344) = &off_100098A58;
  *(v10 + 312) = v7;
  *(v10 + 320) = v9;
  v13 = *(*a1 + 192);
  sub_10002423C(&v19, v15);
  sub_10002423C(&v18, v15);
  sub_1000248A8(&v16, v15);

  v13(v10);

  if (!v2)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t sub_1000239F4(uint64_t result)
{
  v3 = v1;
  v4 = result;
  v5 = *(v3 + 16);
  v6 = *(v5 + 16);
  if (!v6)
  {
    return (*(*v4 + 144))(result);
  }

  v7 = (v5 + 32);
  while (1)
  {
    v8 = *v7++;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    (*(*v4 + 128))(0xD000000000000038, 0x80000001000834C0, sub_1000247CC, v9, &type metadata for ()[8]);

    if (v2)
    {
      break;
    }

    if (!--v6)
    {
      return (*(*v4 + 144))(result);
    }
  }

  return result;
}

uint64_t sub_100023B88(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 16);
  sub_10000712C(&qword_10009E868, "ʋ");
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10007B7D0;
  v13 = *v5;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = &off_100098A58;
  *(v6 + 32) = *v5;
  v12 = v5[1];
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = &off_100098A58;
  *(v6 + 72) = v5[1];
  v7 = *(*a1 + 192);
  sub_10002423C(&v13, v11);
  sub_10002423C(&v12, v11);
  v7(v6);
  if (v2)
  {
  }

  v9 = *(*a1 + 152);
  v10 = sub_10000712C(&qword_10009E7B0, &qword_10007CB90);
  return v9(sub_1000221AC, 0, v10);
}

uint64_t sub_100023DB0(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 16);
  sub_10000712C(&qword_10009E868, "ʋ");
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10007B7D0;
  v11 = *v5;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = &off_100098A58;
  *(v6 + 32) = *v5;
  v10 = v5[1];
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = &off_100098A58;
  *(v6 + 72) = v5[1];
  v7 = *(*a1 + 192);
  sub_10002423C(&v11, v9);
  sub_10002423C(&v10, v9);
  v7(v6);

  if (!v2)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t sub_100023ED8(uint64_t a1)
{
  v3 = v1;
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = getTimeIntervalSince1970(Date:)();
  sub_10000712C(&qword_10009E868, "ʋ");
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10007CAF0;
  v15 = *v6;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = &off_100098A58;
  *(v10 + 32) = *v6;
  v14 = v6[1];
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = &off_100098A58;
  *(v10 + 72) = v6[1];
  *(v10 + 136) = &type metadata for String;
  *(v10 + 144) = &off_100098A58;
  *(v10 + 112) = v8;
  *(v10 + 120) = v7;
  *(v10 + 176) = &type metadata for Int64;
  *(v10 + 184) = &off_100098A18;
  *(v10 + 152) = v9;
  v11 = *(*a1 + 192);
  sub_10002423C(&v15, v13);
  sub_10002423C(&v14, v13);

  v11(v10);

  if (!v2)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

unint64_t sub_10002408C()
{
  result = qword_10009E7B8;
  if (!qword_10009E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E7B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiskCacheError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DiskCacheError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100024298()
{
  v1 = sub_100079A00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100024320(uint64_t a1)
{
  v4 = *(sub_100079A00() - 8);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  result = sub_1000799B0();
  v8 = 0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_5;
  }

  if (v7 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = v7;
LABEL_5:
  sub_10000712C(&qword_10009E868, "ʋ");
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10007B7C0;
  *(v9 + 56) = &type metadata for Int64;
  *(v9 + 64) = &off_100098A18;
  *(v9 + 32) = v8;
  (*(*a1 + 192))();

  if (!v2)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t sub_100024484(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_1000599E4(0, a1, &type metadata for String, &off_100098A48);
  if (v23)
  {
    sub_1000599E4(3, a1, &type metadata for String, &off_100098A48);
    v26 = v3;
    sub_10005996C(1, a1, &type metadata for Bool, &off_1000989C8);
    sub_10005996C(2, a1, &type metadata for Bool, &off_1000989C8);
    v6 = sub_10005D6C8(v22, v22);
    v8 = v7;
    v10 = v9;

    v11 = v10;
    v12 = v26;
    sub_10005D6E8(v4, v5, v22, v23, v6 & 0x101, v8, v11, v24);
    v13 = *v12;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v12 = v13;
    if ((result & 1) == 0)
    {
      result = sub_10002314C(0, *(v13 + 16) + 1, 1, v13);
      v13 = result;
      *v12 = result;
    }

    v16 = *(v13 + 16);
    v15 = *(v13 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_10002314C((v15 > 1), v16 + 1, 1, v13);
      v13 = result;
      *v12 = result;
    }

    *(v13 + 16) = v16 + 1;
    v17 = v13 + 56 * v16;
    v18 = v24[0];
    v19 = v24[1];
    v20 = v24[2];
    *(v17 + 80) = v25;
    *(v17 + 48) = v19;
    *(v17 + 64) = v20;
    *(v17 + 32) = v18;
  }

  else
  {
    sub_100023424();
    swift_allocError();
    *v21 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000246A0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1000599E4(0, a1, &type metadata for String, &off_100098A48);
  if (v10)
  {
    v3 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v3;
    if ((result & 1) == 0)
    {
      result = sub_100023040(0, *(v3 + 16) + 1, 1, v3);
      v3 = result;
      *v2 = result;
    }

    v6 = *(v3 + 16);
    v5 = *(v3 + 24);
    if (v6 >= v5 >> 1)
    {
      result = sub_100023040((v5 > 1), v6 + 1, 1, v3);
      v3 = result;
      *v2 = result;
    }

    *(v3 + 16) = v6 + 1;
    v7 = v3 + 16 * v6;
    *(v7 + 32) = v9;
    *(v7 + 40) = v10;
  }

  else
  {
    sub_100023424();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000247CC(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 16);
  sub_10000712C(&qword_10009E868, "ʋ");
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10007B7C0;
  *(v6 + 56) = &type metadata for Int64;
  *(v6 + 64) = &off_100098A18;
  *(v6 + 32) = v5;
  (*(*a1 + 192))();

  if (!v2)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t sub_100024904(uint64_t a1)
{
  v4 = *(v1 + 16);
  sub_1000599E4(2, a1, &type metadata for String, &off_100098A48);
  if (v23)
  {
    sub_10005996C(0, a1, &type metadata for Double, &off_100098A28);
    sub_10005996C(1, a1, &type metadata for Int64, &off_100098A08);
    result = sub_10002DC6C(v22, 0x4D656E4F646E6553);
    if (!v2)
    {
      v9 = result;
      v10 = v6;
      v11 = v7;
      v12 = v8;
      v13 = *v4;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v13;
      if ((result & 1) == 0)
      {
        result = sub_100022EF8(0, v13[2] + 1, 1, v13);
        v13 = result;
        *v4 = result;
      }

      v14 = v13[2];
      v15 = v13[3];
      v16 = v14 + 1;
      if (v14 >= v15 >> 1)
      {
        v21 = v14 + 1;
        v19 = v13;
        v20 = v13[2];
        result = sub_100022EF8((v15 > 1), v14 + 1, 1, v19);
        v14 = v20;
        v16 = v21;
        v13 = result;
        *v4 = result;
      }

      v13[2] = v16;
      v17 = &v13[5 * v14];
      v17[4] = v22;
      v17[5] = v9;
      v17[6] = v10;
      v17[7] = v11;
      v17[8] = v12;
    }
  }

  else
  {
    sub_100023424();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100024AD8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100024B5C()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6C68);
  sub_1000070F4(v0, qword_1000A6C68);
  return sub_100079B90();
}

uint64_t sub_100024C18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001A474;

  return sub_100024E40();
}

uint64_t sub_100024CB8()
{
  v2 = *(*v0 + 88);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100007838;

  return v6();
}

uint64_t sub_100024DC8()
{
  v0 = PostInstallActivityConfig.activityFlags.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = *v0;
}

uint64_t sub_100024E0C()
{
  v0 = PostInstallActivityConfig.identifier.unsafeMutableAddressor();
  v1 = *v0;
  v2 = *(v0 + 1);

  return v1;
}

uint64_t sub_100024E40()
{
  v1 = sub_1000797B0();
  v0[18] = v1;
  v2 = *(v1 - 8);
  v0[19] = v2;
  v3 = *(v2 + 64) + 15;
  v0[20] = swift_task_alloc();
  v4 = sub_1000798B0();
  v0[21] = v4;
  v5 = *(v4 - 8);
  v0[22] = v5;
  v6 = *(v5 + 64) + 15;
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();

  return _swift_task_switch(sub_100024FB4, 0, 0);
}

uint64_t sub_100024FB4()
{
  v148 = v0;
  v132 = [objc_opt_self() defaultManager];
  if (qword_1000A2188 != -1)
  {
LABEL_66:
    swift_once();
  }

  v1 = *(qword_1000A6C80 + 16);
  v134 = v0;
  if (v1)
  {
    v2 = v0[22];
    v3 = v0[19];
    v138 = enum case for URL.DirectoryHint.isDirectory(_:);
    v136 = (v3 + 104);
    v135 = (v3 + 8);
    v4 = (v2 + 8);
    v142 = (v2 + 16);
    v5 = (qword_1000A6C80 + 40);
    v140 = (v2 + 8);
    do
    {
      v7 = v0[26];
      v6 = v0[27];
      v9 = v0[20];
      v8 = v0[21];
      v10 = v0[18];
      v11 = *(v5 - 1);
      v12 = *v5;
      v144 = v5;

      sub_10001EDCC();
      v0[14] = v11;
      v0[15] = v12;
      (*v136)(v9, v138, v10);
      sub_100025EBC();
      sub_1000798A0();
      (*v135)(v9, v10);
      v13 = *v4;
      (*v4)(v7, v8);

      v145 = v13;
      if (sub_100079830())
      {
        if (qword_1000A2180 != -1)
        {
          swift_once();
        }

        v14 = v0[27];
        v15 = v0[25];
        v16 = v0[21];
        v17 = sub_100079BA0();
        sub_1000070F4(v17, qword_1000A6C68);
        v131 = *v142;
        (*v142)(v15, v14, v16);
        v18 = sub_100079B80();
        v19 = sub_10007A190();
        v20 = os_log_type_enabled(v18, v19);
        v21 = v0[25];
        v22 = v0[21];
        if (v20)
        {
          v23 = v1;
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v147[0] = v25;
          *v24 = 136446210;
          v26 = sub_100079870();
          v27 = v13;
          v28 = v26;
          v30 = v29;
          v27(v21, v22);
          v31 = sub_100006B00(v28, v30, v147);

          *(v24 + 4) = v31;
          _os_log_impl(&_mh_execute_header, v18, v19, "removing %{public}s", v24, 0xCu);
          sub_1000070A8(v25);

          v1 = v23;
          v0 = v134;
        }

        else
        {

          v13(v21, v22);
        }

        v51 = v0[27];
        sub_100079800(v32);
        v53 = v52;
        v0[16] = 0;
        v54 = [v132 removeItemAtURL:v52 error:v0 + 16];

        v55 = v0[16];
        v56 = v0[27];
        if (v54)
        {
          v57 = v0[21];
          v58 = v55;
          v4 = v140;
          v145(v56, v57);
        }

        else
        {
          v59 = v0[23];
          v60 = v0[21];
          v61 = v55;
          sub_1000797A0();

          swift_willThrow();
          v131(v59, v56, v60);
          swift_errorRetain();
          v62 = sub_100079B80();
          v63 = sub_10007A170();

          v64 = os_log_type_enabled(v62, v63);
          v65 = v0[27];
          v66 = v0[23];
          v67 = v0[21];
          if (v64)
          {
            v68 = swift_slowAlloc();
            v147[0] = swift_slowAlloc();
            *v68 = 136446466;
            v69 = sub_100079870();
            v71 = v70;
            v145(v66, v67);
            v72 = sub_100006B00(v69, v71, v147);

            *(v68 + 4) = v72;
            *(v68 + 12) = 2082;
            swift_getErrorValue();
            v74 = v0[11];
            v73 = v0[12];
            v75 = v0[13];
            v76 = sub_10007A6D0();
            v78 = sub_100006B00(v76, v77, v147);

            *(v68 + 14) = v78;
            _os_log_impl(&_mh_execute_header, v62, v63, "failed removing %{public}s: %{public}s", v68, 0x16u);
            swift_arrayDestroy();

            v4 = v140;
          }

          else
          {

            v4 = v140;
            v145(v66, v67);
          }

          v145(v65, v67);
        }
      }

      else
      {
        if (qword_1000A2180 != -1)
        {
          swift_once();
        }

        v33 = v0[27];
        v34 = v0[24];
        v35 = v0[21];
        v36 = sub_100079BA0();
        sub_1000070F4(v36, qword_1000A6C68);
        (*v142)(v34, v33, v35);
        v37 = sub_100079B80();
        v38 = sub_10007A160();
        v39 = os_log_type_enabled(v37, v38);
        v40 = v0[27];
        v41 = v0[24];
        v42 = v0[21];
        if (v39)
        {
          v133 = v0[27];
          v43 = swift_slowAlloc();
          v44 = v1;
          v45 = swift_slowAlloc();
          v147[0] = v45;
          *v43 = 136446210;
          v46 = sub_100079870();
          v48 = v47;
          v145(v41, v42);
          v49 = v46;
          v4 = v140;
          v50 = sub_100006B00(v49, v48, v147);

          *(v43 + 4) = v50;
          _os_log_impl(&_mh_execute_header, v37, v38, "skipping %{public}s", v43, 0xCu);
          sub_1000070A8(v45);
          v1 = v44;
          v0 = v134;

          v145(v133, v42);
        }

        else
        {

          v145(v41, v42);
          v145(v40, v42);
        }
      }

      v5 = v144 + 2;
      --v1;
    }

    while (v1);
  }

  v79 = sub_10003F368();
  swift_beginAccess();
  v80 = [*v79 dictionaryRepresentation];
  v81 = sub_100079D50();

  v82 = v81 + 64;
  v83 = -1 << *(v81 + 32);
  if (-v83 < 64)
  {
    v84 = ~(-1 << -v83);
  }

  else
  {
    v84 = -1;
  }

  v85 = v84 & *(v81 + 64);
  v141 = v81;

  v146 = v79;
  swift_beginAccess();
  v86 = 0;
  v87 = (63 - v83) >> 6;
  v137 = v81 + 64;
  v139 = v87;
  if (v85)
  {
    do
    {
      while (1)
      {
LABEL_33:
        v89 = (*(v141 + 48) + ((v86 << 10) | (16 * __clz(__rbit64(v85)))));
        v90 = *v89;
        v91 = v89[1];
        v92 = qword_1000A2180;

        if (v92 != -1)
        {
          swift_once();
        }

        v93 = sub_100079BA0();
        sub_1000070F4(v93, qword_1000A6C68);

        v94 = sub_100079B80();
        v95 = sub_10007A160();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v147[0] = v97;
          *v96 = 136446210;
          *(v96 + 4) = sub_100006B00(v90, v91, v147);
          _os_log_impl(&_mh_execute_header, v94, v95, "default set: %{public}s", v96, 0xCu);
          sub_1000070A8(v97);
        }

        if (qword_1000A2190 != -1)
        {
          swift_once();
        }

        v143 = (v85 - 1) & v85;
        v98 = qword_1000A6C88;
        if (*(qword_1000A6C88 + 16))
        {
          v99 = *(qword_1000A6C88 + 40);
          sub_10007A730();
          sub_100079EC0();
          v100 = sub_10007A760();
          v101 = -1 << *(v98 + 32);
          v102 = v100 & ~v101;
          if ((*(v98 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102))
          {
            break;
          }
        }

LABEL_48:
        if (qword_1000A2198 != -1)
        {
          swift_once();
        }

        v106 = qword_1000A6C90;
        v107 = *(qword_1000A6C90 + 16);
        if (v107)
        {
          swift_beginAccess();
          v108 = (v106 + 40);
          do
          {
            v111 = *(v108 - 1);
            v112 = *v108;

            v150._countAndFlagsBits = v111;
            v150._object = v112;
            LOBYTE(v111) = sub_100079F50(v150);

            if (v111)
            {

              v113 = sub_100079B80();
              v114 = sub_10007A190();

              if (os_log_type_enabled(v113, v114))
              {
                v115 = swift_slowAlloc();
                v116 = swift_slowAlloc();
                v147[0] = v116;
                *v115 = 136446210;
                *(v115 + 4) = sub_100006B00(v90, v91, v147);
                _os_log_impl(&_mh_execute_header, v113, v114, "removing default %{public}s", v115, 0xCu);
                sub_1000070A8(v116);
              }

              v109 = *v146;
              v110 = sub_100079DF0();
              [v109 removeObjectForKey:v110];
            }

            v108 += 2;
            --v107;
          }

          while (v107);

          v0 = v134;
          v82 = v137;
        }

        else
        {

          v0 = v134;
        }

        v85 = v143;
        v87 = v139;
        if (!v143)
        {
          goto LABEL_29;
        }
      }

      v103 = ~v101;
      while (1)
      {
        v104 = (*(v98 + 48) + 16 * v102);
        v105 = *v104 == v90 && v104[1] == v91;
        if (v105 || (sub_10007A610() & 1) != 0)
        {
          break;
        }

        v102 = (v102 + 1) & v103;
        if (((*(v98 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      v117 = sub_100079B80();
      v118 = sub_10007A190();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v147[0] = v120;
        *v119 = 136446210;
        *(v119 + 4) = sub_100006B00(v90, v91, v147);
        _os_log_impl(&_mh_execute_header, v117, v118, "removing default %{public}s", v119, 0xCu);
        sub_1000070A8(v120);
      }

      v82 = v137;
      v85 = v143;
      v121 = *v146;
      v122 = sub_100079DF0();

      [v121 removeObjectForKey:v122];

      v0 = v134;
      v87 = v139;
    }

    while (v143);
  }

  while (1)
  {
LABEL_29:
    v88 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      __break(1u);
      goto LABEL_66;
    }

    if (v88 >= v87)
    {
      break;
    }

    v85 = *(v82 + 8 * v88);
    ++v86;
    if (v85)
    {
      v86 = v88;
      goto LABEL_33;
    }
  }

  v123 = v0[26];
  v124 = v0[27];
  v126 = v0[24];
  v125 = v0[25];
  v127 = v0[23];
  v128 = v0[20];

  v129 = v0[1];

  return v129();
}

unint64_t sub_100025E1C(uint64_t a1)
{
  result = sub_100025E44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100025E44()
{
  result = qword_10009E890;
  if (!qword_10009E890)
  {
    type metadata accessor for PostInstallActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E890);
  }

  return result;
}

unint64_t sub_100025EBC()
{
  result = qword_10009E940;
  if (!qword_10009E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E940);
  }

  return result;
}

uint64_t sub_100025F10()
{
  if (*v0)
  {
    result = 0x727574616E676973;
  }

  else
  {
    result = 6775138;
  }

  *v0;
  return result;
}

uint64_t sub_100025F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6775138 && a2 == 0xE300000000000000;
  if (v5 || (sub_10007A610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10007A610();

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

uint64_t sub_100026038(uint64_t a1)
{
  v2 = sub_100026670();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100026074(uint64_t a1)
{
  v2 = sub_100026670();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000260B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10002648C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1000260E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100079780();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_100079770();
  sub_100026258();
  sub_100079760();
  if (!v2 && ((a2 = sub_1000798E0(), v8 = v7, v9 = sub_1000798E0(), v11 = v10, , , v8 >> 60 == 15) || v11 >> 60 == 15))
  {
    sub_1000262D0();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();

    sub_1000071C8(v9, v11);
    sub_1000071C8(a2, v8);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_100026258()
{
  result = qword_1000A22A0[0];
  if (!qword_1000A22A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A22A0);
  }

  return result;
}

unint64_t sub_1000262D0()
{
  result = qword_10009E948;
  if (!qword_10009E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E948);
  }

  return result;
}

uint64_t sub_100026324(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100026340(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100026394(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1000263F4(uint64_t a1, int a2)
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

uint64_t sub_10002643C(uint64_t result, int a2, int a3)
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

uint64_t sub_10002648C(uint64_t *a1)
{
  v3 = sub_10000712C(&qword_10009E950, &qword_10007CF30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000751C(a1, a1[3]);
  sub_100026670();
  sub_10007A790();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_10007A550();
    v11 = 1;
    sub_10007A550();
    (*(v4 + 8))(v7, v3);
  }

  sub_1000070A8(a1);
  return v8;
}

unint64_t sub_100026670()
{
  result = qword_1000A2330[0];
  if (!qword_1000A2330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A2330);
  }

  return result;
}

unint64_t sub_1000266D8()
{
  result = qword_1000A2440[0];
  if (!qword_1000A2440[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A2440);
  }

  return result;
}

unint64_t sub_100026730()
{
  result = qword_1000A2550;
  if (!qword_1000A2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2550);
  }

  return result;
}

unint64_t sub_100026788()
{
  result = qword_1000A2558[0];
  if (!qword_1000A2558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A2558);
  }

  return result;
}

uint64_t sub_1000267F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100026828(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_100026828(uint64_t *a1)
{
  sub_10001378C(a1, v6);
  sub_100026AEC();
  v3 = sub_10007A040();
  if (v1)
  {

    sub_10001378C(a1, v6);
    sub_100026B40();
    v4 = sub_10007A040();
  }

  else
  {
    v4 = v3;
  }

  sub_1000070A8(a1);
  return v4;
}

unint64_t sub_10002696C()
{
  result = qword_10009E958;
  if (!qword_10009E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E958);
  }

  return result;
}

unint64_t sub_1000269C4()
{
  result = qword_10009E960;
  if (!qword_10009E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E960);
  }

  return result;
}

uint64_t sub_100026A24(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100026A38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100026A80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_100026AEC()
{
  result = qword_10009E968;
  if (!qword_10009E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E968);
  }

  return result;
}

unint64_t sub_100026B40()
{
  result = qword_10009E970;
  if (!qword_10009E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E970);
  }

  return result;
}

uint64_t variable initialization expression of Listener.connectionQueue()
{
  v16 = sub_100079C90();
  v0 = *(v16 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v16);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007A1C0();
  v4 = *(v15 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007A1B0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = sub_100079CC0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  sub_100026E98();
  v14 = " any expected type";
  sub_100079CA0();
  v17 = _swiftEmptyArrayStorage;
  sub_100029CBC(&qword_10009E978, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000712C(&unk_10009FB70, &qword_10007D210);
  sub_100026EE4();
  sub_10007A2E0();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v15);
  v12 = v16;
  (*(v0 + 104))(v3, enum case for DispatchQoS.QoSClass.background(_:), v16);
  sub_10007A1F0();
  (*(v0 + 8))(v3, v12);
  return sub_10007A1E0();
}

unint64_t sub_100026E98()
{
  result = qword_10009FB60;
  if (!qword_10009FB60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009FB60);
  }

  return result;
}

unint64_t sub_100026EE4()
{
  result = qword_10009E980;
  if (!qword_10009E980)
  {
    sub_1000072D8(&unk_10009FB70, &qword_10007D210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E980);
  }

  return result;
}

uint64_t variable initialization expression of Listener.clients()
{
  if (_swiftEmptyArrayStorage >> 62 && sub_10007A4A0())
  {
    v0 = sub_100029674(_swiftEmptyArrayStorage);
  }

  else
  {
    v0 = &_swiftEmptySetSingleton;
  }

  sub_10000712C(&qword_10009E988, &qword_10007D218);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  return result;
}

uint64_t sub_100026FC8()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A2868);
  sub_1000070F4(v0, qword_1000A2868);
  return sub_100079B90();
}

uint64_t Listener.__allocating_init(mode:clientBundleID:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000030A0;

  return Listener.init(mode:clientBundleID:)(a1, a2, a3);
}

uint64_t Listener.init(mode:clientBundleID:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 168) = a3;
  *(v4 + 176) = v3;
  *(v4 + 160) = a2;
  *(v4 + 73) = a1;
  v5 = sub_100079C90();
  *(v4 + 184) = v5;
  v6 = *(v5 - 8);
  *(v4 + 192) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  v8 = sub_10007A1C0();
  *(v4 + 208) = v8;
  v9 = *(v8 - 8);
  *(v4 + 216) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  v11 = sub_10007A1B0();
  *(v4 + 232) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v4 + 240) = swift_task_alloc();
  v13 = *(*(sub_100079CC0() - 8) + 64) + 15;
  *(v4 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100027288, 0, 0);
}

uint64_t sub_100027288()
{
  v1 = *(v0 + 240);
  v17 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v15 = *(v0 + 224);
  v16 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = *(v0 + 184);
  v18 = *(v0 + 176);
  sub_100026E98();
  sub_100079CA0();
  *(v0 + 152) = _swiftEmptyArrayStorage;
  sub_100029CBC(&qword_10009E978, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000712C(&unk_10009FB70, &qword_10007D210);
  sub_100026EE4();
  sub_10007A2E0();
  (*(v3 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v16);
  (*(v4 + 104))(v5, enum case for DispatchQoS.QoSClass.background(_:), v6);
  sub_10007A1F0();
  (*(v4 + 8))(v5, v6);
  *(v18 + 16) = sub_10007A1E0();
  if (_swiftEmptyArrayStorage >> 62 && sub_10007A4A0())
  {
    v7 = sub_100029674(_swiftEmptyArrayStorage);
  }

  else
  {
    v7 = _swiftEmptySetSingleton;
  }

  v8 = *(v0 + 176);
  sub_10000712C(&qword_10009E988, &qword_10007D218);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 96) = 0;
  v10 = swift_task_alloc();
  *(v0 + 256) = v10;
  *v10 = v0;
  v10[1] = sub_100027518;
  v11 = *(v0 + 160);
  v12 = *(v0 + 168);
  v13 = *(v0 + 73);

  return Daemon.init(mode:clientBundleID:)(v0 + 16, v13, v11, v12);
}

uint64_t sub_100027518()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return _swift_task_switch(sub_100027614, 0, 0);
}

uint64_t sub_100027614()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 73);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  *(v1 + 73) = *(v0 + 57);
  v1[3] = v4;
  v1[4] = v5;
  v1[2] = v3;
  v6 = *(v0 + 176);
  if (v2)
  {
    v7 = *(v6 + 16);
    if (v2 == 1)
    {
      type metadata accessor for XPCConnection();
      swift_allocObject();

      XPCConnection.init(serviceName:targetQ:listen:delegate:)(0xD000000000000023, 0x80000001000835D0, v7, 1, v6, &protocol witness table for Listener);
    }

    else
    {
      type metadata accessor for XPCConnection();
      swift_allocObject();

      v8 = XPCConnection.init(machService:targetQ:listen:delegate:)(0xD000000000000019, 0x80000001000835B0, v7, 1, v6, &protocol witness table for Listener);
    }
  }

  else
  {
    v9 = *(v6 + 16);
    type metadata accessor for XPCConnection();
    swift_allocObject();
    v10 = v9;

    v8 = XPCConnection.init(targetQ:delegate:)(v10, v6, &protocol witness table for Listener);
  }

  v11 = v8;
  v13 = *(v0 + 240);
  v12 = *(v0 + 248);
  v14 = *(v0 + 224);
  v15 = *(v0 + 200);
  v16 = *(v0 + 176);
  swift_beginAccess();
  v17 = *(v16 + 96);
  *(v16 + 96) = v11;

  v18 = *(v0 + 8);
  v19 = *(v0 + 176);

  return v18(v19);
}

uint64_t Listener.connection(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v8 = *(v3 + 96);
  if (v8)
  {
    type metadata accessor for XPCConnection();
    swift_allocObject();
    swift_unknownObjectRetain();

    return XPCConnection.init(listener:targetQ:delegate:)(v8, a1, a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Listener.handle(message:)()
{
  v0 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v36 - v2;
  v4 = type metadata accessor for XPCObject();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v12 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  v19 = swift_unknownObjectRetain();
  v20 = XPCIncomingConnection.init(conn:)(v19);
  XPCIncomingConnection.entitlementValue(forKey:)(v18);
  sub_10000939C(v18, v16, &unk_10009EC50, &unk_10007D650);
  if ((*(v5 + 48))(v16, 1, v4) == 1)
  {
    sub_1000096C4(v16, &unk_10009EC50, &unk_10007D650);
LABEL_14:
    pid = xpc_connection_get_pid(v20);
    if (qword_1000A2860 != -1)
    {
      swift_once();
    }

    v29 = sub_100079BA0();
    sub_1000070F4(v29, qword_1000A2868);
    v30 = sub_100079B80();
    v31 = sub_10007A170();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67240192;
      *(v32 + 4) = pid;
      _os_log_impl(&_mh_execute_header, v30, v31, "connection attempted by unentitled process %{public}d", v32, 8u);
    }

    xpc_connection_cancel(v20);
    swift_unknownObjectRelease();
    return sub_1000096C4(v18, &unk_10009EC50, &unk_10007D650);
  }

  sub_100029A0C(v16, v11);
  sub_100029A70(v11, v9);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_100029AD4(v11);
    v27 = v9;
LABEL_13:
    sub_100029AD4(v27);
    goto LABEL_14;
  }

  if ((*v9 & 1) == 0)
  {
    v27 = v11;
    goto LABEL_13;
  }

  v21 = v36;
  swift_beginAccess();
  if (*(v21 + 88))
  {
    v22 = xpc_connection_get_pid(v20);
    if (qword_1000A2860 != -1)
    {
      swift_once();
    }

    v23 = sub_100079BA0();
    sub_1000070F4(v23, qword_1000A2868);
    v24 = sub_100079B80();
    v25 = sub_10007A170();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67240192;
      *(v26 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v24, v25, "rejecting connection from %{public}d while reporting is disabled", v26, 8u);
    }

    xpc_connection_cancel(v20);
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = sub_10007A0A0();
    (*(*(v34 - 8) + 56))(v3, 1, 1, v34);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v21;
    v35[5] = v20;

    swift_unknownObjectRetain();
    sub_100014B7C(0, 0, v3, &unk_10007D238, v35);
    swift_unknownObjectRelease();
  }

  sub_100029AD4(v11);
  return sub_1000096C4(v18, &unk_10009EC50, &unk_10007D650);
}

uint64_t sub_100027DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_100027E10, 0, 0);
}

uint64_t sub_100027E10()
{
  v1 = v0[5];
  result = swift_beginAccess();
  v3 = *(v1 + 56);
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v0[5];
  v5 = v4[8];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v4[9];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v4[10];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = v0[6];
  type metadata accessor for Client();

  swift_unknownObjectRetain();
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_100027F60;
  v10 = v0[5];
  v11 = v0[6];

  return sub_10005D7DC(v3, v5, v6, v7, v10, v11);
}

uint64_t sub_100027F60(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_100028060, 0, 0);
}

uint64_t sub_100028060()
{
  v1 = v0[8];
  v2 = *(v0[5] + 24);

  os_unfair_lock_lock(v2 + 6);
  sub_100029D04();
  v3 = v0[8];
  os_unfair_lock_unlock(v2 + 6);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100028130()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 6);
  sub_100029C10();
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t Listener.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);

  v7 = *(v0 + 96);

  return v0;
}

uint64_t Listener.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);

  v7 = *(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_1000282AC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_10007A330();

    if (v8)
    {

      type metadata accessor for Client();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_10007A320();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_10002854C(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_100028780(v19 + 1);
    }

    sub_100028A14(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  type metadata accessor for Client();
  v10 = *(v6 + 40);
  sub_100029CBC(&unk_10009FB90, type metadata accessor for Client);
  v11 = sub_100079DA0();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_100028AFC(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_100029CBC(&qword_10009EA50, type metadata accessor for Client);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (sub_100079DE0())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_10002854C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000712C(&qword_10009EA58, &qword_10007D2B8);
    v2 = sub_10007A380();
    v16 = v2;
    sub_10007A310();
    if (sub_10007A340())
    {
      type metadata accessor for Client();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_100028780(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_100029CBC(&unk_10009FB90, type metadata accessor for Client);
        result = sub_100079DA0();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_10007A340());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100028780(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000712C(&qword_10009EA58, &qword_10007D2B8);
  result = sub_10007A370();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for Client();
      sub_100029CBC(&unk_10009FB90, type metadata accessor for Client);
      result = sub_100079DA0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_100028A14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  type metadata accessor for Client();
  sub_100029CBC(&unk_10009FB90, type metadata accessor for Client);
  sub_100079DA0();
  v5 = -1 << *(a2 + 32);
  result = sub_10007A300();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_100028AFC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100028780(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100028CE4();
      goto LABEL_12;
    }

    sub_100028E34(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  type metadata accessor for Client();
  sub_100029CBC(&unk_10009FB90, type metadata accessor for Client);
  result = sub_100079DA0();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100029CBC(&qword_10009EA50, type metadata accessor for Client);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = sub_100079DE0();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_10007A6B0();
  __break(1u);
  return result;
}

void *sub_100028CE4()
{
  v1 = v0;
  sub_10000712C(&qword_10009EA58, &qword_10007D2B8);
  v2 = *v0;
  v3 = sub_10007A360();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_100028E34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000712C(&qword_10009EA58, &qword_10007D2B8);
  result = sub_10007A370();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for Client();
      sub_100029CBC(&unk_10009FB90, type metadata accessor for Client);

      result = sub_100079DA0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

uint64_t sub_1000290AC()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = sub_10007A350();

    if (v4)
    {
      v5 = sub_1000292AC();

      return v5;
    }

    return 0;
  }

  type metadata accessor for Client();
  v7 = *(v1 + 40);
  sub_100029CBC(&unk_10009FB90, type metadata accessor for Client);
  v8 = sub_100079DA0();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_100029CBC(&qword_10009EA50, type metadata accessor for Client);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (sub_100079DE0())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100028CE4();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_100029488(v10);
  result = v15;
  *v0 = v17;
  return result;
}

uint64_t sub_1000292AC()
{
  v1 = *v0;

  v2 = sub_10007A320();
  v3 = swift_unknownObjectRetain();
  v4 = sub_10002854C(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);
  type metadata accessor for Client();
  sub_100029CBC(&unk_10009FB90, type metadata accessor for Client);

  v6 = sub_100079DA0();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_100029CBC(&qword_10009EA50, type metadata accessor for Client);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (sub_100079DE0())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
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

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_100029488(v8);
  result = sub_100079DE0();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100029488(unint64_t result)
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

    v9 = sub_10007A2F0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      type metadata accessor for Client();
      sub_100029CBC(&unk_10009FB90, type metadata accessor for Client);
      do
      {
        v11 = *(v3 + 40);
        v21 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_100079DA0() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_100029674(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_10007A4A0();
    if (result)
    {
LABEL_3:
      sub_10000712C(&qword_10009EA58, &qword_10007D2B8);
      result = sub_10007A390();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_10007A4A0();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = sub_10007A3D0();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    type metadata accessor for Client();
    sub_100029CBC(&unk_10009FB90, type metadata accessor for Client);
    result = sub_100079DA0();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_100029CBC(&qword_10009EA50, type metadata accessor for Client);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = sub_100079DE0();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void _s21CloudTelemetryService8ListenerC6handle5errorySo13OS_xpc_object_p_tF_0(void *a1)
{
  xpc_copy_description(a1);
  v1 = sub_100079F10();
  v3 = v2;
  sub_10007A3B0(36);

  v4._countAndFlagsBits = v1;
  v4._object = v3;
  sub_100079F00(v4);
  sub_10007A490();
  __break(1u);
}

uint64_t sub_100029A0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029AD4(uint64_t a1)
{
  v2 = type metadata accessor for XPCObject();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100029B30()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100029B78()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100007838;

  return sub_100027DF0(v4, v5, v6, v2, v3);
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_10009EA48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10009EA48);
    }
  }
}

uint64_t sub_100029CBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100029D04()
{

  sub_1000282AC(&v2, v0);
}

void *sub_100029D54()
{
  v0 = dlopen("../../AppleInternal/Library/Frameworks/CloudTelemetryLocalBackend.framework/CloudTelemetryLocalBackend", 1);
  if (v0)
  {
    result = dlsym(v0, "initLocalBackend");
  }

  else
  {
    if (dlerror())
    {
      v2 = sub_100079F10();
      v4 = v3;
    }

    else
    {
      v4 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
    }

    if (qword_1000A2888 != -1)
    {
      swift_once();
    }

    v5 = sub_100079BA0();
    sub_1000070F4(v5, qword_1000A6CA0);

    v6 = sub_100079B80();
    v7 = sub_10007A170();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136446210;
      v10 = sub_100006B00(v2, v4, &v11);

      *(v8 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "failed to load CloudTelemetryTTR framework: %{public}s", v8, 0xCu);
      sub_1000070A8(v9);
    }

    else
    {
    }

    result = 0;
  }

  off_1000A6C98 = result;
  return result;
}

uint64_t sub_100029F0C()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6CA0);
  sub_1000070F4(v0, qword_1000A6CA0);
  return sub_100079B90();
}

uint64_t sub_100029F90(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100029FA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  sub_100029FF8(a1, a2, a3);
  return v6;
}

uint64_t sub_100029FF8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_defaultActor_initialize();
  sub_10000712C(&qword_10009EA60, &unk_10007D2C0);
  v5 = sub_10007A4B0();
  v6 = v5;
  v7 = 0;
  v49 = a2;
  v10 = *(a2 + 64);
  v9 = a2 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v48 = v5 + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v3 = 16 * v18;
      v19 = (*(v49 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(v49 + 56) + 48 * v18);
      v23 = v22[2];
      *v52 = v22[1];
      *&v52[16] = v23;
      v51 = *v22;
      v53 = v51;
      v54 = *&v52[8];
      v55[0] = *(&v23 + 1);

      sub_10002423C(&v53, v50);
      sub_10002423C(&v54, v50);
      sub_10002A444(v55, v50);
      v24 = sub_1000335B8();
      sub_10002A4B4(&v53);
      sub_10002A4B4(&v54);
      sub_10002A508(v55);
      *(v48 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v25 = (v6[6] + 16 * v18);
      *v25 = v20;
      v25[1] = v21;
      *(v6[7] + 8 * v18) = v24;
      v26 = v6[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v6[2] = v28;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v14)
      {
        break;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    v3 = v47;
    v47[16] = v6;
    v47[17] = a1;

    v6 = a3;
    v29 = a3[3];
    v30 = a3[4];
    sub_10000751C(a3, v29);
    (*(v30 + 8))(v50, v29, v30);
    v31 = v50[0];
    v32 = v50[1];

    sub_100019EF4(v50);
    v47[14] = v31;
    v47[15] = v32;
    v33 = sub_10003F2A0();
    swift_beginAccess();
    if ((*v33 & 1) == 0)
    {
      v47[18] = 0;
      goto LABEL_30;
    }

    if (qword_1000A2880 != -1)
    {
      goto LABEL_33;
    }
  }

  v34 = off_1000A6C98;
  if (off_1000A6C98)
  {
    v35 = v6[3];
    v36 = v6[4];
    sub_10000751C(v6, v35);
    v37 = (*(v36 + 40))(v35, v36);
    if ((v37 & &_mh_execute_header) != 0)
    {
      v37 = 0;
    }

    else
    {
      v37 = v37;
    }

    *(v3 + 144) = v34(v37);
    if (qword_1000A2888 != -1)
    {
      swift_once();
    }

    v38 = sub_100079BA0();
    sub_1000070F4(v38, qword_1000A6CA0);
    v39 = sub_100079B80();
    v40 = sub_10007A190();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_29;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "initialized CloudTelemetryTTR framework";
  }

  else
  {
    *(v3 + 144) = 0;
    if (qword_1000A2888 != -1)
    {
      swift_once();
    }

    v43 = sub_100079BA0();
    sub_1000070F4(v43, qword_1000A6CA0);
    v39 = sub_100079B80();
    v40 = sub_10007A170();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_29;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "failed to initialize CloudTelemetryTTR framework";
  }

  _os_log_impl(&_mh_execute_header, v39, v40, v42, v41, 2u);

LABEL_29:

LABEL_30:
  sub_1000070A8(v6);
  return v3;
}