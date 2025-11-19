uint64_t sub_10004595C(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = *(v1 + 48);
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  v22 = v3;
  while (v7)
  {
LABEL_10:
    v13 = *(*(v3 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v7)))));
    v14 = *(v13 + 16);
    v24 = *(v13 + 24);

    v15 = [a1 idsDeviceIdentifier];
    if (v15)
    {
      v23 = v14;
      v16 = v15;
      v17 = sub_1000E2338();
      v19 = v18;

      if (v23 == v17 && v24 == v19)
      {

LABEL_20:

        return v13;
      }

      v21 = sub_1000E2C68();

      v3 = v22;
      if (v21)
      {

        goto LABEL_20;
      }
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 0;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_100045B10(void *a1)
{
  v3 = [a1 model];
  if (v3)
  {
    v4 = v3;
    sub_1000E2338();

    v41._countAndFlagsBits = 0x5654656C707041;
    v41._object = 0xE700000000000000;
    LOBYTE(v4) = sub_1000E2408(v41);

    if (v4)
    {
      if (sub_10004595C(a1))
      {
        sub_1000138F4(a1);
        if (qword_10011DC88 != -1)
        {
          swift_once();
        }

        v5 = sub_1000E1F08();
        sub_1000049D0(v5, qword_1001231A0);

        oslog = sub_1000E1EE8();
        v6 = sub_1000E2698();

        if (os_log_type_enabled(oslog, v6))
        {
          v7 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          v39[0] = v8;
          *v7 = 136315138;
          v9 = sub_100013B80();
          v11 = sub_100029C70(v9, v10, v39);

          *(v7 + 4) = v11;
          _os_log_impl(&_mh_execute_header, oslog, v6, "Found existing device again, merged in new data: %s.", v7, 0xCu);
          sub_10000E9DC(v8);

LABEL_14:

          return;
        }
      }

      else
      {
        type metadata accessor for ConduitDevice();
        swift_allocObject();
        v12 = a1;
        v13 = sub_1000132BC(v12);
        if (v13)
        {
          v14 = v13;
          if (qword_10011DC88 != -1)
          {
            swift_once();
          }

          v15 = sub_1000E1F08();
          sub_1000049D0(v15, qword_1001231A0);
          v16 = v12;

          v17 = sub_1000E1EE8();
          v18 = sub_1000E2698();

          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v39[0] = v21;
            *v19 = 136315394;
            v22 = sub_100013B80();
            v24 = sub_100029C70(v22, v23, v39);

            *(v19 + 4) = v24;
            *(v19 + 12) = 2112;
            *(v19 + 14) = v16;
            *v20 = v16;
            v25 = v16;
            _os_log_impl(&_mh_execute_header, v17, v18, "Publishing conduit device %s for %@.", v19, 0x16u);
            sub_1000033C8(v20, &unk_10011EAC0, &unk_1000F0E60);

            sub_10000E9DC(v21);
          }

          v26 = *(v14 + 16);
          v27 = *(v14 + 24);
          swift_beginAccess();

          v28 = *(v1 + 48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = *(v1 + 48);
          *(v1 + 48) = 0x8000000000000000;
          sub_1000CA67C(v14, v26, v27, isUniquelyReferenced_nonNull_native);

          *(v1 + 48) = v38;
          swift_endAccess();
          v30 = *(v1 + 32);
          v39[0] = v14;
          sub_1000E1FC8();
          goto LABEL_14;
        }

        if (qword_10011DC88 != -1)
        {
          swift_once();
        }

        v31 = sub_1000E1F08();
        sub_1000049D0(v31, qword_1001231A0);
        v32 = v12;
        oslog = sub_1000E1EE8();
        v33 = sub_1000E2678();

        if (os_log_type_enabled(oslog, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v34 = 138412290;
          *(v34 + 4) = v32;
          *v35 = v32;
          v36 = v32;
          _os_log_impl(&_mh_execute_header, oslog, v33, "Failed to create conduit device for %@.", v34, 0xCu);
          sub_1000033C8(v35, &unk_10011EAC0, &unk_1000F0E60);
        }
      }
    }
  }
}

id sub_100046064(void *a1)
{
  v2 = v1;
  result = [a1 model];
  if (result)
  {
    v5 = result;
    sub_1000E2338();

    v20._countAndFlagsBits = 0x5654656C707041;
    v20._object = 0xE700000000000000;
    LOBYTE(v5) = sub_1000E2408(v20);

    if (v5)
    {
      result = sub_10004595C(a1);
      if (result)
      {
        v6 = result;
        if (sub_100046564(result))
        {
        }

        else
        {
          v7 = *(v6 + 16);
          v8 = *(v6 + 24);
          swift_beginAccess();

          sub_10003E2C4(0, v7, v8);
          swift_endAccess();
          if (qword_10011DC88 != -1)
          {
            swift_once();
          }

          v9 = sub_1000E1F08();
          sub_1000049D0(v9, qword_1001231A0);

          v10 = sub_1000E1EE8();
          v11 = sub_1000E2698();

          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v18[0] = v13;
            *v12 = 136315138;
            v14 = sub_100013B80();
            v16 = sub_100029C70(v14, v15, v18);

            *(v12 + 4) = v16;
            _os_log_impl(&_mh_execute_header, v10, v11, "Conduit device disconnected %s.", v12, 0xCu);
            sub_10000E9DC(v13);
          }

          v17 = *(v2 + 40);
          v18[0] = v6;
          sub_1000E1FC8();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000462C4(uint64_t result)
{
  if (!result)
  {
    v2 = v1;
    swift_beginAccess();
    v3 = *(v1 + 48);
    v4 = v3 + 64;
    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 64);
    v8 = (v5 + 63) >> 6;
    v9 = *(v1 + 48);

    v10 = 0;
    v26 = v3;
    while (v7)
    {
LABEL_12:
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v14 = *(*(v3 + 56) + ((v10 << 9) | (8 * v13)));

      if ((sub_100046564(v15) & 1) == 0)
      {
        v16 = *(v14 + 16);
        v17 = *(v14 + 24);
        swift_beginAccess();

        sub_10003E2C4(0, v16, v17);
        swift_endAccess();
        if (qword_10011DC88 != -1)
        {
          swift_once();
        }

        v18 = sub_1000E1F08();
        sub_1000049D0(v18, qword_1001231A0);

        v19 = sub_1000E1EE8();
        v20 = sub_1000E2698();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v28[0] = v27;
          *v21 = 136315138;
          v22 = sub_100013B80();
          v24 = v2;
          v25 = sub_100029C70(v22, v23, v28);

          *(v21 + 4) = v25;
          v2 = v24;
          _os_log_impl(&_mh_execute_header, v19, v20, "Pruning undiscoverable device after display discovery state changed: %s", v21, 0xCu);
          sub_10000E9DC(v27);

          v3 = v26;
        }

        v11 = *(v2 + 40);
        v28[0] = v14;
        sub_1000E1FC8();
      }
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
      }

      v7 = *(v4 + 8 * v12);
      ++v10;
      if (v7)
      {
        v10 = v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100046564(uint64_t a1)
{
  v62 = a1;
  swift_beginAccess();
  v2 = v1[10];
  v3 = v1[11];
  v59 = v1;
  v4 = sub_1000036AC(v1 + 7, v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  v9 = (*(v3 + 56))(v2, v3);
  (*(v5 + 8))(v8, v2);
  if (v9 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000E2B68())
  {
    v11 = 0;
    v60 = v9 & 0xFFFFFFFFFFFFFF8;
    v61 = v9 & 0xC000000000000001;
    while (1)
    {
      if (v61)
      {
        v12 = sub_1000E2A98();
      }

      else
      {
        if (v11 >= *(v60 + 16))
        {
          goto LABEL_20;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = *(v62 + 16);
      v16 = *(v62 + 24);
      v17 = [v12 idsDeviceIdentifier];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1000E2338();
        v21 = v20;

        if (v15 == v19 && v16 == v21)
        {

          return 1;
        }

        v23 = sub_1000E2C68();

        if (v23)
        {

          return 1;
        }
      }

      else
      {
      }

      ++v11;
      if (v14 == i)
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

  v24 = v59;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = *(Strong + 16);

    v27 = [v26 activeDevices];
    sub_10000CAAC(0, &qword_10011F5E0, RPCompanionLinkDevice_ptr);
    v28 = sub_1000E2468();

    v58 = v26;
    if (v28 >> 62)
    {
      goto LABEL_43;
    }

    for (j = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1000E2B68())
    {
      v30 = 0;
      v60 = v28 & 0xFFFFFFFFFFFFFF8;
      v61 = v28 & 0xC000000000000001;
      while (1)
      {
        if (v61)
        {
          v31 = sub_1000E2A98();
        }

        else
        {
          if (v30 >= *(v60 + 16))
          {
            goto LABEL_42;
          }

          v31 = *(v28 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        v34 = *(v62 + 16);
        v35 = *(v62 + 24);
        v36 = [v31 idsDeviceIdentifier];
        if (v36)
        {
          v37 = v36;
          v38 = sub_1000E2338();
          v40 = v39;

          if (v34 == v38 && v35 == v40)
          {

            return 1;
          }

          v42 = sub_1000E2C68();

          if (v42)
          {

            return 1;
          }
        }

        else
        {
        }

        ++v30;
        if (v33 == j)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

LABEL_44:

    v24 = v59;
  }

  swift_beginAccess();
  v43 = v24[20];
  v44 = v24[21];
  v45 = sub_1000036AC(v24 + 17, v43);
  v46 = *(v43 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  v49 = &v57 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v46 + 16))(v49);
  v50 = (*(v44 + 8))(v43, v44);
  v52 = v51;
  (*(v46 + 8))(v49, v43);
  if (!v52)
  {
    return 0;
  }

  v53 = sub_1000455D8(v50, v52);

  if (!v53)
  {
    return 0;
  }

  if (*(v53 + 16) == *(v62 + 16) && *(v53 + 24) == *(v62 + 24))
  {
  }

  else
  {
    v55 = sub_1000E2C68();

    if ((v55 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100046AFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a8;
  v14 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v25 - v16;
  v18 = sub_1000E2538();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = qword_10011DC18;

  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_1001230E0;
  v22 = sub_100058F28(&qword_1001201E0, v20, type metadata accessor for ConduitDeviceActor);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  *(v23 + 32) = a3;
  *(v23 + 40) = a2;
  *(v23 + 48) = a4;
  *(v23 + 56) = a1;
  *(v23 + 64) = a5;
  *(v23 + 72) = a6;

  sub_100022960(0, 0, v17, v26, v23);
}

uint64_t sub_100046CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 392) = a8;
  *(v8 + 400) = v17;
  *(v8 + 376) = a5;
  *(v8 + 384) = a7;
  *(v8 + 448) = a6;
  *(v8 + 368) = a4;
  v9 = *(*(sub_1000E0E08() - 8) + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  v10 = *(*(sub_10000ADE4(&qword_10011F5F0, &unk_1000F1C88) - 8) + 64) + 15;
  *(v8 + 416) = swift_task_alloc();
  v11 = sub_1000E17C8();
  *(v8 + 424) = v11;
  v12 = *(v11 - 8);
  *(v8 + 432) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 440) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v14 = qword_1001230E0;

  return _swift_task_switch(sub_100046E34, v14, 0);
}

uint64_t sub_100046E34()
{
  v86 = v0;
  v1 = *(v0 + 368);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = *(v0 + 376);
    if (v2)
    {
      *(v0 + 256) = sub_1000E2338();
      *(v0 + 264) = v3;
      sub_1000E2A08();
      if (*(v2 + 16) && (v4 = sub_10000B3E0(v0 + 16), (v5 & 1) != 0))
      {
        sub_1000153C0(*(v2 + 56) + 32 * v4, v0 + 136);
        sub_10000C1C0(v0 + 16);
        if (swift_dynamicCast())
        {
          v6 = sub_1000449DC(*(v0 + 272), *(v0 + 280), 0);

          if (v6)
          {
            v7 = v6;
            goto LABEL_8;
          }

          *(v0 + 288) = sub_1000E2338();
          *(v0 + 296) = v51;
          sub_1000E2A08();
          if (*(v2 + 16) && (v52 = sub_10000B3E0(v0 + 56), (v53 & 1) != 0))
          {
            sub_1000153C0(*(v2 + 56) + 32 * v52, v0 + 168);
            sub_10000C1C0(v0 + 56);
            if (swift_dynamicCast())
            {
              v7 = sub_1000449DC(*(v0 + 336), *(v0 + 344), 0);

              if (v7)
              {

LABEL_8:
                v8 = *(v0 + 384);
                *(v0 + 304) = 0x6567617373656DLL;
                *(v0 + 312) = 0xE700000000000000;

                sub_1000E2A08();
                if (*(v8 + 16) && (v9 = *(v0 + 384), v10 = sub_10000B3E0(v0 + 96), (v11 & 1) != 0))
                {
                  sub_1000153C0(*(*(v0 + 384) + 56) + 32 * v10, v0 + 200);
                  sub_10000C1C0(v0 + 96);
                  if (swift_dynamicCast())
                  {
                    v13 = *(v0 + 416);
                    v12 = *(v0 + 424);
                    v14 = *(v0 + 408);
                    v15 = *(v0 + 320);
                    v16 = *(v0 + 328);
                    v85 = 0;
                    memset(v84, 0, sizeof(v84));
                    sub_1000123E0(v15, v16);
                    sub_1000E0DF8();
                    sub_100058F28(&qword_10011ED90, 255, &type metadata accessor for NCProtoEndLagunaSessionEvent);
                    sub_1000E0E18();
                    v65 = *(v0 + 432);
                    v64 = *(v0 + 440);
                    v67 = *(v0 + 416);
                    v66 = *(v0 + 424);
                    (*(v65 + 56))(v67, 0, 1, v66);
                    (*(v65 + 32))(v64, v67, v66);
                    if (qword_10011DC88 != -1)
                    {
                      swift_once();
                    }

                    v68 = sub_1000E1F08();
                    sub_1000049D0(v68, qword_1001231A0);

                    v69 = sub_1000E1EE8();
                    v70 = sub_1000E2698();

                    if (os_log_type_enabled(v69, v70))
                    {
                      v82 = *(v0 + 448);
                      v71 = swift_slowAlloc();
                      *&v84[0] = swift_slowAlloc();
                      *v71 = 136315394;
                      v73 = *(v7 + 16);
                      v72 = *(v7 + 24);

                      v74 = sub_100029C70(v73, v72, v84);

                      *(v71 + 4) = v74;
                      *(v71 + 12) = 2080;
                      v75 = sub_10003E638(v82);
                      v77 = sub_100029C70(v75, v76, v84);

                      *(v71 + 14) = v77;
                      _os_log_impl(&_mh_execute_header, v69, v70, "[%s] Received event %s.", v71, 0x16u);
                      swift_arrayDestroy();
                    }

                    v79 = *(v0 + 432);
                    v78 = *(v0 + 440);
                    v80 = *(v0 + 424);
                    v81 = *(v0 + 400);
                    (*(v0 + 392))(v78, v7);

                    sub_100006660(v15, v16);

                    (*(v79 + 8))(v78, v80);
                    goto LABEL_22;
                  }
                }

                else
                {

                  sub_10000C1C0(v0 + 96);
                }

                if (qword_10011DC88 != -1)
                {
                  swift_once();
                }

                v36 = *(v0 + 384);
                v37 = sub_1000E1F08();
                sub_1000049D0(v37, qword_1001231A0);

                v38 = sub_1000E1EE8();
                v39 = sub_1000E2678();

                if (!os_log_type_enabled(v38, v39))
                {

                  goto LABEL_22;
                }

                v83 = *(v0 + 384);
                v40 = *(v0 + 448);
                v41 = swift_slowAlloc();
                *&v84[0] = swift_slowAlloc();
                *v41 = 136315650;
                v43 = *(v7 + 16);
                v42 = *(v7 + 24);

                v44 = sub_100029C70(v43, v42, v84);

                *(v41 + 4) = v44;
                *(v41 + 12) = 2080;
                v45 = sub_10003E638(v40);
                v47 = sub_100029C70(v45, v46, v84);

                *(v41 + 14) = v47;
                *(v41 + 22) = 2080;
                v48 = sub_1000E22C8();
                v50 = sub_100029C70(v48, v49, v84);

                *(v41 + 24) = v50;
                _os_log_impl(&_mh_execute_header, v38, v39, "[%s] Failed to decode event %s: %s.", v41, 0x20u);
                swift_arrayDestroy();

LABEL_41:

                goto LABEL_22;
              }
            }
          }

          else
          {
            sub_10000C1C0(v0 + 56);
          }

          if (qword_10011DC88 != -1)
          {
            swift_once();
          }

          v54 = sub_1000E1F08();
          sub_1000049D0(v54, qword_1001231A0);

          v38 = sub_1000E1EE8();
          v55 = sub_1000E2678();

          if (os_log_type_enabled(v38, v55))
          {
            v56 = *(v0 + 448);
            v57 = swift_slowAlloc();
            *&v84[0] = swift_slowAlloc();
            *v57 = 136315394;
            v58 = sub_10003E638(v56);
            v60 = sub_100029C70(v58, v59, v84);

            *(v57 + 4) = v60;
            *(v57 + 12) = 2080;
            *(v0 + 360) = v2;

            sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
            v61 = sub_1000E2368();
            v63 = sub_100029C70(v61, v62, v84);

            *(v57 + 14) = v63;
            _os_log_impl(&_mh_execute_header, v38, v55, "Received event %s from unrecognized device %s.", v57, 0x16u);
            swift_arrayDestroy();
          }

          goto LABEL_41;
        }
      }

      else
      {
        sub_10000C1C0(v0 + 16);
      }
    }
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 376);
  v18 = sub_1000E1F08();
  sub_1000049D0(v18, qword_1001231A0);

  v19 = sub_1000E1EE8();
  v20 = sub_1000E2678();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 376);
    v22 = *(v0 + 448);
    v23 = swift_slowAlloc();
    *&v84[0] = swift_slowAlloc();
    *v23 = 136315394;
    v24 = sub_10003E638(v22);
    v26 = sub_100029C70(v24, v25, v84);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    if (v21)
    {
      *(v0 + 352) = v17;

      sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
      v27 = sub_1000E2368();
      v29 = v28;
    }

    else
    {
      v29 = 0xE300000000000000;
      v27 = 7104878;
    }

    v30 = sub_100029C70(v27, v29, v84);

    *(v23 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "Received invalid event %s options %s.", v23, 0x16u);
    swift_arrayDestroy();
  }

LABEL_22:
  v31 = *(v0 + 440);
  v32 = *(v0 + 408);
  v33 = *(v0 + 416);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_100047920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 392) = a8;
  *(v8 + 400) = v17;
  *(v8 + 376) = a5;
  *(v8 + 384) = a7;
  *(v8 + 448) = a6;
  *(v8 + 368) = a4;
  v9 = *(*(sub_1000E0E08() - 8) + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  v10 = *(*(sub_10000ADE4(&qword_10011F5F8, &qword_1000F1CB0) - 8) + 64) + 15;
  *(v8 + 416) = swift_task_alloc();
  v11 = sub_1000E17A8();
  *(v8 + 424) = v11;
  v12 = *(v11 - 8);
  *(v8 + 432) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 440) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v14 = qword_1001230E0;

  return _swift_task_switch(sub_100047A8C, v14, 0);
}

uint64_t sub_100047A8C()
{
  v86 = v0;
  v1 = *(v0 + 368);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = *(v0 + 376);
    if (v2)
    {
      *(v0 + 256) = sub_1000E2338();
      *(v0 + 264) = v3;
      sub_1000E2A08();
      if (*(v2 + 16) && (v4 = sub_10000B3E0(v0 + 16), (v5 & 1) != 0))
      {
        sub_1000153C0(*(v2 + 56) + 32 * v4, v0 + 136);
        sub_10000C1C0(v0 + 16);
        if (swift_dynamicCast())
        {
          v6 = sub_1000449DC(*(v0 + 272), *(v0 + 280), 0);

          if (v6)
          {
            v7 = v6;
            goto LABEL_8;
          }

          *(v0 + 288) = sub_1000E2338();
          *(v0 + 296) = v51;
          sub_1000E2A08();
          if (*(v2 + 16) && (v52 = sub_10000B3E0(v0 + 56), (v53 & 1) != 0))
          {
            sub_1000153C0(*(v2 + 56) + 32 * v52, v0 + 168);
            sub_10000C1C0(v0 + 56);
            if (swift_dynamicCast())
            {
              v7 = sub_1000449DC(*(v0 + 336), *(v0 + 344), 0);

              if (v7)
              {

LABEL_8:
                v8 = *(v0 + 384);
                *(v0 + 304) = 0x6567617373656DLL;
                *(v0 + 312) = 0xE700000000000000;

                sub_1000E2A08();
                if (*(v8 + 16) && (v9 = *(v0 + 384), v10 = sub_10000B3E0(v0 + 96), (v11 & 1) != 0))
                {
                  sub_1000153C0(*(*(v0 + 384) + 56) + 32 * v10, v0 + 200);
                  sub_10000C1C0(v0 + 96);
                  if (swift_dynamicCast())
                  {
                    v13 = *(v0 + 416);
                    v12 = *(v0 + 424);
                    v14 = *(v0 + 408);
                    v15 = *(v0 + 320);
                    v16 = *(v0 + 328);
                    v85 = 0;
                    memset(v84, 0, sizeof(v84));
                    sub_1000123E0(v15, v16);
                    sub_1000E0DF8();
                    sub_100058F28(&qword_10011F600, 255, &type metadata accessor for NCProtoCancelAddMemberEvent);
                    sub_1000E0E18();
                    v65 = *(v0 + 432);
                    v64 = *(v0 + 440);
                    v67 = *(v0 + 416);
                    v66 = *(v0 + 424);
                    (*(v65 + 56))(v67, 0, 1, v66);
                    (*(v65 + 32))(v64, v67, v66);
                    if (qword_10011DC88 != -1)
                    {
                      swift_once();
                    }

                    v68 = sub_1000E1F08();
                    sub_1000049D0(v68, qword_1001231A0);

                    v69 = sub_1000E1EE8();
                    v70 = sub_1000E2698();

                    if (os_log_type_enabled(v69, v70))
                    {
                      v82 = *(v0 + 448);
                      v71 = swift_slowAlloc();
                      *&v84[0] = swift_slowAlloc();
                      *v71 = 136315394;
                      v73 = *(v7 + 16);
                      v72 = *(v7 + 24);

                      v74 = sub_100029C70(v73, v72, v84);

                      *(v71 + 4) = v74;
                      *(v71 + 12) = 2080;
                      v75 = sub_10003E638(v82);
                      v77 = sub_100029C70(v75, v76, v84);

                      *(v71 + 14) = v77;
                      _os_log_impl(&_mh_execute_header, v69, v70, "[%s] Received event %s.", v71, 0x16u);
                      swift_arrayDestroy();
                    }

                    v79 = *(v0 + 432);
                    v78 = *(v0 + 440);
                    v80 = *(v0 + 424);
                    v81 = *(v0 + 400);
                    (*(v0 + 392))(v78, v7);

                    sub_100006660(v15, v16);

                    (*(v79 + 8))(v78, v80);
                    goto LABEL_22;
                  }
                }

                else
                {

                  sub_10000C1C0(v0 + 96);
                }

                if (qword_10011DC88 != -1)
                {
                  swift_once();
                }

                v36 = *(v0 + 384);
                v37 = sub_1000E1F08();
                sub_1000049D0(v37, qword_1001231A0);

                v38 = sub_1000E1EE8();
                v39 = sub_1000E2678();

                if (!os_log_type_enabled(v38, v39))
                {

                  goto LABEL_22;
                }

                v83 = *(v0 + 384);
                v40 = *(v0 + 448);
                v41 = swift_slowAlloc();
                *&v84[0] = swift_slowAlloc();
                *v41 = 136315650;
                v43 = *(v7 + 16);
                v42 = *(v7 + 24);

                v44 = sub_100029C70(v43, v42, v84);

                *(v41 + 4) = v44;
                *(v41 + 12) = 2080;
                v45 = sub_10003E638(v40);
                v47 = sub_100029C70(v45, v46, v84);

                *(v41 + 14) = v47;
                *(v41 + 22) = 2080;
                v48 = sub_1000E22C8();
                v50 = sub_100029C70(v48, v49, v84);

                *(v41 + 24) = v50;
                _os_log_impl(&_mh_execute_header, v38, v39, "[%s] Failed to decode event %s: %s.", v41, 0x20u);
                swift_arrayDestroy();

LABEL_41:

                goto LABEL_22;
              }
            }
          }

          else
          {
            sub_10000C1C0(v0 + 56);
          }

          if (qword_10011DC88 != -1)
          {
            swift_once();
          }

          v54 = sub_1000E1F08();
          sub_1000049D0(v54, qword_1001231A0);

          v38 = sub_1000E1EE8();
          v55 = sub_1000E2678();

          if (os_log_type_enabled(v38, v55))
          {
            v56 = *(v0 + 448);
            v57 = swift_slowAlloc();
            *&v84[0] = swift_slowAlloc();
            *v57 = 136315394;
            v58 = sub_10003E638(v56);
            v60 = sub_100029C70(v58, v59, v84);

            *(v57 + 4) = v60;
            *(v57 + 12) = 2080;
            *(v0 + 360) = v2;

            sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
            v61 = sub_1000E2368();
            v63 = sub_100029C70(v61, v62, v84);

            *(v57 + 14) = v63;
            _os_log_impl(&_mh_execute_header, v38, v55, "Received event %s from unrecognized device %s.", v57, 0x16u);
            swift_arrayDestroy();
          }

          goto LABEL_41;
        }
      }

      else
      {
        sub_10000C1C0(v0 + 16);
      }
    }
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 376);
  v18 = sub_1000E1F08();
  sub_1000049D0(v18, qword_1001231A0);

  v19 = sub_1000E1EE8();
  v20 = sub_1000E2678();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 376);
    v22 = *(v0 + 448);
    v23 = swift_slowAlloc();
    *&v84[0] = swift_slowAlloc();
    *v23 = 136315394;
    v24 = sub_10003E638(v22);
    v26 = sub_100029C70(v24, v25, v84);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    if (v21)
    {
      *(v0 + 352) = v17;

      sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
      v27 = sub_1000E2368();
      v29 = v28;
    }

    else
    {
      v29 = 0xE300000000000000;
      v27 = 7104878;
    }

    v30 = sub_100029C70(v27, v29, v84);

    *(v23 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "Received invalid event %s options %s.", v23, 0x16u);
    swift_arrayDestroy();
  }

LABEL_22:
  v31 = *(v0 + 440);
  v32 = *(v0 + 408);
  v33 = *(v0 + 416);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_100048578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 392) = a8;
  *(v8 + 400) = v17;
  *(v8 + 376) = a5;
  *(v8 + 384) = a7;
  *(v8 + 448) = a6;
  *(v8 + 368) = a4;
  v9 = *(*(sub_1000E0E08() - 8) + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  v10 = *(*(sub_10000ADE4(&qword_10011F608, &qword_1000F1CD0) - 8) + 64) + 15;
  *(v8 + 416) = swift_task_alloc();
  v11 = sub_1000E12B8();
  *(v8 + 424) = v11;
  v12 = *(v11 - 8);
  *(v8 + 432) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 440) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v14 = qword_1001230E0;

  return _swift_task_switch(sub_1000486E4, v14, 0);
}

uint64_t sub_1000486E4()
{
  v86 = v0;
  v1 = *(v0 + 368);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = *(v0 + 376);
    if (v2)
    {
      *(v0 + 256) = sub_1000E2338();
      *(v0 + 264) = v3;
      sub_1000E2A08();
      if (*(v2 + 16) && (v4 = sub_10000B3E0(v0 + 16), (v5 & 1) != 0))
      {
        sub_1000153C0(*(v2 + 56) + 32 * v4, v0 + 136);
        sub_10000C1C0(v0 + 16);
        if (swift_dynamicCast())
        {
          v6 = sub_1000449DC(*(v0 + 272), *(v0 + 280), 0);

          if (v6)
          {
            v7 = v6;
            goto LABEL_8;
          }

          *(v0 + 288) = sub_1000E2338();
          *(v0 + 296) = v51;
          sub_1000E2A08();
          if (*(v2 + 16) && (v52 = sub_10000B3E0(v0 + 56), (v53 & 1) != 0))
          {
            sub_1000153C0(*(v2 + 56) + 32 * v52, v0 + 168);
            sub_10000C1C0(v0 + 56);
            if (swift_dynamicCast())
            {
              v7 = sub_1000449DC(*(v0 + 336), *(v0 + 344), 0);

              if (v7)
              {

LABEL_8:
                v8 = *(v0 + 384);
                *(v0 + 304) = 0x6567617373656DLL;
                *(v0 + 312) = 0xE700000000000000;

                sub_1000E2A08();
                if (*(v8 + 16) && (v9 = *(v0 + 384), v10 = sub_10000B3E0(v0 + 96), (v11 & 1) != 0))
                {
                  sub_1000153C0(*(*(v0 + 384) + 56) + 32 * v10, v0 + 200);
                  sub_10000C1C0(v0 + 96);
                  if (swift_dynamicCast())
                  {
                    v13 = *(v0 + 416);
                    v12 = *(v0 + 424);
                    v14 = *(v0 + 408);
                    v15 = *(v0 + 320);
                    v16 = *(v0 + 328);
                    v85 = 0;
                    memset(v84, 0, sizeof(v84));
                    sub_1000123E0(v15, v16);
                    sub_1000E0DF8();
                    sub_100058F28(&qword_10011F610, 255, &type metadata accessor for NCProtoTVLaunchedEvent);
                    sub_1000E0E18();
                    v65 = *(v0 + 432);
                    v64 = *(v0 + 440);
                    v67 = *(v0 + 416);
                    v66 = *(v0 + 424);
                    (*(v65 + 56))(v67, 0, 1, v66);
                    (*(v65 + 32))(v64, v67, v66);
                    if (qword_10011DC88 != -1)
                    {
                      swift_once();
                    }

                    v68 = sub_1000E1F08();
                    sub_1000049D0(v68, qword_1001231A0);

                    v69 = sub_1000E1EE8();
                    v70 = sub_1000E2698();

                    if (os_log_type_enabled(v69, v70))
                    {
                      v82 = *(v0 + 448);
                      v71 = swift_slowAlloc();
                      *&v84[0] = swift_slowAlloc();
                      *v71 = 136315394;
                      v73 = *(v7 + 16);
                      v72 = *(v7 + 24);

                      v74 = sub_100029C70(v73, v72, v84);

                      *(v71 + 4) = v74;
                      *(v71 + 12) = 2080;
                      v75 = sub_10003E638(v82);
                      v77 = sub_100029C70(v75, v76, v84);

                      *(v71 + 14) = v77;
                      _os_log_impl(&_mh_execute_header, v69, v70, "[%s] Received event %s.", v71, 0x16u);
                      swift_arrayDestroy();
                    }

                    v79 = *(v0 + 432);
                    v78 = *(v0 + 440);
                    v80 = *(v0 + 424);
                    v81 = *(v0 + 400);
                    (*(v0 + 392))(v78, v7);

                    sub_100006660(v15, v16);

                    (*(v79 + 8))(v78, v80);
                    goto LABEL_22;
                  }
                }

                else
                {

                  sub_10000C1C0(v0 + 96);
                }

                if (qword_10011DC88 != -1)
                {
                  swift_once();
                }

                v36 = *(v0 + 384);
                v37 = sub_1000E1F08();
                sub_1000049D0(v37, qword_1001231A0);

                v38 = sub_1000E1EE8();
                v39 = sub_1000E2678();

                if (!os_log_type_enabled(v38, v39))
                {

                  goto LABEL_22;
                }

                v83 = *(v0 + 384);
                v40 = *(v0 + 448);
                v41 = swift_slowAlloc();
                *&v84[0] = swift_slowAlloc();
                *v41 = 136315650;
                v43 = *(v7 + 16);
                v42 = *(v7 + 24);

                v44 = sub_100029C70(v43, v42, v84);

                *(v41 + 4) = v44;
                *(v41 + 12) = 2080;
                v45 = sub_10003E638(v40);
                v47 = sub_100029C70(v45, v46, v84);

                *(v41 + 14) = v47;
                *(v41 + 22) = 2080;
                v48 = sub_1000E22C8();
                v50 = sub_100029C70(v48, v49, v84);

                *(v41 + 24) = v50;
                _os_log_impl(&_mh_execute_header, v38, v39, "[%s] Failed to decode event %s: %s.", v41, 0x20u);
                swift_arrayDestroy();

LABEL_41:

                goto LABEL_22;
              }
            }
          }

          else
          {
            sub_10000C1C0(v0 + 56);
          }

          if (qword_10011DC88 != -1)
          {
            swift_once();
          }

          v54 = sub_1000E1F08();
          sub_1000049D0(v54, qword_1001231A0);

          v38 = sub_1000E1EE8();
          v55 = sub_1000E2678();

          if (os_log_type_enabled(v38, v55))
          {
            v56 = *(v0 + 448);
            v57 = swift_slowAlloc();
            *&v84[0] = swift_slowAlloc();
            *v57 = 136315394;
            v58 = sub_10003E638(v56);
            v60 = sub_100029C70(v58, v59, v84);

            *(v57 + 4) = v60;
            *(v57 + 12) = 2080;
            *(v0 + 360) = v2;

            sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
            v61 = sub_1000E2368();
            v63 = sub_100029C70(v61, v62, v84);

            *(v57 + 14) = v63;
            _os_log_impl(&_mh_execute_header, v38, v55, "Received event %s from unrecognized device %s.", v57, 0x16u);
            swift_arrayDestroy();
          }

          goto LABEL_41;
        }
      }

      else
      {
        sub_10000C1C0(v0 + 16);
      }
    }
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 376);
  v18 = sub_1000E1F08();
  sub_1000049D0(v18, qword_1001231A0);

  v19 = sub_1000E1EE8();
  v20 = sub_1000E2678();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 376);
    v22 = *(v0 + 448);
    v23 = swift_slowAlloc();
    *&v84[0] = swift_slowAlloc();
    *v23 = 136315394;
    v24 = sub_10003E638(v22);
    v26 = sub_100029C70(v24, v25, v84);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    if (v21)
    {
      *(v0 + 352) = v17;

      sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
      v27 = sub_1000E2368();
      v29 = v28;
    }

    else
    {
      v29 = 0xE300000000000000;
      v27 = 7104878;
    }

    v30 = sub_100029C70(v27, v29, v84);

    *(v23 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "Received invalid event %s options %s.", v23, 0x16u);
    swift_arrayDestroy();
  }

LABEL_22:
  v31 = *(v0 + 440);
  v32 = *(v0 + 408);
  v33 = *(v0 + 416);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1000491D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = a6;
  v30 = a7;
  v31 = a10;
  v16 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v28 - v18;
  v20 = sub_1000E2538();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = qword_10011DC18;

  if (v21 != -1)
  {
    swift_once();
  }

  v23 = qword_1001230E0;
  v24 = sub_100058F28(&qword_1001201E0, v22, type metadata accessor for ConduitDeviceActor);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v24;
  *(v25 + 32) = a5;
  *(v25 + 40) = a2;
  *(v25 + 48) = v29;
  *(v25 + 56) = a3;
  *(v25 + 64) = a4;
  v26 = v30;
  *(v25 + 72) = a1;
  *(v25 + 80) = v26;
  *(v25 + 88) = a8;

  sub_100022960(0, 0, v19, v31, v25);
}

uint64_t sub_1000493B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v20;
  *(v8 + 520) = v19;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1D28();
  *(v8 + 544) = v9;
  v10 = *(v9 - 8);
  *(v8 + 552) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  v12 = *(*(sub_1000E0E08() - 8) + 64) + 15;
  *(v8 + 568) = swift_task_alloc();
  v13 = sub_1000E1D08();
  *(v8 + 576) = v13;
  v14 = *(v13 - 8);
  *(v8 + 584) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_100049554, v16, 0);
}

uint64_t sub_100049554()
{
  v97 = v0;
  v1 = *(v0 + 488);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v3 = *(v0 + 496);
  if (!v3)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v4;
  sub_1000E2A08();
  if (!*(v3 + 16) || (v5 = sub_10000B3E0(v0 + 120), (v6 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v3 + 56) + 32 * v5, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 496);
    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_1001231A0);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2678();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 496);
      v32 = *(v0 + 680);
      v33 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v33 = 136315394;
      v34 = sub_10003E4B0(v32);
      v36 = sub_100029C70(v34, v35, v95);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      if (v31)
      {
        *(v0 + 472) = v27;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v37 = sub_1000E2368();
        v39 = v38;
      }

      else
      {
        v39 = 0xE300000000000000;
        v37 = 7104878;
      }

      v40 = sub_100029C70(v37, v39, v95);

      *(v33 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "Received invalid request %s options %s.", v33, 0x16u);
      swift_arrayDestroy();
    }

    v42 = *(v0 + 504);
    v41 = *(v0 + 512);
    sub_100058DE4();
    v43 = swift_allocError();
    *v44 = 3;
    v42(0, 0, v43);

    goto LABEL_25;
  }

  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  *(v0 + 616) = v8;
  *(v0 + 624) = v7;

  v9 = sub_1000449DC(v8, v7, 0);

  if (v9)
  {
LABEL_7:
    *(v0 + 632) = v9;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v10, qword_1001231A0);

    v11 = sub_1000E1EE8();
    v12 = sub_1000E2698();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 680);
      v14 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_100029C70(v8, v7, v95);
      *(v14 + 12) = 2080;
      v15 = sub_10003E4B0(v13);
      v17 = sub_100029C70(v15, v16, v95);

      *(v14 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Received request %s.", v14, 0x16u);
      swift_arrayDestroy();
    }

    v18 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v18 + 16) && (v19 = *(v0 + 520), v20 = sub_10000B3E0(v0 + 200), (v21 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v20, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v22 = *(v0 + 592);
        v23 = *(v0 + 576);
        v24 = *(v0 + 568);
        v25 = *(v0 + 424);
        v26 = *(v0 + 432);
        *(v0 + 648) = v25;
        *(v0 + 656) = v26;
        v96 = 0;
        memset(v95, 0, sizeof(v95));
        sub_1000123E0(v25, v26);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F618, 255, &type metadata accessor for NCProtoIncomingCallBannerActionRequest);
        sub_1000E0E18();
        v94 = (*(v0 + 528) + **(v0 + 528));
        v89 = *(*(v0 + 528) + 4);
        v90 = swift_task_alloc();
        *(v0 + 664) = v90;
        *v90 = v0;
        v90[1] = sub_10004A100;
        v91 = *(v0 + 592);
        v92 = *(v0 + 560);
        v93 = *(v0 + 536);

        return v94(v92, v91, v9);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v50 = swift_allocError();
    *v51 = 1;
    swift_willThrow();
    v52 = *(v0 + 640);
    v53 = *(v0 + 624);

    swift_errorRetain();
    v54 = sub_1000E1EE8();
    v55 = sub_1000E2678();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 624);
    if (v56)
    {
      v58 = *(v0 + 616);
      v59 = *(v0 + 680);
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v60 = 136315650;
      v62 = sub_100029C70(v58, v57, v95);

      *(v60 + 4) = v62;
      *(v60 + 12) = 2080;
      v63 = sub_10003E4B0(v59);
      v65 = sub_100029C70(v63, v64, v95);

      *(v60 + 14) = v65;
      *(v60 + 22) = 2112;
      swift_errorRetain();
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 24) = v66;
      *v61 = v66;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%s] Error handling request %s: %@.", v60, 0x20u);
      sub_1000033C8(v61, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v70 = *(v0 + 632);
    v71 = *(v0 + 608);
    v73 = *(v0 + 504);
    v72 = *(v0 + 512);
    swift_errorRetain();
    v73(0, 0, v50);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v67;
  sub_1000E2A08();
  if (*(v3 + 16) && (v68 = sub_10000B3E0(v0 + 160), (v69 & 1) != 0))
  {
    sub_1000153C0(*(v3 + 56) + 32 * v68, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v9 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v9)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v74 = sub_1000E1F08();
  sub_1000049D0(v74, qword_1001231A0);

  v75 = sub_1000E1EE8();
  v76 = sub_1000E2678();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = *(v0 + 680);
    v78 = swift_slowAlloc();
    *&v95[0] = swift_slowAlloc();
    *v78 = 136315394;
    v79 = sub_10003E4B0(v77);
    v81 = sub_100029C70(v79, v80, v95);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    *(v0 + 480) = v3;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v82 = sub_1000E2368();
    v84 = sub_100029C70(v82, v83, v95);

    *(v78 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v75, v76, "Received request %s from unrecognized device %s.", v78, 0x16u);
    swift_arrayDestroy();
  }

  v86 = *(v0 + 504);
  v85 = *(v0 + 512);
  sub_100058DE4();
  v87 = swift_allocError();
  *v88 = 3;
  v86(0, 0, v87);

LABEL_44:

LABEL_25:
  v45 = *(v0 + 592);
  v46 = *(v0 + 568);
  v47 = *(v0 + 560);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_10004A100()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = *(v2 + 600);
  if (v0)
  {
    v6 = sub_10005A56C;
  }

  else
  {
    v6 = sub_10004A22C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10004A22C()
{
  v66 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  sub_100058F28(&qword_10011F620, 255, &type metadata accessor for NCProtoIncomingCallBannerActionResponse);
  v4 = sub_1000E0E28();
  if (v1)
  {
    v6 = *(v0 + 592);
    v7 = *(v0 + 584);
    v8 = *(v0 + 576);
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v12 = *(v0 + 640);
    v13 = *(v0 + 624);

    swift_errorRetain();
    v14 = sub_1000E1EE8();
    v15 = sub_1000E2678();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 624);
    if (v16)
    {
      v18 = *(v0 + 616);
      v19 = *(v0 + 680);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v20 = 136315650;
      v22 = sub_100029C70(v18, v17, v65);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      v23 = sub_10003E4B0(v19);
      v25 = sub_100029C70(v23, v24, v65);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v26;
      *v21 = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Error handling request %s: %@.", v20, 0x20u);
      sub_1000033C8(v21, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v40 = *(v0 + 632);
    v41 = *(v0 + 608);
    v43 = *(v0 + 504);
    v42 = *(v0 + 512);
    swift_errorRetain();
    v43(0, 0, v1);
  }

  else
  {
    v63 = v4;
    v64 = v5;
    v27 = *(v0 + 640);
    v28 = *(v0 + 624);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2698();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 624);
    if (v31)
    {
      v33 = *(v0 + 616);
      v34 = *(v0 + 680);
      v35 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v35 = 136315394;
      v36 = sub_100029C70(v33, v32, v65);

      *(v35 + 4) = v36;
      *(v35 + 12) = 2080;
      v37 = sub_10003E4B0(v34);
      v39 = sub_100029C70(v37, v38, v65);

      *(v35 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Returning response for %s.", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v44 = *(v0 + 608);
    v62 = *(v0 + 592);
    v45 = *(v0 + 584);
    v60 = *(v0 + 656);
    v61 = *(v0 + 576);
    v58 = *(v0 + 648);
    v59 = *(v0 + 560);
    v46 = *(v0 + 552);
    v56 = *(v0 + 632);
    v57 = *(v0 + 544);
    v48 = *(v0 + 504);
    v47 = *(v0 + 512);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v63;
    *(inited + 80) = v64;
    sub_1000123E0(v63, v64);
    v50 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v48(v50, 0, 0);

    sub_100006660(v63, v64);
    sub_100006660(v58, v60);
    (*(v46 + 8))(v59, v57);
    (*(v45 + 8))(v62, v61);
  }

  v51 = *(v0 + 592);
  v52 = *(v0 + 568);
  v53 = *(v0 + 560);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_10004A7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v20;
  *(v8 + 520) = v19;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1DE8();
  *(v8 + 544) = v9;
  v10 = *(v9 - 8);
  *(v8 + 552) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  v12 = *(*(sub_1000E0E08() - 8) + 64) + 15;
  *(v8 + 568) = swift_task_alloc();
  v13 = sub_1000E1DA8();
  *(v8 + 576) = v13;
  v14 = *(v13 - 8);
  *(v8 + 584) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_10004A980, v16, 0);
}

uint64_t sub_10004A980()
{
  v97 = v0;
  v1 = *(v0 + 488);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v3 = *(v0 + 496);
  if (!v3)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v4;
  sub_1000E2A08();
  if (!*(v3 + 16) || (v5 = sub_10000B3E0(v0 + 120), (v6 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v3 + 56) + 32 * v5, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 496);
    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_1001231A0);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2678();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 496);
      v32 = *(v0 + 680);
      v33 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v33 = 136315394;
      v34 = sub_10003E4B0(v32);
      v36 = sub_100029C70(v34, v35, v95);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      if (v31)
      {
        *(v0 + 472) = v27;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v37 = sub_1000E2368();
        v39 = v38;
      }

      else
      {
        v39 = 0xE300000000000000;
        v37 = 7104878;
      }

      v40 = sub_100029C70(v37, v39, v95);

      *(v33 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "Received invalid request %s options %s.", v33, 0x16u);
      swift_arrayDestroy();
    }

    v42 = *(v0 + 504);
    v41 = *(v0 + 512);
    sub_100058DE4();
    v43 = swift_allocError();
    *v44 = 3;
    v42(0, 0, v43);

    goto LABEL_25;
  }

  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  *(v0 + 616) = v8;
  *(v0 + 624) = v7;

  v9 = sub_1000449DC(v8, v7, 0);

  if (v9)
  {
LABEL_7:
    *(v0 + 632) = v9;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v10, qword_1001231A0);

    v11 = sub_1000E1EE8();
    v12 = sub_1000E2698();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 680);
      v14 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_100029C70(v8, v7, v95);
      *(v14 + 12) = 2080;
      v15 = sub_10003E4B0(v13);
      v17 = sub_100029C70(v15, v16, v95);

      *(v14 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Received request %s.", v14, 0x16u);
      swift_arrayDestroy();
    }

    v18 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v18 + 16) && (v19 = *(v0 + 520), v20 = sub_10000B3E0(v0 + 200), (v21 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v20, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v22 = *(v0 + 592);
        v23 = *(v0 + 576);
        v24 = *(v0 + 568);
        v25 = *(v0 + 424);
        v26 = *(v0 + 432);
        *(v0 + 648) = v25;
        *(v0 + 656) = v26;
        v96 = 0;
        memset(v95, 0, sizeof(v95));
        sub_1000123E0(v25, v26);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F628, 255, &type metadata accessor for NCProtoGetDestinationCapabilitiesRequest);
        sub_1000E0E18();
        v94 = (*(v0 + 528) + **(v0 + 528));
        v89 = *(*(v0 + 528) + 4);
        v90 = swift_task_alloc();
        *(v0 + 664) = v90;
        *v90 = v0;
        v90[1] = sub_10004B52C;
        v91 = *(v0 + 592);
        v92 = *(v0 + 560);
        v93 = *(v0 + 536);

        return v94(v92, v91, v9);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v50 = swift_allocError();
    *v51 = 1;
    swift_willThrow();
    v52 = *(v0 + 640);
    v53 = *(v0 + 624);

    swift_errorRetain();
    v54 = sub_1000E1EE8();
    v55 = sub_1000E2678();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 624);
    if (v56)
    {
      v58 = *(v0 + 616);
      v59 = *(v0 + 680);
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v60 = 136315650;
      v62 = sub_100029C70(v58, v57, v95);

      *(v60 + 4) = v62;
      *(v60 + 12) = 2080;
      v63 = sub_10003E4B0(v59);
      v65 = sub_100029C70(v63, v64, v95);

      *(v60 + 14) = v65;
      *(v60 + 22) = 2112;
      swift_errorRetain();
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 24) = v66;
      *v61 = v66;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%s] Error handling request %s: %@.", v60, 0x20u);
      sub_1000033C8(v61, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v70 = *(v0 + 632);
    v71 = *(v0 + 608);
    v73 = *(v0 + 504);
    v72 = *(v0 + 512);
    swift_errorRetain();
    v73(0, 0, v50);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v67;
  sub_1000E2A08();
  if (*(v3 + 16) && (v68 = sub_10000B3E0(v0 + 160), (v69 & 1) != 0))
  {
    sub_1000153C0(*(v3 + 56) + 32 * v68, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v9 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v9)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v74 = sub_1000E1F08();
  sub_1000049D0(v74, qword_1001231A0);

  v75 = sub_1000E1EE8();
  v76 = sub_1000E2678();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = *(v0 + 680);
    v78 = swift_slowAlloc();
    *&v95[0] = swift_slowAlloc();
    *v78 = 136315394;
    v79 = sub_10003E4B0(v77);
    v81 = sub_100029C70(v79, v80, v95);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    *(v0 + 480) = v3;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v82 = sub_1000E2368();
    v84 = sub_100029C70(v82, v83, v95);

    *(v78 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v75, v76, "Received request %s from unrecognized device %s.", v78, 0x16u);
    swift_arrayDestroy();
  }

  v86 = *(v0 + 504);
  v85 = *(v0 + 512);
  sub_100058DE4();
  v87 = swift_allocError();
  *v88 = 3;
  v86(0, 0, v87);

LABEL_44:

LABEL_25:
  v45 = *(v0 + 592);
  v46 = *(v0 + 568);
  v47 = *(v0 + 560);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_10004B52C()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = *(v2 + 600);
  if (v0)
  {
    v6 = sub_10005A56C;
  }

  else
  {
    v6 = sub_10004B658;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10004B658()
{
  v66 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  sub_100058F28(&qword_100120140, 255, &type metadata accessor for NCProtoGetDestinationCapabilitiesResponse);
  v4 = sub_1000E0E28();
  if (v1)
  {
    v6 = *(v0 + 592);
    v7 = *(v0 + 584);
    v8 = *(v0 + 576);
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v12 = *(v0 + 640);
    v13 = *(v0 + 624);

    swift_errorRetain();
    v14 = sub_1000E1EE8();
    v15 = sub_1000E2678();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 624);
    if (v16)
    {
      v18 = *(v0 + 616);
      v19 = *(v0 + 680);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v20 = 136315650;
      v22 = sub_100029C70(v18, v17, v65);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      v23 = sub_10003E4B0(v19);
      v25 = sub_100029C70(v23, v24, v65);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v26;
      *v21 = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Error handling request %s: %@.", v20, 0x20u);
      sub_1000033C8(v21, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v40 = *(v0 + 632);
    v41 = *(v0 + 608);
    v43 = *(v0 + 504);
    v42 = *(v0 + 512);
    swift_errorRetain();
    v43(0, 0, v1);
  }

  else
  {
    v63 = v4;
    v64 = v5;
    v27 = *(v0 + 640);
    v28 = *(v0 + 624);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2698();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 624);
    if (v31)
    {
      v33 = *(v0 + 616);
      v34 = *(v0 + 680);
      v35 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v35 = 136315394;
      v36 = sub_100029C70(v33, v32, v65);

      *(v35 + 4) = v36;
      *(v35 + 12) = 2080;
      v37 = sub_10003E4B0(v34);
      v39 = sub_100029C70(v37, v38, v65);

      *(v35 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Returning response for %s.", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v44 = *(v0 + 608);
    v62 = *(v0 + 592);
    v45 = *(v0 + 584);
    v60 = *(v0 + 656);
    v61 = *(v0 + 576);
    v58 = *(v0 + 648);
    v59 = *(v0 + 560);
    v46 = *(v0 + 552);
    v56 = *(v0 + 632);
    v57 = *(v0 + 544);
    v48 = *(v0 + 504);
    v47 = *(v0 + 512);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v63;
    *(inited + 80) = v64;
    sub_1000123E0(v63, v64);
    v50 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v48(v50, 0, 0);

    sub_100006660(v63, v64);
    sub_100006660(v58, v60);
    (*(v46 + 8))(v59, v57);
    (*(v45 + 8))(v62, v61);
  }

  v51 = *(v0 + 592);
  v52 = *(v0 + 568);
  v53 = *(v0 + 560);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_10004BC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v20;
  *(v8 + 520) = v19;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1BD8();
  *(v8 + 544) = v9;
  v10 = *(v9 - 8);
  *(v8 + 552) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  v12 = *(*(sub_1000E0E08() - 8) + 64) + 15;
  *(v8 + 568) = swift_task_alloc();
  v13 = sub_1000E1AA8();
  *(v8 + 576) = v13;
  v14 = *(v13 - 8);
  *(v8 + 584) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_10004BDAC, v16, 0);
}

uint64_t sub_10004BDAC()
{
  v97 = v0;
  v1 = *(v0 + 488);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v3 = *(v0 + 496);
  if (!v3)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v4;
  sub_1000E2A08();
  if (!*(v3 + 16) || (v5 = sub_10000B3E0(v0 + 120), (v6 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v3 + 56) + 32 * v5, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 496);
    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_1001231A0);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2678();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 496);
      v32 = *(v0 + 680);
      v33 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v33 = 136315394;
      v34 = sub_10003E4B0(v32);
      v36 = sub_100029C70(v34, v35, v95);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      if (v31)
      {
        *(v0 + 472) = v27;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v37 = sub_1000E2368();
        v39 = v38;
      }

      else
      {
        v39 = 0xE300000000000000;
        v37 = 7104878;
      }

      v40 = sub_100029C70(v37, v39, v95);

      *(v33 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "Received invalid request %s options %s.", v33, 0x16u);
      swift_arrayDestroy();
    }

    v42 = *(v0 + 504);
    v41 = *(v0 + 512);
    sub_100058DE4();
    v43 = swift_allocError();
    *v44 = 3;
    v42(0, 0, v43);

    goto LABEL_25;
  }

  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  *(v0 + 616) = v8;
  *(v0 + 624) = v7;

  v9 = sub_1000449DC(v8, v7, 0);

  if (v9)
  {
LABEL_7:
    *(v0 + 632) = v9;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v10, qword_1001231A0);

    v11 = sub_1000E1EE8();
    v12 = sub_1000E2698();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 680);
      v14 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_100029C70(v8, v7, v95);
      *(v14 + 12) = 2080;
      v15 = sub_10003E4B0(v13);
      v17 = sub_100029C70(v15, v16, v95);

      *(v14 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Received request %s.", v14, 0x16u);
      swift_arrayDestroy();
    }

    v18 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v18 + 16) && (v19 = *(v0 + 520), v20 = sub_10000B3E0(v0 + 200), (v21 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v20, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v22 = *(v0 + 592);
        v23 = *(v0 + 576);
        v24 = *(v0 + 568);
        v25 = *(v0 + 424);
        v26 = *(v0 + 432);
        *(v0 + 648) = v25;
        *(v0 + 656) = v26;
        v96 = 0;
        memset(v95, 0, sizeof(v95));
        sub_1000123E0(v25, v26);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F630, 255, &type metadata accessor for NCProtoDeclineContinuityCallRequest);
        sub_1000E0E18();
        v94 = (*(v0 + 528) + **(v0 + 528));
        v89 = *(*(v0 + 528) + 4);
        v90 = swift_task_alloc();
        *(v0 + 664) = v90;
        *v90 = v0;
        v90[1] = sub_10004C958;
        v91 = *(v0 + 592);
        v92 = *(v0 + 560);
        v93 = *(v0 + 536);

        return v94(v92, v91, v9);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v50 = swift_allocError();
    *v51 = 1;
    swift_willThrow();
    v52 = *(v0 + 640);
    v53 = *(v0 + 624);

    swift_errorRetain();
    v54 = sub_1000E1EE8();
    v55 = sub_1000E2678();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 624);
    if (v56)
    {
      v58 = *(v0 + 616);
      v59 = *(v0 + 680);
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v60 = 136315650;
      v62 = sub_100029C70(v58, v57, v95);

      *(v60 + 4) = v62;
      *(v60 + 12) = 2080;
      v63 = sub_10003E4B0(v59);
      v65 = sub_100029C70(v63, v64, v95);

      *(v60 + 14) = v65;
      *(v60 + 22) = 2112;
      swift_errorRetain();
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 24) = v66;
      *v61 = v66;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%s] Error handling request %s: %@.", v60, 0x20u);
      sub_1000033C8(v61, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v70 = *(v0 + 632);
    v71 = *(v0 + 608);
    v73 = *(v0 + 504);
    v72 = *(v0 + 512);
    swift_errorRetain();
    v73(0, 0, v50);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v67;
  sub_1000E2A08();
  if (*(v3 + 16) && (v68 = sub_10000B3E0(v0 + 160), (v69 & 1) != 0))
  {
    sub_1000153C0(*(v3 + 56) + 32 * v68, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v9 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v9)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v74 = sub_1000E1F08();
  sub_1000049D0(v74, qword_1001231A0);

  v75 = sub_1000E1EE8();
  v76 = sub_1000E2678();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = *(v0 + 680);
    v78 = swift_slowAlloc();
    *&v95[0] = swift_slowAlloc();
    *v78 = 136315394;
    v79 = sub_10003E4B0(v77);
    v81 = sub_100029C70(v79, v80, v95);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    *(v0 + 480) = v3;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v82 = sub_1000E2368();
    v84 = sub_100029C70(v82, v83, v95);

    *(v78 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v75, v76, "Received request %s from unrecognized device %s.", v78, 0x16u);
    swift_arrayDestroy();
  }

  v86 = *(v0 + 504);
  v85 = *(v0 + 512);
  sub_100058DE4();
  v87 = swift_allocError();
  *v88 = 3;
  v86(0, 0, v87);

LABEL_44:

LABEL_25:
  v45 = *(v0 + 592);
  v46 = *(v0 + 568);
  v47 = *(v0 + 560);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_10004C958()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = *(v2 + 600);
  if (v0)
  {
    v6 = sub_10005A56C;
  }

  else
  {
    v6 = sub_10004CA84;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10004CA84()
{
  v66 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  sub_100058F28(&qword_10011F638, 255, &type metadata accessor for NCProtoDeclineContinuityCallResponse);
  v4 = sub_1000E0E28();
  if (v1)
  {
    v6 = *(v0 + 592);
    v7 = *(v0 + 584);
    v8 = *(v0 + 576);
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v12 = *(v0 + 640);
    v13 = *(v0 + 624);

    swift_errorRetain();
    v14 = sub_1000E1EE8();
    v15 = sub_1000E2678();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 624);
    if (v16)
    {
      v18 = *(v0 + 616);
      v19 = *(v0 + 680);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v20 = 136315650;
      v22 = sub_100029C70(v18, v17, v65);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      v23 = sub_10003E4B0(v19);
      v25 = sub_100029C70(v23, v24, v65);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v26;
      *v21 = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Error handling request %s: %@.", v20, 0x20u);
      sub_1000033C8(v21, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v40 = *(v0 + 632);
    v41 = *(v0 + 608);
    v43 = *(v0 + 504);
    v42 = *(v0 + 512);
    swift_errorRetain();
    v43(0, 0, v1);
  }

  else
  {
    v63 = v4;
    v64 = v5;
    v27 = *(v0 + 640);
    v28 = *(v0 + 624);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2698();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 624);
    if (v31)
    {
      v33 = *(v0 + 616);
      v34 = *(v0 + 680);
      v35 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v35 = 136315394;
      v36 = sub_100029C70(v33, v32, v65);

      *(v35 + 4) = v36;
      *(v35 + 12) = 2080;
      v37 = sub_10003E4B0(v34);
      v39 = sub_100029C70(v37, v38, v65);

      *(v35 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Returning response for %s.", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v44 = *(v0 + 608);
    v62 = *(v0 + 592);
    v45 = *(v0 + 584);
    v60 = *(v0 + 656);
    v61 = *(v0 + 576);
    v58 = *(v0 + 648);
    v59 = *(v0 + 560);
    v46 = *(v0 + 552);
    v56 = *(v0 + 632);
    v57 = *(v0 + 544);
    v48 = *(v0 + 504);
    v47 = *(v0 + 512);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v63;
    *(inited + 80) = v64;
    sub_1000123E0(v63, v64);
    v50 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v48(v50, 0, 0);

    sub_100006660(v63, v64);
    sub_100006660(v58, v60);
    (*(v46 + 8))(v59, v57);
    (*(v45 + 8))(v62, v61);
  }

  v51 = *(v0 + 592);
  v52 = *(v0 + 568);
  v53 = *(v0 + 560);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_10004D038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v20;
  *(v8 + 520) = v19;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1CB8();
  *(v8 + 544) = v9;
  v10 = *(v9 - 8);
  *(v8 + 552) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  v12 = *(*(sub_1000E0E08() - 8) + 64) + 15;
  *(v8 + 568) = swift_task_alloc();
  v13 = sub_1000E1C48();
  *(v8 + 576) = v13;
  v14 = *(v13 - 8);
  *(v8 + 584) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_10004D1D8, v16, 0);
}

uint64_t sub_10004D1D8()
{
  v97 = v0;
  v1 = *(v0 + 488);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v3 = *(v0 + 496);
  if (!v3)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v4;
  sub_1000E2A08();
  if (!*(v3 + 16) || (v5 = sub_10000B3E0(v0 + 120), (v6 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v3 + 56) + 32 * v5, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 496);
    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_1001231A0);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2678();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 496);
      v32 = *(v0 + 680);
      v33 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v33 = 136315394;
      v34 = sub_10003E4B0(v32);
      v36 = sub_100029C70(v34, v35, v95);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      if (v31)
      {
        *(v0 + 472) = v27;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v37 = sub_1000E2368();
        v39 = v38;
      }

      else
      {
        v39 = 0xE300000000000000;
        v37 = 7104878;
      }

      v40 = sub_100029C70(v37, v39, v95);

      *(v33 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "Received invalid request %s options %s.", v33, 0x16u);
      swift_arrayDestroy();
    }

    v42 = *(v0 + 504);
    v41 = *(v0 + 512);
    sub_100058DE4();
    v43 = swift_allocError();
    *v44 = 3;
    v42(0, 0, v43);

    goto LABEL_25;
  }

  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  *(v0 + 616) = v8;
  *(v0 + 624) = v7;

  v9 = sub_1000449DC(v8, v7, 0);

  if (v9)
  {
LABEL_7:
    *(v0 + 632) = v9;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v10, qword_1001231A0);

    v11 = sub_1000E1EE8();
    v12 = sub_1000E2698();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 680);
      v14 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_100029C70(v8, v7, v95);
      *(v14 + 12) = 2080;
      v15 = sub_10003E4B0(v13);
      v17 = sub_100029C70(v15, v16, v95);

      *(v14 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Received request %s.", v14, 0x16u);
      swift_arrayDestroy();
    }

    v18 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v18 + 16) && (v19 = *(v0 + 520), v20 = sub_10000B3E0(v0 + 200), (v21 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v20, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v22 = *(v0 + 592);
        v23 = *(v0 + 576);
        v24 = *(v0 + 568);
        v25 = *(v0 + 424);
        v26 = *(v0 + 432);
        *(v0 + 648) = v25;
        *(v0 + 656) = v26;
        v96 = 0;
        memset(v95, 0, sizeof(v95));
        sub_1000123E0(v25, v26);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F640, 255, &type metadata accessor for NCProtoJoinActiveConversationRequest);
        sub_1000E0E18();
        v94 = (*(v0 + 528) + **(v0 + 528));
        v89 = *(*(v0 + 528) + 4);
        v90 = swift_task_alloc();
        *(v0 + 664) = v90;
        *v90 = v0;
        v90[1] = sub_10004DD84;
        v91 = *(v0 + 592);
        v92 = *(v0 + 560);
        v93 = *(v0 + 536);

        return v94(v92, v91, v9);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v50 = swift_allocError();
    *v51 = 1;
    swift_willThrow();
    v52 = *(v0 + 640);
    v53 = *(v0 + 624);

    swift_errorRetain();
    v54 = sub_1000E1EE8();
    v55 = sub_1000E2678();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 624);
    if (v56)
    {
      v58 = *(v0 + 616);
      v59 = *(v0 + 680);
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v60 = 136315650;
      v62 = sub_100029C70(v58, v57, v95);

      *(v60 + 4) = v62;
      *(v60 + 12) = 2080;
      v63 = sub_10003E4B0(v59);
      v65 = sub_100029C70(v63, v64, v95);

      *(v60 + 14) = v65;
      *(v60 + 22) = 2112;
      swift_errorRetain();
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 24) = v66;
      *v61 = v66;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%s] Error handling request %s: %@.", v60, 0x20u);
      sub_1000033C8(v61, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v70 = *(v0 + 632);
    v71 = *(v0 + 608);
    v73 = *(v0 + 504);
    v72 = *(v0 + 512);
    swift_errorRetain();
    v73(0, 0, v50);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v67;
  sub_1000E2A08();
  if (*(v3 + 16) && (v68 = sub_10000B3E0(v0 + 160), (v69 & 1) != 0))
  {
    sub_1000153C0(*(v3 + 56) + 32 * v68, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v9 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v9)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v74 = sub_1000E1F08();
  sub_1000049D0(v74, qword_1001231A0);

  v75 = sub_1000E1EE8();
  v76 = sub_1000E2678();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = *(v0 + 680);
    v78 = swift_slowAlloc();
    *&v95[0] = swift_slowAlloc();
    *v78 = 136315394;
    v79 = sub_10003E4B0(v77);
    v81 = sub_100029C70(v79, v80, v95);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    *(v0 + 480) = v3;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v82 = sub_1000E2368();
    v84 = sub_100029C70(v82, v83, v95);

    *(v78 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v75, v76, "Received request %s from unrecognized device %s.", v78, 0x16u);
    swift_arrayDestroy();
  }

  v86 = *(v0 + 504);
  v85 = *(v0 + 512);
  sub_100058DE4();
  v87 = swift_allocError();
  *v88 = 3;
  v86(0, 0, v87);

LABEL_44:

LABEL_25:
  v45 = *(v0 + 592);
  v46 = *(v0 + 568);
  v47 = *(v0 + 560);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_10004DD84()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = *(v2 + 600);
  if (v0)
  {
    v6 = sub_10005A56C;
  }

  else
  {
    v6 = sub_10004DEB0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10004DEB0()
{
  v66 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  sub_100058F28(&qword_10011F648, 255, &type metadata accessor for NCProtoJoinActiveConversationResponse);
  v4 = sub_1000E0E28();
  if (v1)
  {
    v6 = *(v0 + 592);
    v7 = *(v0 + 584);
    v8 = *(v0 + 576);
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v12 = *(v0 + 640);
    v13 = *(v0 + 624);

    swift_errorRetain();
    v14 = sub_1000E1EE8();
    v15 = sub_1000E2678();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 624);
    if (v16)
    {
      v18 = *(v0 + 616);
      v19 = *(v0 + 680);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v20 = 136315650;
      v22 = sub_100029C70(v18, v17, v65);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      v23 = sub_10003E4B0(v19);
      v25 = sub_100029C70(v23, v24, v65);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v26;
      *v21 = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Error handling request %s: %@.", v20, 0x20u);
      sub_1000033C8(v21, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v40 = *(v0 + 632);
    v41 = *(v0 + 608);
    v43 = *(v0 + 504);
    v42 = *(v0 + 512);
    swift_errorRetain();
    v43(0, 0, v1);
  }

  else
  {
    v63 = v4;
    v64 = v5;
    v27 = *(v0 + 640);
    v28 = *(v0 + 624);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2698();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 624);
    if (v31)
    {
      v33 = *(v0 + 616);
      v34 = *(v0 + 680);
      v35 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v35 = 136315394;
      v36 = sub_100029C70(v33, v32, v65);

      *(v35 + 4) = v36;
      *(v35 + 12) = 2080;
      v37 = sub_10003E4B0(v34);
      v39 = sub_100029C70(v37, v38, v65);

      *(v35 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Returning response for %s.", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v44 = *(v0 + 608);
    v62 = *(v0 + 592);
    v45 = *(v0 + 584);
    v60 = *(v0 + 656);
    v61 = *(v0 + 576);
    v58 = *(v0 + 648);
    v59 = *(v0 + 560);
    v46 = *(v0 + 552);
    v56 = *(v0 + 632);
    v57 = *(v0 + 544);
    v48 = *(v0 + 504);
    v47 = *(v0 + 512);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v63;
    *(inited + 80) = v64;
    sub_1000123E0(v63, v64);
    v50 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v48(v50, 0, 0);

    sub_100006660(v63, v64);
    sub_100006660(v58, v60);
    (*(v46 + 8))(v59, v57);
    (*(v45 + 8))(v62, v61);
  }

  v51 = *(v0 + 592);
  v52 = *(v0 + 568);
  v53 = *(v0 + 560);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_10004E464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v20;
  *(v8 + 520) = v19;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1E08();
  *(v8 + 544) = v9;
  v10 = *(v9 - 8);
  *(v8 + 552) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  v12 = *(*(sub_1000E0E08() - 8) + 64) + 15;
  *(v8 + 568) = swift_task_alloc();
  v13 = sub_1000E1DC8();
  *(v8 + 576) = v13;
  v14 = *(v13 - 8);
  *(v8 + 584) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_10004E604, v16, 0);
}

uint64_t sub_10004E604()
{
  v97 = v0;
  v1 = *(v0 + 488);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v3 = *(v0 + 496);
  if (!v3)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v4;
  sub_1000E2A08();
  if (!*(v3 + 16) || (v5 = sub_10000B3E0(v0 + 120), (v6 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v3 + 56) + 32 * v5, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 496);
    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_1001231A0);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2678();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 496);
      v32 = *(v0 + 680);
      v33 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v33 = 136315394;
      v34 = sub_10003E4B0(v32);
      v36 = sub_100029C70(v34, v35, v95);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      if (v31)
      {
        *(v0 + 472) = v27;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v37 = sub_1000E2368();
        v39 = v38;
      }

      else
      {
        v39 = 0xE300000000000000;
        v37 = 7104878;
      }

      v40 = sub_100029C70(v37, v39, v95);

      *(v33 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "Received invalid request %s options %s.", v33, 0x16u);
      swift_arrayDestroy();
    }

    v42 = *(v0 + 504);
    v41 = *(v0 + 512);
    sub_100058DE4();
    v43 = swift_allocError();
    *v44 = 3;
    v42(0, 0, v43);

    goto LABEL_25;
  }

  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  *(v0 + 616) = v8;
  *(v0 + 624) = v7;

  v9 = sub_1000449DC(v8, v7, 0);

  if (v9)
  {
LABEL_7:
    *(v0 + 632) = v9;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v10, qword_1001231A0);

    v11 = sub_1000E1EE8();
    v12 = sub_1000E2698();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 680);
      v14 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_100029C70(v8, v7, v95);
      *(v14 + 12) = 2080;
      v15 = sub_10003E4B0(v13);
      v17 = sub_100029C70(v15, v16, v95);

      *(v14 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Received request %s.", v14, 0x16u);
      swift_arrayDestroy();
    }

    v18 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v18 + 16) && (v19 = *(v0 + 520), v20 = sub_10000B3E0(v0 + 200), (v21 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v20, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v22 = *(v0 + 592);
        v23 = *(v0 + 576);
        v24 = *(v0 + 568);
        v25 = *(v0 + 424);
        v26 = *(v0 + 432);
        *(v0 + 648) = v25;
        *(v0 + 656) = v26;
        v96 = 0;
        memset(v95, 0, sizeof(v95));
        sub_1000123E0(v25, v26);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F650, 255, &type metadata accessor for NCProtoAddConversationParticipantsRequest);
        sub_1000E0E18();
        v94 = (*(v0 + 528) + **(v0 + 528));
        v89 = *(*(v0 + 528) + 4);
        v90 = swift_task_alloc();
        *(v0 + 664) = v90;
        *v90 = v0;
        v90[1] = sub_10004F1B0;
        v91 = *(v0 + 592);
        v92 = *(v0 + 560);
        v93 = *(v0 + 536);

        return v94(v92, v91, v9);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v50 = swift_allocError();
    *v51 = 1;
    swift_willThrow();
    v52 = *(v0 + 640);
    v53 = *(v0 + 624);

    swift_errorRetain();
    v54 = sub_1000E1EE8();
    v55 = sub_1000E2678();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 624);
    if (v56)
    {
      v58 = *(v0 + 616);
      v59 = *(v0 + 680);
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v60 = 136315650;
      v62 = sub_100029C70(v58, v57, v95);

      *(v60 + 4) = v62;
      *(v60 + 12) = 2080;
      v63 = sub_10003E4B0(v59);
      v65 = sub_100029C70(v63, v64, v95);

      *(v60 + 14) = v65;
      *(v60 + 22) = 2112;
      swift_errorRetain();
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 24) = v66;
      *v61 = v66;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%s] Error handling request %s: %@.", v60, 0x20u);
      sub_1000033C8(v61, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v70 = *(v0 + 632);
    v71 = *(v0 + 608);
    v73 = *(v0 + 504);
    v72 = *(v0 + 512);
    swift_errorRetain();
    v73(0, 0, v50);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v67;
  sub_1000E2A08();
  if (*(v3 + 16) && (v68 = sub_10000B3E0(v0 + 160), (v69 & 1) != 0))
  {
    sub_1000153C0(*(v3 + 56) + 32 * v68, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v9 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v9)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v74 = sub_1000E1F08();
  sub_1000049D0(v74, qword_1001231A0);

  v75 = sub_1000E1EE8();
  v76 = sub_1000E2678();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = *(v0 + 680);
    v78 = swift_slowAlloc();
    *&v95[0] = swift_slowAlloc();
    *v78 = 136315394;
    v79 = sub_10003E4B0(v77);
    v81 = sub_100029C70(v79, v80, v95);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    *(v0 + 480) = v3;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v82 = sub_1000E2368();
    v84 = sub_100029C70(v82, v83, v95);

    *(v78 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v75, v76, "Received request %s from unrecognized device %s.", v78, 0x16u);
    swift_arrayDestroy();
  }

  v86 = *(v0 + 504);
  v85 = *(v0 + 512);
  sub_100058DE4();
  v87 = swift_allocError();
  *v88 = 3;
  v86(0, 0, v87);

LABEL_44:

LABEL_25:
  v45 = *(v0 + 592);
  v46 = *(v0 + 568);
  v47 = *(v0 + 560);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_10004F1B0()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = *(v2 + 600);
  if (v0)
  {
    v6 = sub_10005A56C;
  }

  else
  {
    v6 = sub_10004F2DC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10004F2DC()
{
  v66 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  sub_100058F28(&qword_10011F658, 255, &type metadata accessor for NCProtoAddConversationParticipantsResponse);
  v4 = sub_1000E0E28();
  if (v1)
  {
    v6 = *(v0 + 592);
    v7 = *(v0 + 584);
    v8 = *(v0 + 576);
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v12 = *(v0 + 640);
    v13 = *(v0 + 624);

    swift_errorRetain();
    v14 = sub_1000E1EE8();
    v15 = sub_1000E2678();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 624);
    if (v16)
    {
      v18 = *(v0 + 616);
      v19 = *(v0 + 680);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v20 = 136315650;
      v22 = sub_100029C70(v18, v17, v65);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      v23 = sub_10003E4B0(v19);
      v25 = sub_100029C70(v23, v24, v65);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v26;
      *v21 = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Error handling request %s: %@.", v20, 0x20u);
      sub_1000033C8(v21, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v40 = *(v0 + 632);
    v41 = *(v0 + 608);
    v43 = *(v0 + 504);
    v42 = *(v0 + 512);
    swift_errorRetain();
    v43(0, 0, v1);
  }

  else
  {
    v63 = v4;
    v64 = v5;
    v27 = *(v0 + 640);
    v28 = *(v0 + 624);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2698();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 624);
    if (v31)
    {
      v33 = *(v0 + 616);
      v34 = *(v0 + 680);
      v35 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v35 = 136315394;
      v36 = sub_100029C70(v33, v32, v65);

      *(v35 + 4) = v36;
      *(v35 + 12) = 2080;
      v37 = sub_10003E4B0(v34);
      v39 = sub_100029C70(v37, v38, v65);

      *(v35 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Returning response for %s.", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v44 = *(v0 + 608);
    v62 = *(v0 + 592);
    v45 = *(v0 + 584);
    v60 = *(v0 + 656);
    v61 = *(v0 + 576);
    v58 = *(v0 + 648);
    v59 = *(v0 + 560);
    v46 = *(v0 + 552);
    v56 = *(v0 + 632);
    v57 = *(v0 + 544);
    v48 = *(v0 + 504);
    v47 = *(v0 + 512);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v63;
    *(inited + 80) = v64;
    sub_1000123E0(v63, v64);
    v50 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v48(v50, 0, 0);

    sub_100006660(v63, v64);
    sub_100006660(v58, v60);
    (*(v46 + 8))(v59, v57);
    (*(v45 + 8))(v62, v61);
  }

  v51 = *(v0 + 592);
  v52 = *(v0 + 568);
  v53 = *(v0 + 560);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_10004F890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v20;
  *(v8 + 520) = v19;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1A28();
  *(v8 + 544) = v9;
  v10 = *(v9 - 8);
  *(v8 + 552) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  v12 = *(*(sub_1000E0E08() - 8) + 64) + 15;
  *(v8 + 568) = swift_task_alloc();
  v13 = sub_1000E1978();
  *(v8 + 576) = v13;
  v14 = *(v13 - 8);
  *(v8 + 584) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_10004FA30, v16, 0);
}

uint64_t sub_10004FA30()
{
  v97 = v0;
  v1 = *(v0 + 488);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v3 = *(v0 + 496);
  if (!v3)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v4;
  sub_1000E2A08();
  if (!*(v3 + 16) || (v5 = sub_10000B3E0(v0 + 120), (v6 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v3 + 56) + 32 * v5, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 496);
    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_1001231A0);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2678();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 496);
      v32 = *(v0 + 680);
      v33 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v33 = 136315394;
      v34 = sub_10003E4B0(v32);
      v36 = sub_100029C70(v34, v35, v95);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      if (v31)
      {
        *(v0 + 472) = v27;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v37 = sub_1000E2368();
        v39 = v38;
      }

      else
      {
        v39 = 0xE300000000000000;
        v37 = 7104878;
      }

      v40 = sub_100029C70(v37, v39, v95);

      *(v33 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "Received invalid request %s options %s.", v33, 0x16u);
      swift_arrayDestroy();
    }

    v42 = *(v0 + 504);
    v41 = *(v0 + 512);
    sub_100058DE4();
    v43 = swift_allocError();
    *v44 = 3;
    v42(0, 0, v43);

    goto LABEL_25;
  }

  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  *(v0 + 616) = v8;
  *(v0 + 624) = v7;

  v9 = sub_1000449DC(v8, v7, 0);

  if (v9)
  {
LABEL_7:
    *(v0 + 632) = v9;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v10, qword_1001231A0);

    v11 = sub_1000E1EE8();
    v12 = sub_1000E2698();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 680);
      v14 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_100029C70(v8, v7, v95);
      *(v14 + 12) = 2080;
      v15 = sub_10003E4B0(v13);
      v17 = sub_100029C70(v15, v16, v95);

      *(v14 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Received request %s.", v14, 0x16u);
      swift_arrayDestroy();
    }

    v18 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v18 + 16) && (v19 = *(v0 + 520), v20 = sub_10000B3E0(v0 + 200), (v21 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v20, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v22 = *(v0 + 592);
        v23 = *(v0 + 576);
        v24 = *(v0 + 568);
        v25 = *(v0 + 424);
        v26 = *(v0 + 432);
        *(v0 + 648) = v25;
        *(v0 + 656) = v26;
        v96 = 0;
        memset(v95, 0, sizeof(v95));
        sub_1000123E0(v25, v26);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F660, 255, &type metadata accessor for NCProtoGetImageForContactRequest);
        sub_1000E0E18();
        v94 = (*(v0 + 528) + **(v0 + 528));
        v89 = *(*(v0 + 528) + 4);
        v90 = swift_task_alloc();
        *(v0 + 664) = v90;
        *v90 = v0;
        v90[1] = sub_1000505DC;
        v91 = *(v0 + 592);
        v92 = *(v0 + 560);
        v93 = *(v0 + 536);

        return v94(v92, v91, v9);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v50 = swift_allocError();
    *v51 = 1;
    swift_willThrow();
    v52 = *(v0 + 640);
    v53 = *(v0 + 624);

    swift_errorRetain();
    v54 = sub_1000E1EE8();
    v55 = sub_1000E2678();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 624);
    if (v56)
    {
      v58 = *(v0 + 616);
      v59 = *(v0 + 680);
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v60 = 136315650;
      v62 = sub_100029C70(v58, v57, v95);

      *(v60 + 4) = v62;
      *(v60 + 12) = 2080;
      v63 = sub_10003E4B0(v59);
      v65 = sub_100029C70(v63, v64, v95);

      *(v60 + 14) = v65;
      *(v60 + 22) = 2112;
      swift_errorRetain();
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 24) = v66;
      *v61 = v66;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%s] Error handling request %s: %@.", v60, 0x20u);
      sub_1000033C8(v61, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v70 = *(v0 + 632);
    v71 = *(v0 + 608);
    v73 = *(v0 + 504);
    v72 = *(v0 + 512);
    swift_errorRetain();
    v73(0, 0, v50);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v67;
  sub_1000E2A08();
  if (*(v3 + 16) && (v68 = sub_10000B3E0(v0 + 160), (v69 & 1) != 0))
  {
    sub_1000153C0(*(v3 + 56) + 32 * v68, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v9 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v9)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v74 = sub_1000E1F08();
  sub_1000049D0(v74, qword_1001231A0);

  v75 = sub_1000E1EE8();
  v76 = sub_1000E2678();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = *(v0 + 680);
    v78 = swift_slowAlloc();
    *&v95[0] = swift_slowAlloc();
    *v78 = 136315394;
    v79 = sub_10003E4B0(v77);
    v81 = sub_100029C70(v79, v80, v95);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    *(v0 + 480) = v3;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v82 = sub_1000E2368();
    v84 = sub_100029C70(v82, v83, v95);

    *(v78 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v75, v76, "Received request %s from unrecognized device %s.", v78, 0x16u);
    swift_arrayDestroy();
  }

  v86 = *(v0 + 504);
  v85 = *(v0 + 512);
  sub_100058DE4();
  v87 = swift_allocError();
  *v88 = 3;
  v86(0, 0, v87);

LABEL_44:

LABEL_25:
  v45 = *(v0 + 592);
  v46 = *(v0 + 568);
  v47 = *(v0 + 560);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_1000505DC()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = *(v2 + 600);
  if (v0)
  {
    v6 = sub_10005A56C;
  }

  else
  {
    v6 = sub_100050708;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100050708()
{
  v66 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  sub_100058F28(&qword_1001201A0, 255, &type metadata accessor for NCProtoGetImageForContactResponse);
  v4 = sub_1000E0E28();
  if (v1)
  {
    v6 = *(v0 + 592);
    v7 = *(v0 + 584);
    v8 = *(v0 + 576);
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v12 = *(v0 + 640);
    v13 = *(v0 + 624);

    swift_errorRetain();
    v14 = sub_1000E1EE8();
    v15 = sub_1000E2678();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 624);
    if (v16)
    {
      v18 = *(v0 + 616);
      v19 = *(v0 + 680);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v20 = 136315650;
      v22 = sub_100029C70(v18, v17, v65);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      v23 = sub_10003E4B0(v19);
      v25 = sub_100029C70(v23, v24, v65);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v26;
      *v21 = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Error handling request %s: %@.", v20, 0x20u);
      sub_1000033C8(v21, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v40 = *(v0 + 632);
    v41 = *(v0 + 608);
    v43 = *(v0 + 504);
    v42 = *(v0 + 512);
    swift_errorRetain();
    v43(0, 0, v1);
  }

  else
  {
    v63 = v4;
    v64 = v5;
    v27 = *(v0 + 640);
    v28 = *(v0 + 624);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2698();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 624);
    if (v31)
    {
      v33 = *(v0 + 616);
      v34 = *(v0 + 680);
      v35 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v35 = 136315394;
      v36 = sub_100029C70(v33, v32, v65);

      *(v35 + 4) = v36;
      *(v35 + 12) = 2080;
      v37 = sub_10003E4B0(v34);
      v39 = sub_100029C70(v37, v38, v65);

      *(v35 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Returning response for %s.", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v44 = *(v0 + 608);
    v62 = *(v0 + 592);
    v45 = *(v0 + 584);
    v60 = *(v0 + 656);
    v61 = *(v0 + 576);
    v58 = *(v0 + 648);
    v59 = *(v0 + 560);
    v46 = *(v0 + 552);
    v56 = *(v0 + 632);
    v57 = *(v0 + 544);
    v48 = *(v0 + 504);
    v47 = *(v0 + 512);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v63;
    *(inited + 80) = v64;
    sub_1000123E0(v63, v64);
    v50 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v48(v50, 0, 0);

    sub_100006660(v63, v64);
    sub_100006660(v58, v60);
    (*(v46 + 8))(v59, v57);
    (*(v45 + 8))(v62, v61);
  }

  v51 = *(v0 + 592);
  v52 = *(v0 + 568);
  v53 = *(v0 + 560);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_100050CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v20;
  *(v8 + 520) = v19;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1C98();
  *(v8 + 544) = v9;
  v10 = *(v9 - 8);
  *(v8 + 552) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  v12 = *(*(sub_1000E0E08() - 8) + 64) + 15;
  *(v8 + 568) = swift_task_alloc();
  v13 = sub_1000E1BE8();
  *(v8 + 576) = v13;
  v14 = *(v13 - 8);
  *(v8 + 584) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_100050E5C, v16, 0);
}

uint64_t sub_100050E5C()
{
  v97 = v0;
  v1 = *(v0 + 488);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v3 = *(v0 + 496);
  if (!v3)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v4;
  sub_1000E2A08();
  if (!*(v3 + 16) || (v5 = sub_10000B3E0(v0 + 120), (v6 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v3 + 56) + 32 * v5, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 496);
    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_1001231A0);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2678();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 496);
      v32 = *(v0 + 680);
      v33 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v33 = 136315394;
      v34 = sub_10003E4B0(v32);
      v36 = sub_100029C70(v34, v35, v95);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      if (v31)
      {
        *(v0 + 472) = v27;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v37 = sub_1000E2368();
        v39 = v38;
      }

      else
      {
        v39 = 0xE300000000000000;
        v37 = 7104878;
      }

      v40 = sub_100029C70(v37, v39, v95);

      *(v33 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "Received invalid request %s options %s.", v33, 0x16u);
      swift_arrayDestroy();
    }

    v42 = *(v0 + 504);
    v41 = *(v0 + 512);
    sub_100058DE4();
    v43 = swift_allocError();
    *v44 = 3;
    v42(0, 0, v43);

    goto LABEL_25;
  }

  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  *(v0 + 616) = v8;
  *(v0 + 624) = v7;

  v9 = sub_1000449DC(v8, v7, 0);

  if (v9)
  {
LABEL_7:
    *(v0 + 632) = v9;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v10, qword_1001231A0);

    v11 = sub_1000E1EE8();
    v12 = sub_1000E2698();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 680);
      v14 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_100029C70(v8, v7, v95);
      *(v14 + 12) = 2080;
      v15 = sub_10003E4B0(v13);
      v17 = sub_100029C70(v15, v16, v95);

      *(v14 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Received request %s.", v14, 0x16u);
      swift_arrayDestroy();
    }

    v18 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v18 + 16) && (v19 = *(v0 + 520), v20 = sub_10000B3E0(v0 + 200), (v21 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v20, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v22 = *(v0 + 592);
        v23 = *(v0 + 576);
        v24 = *(v0 + 568);
        v25 = *(v0 + 424);
        v26 = *(v0 + 432);
        *(v0 + 648) = v25;
        *(v0 + 656) = v26;
        v96 = 0;
        memset(v95, 0, sizeof(v95));
        sub_1000123E0(v25, v26);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F668, 255, &type metadata accessor for NCProtoGetAddressableContactsRequest);
        sub_1000E0E18();
        v94 = (*(v0 + 528) + **(v0 + 528));
        v89 = *(*(v0 + 528) + 4);
        v90 = swift_task_alloc();
        *(v0 + 664) = v90;
        *v90 = v0;
        v90[1] = sub_100051A08;
        v91 = *(v0 + 592);
        v92 = *(v0 + 560);
        v93 = *(v0 + 536);

        return v94(v92, v91, v9);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v50 = swift_allocError();
    *v51 = 1;
    swift_willThrow();
    v52 = *(v0 + 640);
    v53 = *(v0 + 624);

    swift_errorRetain();
    v54 = sub_1000E1EE8();
    v55 = sub_1000E2678();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 624);
    if (v56)
    {
      v58 = *(v0 + 616);
      v59 = *(v0 + 680);
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v60 = 136315650;
      v62 = sub_100029C70(v58, v57, v95);

      *(v60 + 4) = v62;
      *(v60 + 12) = 2080;
      v63 = sub_10003E4B0(v59);
      v65 = sub_100029C70(v63, v64, v95);

      *(v60 + 14) = v65;
      *(v60 + 22) = 2112;
      swift_errorRetain();
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 24) = v66;
      *v61 = v66;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%s] Error handling request %s: %@.", v60, 0x20u);
      sub_1000033C8(v61, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v70 = *(v0 + 632);
    v71 = *(v0 + 608);
    v73 = *(v0 + 504);
    v72 = *(v0 + 512);
    swift_errorRetain();
    v73(0, 0, v50);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v67;
  sub_1000E2A08();
  if (*(v3 + 16) && (v68 = sub_10000B3E0(v0 + 160), (v69 & 1) != 0))
  {
    sub_1000153C0(*(v3 + 56) + 32 * v68, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v9 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v9)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v74 = sub_1000E1F08();
  sub_1000049D0(v74, qword_1001231A0);

  v75 = sub_1000E1EE8();
  v76 = sub_1000E2678();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = *(v0 + 680);
    v78 = swift_slowAlloc();
    *&v95[0] = swift_slowAlloc();
    *v78 = 136315394;
    v79 = sub_10003E4B0(v77);
    v81 = sub_100029C70(v79, v80, v95);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    *(v0 + 480) = v3;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v82 = sub_1000E2368();
    v84 = sub_100029C70(v82, v83, v95);

    *(v78 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v75, v76, "Received request %s from unrecognized device %s.", v78, 0x16u);
    swift_arrayDestroy();
  }

  v86 = *(v0 + 504);
  v85 = *(v0 + 512);
  sub_100058DE4();
  v87 = swift_allocError();
  *v88 = 3;
  v86(0, 0, v87);

LABEL_44:

LABEL_25:
  v45 = *(v0 + 592);
  v46 = *(v0 + 568);
  v47 = *(v0 + 560);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_100051A08()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = *(v2 + 600);
  if (v0)
  {
    v6 = sub_10005A56C;
  }

  else
  {
    v6 = sub_100051B34;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100051B34()
{
  v66 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  sub_100058F28(&qword_100120170, 255, &type metadata accessor for NCProtoGetAddressableContactsResponse);
  v4 = sub_1000E0E28();
  if (v1)
  {
    v6 = *(v0 + 592);
    v7 = *(v0 + 584);
    v8 = *(v0 + 576);
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v12 = *(v0 + 640);
    v13 = *(v0 + 624);

    swift_errorRetain();
    v14 = sub_1000E1EE8();
    v15 = sub_1000E2678();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 624);
    if (v16)
    {
      v18 = *(v0 + 616);
      v19 = *(v0 + 680);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v20 = 136315650;
      v22 = sub_100029C70(v18, v17, v65);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      v23 = sub_10003E4B0(v19);
      v25 = sub_100029C70(v23, v24, v65);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v26;
      *v21 = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Error handling request %s: %@.", v20, 0x20u);
      sub_1000033C8(v21, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v40 = *(v0 + 632);
    v41 = *(v0 + 608);
    v43 = *(v0 + 504);
    v42 = *(v0 + 512);
    swift_errorRetain();
    v43(0, 0, v1);
  }

  else
  {
    v63 = v4;
    v64 = v5;
    v27 = *(v0 + 640);
    v28 = *(v0 + 624);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2698();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 624);
    if (v31)
    {
      v33 = *(v0 + 616);
      v34 = *(v0 + 680);
      v35 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v35 = 136315394;
      v36 = sub_100029C70(v33, v32, v65);

      *(v35 + 4) = v36;
      *(v35 + 12) = 2080;
      v37 = sub_10003E4B0(v34);
      v39 = sub_100029C70(v37, v38, v65);

      *(v35 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Returning response for %s.", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v44 = *(v0 + 608);
    v62 = *(v0 + 592);
    v45 = *(v0 + 584);
    v60 = *(v0 + 656);
    v61 = *(v0 + 576);
    v58 = *(v0 + 648);
    v59 = *(v0 + 560);
    v46 = *(v0 + 552);
    v56 = *(v0 + 632);
    v57 = *(v0 + 544);
    v48 = *(v0 + 504);
    v47 = *(v0 + 512);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v63;
    *(inited + 80) = v64;
    sub_1000123E0(v63, v64);
    v50 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v48(v50, 0, 0);

    sub_100006660(v63, v64);
    sub_100006660(v58, v60);
    (*(v46 + 8))(v59, v57);
    (*(v45 + 8))(v62, v61);
  }

  v51 = *(v0 + 592);
  v52 = *(v0 + 568);
  v53 = *(v0 + 560);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_1000520E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v20;
  *(v8 + 520) = v19;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1C68();
  *(v8 + 544) = v9;
  v10 = *(v9 - 8);
  *(v8 + 552) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  v12 = *(*(sub_1000E0E08() - 8) + 64) + 15;
  *(v8 + 568) = swift_task_alloc();
  v13 = sub_1000E1B98();
  *(v8 + 576) = v13;
  v14 = *(v13 - 8);
  *(v8 + 584) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_100052288, v16, 0);
}

uint64_t sub_100052288()
{
  v97 = v0;
  v1 = *(v0 + 488);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v3 = *(v0 + 496);
  if (!v3)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v4;
  sub_1000E2A08();
  if (!*(v3 + 16) || (v5 = sub_10000B3E0(v0 + 120), (v6 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v3 + 56) + 32 * v5, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 496);
    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_1001231A0);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2678();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 496);
      v32 = *(v0 + 680);
      v33 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v33 = 136315394;
      v34 = sub_10003E4B0(v32);
      v36 = sub_100029C70(v34, v35, v95);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      if (v31)
      {
        *(v0 + 472) = v27;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v37 = sub_1000E2368();
        v39 = v38;
      }

      else
      {
        v39 = 0xE300000000000000;
        v37 = 7104878;
      }

      v40 = sub_100029C70(v37, v39, v95);

      *(v33 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "Received invalid request %s options %s.", v33, 0x16u);
      swift_arrayDestroy();
    }

    v42 = *(v0 + 504);
    v41 = *(v0 + 512);
    sub_100058DE4();
    v43 = swift_allocError();
    *v44 = 3;
    v42(0, 0, v43);

    goto LABEL_25;
  }

  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  *(v0 + 616) = v8;
  *(v0 + 624) = v7;

  v9 = sub_1000449DC(v8, v7, 0);

  if (v9)
  {
LABEL_7:
    *(v0 + 632) = v9;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v10, qword_1001231A0);

    v11 = sub_1000E1EE8();
    v12 = sub_1000E2698();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 680);
      v14 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_100029C70(v8, v7, v95);
      *(v14 + 12) = 2080;
      v15 = sub_10003E4B0(v13);
      v17 = sub_100029C70(v15, v16, v95);

      *(v14 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Received request %s.", v14, 0x16u);
      swift_arrayDestroy();
    }

    v18 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v18 + 16) && (v19 = *(v0 + 520), v20 = sub_10000B3E0(v0 + 200), (v21 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v20, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v22 = *(v0 + 592);
        v23 = *(v0 + 576);
        v24 = *(v0 + 568);
        v25 = *(v0 + 424);
        v26 = *(v0 + 432);
        *(v0 + 648) = v25;
        *(v0 + 656) = v26;
        v96 = 0;
        memset(v95, 0, sizeof(v95));
        sub_1000123E0(v25, v26);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F670, 255, &type metadata accessor for NCProtoPullLagunaSessionToTVRequest);
        sub_1000E0E18();
        v94 = (*(v0 + 528) + **(v0 + 528));
        v89 = *(*(v0 + 528) + 4);
        v90 = swift_task_alloc();
        *(v0 + 664) = v90;
        *v90 = v0;
        v90[1] = sub_100052E34;
        v91 = *(v0 + 592);
        v92 = *(v0 + 560);
        v93 = *(v0 + 536);

        return v94(v92, v91, v9);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v50 = swift_allocError();
    *v51 = 1;
    swift_willThrow();
    v52 = *(v0 + 640);
    v53 = *(v0 + 624);

    swift_errorRetain();
    v54 = sub_1000E1EE8();
    v55 = sub_1000E2678();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 624);
    if (v56)
    {
      v58 = *(v0 + 616);
      v59 = *(v0 + 680);
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v60 = 136315650;
      v62 = sub_100029C70(v58, v57, v95);

      *(v60 + 4) = v62;
      *(v60 + 12) = 2080;
      v63 = sub_10003E4B0(v59);
      v65 = sub_100029C70(v63, v64, v95);

      *(v60 + 14) = v65;
      *(v60 + 22) = 2112;
      swift_errorRetain();
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 24) = v66;
      *v61 = v66;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%s] Error handling request %s: %@.", v60, 0x20u);
      sub_1000033C8(v61, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v70 = *(v0 + 632);
    v71 = *(v0 + 608);
    v73 = *(v0 + 504);
    v72 = *(v0 + 512);
    swift_errorRetain();
    v73(0, 0, v50);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v67;
  sub_1000E2A08();
  if (*(v3 + 16) && (v68 = sub_10000B3E0(v0 + 160), (v69 & 1) != 0))
  {
    sub_1000153C0(*(v3 + 56) + 32 * v68, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v9 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v9)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v74 = sub_1000E1F08();
  sub_1000049D0(v74, qword_1001231A0);

  v75 = sub_1000E1EE8();
  v76 = sub_1000E2678();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = *(v0 + 680);
    v78 = swift_slowAlloc();
    *&v95[0] = swift_slowAlloc();
    *v78 = 136315394;
    v79 = sub_10003E4B0(v77);
    v81 = sub_100029C70(v79, v80, v95);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    *(v0 + 480) = v3;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v82 = sub_1000E2368();
    v84 = sub_100029C70(v82, v83, v95);

    *(v78 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v75, v76, "Received request %s from unrecognized device %s.", v78, 0x16u);
    swift_arrayDestroy();
  }

  v86 = *(v0 + 504);
  v85 = *(v0 + 512);
  sub_100058DE4();
  v87 = swift_allocError();
  *v88 = 3;
  v86(0, 0, v87);

LABEL_44:

LABEL_25:
  v45 = *(v0 + 592);
  v46 = *(v0 + 568);
  v47 = *(v0 + 560);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_100052E34()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = *(v2 + 600);
  if (v0)
  {
    v6 = sub_10005A56C;
  }

  else
  {
    v6 = sub_100052F60;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100052F60()
{
  v66 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  sub_100058F28(&qword_10011F678, 255, &type metadata accessor for NCProtoPullLagunaSessionToTVResponse);
  v4 = sub_1000E0E28();
  if (v1)
  {
    v6 = *(v0 + 592);
    v7 = *(v0 + 584);
    v8 = *(v0 + 576);
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v12 = *(v0 + 640);
    v13 = *(v0 + 624);

    swift_errorRetain();
    v14 = sub_1000E1EE8();
    v15 = sub_1000E2678();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 624);
    if (v16)
    {
      v18 = *(v0 + 616);
      v19 = *(v0 + 680);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v20 = 136315650;
      v22 = sub_100029C70(v18, v17, v65);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      v23 = sub_10003E4B0(v19);
      v25 = sub_100029C70(v23, v24, v65);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v26;
      *v21 = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Error handling request %s: %@.", v20, 0x20u);
      sub_1000033C8(v21, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v40 = *(v0 + 632);
    v41 = *(v0 + 608);
    v43 = *(v0 + 504);
    v42 = *(v0 + 512);
    swift_errorRetain();
    v43(0, 0, v1);
  }

  else
  {
    v63 = v4;
    v64 = v5;
    v27 = *(v0 + 640);
    v28 = *(v0 + 624);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2698();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 624);
    if (v31)
    {
      v33 = *(v0 + 616);
      v34 = *(v0 + 680);
      v35 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v35 = 136315394;
      v36 = sub_100029C70(v33, v32, v65);

      *(v35 + 4) = v36;
      *(v35 + 12) = 2080;
      v37 = sub_10003E4B0(v34);
      v39 = sub_100029C70(v37, v38, v65);

      *(v35 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Returning response for %s.", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v44 = *(v0 + 608);
    v62 = *(v0 + 592);
    v45 = *(v0 + 584);
    v60 = *(v0 + 656);
    v61 = *(v0 + 576);
    v58 = *(v0 + 648);
    v59 = *(v0 + 560);
    v46 = *(v0 + 552);
    v56 = *(v0 + 632);
    v57 = *(v0 + 544);
    v48 = *(v0 + 504);
    v47 = *(v0 + 512);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v63;
    *(inited + 80) = v64;
    sub_1000123E0(v63, v64);
    v50 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v48(v50, 0, 0);

    sub_100006660(v63, v64);
    sub_100006660(v58, v60);
    (*(v46 + 8))(v59, v57);
    (*(v45 + 8))(v62, v61);
  }

  v51 = *(v0 + 592);
  v52 = *(v0 + 568);
  v53 = *(v0 + 560);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_100053514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v20;
  *(v8 + 520) = v19;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1A88();
  *(v8 + 544) = v9;
  v10 = *(v9 - 8);
  *(v8 + 552) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  v12 = *(*(sub_1000E0E08() - 8) + 64) + 15;
  *(v8 + 568) = swift_task_alloc();
  v13 = sub_1000E19F8();
  *(v8 + 576) = v13;
  v14 = *(v13 - 8);
  *(v8 + 584) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_1000536B4, v16, 0);
}

uint64_t sub_1000536B4()
{
  v97 = v0;
  v1 = *(v0 + 488);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v3 = *(v0 + 496);
  if (!v3)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v4;
  sub_1000E2A08();
  if (!*(v3 + 16) || (v5 = sub_10000B3E0(v0 + 120), (v6 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v3 + 56) + 32 * v5, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 496);
    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_1001231A0);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2678();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 496);
      v32 = *(v0 + 680);
      v33 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v33 = 136315394;
      v34 = sub_10003E4B0(v32);
      v36 = sub_100029C70(v34, v35, v95);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      if (v31)
      {
        *(v0 + 472) = v27;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v37 = sub_1000E2368();
        v39 = v38;
      }

      else
      {
        v39 = 0xE300000000000000;
        v37 = 7104878;
      }

      v40 = sub_100029C70(v37, v39, v95);

      *(v33 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "Received invalid request %s options %s.", v33, 0x16u);
      swift_arrayDestroy();
    }

    v42 = *(v0 + 504);
    v41 = *(v0 + 512);
    sub_100058DE4();
    v43 = swift_allocError();
    *v44 = 3;
    v42(0, 0, v43);

    goto LABEL_25;
  }

  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  *(v0 + 616) = v8;
  *(v0 + 624) = v7;

  v9 = sub_1000449DC(v8, v7, 0);

  if (v9)
  {
LABEL_7:
    *(v0 + 632) = v9;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v10, qword_1001231A0);

    v11 = sub_1000E1EE8();
    v12 = sub_1000E2698();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 680);
      v14 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_100029C70(v8, v7, v95);
      *(v14 + 12) = 2080;
      v15 = sub_10003E4B0(v13);
      v17 = sub_100029C70(v15, v16, v95);

      *(v14 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Received request %s.", v14, 0x16u);
      swift_arrayDestroy();
    }

    v18 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v18 + 16) && (v19 = *(v0 + 520), v20 = sub_10000B3E0(v0 + 200), (v21 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v20, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v22 = *(v0 + 592);
        v23 = *(v0 + 576);
        v24 = *(v0 + 568);
        v25 = *(v0 + 424);
        v26 = *(v0 + 432);
        *(v0 + 648) = v25;
        *(v0 + 656) = v26;
        v96 = 0;
        memset(v95, 0, sizeof(v95));
        sub_1000123E0(v25, v26);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F680, 255, &type metadata accessor for NCProtoStartLagunaSessionRequest);
        sub_1000E0E18();
        v94 = (*(v0 + 528) + **(v0 + 528));
        v89 = *(*(v0 + 528) + 4);
        v90 = swift_task_alloc();
        *(v0 + 664) = v90;
        *v90 = v0;
        v90[1] = sub_100054260;
        v91 = *(v0 + 592);
        v92 = *(v0 + 560);
        v93 = *(v0 + 536);

        return v94(v92, v91, v9);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v50 = swift_allocError();
    *v51 = 1;
    swift_willThrow();
    v52 = *(v0 + 640);
    v53 = *(v0 + 624);

    swift_errorRetain();
    v54 = sub_1000E1EE8();
    v55 = sub_1000E2678();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 624);
    if (v56)
    {
      v58 = *(v0 + 616);
      v59 = *(v0 + 680);
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v60 = 136315650;
      v62 = sub_100029C70(v58, v57, v95);

      *(v60 + 4) = v62;
      *(v60 + 12) = 2080;
      v63 = sub_10003E4B0(v59);
      v65 = sub_100029C70(v63, v64, v95);

      *(v60 + 14) = v65;
      *(v60 + 22) = 2112;
      swift_errorRetain();
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 24) = v66;
      *v61 = v66;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%s] Error handling request %s: %@.", v60, 0x20u);
      sub_1000033C8(v61, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v70 = *(v0 + 632);
    v71 = *(v0 + 608);
    v73 = *(v0 + 504);
    v72 = *(v0 + 512);
    swift_errorRetain();
    v73(0, 0, v50);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v67;
  sub_1000E2A08();
  if (*(v3 + 16) && (v68 = sub_10000B3E0(v0 + 160), (v69 & 1) != 0))
  {
    sub_1000153C0(*(v3 + 56) + 32 * v68, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v9 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v9)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v74 = sub_1000E1F08();
  sub_1000049D0(v74, qword_1001231A0);

  v75 = sub_1000E1EE8();
  v76 = sub_1000E2678();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = *(v0 + 680);
    v78 = swift_slowAlloc();
    *&v95[0] = swift_slowAlloc();
    *v78 = 136315394;
    v79 = sub_10003E4B0(v77);
    v81 = sub_100029C70(v79, v80, v95);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    *(v0 + 480) = v3;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v82 = sub_1000E2368();
    v84 = sub_100029C70(v82, v83, v95);

    *(v78 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v75, v76, "Received request %s from unrecognized device %s.", v78, 0x16u);
    swift_arrayDestroy();
  }

  v86 = *(v0 + 504);
  v85 = *(v0 + 512);
  sub_100058DE4();
  v87 = swift_allocError();
  *v88 = 3;
  v86(0, 0, v87);

LABEL_44:

LABEL_25:
  v45 = *(v0 + 592);
  v46 = *(v0 + 568);
  v47 = *(v0 + 560);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_100054260()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = *(v2 + 600);
  if (v0)
  {
    v6 = sub_10005A56C;
  }

  else
  {
    v6 = sub_10005438C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005438C()
{
  v66 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  sub_100058F28(&qword_1001201C0, 255, &type metadata accessor for NCProtoStartLagunaSessionResponse);
  v4 = sub_1000E0E28();
  if (v1)
  {
    v6 = *(v0 + 592);
    v7 = *(v0 + 584);
    v8 = *(v0 + 576);
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v12 = *(v0 + 640);
    v13 = *(v0 + 624);

    swift_errorRetain();
    v14 = sub_1000E1EE8();
    v15 = sub_1000E2678();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 624);
    if (v16)
    {
      v18 = *(v0 + 616);
      v19 = *(v0 + 680);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v20 = 136315650;
      v22 = sub_100029C70(v18, v17, v65);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      v23 = sub_10003E4B0(v19);
      v25 = sub_100029C70(v23, v24, v65);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v26;
      *v21 = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Error handling request %s: %@.", v20, 0x20u);
      sub_1000033C8(v21, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v40 = *(v0 + 632);
    v41 = *(v0 + 608);
    v43 = *(v0 + 504);
    v42 = *(v0 + 512);
    swift_errorRetain();
    v43(0, 0, v1);
  }

  else
  {
    v63 = v4;
    v64 = v5;
    v27 = *(v0 + 640);
    v28 = *(v0 + 624);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2698();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 624);
    if (v31)
    {
      v33 = *(v0 + 616);
      v34 = *(v0 + 680);
      v35 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v35 = 136315394;
      v36 = sub_100029C70(v33, v32, v65);

      *(v35 + 4) = v36;
      *(v35 + 12) = 2080;
      v37 = sub_10003E4B0(v34);
      v39 = sub_100029C70(v37, v38, v65);

      *(v35 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Returning response for %s.", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v44 = *(v0 + 608);
    v62 = *(v0 + 592);
    v45 = *(v0 + 584);
    v60 = *(v0 + 656);
    v61 = *(v0 + 576);
    v58 = *(v0 + 648);
    v59 = *(v0 + 560);
    v46 = *(v0 + 552);
    v56 = *(v0 + 632);
    v57 = *(v0 + 544);
    v48 = *(v0 + 504);
    v47 = *(v0 + 512);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v63;
    *(inited + 80) = v64;
    sub_1000123E0(v63, v64);
    v50 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v48(v50, 0, 0);

    sub_100006660(v63, v64);
    sub_100006660(v58, v60);
    (*(v46 + 8))(v59, v57);
    (*(v45 + 8))(v62, v61);
  }

  v51 = *(v0 + 592);
  v52 = *(v0 + 568);
  v53 = *(v0 + 560);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_100054940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v20;
  *(v8 + 520) = v19;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E19C8();
  *(v8 + 544) = v9;
  v10 = *(v9 - 8);
  *(v8 + 552) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  v12 = *(*(sub_1000E0E08() - 8) + 64) + 15;
  *(v8 + 568) = swift_task_alloc();
  v13 = sub_1000E1948();
  *(v8 + 576) = v13;
  v14 = *(v13 - 8);
  *(v8 + 584) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_100054AE0, v16, 0);
}

uint64_t sub_100054AE0()
{
  v97 = v0;
  v1 = *(v0 + 488);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v3 = *(v0 + 496);
  if (!v3)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v4;
  sub_1000E2A08();
  if (!*(v3 + 16) || (v5 = sub_10000B3E0(v0 + 120), (v6 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v3 + 56) + 32 * v5, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 496);
    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_1001231A0);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2678();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 496);
      v32 = *(v0 + 680);
      v33 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v33 = 136315394;
      v34 = sub_10003E4B0(v32);
      v36 = sub_100029C70(v34, v35, v95);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      if (v31)
      {
        *(v0 + 472) = v27;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v37 = sub_1000E2368();
        v39 = v38;
      }

      else
      {
        v39 = 0xE300000000000000;
        v37 = 7104878;
      }

      v40 = sub_100029C70(v37, v39, v95);

      *(v33 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "Received invalid request %s options %s.", v33, 0x16u);
      swift_arrayDestroy();
    }

    v42 = *(v0 + 504);
    v41 = *(v0 + 512);
    sub_100058DE4();
    v43 = swift_allocError();
    *v44 = 3;
    v42(0, 0, v43);

    goto LABEL_25;
  }

  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  *(v0 + 616) = v8;
  *(v0 + 624) = v7;

  v9 = sub_1000449DC(v8, v7, 0);

  if (v9)
  {
LABEL_7:
    *(v0 + 632) = v9;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v10, qword_1001231A0);

    v11 = sub_1000E1EE8();
    v12 = sub_1000E2698();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 680);
      v14 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_100029C70(v8, v7, v95);
      *(v14 + 12) = 2080;
      v15 = sub_10003E4B0(v13);
      v17 = sub_100029C70(v15, v16, v95);

      *(v14 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Received request %s.", v14, 0x16u);
      swift_arrayDestroy();
    }

    v18 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v18 + 16) && (v19 = *(v0 + 520), v20 = sub_10000B3E0(v0 + 200), (v21 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v20, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v22 = *(v0 + 592);
        v23 = *(v0 + 576);
        v24 = *(v0 + 568);
        v25 = *(v0 + 424);
        v26 = *(v0 + 432);
        *(v0 + 648) = v25;
        *(v0 + 656) = v26;
        v96 = 0;
        memset(v95, 0, sizeof(v95));
        sub_1000123E0(v25, v26);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F688, 255, &type metadata accessor for NCProtoStartConversationRequest);
        sub_1000E0E18();
        v94 = (*(v0 + 528) + **(v0 + 528));
        v89 = *(*(v0 + 528) + 4);
        v90 = swift_task_alloc();
        *(v0 + 664) = v90;
        *v90 = v0;
        v90[1] = sub_10005568C;
        v91 = *(v0 + 592);
        v92 = *(v0 + 560);
        v93 = *(v0 + 536);

        return v94(v92, v91, v9);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v50 = swift_allocError();
    *v51 = 1;
    swift_willThrow();
    v52 = *(v0 + 640);
    v53 = *(v0 + 624);

    swift_errorRetain();
    v54 = sub_1000E1EE8();
    v55 = sub_1000E2678();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 624);
    if (v56)
    {
      v58 = *(v0 + 616);
      v59 = *(v0 + 680);
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v60 = 136315650;
      v62 = sub_100029C70(v58, v57, v95);

      *(v60 + 4) = v62;
      *(v60 + 12) = 2080;
      v63 = sub_10003E4B0(v59);
      v65 = sub_100029C70(v63, v64, v95);

      *(v60 + 14) = v65;
      *(v60 + 22) = 2112;
      swift_errorRetain();
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 24) = v66;
      *v61 = v66;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%s] Error handling request %s: %@.", v60, 0x20u);
      sub_1000033C8(v61, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v70 = *(v0 + 632);
    v71 = *(v0 + 608);
    v73 = *(v0 + 504);
    v72 = *(v0 + 512);
    swift_errorRetain();
    v73(0, 0, v50);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v67;
  sub_1000E2A08();
  if (*(v3 + 16) && (v68 = sub_10000B3E0(v0 + 160), (v69 & 1) != 0))
  {
    sub_1000153C0(*(v3 + 56) + 32 * v68, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v9 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v9)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v74 = sub_1000E1F08();
  sub_1000049D0(v74, qword_1001231A0);

  v75 = sub_1000E1EE8();
  v76 = sub_1000E2678();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = *(v0 + 680);
    v78 = swift_slowAlloc();
    *&v95[0] = swift_slowAlloc();
    *v78 = 136315394;
    v79 = sub_10003E4B0(v77);
    v81 = sub_100029C70(v79, v80, v95);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    *(v0 + 480) = v3;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v82 = sub_1000E2368();
    v84 = sub_100029C70(v82, v83, v95);

    *(v78 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v75, v76, "Received request %s from unrecognized device %s.", v78, 0x16u);
    swift_arrayDestroy();
  }

  v86 = *(v0 + 504);
  v85 = *(v0 + 512);
  sub_100058DE4();
  v87 = swift_allocError();
  *v88 = 3;
  v86(0, 0, v87);

LABEL_44:

LABEL_25:
  v45 = *(v0 + 592);
  v46 = *(v0 + 568);
  v47 = *(v0 + 560);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_10005568C()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = *(v2 + 600);
  if (v0)
  {
    v6 = sub_10005A56C;
  }

  else
  {
    v6 = sub_1000557B8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000557B8()
{
  v66 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  sub_100058F28(&qword_10011F690, 255, &type metadata accessor for NCProtoStartConversationResponse);
  v4 = sub_1000E0E28();
  if (v1)
  {
    v6 = *(v0 + 592);
    v7 = *(v0 + 584);
    v8 = *(v0 + 576);
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v12 = *(v0 + 640);
    v13 = *(v0 + 624);

    swift_errorRetain();
    v14 = sub_1000E1EE8();
    v15 = sub_1000E2678();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 624);
    if (v16)
    {
      v18 = *(v0 + 616);
      v19 = *(v0 + 680);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v20 = 136315650;
      v22 = sub_100029C70(v18, v17, v65);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      v23 = sub_10003E4B0(v19);
      v25 = sub_100029C70(v23, v24, v65);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v26;
      *v21 = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Error handling request %s: %@.", v20, 0x20u);
      sub_1000033C8(v21, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v40 = *(v0 + 632);
    v41 = *(v0 + 608);
    v43 = *(v0 + 504);
    v42 = *(v0 + 512);
    swift_errorRetain();
    v43(0, 0, v1);
  }

  else
  {
    v63 = v4;
    v64 = v5;
    v27 = *(v0 + 640);
    v28 = *(v0 + 624);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2698();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 624);
    if (v31)
    {
      v33 = *(v0 + 616);
      v34 = *(v0 + 680);
      v35 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v35 = 136315394;
      v36 = sub_100029C70(v33, v32, v65);

      *(v35 + 4) = v36;
      *(v35 + 12) = 2080;
      v37 = sub_10003E4B0(v34);
      v39 = sub_100029C70(v37, v38, v65);

      *(v35 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Returning response for %s.", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v44 = *(v0 + 608);
    v62 = *(v0 + 592);
    v45 = *(v0 + 584);
    v60 = *(v0 + 656);
    v61 = *(v0 + 576);
    v58 = *(v0 + 648);
    v59 = *(v0 + 560);
    v46 = *(v0 + 552);
    v56 = *(v0 + 632);
    v57 = *(v0 + 544);
    v48 = *(v0 + 504);
    v47 = *(v0 + 512);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v63;
    *(inited + 80) = v64;
    sub_1000123E0(v63, v64);
    v50 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v48(v50, 0, 0);

    sub_100006660(v63, v64);
    sub_100006660(v58, v60);
    (*(v46 + 8))(v59, v57);
    (*(v45 + 8))(v62, v61);
  }

  v51 = *(v0 + 592);
  v52 = *(v0 + 568);
  v53 = *(v0 + 560);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_100055D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v20;
  *(v8 + 520) = v19;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1398();
  *(v8 + 544) = v9;
  v10 = *(v9 - 8);
  *(v8 + 552) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  v12 = *(*(sub_1000E0E08() - 8) + 64) + 15;
  *(v8 + 568) = swift_task_alloc();
  v13 = sub_1000E1338();
  *(v8 + 576) = v13;
  v14 = *(v13 - 8);
  *(v8 + 584) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_100055F0C, v16, 0);
}

uint64_t sub_100055F0C()
{
  v97 = v0;
  v1 = *(v0 + 488);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v3 = *(v0 + 496);
  if (!v3)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v4;
  sub_1000E2A08();
  if (!*(v3 + 16) || (v5 = sub_10000B3E0(v0 + 120), (v6 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v3 + 56) + 32 * v5, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 496);
    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_1001231A0);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2678();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 496);
      v32 = *(v0 + 680);
      v33 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v33 = 136315394;
      v34 = sub_10003E4B0(v32);
      v36 = sub_100029C70(v34, v35, v95);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      if (v31)
      {
        *(v0 + 472) = v27;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v37 = sub_1000E2368();
        v39 = v38;
      }

      else
      {
        v39 = 0xE300000000000000;
        v37 = 7104878;
      }

      v40 = sub_100029C70(v37, v39, v95);

      *(v33 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "Received invalid request %s options %s.", v33, 0x16u);
      swift_arrayDestroy();
    }

    v42 = *(v0 + 504);
    v41 = *(v0 + 512);
    sub_100058DE4();
    v43 = swift_allocError();
    *v44 = 3;
    v42(0, 0, v43);

    goto LABEL_25;
  }

  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  *(v0 + 616) = v8;
  *(v0 + 624) = v7;

  v9 = sub_1000449DC(v8, v7, 0);

  if (v9)
  {
LABEL_7:
    *(v0 + 632) = v9;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v10, qword_1001231A0);

    v11 = sub_1000E1EE8();
    v12 = sub_1000E2698();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 680);
      v14 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_100029C70(v8, v7, v95);
      *(v14 + 12) = 2080;
      v15 = sub_10003E4B0(v13);
      v17 = sub_100029C70(v15, v16, v95);

      *(v14 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Received request %s.", v14, 0x16u);
      swift_arrayDestroy();
    }

    v18 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v18 + 16) && (v19 = *(v0 + 520), v20 = sub_10000B3E0(v0 + 200), (v21 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v20, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v22 = *(v0 + 592);
        v23 = *(v0 + 576);
        v24 = *(v0 + 568);
        v25 = *(v0 + 424);
        v26 = *(v0 + 432);
        *(v0 + 648) = v25;
        *(v0 + 656) = v26;
        v96 = 0;
        memset(v95, 0, sizeof(v95));
        sub_1000123E0(v25, v26);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F698, 255, &type metadata accessor for NCProtoAddMemberRequest);
        sub_1000E0E18();
        v94 = (*(v0 + 528) + **(v0 + 528));
        v89 = *(*(v0 + 528) + 4);
        v90 = swift_task_alloc();
        *(v0 + 664) = v90;
        *v90 = v0;
        v90[1] = sub_100056AB8;
        v91 = *(v0 + 592);
        v92 = *(v0 + 560);
        v93 = *(v0 + 536);

        return v94(v92, v91, v9);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v50 = swift_allocError();
    *v51 = 1;
    swift_willThrow();
    v52 = *(v0 + 640);
    v53 = *(v0 + 624);

    swift_errorRetain();
    v54 = sub_1000E1EE8();
    v55 = sub_1000E2678();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 624);
    if (v56)
    {
      v58 = *(v0 + 616);
      v59 = *(v0 + 680);
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v95[0] = swift_slowAlloc();
      *v60 = 136315650;
      v62 = sub_100029C70(v58, v57, v95);

      *(v60 + 4) = v62;
      *(v60 + 12) = 2080;
      v63 = sub_10003E4B0(v59);
      v65 = sub_100029C70(v63, v64, v95);

      *(v60 + 14) = v65;
      *(v60 + 22) = 2112;
      swift_errorRetain();
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 24) = v66;
      *v61 = v66;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%s] Error handling request %s: %@.", v60, 0x20u);
      sub_1000033C8(v61, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v70 = *(v0 + 632);
    v71 = *(v0 + 608);
    v73 = *(v0 + 504);
    v72 = *(v0 + 512);
    swift_errorRetain();
    v73(0, 0, v50);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v67;
  sub_1000E2A08();
  if (*(v3 + 16) && (v68 = sub_10000B3E0(v0 + 160), (v69 & 1) != 0))
  {
    sub_1000153C0(*(v3 + 56) + 32 * v68, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v9 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v9)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v74 = sub_1000E1F08();
  sub_1000049D0(v74, qword_1001231A0);

  v75 = sub_1000E1EE8();
  v76 = sub_1000E2678();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = *(v0 + 680);
    v78 = swift_slowAlloc();
    *&v95[0] = swift_slowAlloc();
    *v78 = 136315394;
    v79 = sub_10003E4B0(v77);
    v81 = sub_100029C70(v79, v80, v95);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    *(v0 + 480) = v3;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v82 = sub_1000E2368();
    v84 = sub_100029C70(v82, v83, v95);

    *(v78 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v75, v76, "Received request %s from unrecognized device %s.", v78, 0x16u);
    swift_arrayDestroy();
  }

  v86 = *(v0 + 504);
  v85 = *(v0 + 512);
  sub_100058DE4();
  v87 = swift_allocError();
  *v88 = 3;
  v86(0, 0, v87);

LABEL_44:

LABEL_25:
  v45 = *(v0 + 592);
  v46 = *(v0 + 568);
  v47 = *(v0 + 560);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_100056AB8()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = *(v2 + 600);
  if (v0)
  {
    v6 = sub_100057198;
  }

  else
  {
    v6 = sub_100056BE4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100056BE4()
{
  v66 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  sub_100058F28(&qword_10011FC90, 255, &type metadata accessor for NCProtoAddMemberResponse);
  v4 = sub_1000E0E28();
  if (v1)
  {
    v6 = *(v0 + 592);
    v7 = *(v0 + 584);
    v8 = *(v0 + 576);
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v12 = *(v0 + 640);
    v13 = *(v0 + 624);

    swift_errorRetain();
    v14 = sub_1000E1EE8();
    v15 = sub_1000E2678();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 624);
    if (v16)
    {
      v18 = *(v0 + 616);
      v19 = *(v0 + 680);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v20 = 136315650;
      v22 = sub_100029C70(v18, v17, v65);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      v23 = sub_10003E4B0(v19);
      v25 = sub_100029C70(v23, v24, v65);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v26;
      *v21 = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Error handling request %s: %@.", v20, 0x20u);
      sub_1000033C8(v21, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v40 = *(v0 + 632);
    v41 = *(v0 + 608);
    v43 = *(v0 + 504);
    v42 = *(v0 + 512);
    swift_errorRetain();
    v43(0, 0, v1);
  }

  else
  {
    v63 = v4;
    v64 = v5;
    v27 = *(v0 + 640);
    v28 = *(v0 + 624);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2698();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 624);
    if (v31)
    {
      v33 = *(v0 + 616);
      v34 = *(v0 + 680);
      v35 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v35 = 136315394;
      v36 = sub_100029C70(v33, v32, v65);

      *(v35 + 4) = v36;
      *(v35 + 12) = 2080;
      v37 = sub_10003E4B0(v34);
      v39 = sub_100029C70(v37, v38, v65);

      *(v35 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Returning response for %s.", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v44 = *(v0 + 608);
    v62 = *(v0 + 592);
    v45 = *(v0 + 584);
    v60 = *(v0 + 656);
    v61 = *(v0 + 576);
    v58 = *(v0 + 648);
    v59 = *(v0 + 560);
    v46 = *(v0 + 552);
    v56 = *(v0 + 632);
    v57 = *(v0 + 544);
    v48 = *(v0 + 504);
    v47 = *(v0 + 512);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v63;
    *(inited + 80) = v64;
    sub_1000123E0(v63, v64);
    v50 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v48(v50, 0, 0);

    sub_100006660(v63, v64);
    sub_100006660(v58, v60);
    (*(v46 + 8))(v59, v57);
    (*(v45 + 8))(v62, v61);
  }

  v51 = *(v0 + 592);
  v52 = *(v0 + 568);
  v53 = *(v0 + 560);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_100057198()
{
  v30 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  sub_100006660(*(v0 + 648), *(v0 + 656));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 672);
  v5 = *(v0 + 640);
  v6 = *(v0 + 624);

  swift_errorRetain();
  v7 = sub_1000E1EE8();
  v8 = sub_1000E2678();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 624);
  if (v9)
  {
    v11 = *(v0 + 616);
    v12 = *(v0 + 680);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 136315650;
    v15 = sub_100029C70(v11, v10, &v29);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    v16 = sub_10003E4B0(v12);
    v18 = sub_100029C70(v16, v17, &v29);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v19;
    *v14 = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s] Error handling request %s: %@.", v13, 0x20u);
    sub_1000033C8(v14, &unk_10011EAC0, &unk_1000F0E60);

    swift_arrayDestroy();
  }

  else
  {
  }

  v20 = *(v0 + 632);
  v21 = *(v0 + 608);
  v23 = *(v0 + 504);
  v22 = *(v0 + 512);
  swift_errorRetain();
  v23(0, 0, v4);

  v24 = *(v0 + 592);
  v25 = *(v0 + 568);
  v26 = *(v0 + 560);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100057444()
{
  sub_10002B7A0(v0, v3);
  if (v5 == 1)
  {
    sub_10002B7FC(v3);
    return 0x507463657269642ELL;
  }

  else
  {
    sub_1000E23A8(v4);

    v6._countAndFlagsBits = 41;
    v6._object = 0xE100000000000000;
    sub_1000E23A8(v6);
    v1 = 0x286465726168732ELL;
    sub_10000E9DC(v3);
  }

  return v1;
}

uint64_t sub_100057500(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v4 = qword_1001230E0;
  v3[8] = qword_1001230E0;

  return _swift_task_switch(sub_1000575A0, v4, 0);
}

uint64_t sub_1000575A0()
{
  v1 = v0[6];
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[5];
    *v3 = Strong;
    *(v3 + 56) = 1;
LABEL_3:
    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[7];
    v34 = v0;
    swift_beginAccess();
    v8 = v6[10];
    v7 = v6[11];
    v9 = sub_1000036AC(v6 + 7, v8);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64) + 15;
    v12 = swift_task_alloc();
    (*(v10 + 16))(v12, v9, v8);
    v13 = (*(v7 + 56))(v8, v7);
    (*(v10 + 8))(v12, v8);
    if (v13 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000E2B68())
    {
      v15 = 0;
      v37 = v13 & 0xC000000000000001;
      v35 = v34[6];
      v36 = v13 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v37)
        {
          v16 = sub_1000E2A98();
        }

        else
        {
          if (v15 >= *(v36 + 16))
          {
            goto LABEL_26;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v20 = *(v35 + 16);
        v19 = *(v35 + 24);
        v21 = [v16 idsDeviceIdentifier];
        if (v21)
        {
          v22 = v21;
          v23 = v13;
          v24 = i;
          v25 = sub_1000E2338();
          v27 = v26;

          if (v20 == v25 && v19 == v27)
          {

LABEL_24:

            v0 = v34;
            v30 = v34[7];
            v31 = v34[5];

            sub_10002B4BC(v30 + 96, v31);
            *(v31 + 40) = v20;
            *(v31 + 48) = v19;
            *(v31 + 56) = 0;

            goto LABEL_3;
          }

          v29 = sub_1000E2C68();

          i = v24;
          v13 = v23;
          if (v29)
          {
            goto LABEL_24;
          }
        }

        else
        {
        }

        ++v15;
        if (v18 == i)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_28:

    v32 = swift_task_alloc();
    v34[9] = v32;
    *v32 = v34;
    v32[1] = sub_100057918;
    v33 = v34[6];

    return sub_100014704();
  }
}

uint64_t sub_100057918(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 64);
    *(v4 + 80) = a1;

    return _swift_task_switch(sub_100057A64, v9, 0);
  }
}

uint64_t sub_100057A64()
{
  v1 = *(v0 + 40);
  *v1 = *(v0 + 80);
  *(v1 + 56) = 1;
  return (*(v0 + 8))();
}

void *sub_100057AFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32 = sub_10000CAAC(0, &qword_10011E7C8, RPCompanionLinkClient_ptr);
  v33 = &off_100116AD8;
  v30[4] = &off_100116AD8;
  v31[0] = a1;
  v30[3] = v32;
  v30[0] = a2;
  v29[3] = sub_10000CAAC(0, &qword_10011F5D0, RPRemoteDisplayDiscovery_ptr);
  v29[4] = &off_100116BB0;
  v29[0] = a3;
  a4[3] = 0;
  swift_unknownObjectWeakInit();
  v8 = sub_10000ADE4(&qword_10011F5D8, &unk_1000F1B70);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  a4[4] = sub_1000E1FD8();
  v11 = *(v8 + 48);
  v12 = *(v8 + 52);
  swift_allocObject();
  a4[5] = sub_1000E1FD8();
  a4[6] = sub_10000B87C(&_swiftEmptyArrayStorage);
  swift_weakInit();
  a4[23] = 0;
  sub_10002B4BC(v31, (a4 + 7));
  sub_10002B4BC(v30, (a4 + 12));
  sub_10002B4BC(v29, (a4 + 17));
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v15 = a4[10];
  v16 = a4[11];
  sub_1000037BC((a4 + 7), v15);
  v17 = *(v16 + 40);

  v17(0x180000002804, v15, v16);
  v18 = a4[10];
  v19 = a4[11];
  sub_1000037BC((a4 + 7), v18);
  v20 = *(v19 + 96);

  v20(sub_100057E54, v13, v18, v19);
  v21 = a4[10];
  v22 = a4[11];
  sub_1000037BC((a4 + 7), v21);
  v23 = *(v22 + 120);

  v23(sub_100057EA0, v14, v21, v22);
  swift_endAccess();
  v24 = swift_allocObject();
  swift_weakInit();

  swift_beginAccess();
  v25 = a4[20];
  v26 = a4[21];
  sub_1000037BC((a4 + 17), v25);
  v27 = *(v26 + 24);

  v27(sub_100057EEC, v24, v25, v26);
  swift_endAccess();

  sub_10000E9DC(v29);
  sub_10000E9DC(v30);
  sub_10000E9DC(v31);

  return a4;
}

uint64_t sub_100057EF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10003FCB4(a1, v4, v5, v6, v7);
}

uint64_t sub_100057FB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10003F9E4(a1, v4, v5, v7, v6);
}

uint64_t sub_100058078(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10003F70C(a1, v4, v5, v7, v6);
}

uint64_t sub_100058138(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10003F328(a1, v4, v5, v7, v6);
}

uint64_t sub_1000581F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_100042680(a1, a2, a3, v3);
}

uint64_t sub_1000582F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_100042A8C(a1, a2, a3, v3);
}

uint64_t sub_1000583F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_100042DD0(a1, a2, a3, v3);
}

uint64_t sub_1000584EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_10004305C(a1, a2, a3, v3);
}

uint64_t sub_1000585E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_100043274(a1, a2, a3, v3);
}

uint64_t sub_1000586E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_100043500(a1, a2, a3, v3);
}

uint64_t sub_1000587E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_10004378C(a1, a2, a3, v3);
}

uint64_t sub_1000588DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_1000439A4(a1, a2, a3, v3);
}

uint64_t sub_1000589D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_100043BBC(a1, a2, a3, v3);
}

uint64_t sub_100058AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_100043DD4(a1, a2, a3, v3);
}

uint64_t sub_100058BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_100044060(a1, a2, a3, v3);
}

uint64_t sub_100058D64()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100058DE4()
{
  result = qword_10011F5E8;
  if (!qword_10011F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F5E8);
  }

  return result;
}

uint64_t sub_100058E38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002D64;

  return sub_100046CC8(a1, v4, v5, v6, v7, v11, v8, v9);
}

uint64_t sub_100058F28(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100058F70(uint64_t a1)
{
  v4 = *(sub_1000E17C8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002D64;

  return sub_10009DC80(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1000590A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002D64;

  return sub_100047920(a1, v4, v5, v6, v7, v11, v8, v9);
}

uint64_t sub_100059190(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v2);
  v8 = *(v1 + v6);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_100059278(uint64_t a1)
{
  v4 = *(sub_1000E17A8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002D64;

  return sub_10009DB5C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000593A8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100059400(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002E7C;

  return sub_100048578(a1, v4, v5, v6, v7, v11, v8, v9);
}

uint64_t sub_1000594F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10009D924(a1, v4, v5, v7, v6);
}

uint64_t sub_1000595B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002D64;

  return sub_1000493B4(a1, v4, v5, v6, v7, v11, v8, v9);
}

uint64_t sub_1000596B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002D64;

  return sub_10004A7E0(a1, v4, v5, v6, v7, v11, v8, v9);
}

uint64_t sub_1000597B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002D64;

  return sub_10004BC0C(a1, v4, v5, v6, v7, v11, v8, v9);
}

uint64_t sub_1000598B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002D64;

  return sub_10004D038(a1, v4, v5, v6, v7, v11, v8, v9);
}

uint64_t sub_1000599B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002D64;

  return sub_10004E464(a1, v4, v5, v6, v7, v11, v8, v9);
}

uint64_t sub_100059AB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002D64;

  return sub_10004F890(a1, v4, v5, v6, v7, v11, v8, v9);
}

uint64_t sub_100059BB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002D64;

  return sub_100050CBC(a1, v4, v5, v6, v7, v11, v8, v9);
}

uint64_t sub_100059CB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002D64;

  return sub_1000520E8(a1, v4, v5, v6, v7, v11, v8, v9);
}

uint64_t sub_100059DB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002D64;

  return sub_100053514(a1, v4, v5, v6, v7, v11, v8, v9);
}

uint64_t sub_100059EB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002D64;

  return sub_100054940(a1, v4, v5, v6, v7, v11, v8, v9);
}

uint64_t sub_100059FB0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10005A010(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002D64;

  return sub_100055D6C(a1, v4, v5, v6, v7, v11, v8, v9);
}

uint64_t sub_10005A110(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002E7C;

  return sub_1000407A4(a1, v4, v5, v6);
}

uint64_t sub_10005A288(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10003EF68(a1, v4, v5, v7, v6);
}

uint64_t sub_10005A348(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10003EE70(a1, v4, v5, v7, v6);
}

__n128 sub_10005A424(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10005A440(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005A47C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_10005A4CC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

unint64_t sub_10005A50C()
{
  result = qword_10011F6A0;
  if (!qword_10011F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F6A0);
  }

  return result;
}

id sub_10005A574()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    qword_10011F6A8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005A5B8()
{
  if (qword_10011DC28 != -1)
  {
    swift_once();
  }

  result = [qword_10011F6A8 validNetworkReachable];
  if ((result & 1) == 0)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v1 = sub_1000E1F08();
    sub_1000049D0(v1, qword_100123128);
    v2 = sub_1000E1EE8();
    v3 = sub_1000E2678();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unable to handle request due to network being unreachable.", v4, 2u);
    }

    TUMakeNeighborhoodConduitError();
    return swift_willThrow();
  }

  return result;
}

void *sub_10005A700(uint64_t a1)
{
  v25 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1000E2968();
    result = &_swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v30 = &_swiftEmptyArrayStorage;
    sub_1000E2AE8();
    result = sub_1000E2908();
    v27 = result;
    v28 = v4;
    v29 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v30 = &_swiftEmptyArrayStorage;
  sub_1000E2AE8();
  v5 = -1 << *(a1 + 32);
  result = sub_1000E28D8();
  v6 = *(a1 + 36);
  v27 = result;
  v28 = v6;
  v29 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v27;
    v10 = v28;
    v12 = v29;
    sub_1000D4898(v27, v28, v29, a1);
    v14 = v13;
    [objc_allocWithZone(TUConversationMember) initWithHandle:v13];

    sub_1000E2AC8();
    v15 = v30[2];
    sub_1000E2AF8();
    sub_1000E2B08();
    result = sub_1000E2AD8();
    if (v25)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_1000E2928())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_10000ADE4(&qword_10011FC28, &qword_1000F28B0);
      v8 = sub_1000E2618();
      sub_1000E29D8();
      result = v8(v26, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_10000A848(v27, v28, v29);
        return v30;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v16 = 1 << *(a1 + 32);
      if (v11 >= v16)
      {
        goto LABEL_32;
      }

      v17 = v11 >> 6;
      v18 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v18 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v19 = v18 & (-2 << (v11 & 0x3F));
      if (v19)
      {
        v16 = __clz(__rbit64(v19)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v17 << 6;
        v21 = v17 + 1;
        v22 = (a1 + 64 + 8 * v17);
        while (v21 < (v16 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_10000A848(v11, v10, 0);
            v16 = __clz(__rbit64(v23)) + v20;
            goto LABEL_27;
          }
        }

        result = sub_10000A848(v11, v10, 0);
      }

LABEL_27:
      v27 = v16;
      v28 = v10;
      v29 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void *sub_10005AA20(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1000E2AE8();
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = sub_1000E28D8();
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
      v11 = *(*(v1 + 56) + 8 * v6);

      sub_100012CD8();

      sub_1000E2AC8();
      v12 = _swiftEmptyArrayStorage[2];
      sub_1000E2AF8();
      v1 = v21;
      sub_1000E2B08();
      result = sub_1000E2AD8();
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
            result = sub_10000A848(v6, v8, 0);
            v9 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_10000A848(v6, v8, 0);
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
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

void sub_10005AC44(uint64_t a1)
{
  v1 = a1;
  v33 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1000E2968();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v39 = &_swiftEmptyArrayStorage;
    sub_10002A228(0, v2 & ~(v2 >> 63), 0);
    v34 = &_swiftEmptyArrayStorage;
    if (v33)
    {
      v3 = sub_1000E2908();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_1000E28D8();
      v4 = *(v1 + 36);
    }

    v36 = v3;
    v37 = v4;
    v38 = v33 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v31 = v1 + 56;
      v30 = v1 + 64;
      v32 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v10 = v36;
        v9 = v37;
        v11 = v38;
        v12 = v1;
        sub_1000D4AEC(v36, v37, v38, v1);
        v14 = v13;
        v15 = [v13 plistRepresentation];
        v16 = sub_1000E22B8();

        v17 = v34;
        v39 = v34;
        v19 = v34[2];
        v18 = v34[3];
        if (v19 >= v18 >> 1)
        {
          sub_10002A228((v18 > 1), v19 + 1, 1);
          v17 = v39;
        }

        v17[2] = v19 + 1;
        v17[v19 + 4] = v16;
        v34 = v17;
        if (v33)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          v1 = v12;
          if (sub_1000E2928())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v32;
          sub_10000ADE4(&qword_10011F9E8, &qword_1000F24D0);
          v7 = sub_1000E2618();
          sub_1000E29D8();
          v7(v35, 0);
          if (v6 == v32)
          {
LABEL_32:
            sub_10000A848(v36, v37, v38);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v12;
          v20 = 1 << *(v12 + 32);
          if (v10 >= v20)
          {
            goto LABEL_36;
          }

          v21 = v10 >> 6;
          v22 = *(v31 + 8 * (v10 >> 6));
          if (((v22 >> v10) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v12 + 36) != v9)
          {
            goto LABEL_38;
          }

          v23 = v22 & (-2 << (v10 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v32;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v30 + 8 * v21);
            v2 = v32;
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_10000A848(v10, v9, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_31;
              }
            }

            sub_10000A848(v10, v9, 0);
          }

LABEL_31:
          v29 = *(v1 + 36);
          v36 = v20;
          v37 = v29;
          v38 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_10005AFC8(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1000E2918();
    sub_10000CAAC(0, &qword_10011F948, TUConversationParticipant_ptr);
    sub_10000EA70(&unk_10011F950, &qword_10011F948, TUConversationParticipant_ptr);
    sub_1000E2628();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_10000A840();
      return;
    }

    while (1)
    {
      sub_1000D2BF0(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1000E29A8())
      {
        sub_10000CAAC(0, &qword_10011F948, TUConversationParticipant_ptr);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_10005B1DC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1000E2908();
    v5 = v4;
    v6 = sub_1000E29C8();
    v8 = v7;
    v9 = sub_1000E2938();
    sub_10000A848(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_10000A848(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_1000E28D8();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1000D4B00(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_10000A848(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_10005B2F8(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = type metadata accessor for HandoffState(0);
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v7 = type metadata accessor for HandoffInfo(0);
  v3[21] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v9 = sub_1000E0D68();
  v3[24] = v9;
  v10 = *(v9 - 8);
  v3[25] = v10;
  v3[26] = *(v10 + 64);
  v3[27] = swift_task_alloc();
  v11 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v12 = *(*(sub_10000ADE4(&qword_10011F888, &qword_1000F22B0) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v13 = qword_1001230F0;
  v3[33] = qword_1001230F0;

  return _swift_task_switch(sub_10005B534, v13, 0);
}

uint64_t sub_10005B534()
{
  v80 = v0;
  v1 = v0[32];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];
  v5 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  v0[34] = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v4 + v5, v1, &qword_10011F888, &qword_1000F22B0);
  v6 = *(v3 + 48);
  LODWORD(v2) = v6(v1, 1, v2);
  sub_1000033C8(v1, &qword_10011F888, &qword_1000F22B0);
  if (v2 == 1)
  {
    buf = v5;
    v76 = v4;
    v7 = v0[33];
    v9 = v0[27];
    v8 = v0[28];
    v71 = v8;
    v11 = v0[25];
    v10 = v0[26];
    v12 = v0[24];
    v13 = v0[15];
    v14 = v0[16];
    v15 = v0[14];
    v16 = sub_1000E2538();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    (*(v11 + 16))(v9, v13, v12);
    v18 = sub_1000A75DC(&qword_100120020, v17, type metadata accessor for ConduitActor);
    v19 = (*(v11 + 80) + 48) & ~*(v11 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = v7;
    *(v20 + 3) = v18;
    *(v20 + 4) = v14;
    *(v20 + 5) = v15;
    (*(v11 + 32))(&v20[v19], v9, v12);
    v21 = v14;
    v22 = v15;

    v23 = sub_100022678(0, 0, v71, &unk_1000F2A00, v20);
    v0[35] = v23;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v24 = v0[14];
    v25 = sub_1000E1F08();
    v0[36] = sub_1000049D0(v25, qword_100123128);
    v26 = v24;
    v27 = sub_1000E1EE8();
    v28 = sub_1000E2698();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v0[14];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v29;
      *v31 = v29;
      v32 = v29;
      _os_log_impl(&_mh_execute_header, v27, v28, "[Handoff][Push] Starting push task with %@.", v30, 0xCu);
      sub_1000033C8(v31, &unk_10011EAC0, &unk_1000F0E60);
    }

    v33 = v0[31];
    v34 = v0[17];
    v35 = v0[18];
    v36 = v0[16];

    *v33 = v23;
    swift_storeEnumTagMultiPayload();
    v37 = *(v35 + 56);
    v0[37] = v37;
    v0[38] = (v35 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v37(v33, 0, 1, v34);
    swift_beginAccess();

    sub_1000A884C(v33, &buf[v76]);
    swift_endAccess();
    sub_100061F64();
    sub_1000033C8(v33, &qword_10011F888, &qword_1000F22B0);
    v38 = async function pointer to Task.value.getter[1];
    v39 = swift_task_alloc();
    v0[39] = v39;
    v40 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
    *v39 = v0;
    v39[1] = sub_10005BCA0;
    v41 = v0[23];
    v42 = v0[21];

    return Task.value.getter(v41, v23, v42, v40, &protocol self-conformance witness table for Error);
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v43 = v0[16];
    v44 = sub_1000E1F08();
    sub_1000049D0(v44, qword_100123128);
    v45 = v43;
    v46 = sub_1000E1EE8();
    v47 = sub_1000E2698();

    if (os_log_type_enabled(v46, v47))
    {
      v77 = v47;
      v48 = v5;
      v50 = v0[29];
      v49 = v0[30];
      v70 = v0[17];
      v51 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v79 = v72;
      *v51 = 136315138;
      sub_10000CB64(v4 + v48, v49, &qword_10011F888, &qword_1000F22B0);
      sub_10000CB64(v49, v50, &qword_10011F888, &qword_1000F22B0);
      v52 = v6(v50, 1, v70);
      v53 = v0[29];
      if (v52 == 1)
      {
        sub_1000033C8(v53, &qword_10011F888, &qword_1000F22B0);
        v54 = 0xE300000000000000;
        v55 = 7104878;
      }

      else
      {
        v56 = v0[19];
        v57 = v0[20];
        v58 = v0[17];
        sub_1000A877C(v53, v57, type metadata accessor for HandoffState);
        sub_1000A87E4(v57, v56, type metadata accessor for HandoffState);
        v55 = sub_1000E2368();
        v54 = v59;
        sub_1000AD5EC(v57, type metadata accessor for HandoffState);
      }

      sub_1000033C8(v0[30], &qword_10011F888, &qword_1000F22B0);
      v60 = sub_100029C70(v55, v54, &v79);

      *(v51 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v46, v77, "[Handoff][Push] Unable to push because we're already in a session: %s", v51, 0xCu);
      sub_10000E9DC(v72);
    }

    TUMakeNeighborhoodConduitError();
    v62 = v0[31];
    v61 = v0[32];
    v64 = v0[29];
    v63 = v0[30];
    v66 = v0[27];
    v65 = v0[28];
    v67 = v0[23];
    v73 = v0[22];
    bufa = v0[20];
    v78 = v0[19];
    swift_willThrow();

    v68 = v0[1];

    return v68();
  }
}

uint64_t sub_10005BCA0()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 264);
  if (v0)
  {
    v6 = sub_10005C0AC;
  }

  else
  {
    v6 = sub_10005BDCC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005BDCC()
{
  v30 = v0;
  v1 = v0[36];
  sub_1000A87E4(v0[23], v0[22], type metadata accessor for HandoffInfo);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[22];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315138;
    v8 = sub_1000DDC88();
    v10 = v9;
    sub_1000AD5EC(v5, type metadata accessor for HandoffInfo);
    v11 = sub_100029C70(v8, v10, &v29);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Handoff][Push] Successfully pushed %s.", v6, 0xCu);
    sub_10000E9DC(v7);
  }

  else
  {

    sub_1000AD5EC(v5, type metadata accessor for HandoffInfo);
  }

  v13 = v0[37];
  v12 = v0[38];
  v15 = v0[34];
  v14 = v0[35];
  v16 = v0[31];
  v22 = v0[30];
  v23 = v0[29];
  v24 = v0[28];
  v25 = v0[27];
  v17 = v0[23];
  v26 = v0[22];
  v27 = v0[20];
  v28 = v0[19];
  v19 = v0[16];
  v18 = v0[17];
  sub_1000A87E4(v17, v16, type metadata accessor for HandoffInfo);
  swift_storeEnumTagMultiPayload();
  v13(v16, 0, 1, v18);
  swift_beginAccess();
  sub_1000A884C(v16, v19 + v15);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v16, &qword_10011F888, &qword_1000F22B0);
  sub_10001D3C8();

  sub_1000AD5EC(v17, type metadata accessor for HandoffInfo);

  v20 = v0[1];

  return v20();
}

uint64_t sub_10005C0AC()
{
  v1 = v0[40];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[14];

  v5 = v4;
  swift_errorRetain();
  v6 = sub_1000E1EE8();
  v7 = sub_1000E2698();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[40];
    v9 = v0[14];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2112;
    v12 = v9;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    v11[1] = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "[Handoff][Push] Failed to push to %@ due to %@.", v10, 0x16u);
    sub_10000ADE4(&unk_10011EAC0, &unk_1000F0E60);
    swift_arrayDestroy();
  }

  v15 = v0[37];
  v14 = v0[38];
  v16 = v0[34];
  v17 = v0[31];
  v18 = v0[16];
  v19 = v0[17];

  v15(v17, 1, 1, v19);
  swift_beginAccess();
  sub_1000A884C(v17, v18 + v16);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v17, &qword_10011F888, &qword_1000F22B0);
  v20 = v0[40];
  v22 = v0[31];
  v21 = v0[32];
  v24 = v0[29];
  v23 = v0[30];
  v26 = v0[27];
  v25 = v0[28];
  v27 = v0[23];
  v30 = v0[22];
  v31 = v0[20];
  v32 = v0[19];
  swift_willThrow();

  v28 = v0[1];

  return v28();
}

uint64_t sub_10005C31C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for HandoffState(0);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = sub_1000E13E8();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v9 = *(*(sub_10000ADE4(&qword_10011F888, &qword_1000F22B0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v10 = *(*(type metadata accessor for HandoffInfo(0) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230F0;
  v2[22] = qword_1001230F0;

  return _swift_task_switch(sub_10005C504, v11, 0);
}

uint64_t sub_10005C504()
{
  *(v0 + 184) = *(*(v0 + 72) + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;

  return _swift_task_switch(sub_10005C5AC, v1, 0);
}

uint64_t sub_10005C5AC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  sub_100044D58(*(v0 + 64));
  *(v0 + 192) = v3;

  return _swift_task_switch(sub_10005C61C, v1, 0);
}

uint64_t sub_10005C61C()
{
  v71 = v0;
  v1 = v0[24];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v0[19];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v5 + v6, v2, &qword_10011F888, &qword_1000F22B0);
  v7 = (*(v4 + 48))(v2, 1, v3);
  v8 = v0[19];
  if (v7 == 1)
  {

    sub_1000033C8(v8, &qword_10011F888, &qword_1000F22B0);
LABEL_9:
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v13 = v0[9];
    v14 = sub_1000E1F08();
    sub_1000049D0(v14, qword_100123128);
    v15 = v13;
    v16 = sub_1000E1EE8();
    v17 = sub_1000E2698();

    if (os_log_type_enabled(v16, v17))
    {
      v68 = v17;
      v19 = v0[17];
      v18 = v0[18];
      v20 = v0[11];
      v66 = v0[10];
      v21 = v0[9];
      v22 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v70[0] = v67;
      *v22 = 136315138;
      v23 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
      swift_beginAccess();
      sub_10000CB64(v21 + v23, v18, &qword_10011F888, &qword_1000F22B0);
      sub_10000CB64(v18, v19, &qword_10011F888, &qword_1000F22B0);
      v24 = (*(v20 + 48))(v19, 1, v66);
      v25 = v0[17];
      if (v24 == 1)
      {
        sub_1000033C8(v25, &qword_10011F888, &qword_1000F22B0);
        v26 = 0xE300000000000000;
        v27 = 7104878;
      }

      else
      {
        v28 = v0[12];
        v29 = v0[13];
        v30 = v0[10];
        sub_1000A877C(v25, v29, type metadata accessor for HandoffState);
        sub_1000A87E4(v29, v28, type metadata accessor for HandoffState);
        v27 = sub_1000E2368();
        v26 = v31;
        sub_1000AD5EC(v29, type metadata accessor for HandoffState);
      }

      sub_1000033C8(v0[18], &qword_10011F888, &qword_1000F22B0);
      v32 = sub_100029C70(v27, v26, v70);

      *(v22 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v16, v68, "[DisconnectTV] Rejecting disconnect request because we're not currently in a session with the specified device: %s", v22, 0xCu);
      sub_10000E9DC(v67);
    }

    v33 = v0[20];
    v34 = v0[21];
    v36 = v0[18];
    v35 = v0[19];
    v38 = v0[16];
    v37 = v0[17];
    v39 = v0[13];
    v69 = v0[12];
    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v40 = v0[1];
    goto LABEL_17;
  }

  v9 = v0[10];
  v10 = v0[19];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v12 = type metadata accessor for HandoffState;
    goto LABEL_8;
  }

  v11 = v0[21];
  sub_1000A877C(v8, v11, type metadata accessor for HandoffInfo);
  v8 = v0[21];
  if (*v11)
  {
LABEL_6:

    v12 = type metadata accessor for HandoffInfo;
LABEL_8:
    sub_1000AD5EC(v8, v12);
    goto LABEL_9;
  }

  v42 = *(v8 + 8) == *(v1 + 16) && *(v8 + 16) == *(v1 + 24);
  if (!v42 && (sub_1000E2C68() & 1) == 0)
  {
    v8 = v0[21];
    goto LABEL_6;
  }

  v44 = v0[15];
  v43 = v0[16];
  v45 = v0[14];
  v46 = v0[9];
  (*(v44 + 104))(v43, enum case for NCProtoDisconnectRequest.DisconnectReason.unknown(_:), v45);
  sub_10006B2FC(v43);

  (*(v44 + 8))(v43, v45);
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v48 = v0[20];
  v47 = v0[21];
  v49 = sub_1000E1F08();
  sub_1000049D0(v49, qword_100123128);
  sub_1000A87E4(v47, v48, type metadata accessor for HandoffInfo);
  v50 = sub_1000E1EE8();
  v51 = sub_1000E2698();
  v52 = os_log_type_enabled(v50, v51);
  v53 = v0[20];
  if (v52)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v70[0] = v55;
    *v54 = 136315138;
    v56 = *(v53 + 8);
    v57 = *(v53 + 16);

    sub_1000AD5EC(v53, type metadata accessor for HandoffInfo);
    v58 = sub_100029C70(v56, v57, v70);

    *(v54 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v50, v51, "[DisconnectTV] Successfully disconnected from %s.", v54, 0xCu);
    sub_10000E9DC(v55);
  }

  else
  {

    sub_1000AD5EC(v53, type metadata accessor for HandoffInfo);
  }

  v59 = v0[20];
  v61 = v0[18];
  v60 = v0[19];
  v63 = v0[16];
  v62 = v0[17];
  v65 = v0[12];
  v64 = v0[13];
  sub_1000AD5EC(v0[21], type metadata accessor for HandoffInfo);

  v40 = v0[1];
LABEL_17:

  return v40();
}

uint64_t sub_10005CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_10005CD2C, 0, 0);
}

uint64_t sub_10005CD2C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_10005CE28;
  v6 = *(v0 + 24);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v6, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_1000F2820, v3, &type metadata for () + 8);
}

uint64_t sub_10005CE28()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000AE27C, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10005CF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_10005CF88, 0, 0);
}

uint64_t sub_10005CF88()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = sub_10000ADE4(&qword_10011ED40, &qword_1000F1188);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_10005D094;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 80, v3, v3, 0, 0, &unk_1000F2328, v4, v3);
}

uint64_t sub_10005D094()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005D1D4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 56);

    v5 = *(v3 + 80);
    v6 = *(v3 + 8);

    return v6(v5);
  }
}

uint64_t sub_10005D1D4()
{
  v1 = v0[9];
  v2 = v0[7];

  v0[2] = v1;
  swift_errorRetain();
  sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  if (swift_dynamicCast())
  {
    v3 = v0[9];
    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v7 = v0[2];
  }

  else
  {
    v4 = v0[9];
    v5 = v0[2];

    swift_willThrow();
    v6 = v0[9];
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_10005D2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_10005D31C, 0, 0);
}

uint64_t sub_10005D31C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = type metadata accessor for HandoffInfo(0);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 48);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_10005D41C;
  v7 = *(v0 + 24);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v7, v3, v3, 0, 0, &unk_1000F26A0, v4, v3);
}

uint64_t sub_10005D41C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005D558, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10005D558()
{
  v1 = v0[10];
  v2 = v0[8];

  v0[2] = v1;
  swift_errorRetain();
  sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  if (swift_dynamicCast())
  {
    v3 = v0[10];
    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v7 = v0[2];
  }

  else
  {
    v4 = v0[10];
    v5 = v0[2];

    swift_willThrow();
    v6 = v0[10];
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_10005D678(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 88) = a3;
  *(v4 + 16) = a1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;
  *(v4 + 40) = qword_1001230F0;

  return _swift_task_switch(sub_10005D71C, v5, 0);
}

uint64_t sub_10005D71C()
{
  v0[6] = *(v0[4] + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;
  v0[7] = qword_1001230E0;

  return _swift_task_switch(sub_10005D7C8, v1, 0);
}

uint64_t sub_10005D7C8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_100044D58(*(v0 + 24));
  *(v0 + 64) = v3;

  return _swift_task_switch(sub_10005D838, v1, 0);
}

uint64_t sub_10005D838()
{
  if (v0[8])
  {
    v1 = v0[7];

    return _swift_task_switch(sub_10005DA1C, v1, 0);
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v2 = v0[3];
    v3 = sub_1000E1F08();
    sub_1000049D0(v3, qword_100123128);
    v4 = v2;
    v5 = sub_1000E1EE8();
    v6 = sub_1000E2678();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[3];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v7;
      *v9 = v7;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, v6, "[HandoffConversation] Conduit device not found for %@.", v8, 0xCu);
      sub_1000033C8(v9, &unk_10011EAC0, &unk_1000F0E60);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10005DA1C()
{
  v1 = *(v0 + 64);
  if (*(v1 + 72))
  {
    v2 = *(v1 + 64);
    v3 = *(v1 + 72);

    v13._countAndFlagsBits = 0x5654656C707041;
    v13._object = 0xE700000000000000;
    LOBYTE(v2) = sub_1000E2408(v13);

    if (v2)
    {
      v4 = *(v0 + 64);
      v5 = swift_task_alloc();
      *(v0 + 72) = v5;
      *v5 = v0;
      v5[1] = sub_10005DB54;
      v6 = *(v0 + 32);
      v7 = *(v0 + 16);
      v8 = *(v0 + 88);

      return sub_10006BBF4(v7, v4, v8);
    }

    v10 = *(v0 + 40);
    v11 = sub_10005DC80;
  }

  else
  {
    v10 = *(v0 + 40);
    v11 = sub_1000AE224;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_10005DB54()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_10005DE8C;
  }

  else
  {
    v6 = sub_10005DE28;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005DC80()
{
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100123128);
  v3 = v1;
  v4 = sub_1000E1EE8();
  v5 = sub_1000E2678();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[HandoffConversation] Rejecting request because target device type is unknown %@.", v7, 0xCu);
    sub_1000033C8(v8, &unk_10011EAC0, &unk_1000F0E60);
  }

  v10 = v0[8];

  TUMakeNeighborhoodConduitError();
  swift_willThrow();

  v11 = v0[1];

  return v11();
}