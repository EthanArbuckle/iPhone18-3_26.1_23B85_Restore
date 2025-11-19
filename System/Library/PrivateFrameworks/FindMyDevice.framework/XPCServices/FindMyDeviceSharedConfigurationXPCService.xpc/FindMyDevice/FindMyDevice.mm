void sub_100001718(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, uint64_t), uint64_t a6)
{
  v95 = a5;
  v11 = &FindMyDeviceSharedConfigurationXPCService;
  if (!a2)
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v18 = sub_100010774();
    sub_100002608(v18, qword_10001D870);
    v13 = sub_100010754();
    v19 = sub_100010984();
    if (os_log_type_enabled(v13, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v13, v19, "No preliminary verifying coverage.", v20, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_10001CE70 != -1)
  {
    swift_once();
  }

  v12 = sub_100010774();
  sub_100002608(v12, qword_10001D870);
  swift_errorRetain();
  v13 = sub_100010754();
  v14 = sub_100010974();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "Preliminary error verifying coverage: %@.", v15, 0xCu);
    sub_100002FD0(v16, &qword_10001CA80, &qword_100011358);
    v11 = &FindMyDeviceSharedConfigurationXPCService;

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  v21 = MobileGestalt_get_current_device();
  if (v21)
  {
    v22 = v21;
    v23 = a1 & 1;
    v24 = MobileGestalt_copy_serialNumber_obj();

    if (v24)
    {
      v25 = sub_100010854();
      v27 = v26;

      if (v25 == a3 && v27 == a4)
      {

        goto LABEL_18;
      }

      v28 = sub_100010B14();

      if (v28)
      {
LABEL_18:
        v92 = v23;
        v29 = dispatch_group_create();
        v30 = swift_allocObject();
        *(v30 + 16) = 0;
        v91 = (v30 + 16);
        v99 = v30;
        *(v30 + 24) = 0;
        v31 = [objc_opt_self() sharedInstance];
        v32 = [v31 getDevicesExcluding:1];

        sub_10000399C(0, &qword_10001CA68, PDRDevice_ptr);
        v33 = sub_100010934();

        if (v33 >> 62)
        {
          v35 = sub_100010AB4();
          if (v35)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v35)
          {
LABEL_20:
            if (v35 >= 1)
            {
              v89[1] = a6;
              v36 = 0;
              v102 = PDRDevicePropertyKeySerialNumber;
              v103 = v33 & 0xC000000000000001;
              v96 = &v105;
              *&v34 = 136315138;
              v98 = v34;
              *&v34 = 136315394;
              v90 = v34;
              v100 = v35;
              v101 = v33;
              v94 = v29;
              while (1)
              {
                v37 = v103 ? sub_100010A94() : *(v33 + 8 * v36 + 32);
                v38 = v37;
                if ([v37 valueForProperty:v102])
                {
                  sub_100010A04();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v110 = 0u;
                  v111 = 0u;
                }

                aBlock = v110;
                v105 = v111;
                if (!*(&v111 + 1))
                {
                  break;
                }

                if ((swift_dynamicCast() & 1) == 0)
                {
                  goto LABEL_35;
                }

                v39 = v108;
                v40 = v109;
                dispatch_group_enter(v29);
                v41 = swift_allocObject();
                v41[2] = v99;
                v41[3] = v39;
                v41[4] = v40;
                v41[5] = v29;
                if (NDOACCoverageDetailsProvider)
                {
                  v42 = objc_opt_self();

                  v43 = v29;

                  v44 = sub_100010824();
                  v45 = swift_allocObject();
                  v45[2] = v39;
                  v45[3] = v40;
                  v45[4] = sub_100002CCC;
                  v45[5] = v41;
                  v106 = sub_100002BA4;
                  v107 = v45;
                  *&aBlock = _NSConcreteStackBlock;
                  *(&aBlock + 1) = 1107296256;
                  *&v105 = sub_100002640;
                  *(&v105 + 1) = &unk_100019080;
                  v46 = _Block_copy(&aBlock);

                  [v42 getCachedCoverageDetailsForSerialNumber:v44 requester:0 completion:v46];

                  _Block_release(v46);
                }

                else
                {
                  sub_100003030();
                  swift_allocError();
                  *v57 = 7;

                  v97 = v29;

                  swift_errorRetain();
                  if (v11[51].name != -1)
                  {
                    swift_once();
                  }

                  v58 = sub_100010774();
                  sub_100002608(v58, qword_10001D870);

                  swift_errorRetain();
                  v59 = sub_100010754();
                  v60 = sub_100010974();

                  if (os_log_type_enabled(v59, v60))
                  {
                    v93 = v59;
                    v61 = swift_slowAlloc();
                    v62 = swift_slowAlloc();
                    v63 = swift_slowAlloc();
                    *&aBlock = v63;
                    *v61 = v90;
                    *(v61 + 4) = sub_100002BB4(v39, v40, &aBlock);
                    *(v61 + 12) = 2112;
                    swift_errorRetain();
                    v64 = _swift_stdlib_bridgeErrorToNSError();
                    *(v61 + 14) = v64;
                    *v62 = v64;
                    _os_log_impl(&_mh_execute_header, v93, v60, "Complete device (serialNumber: %s) coverage check failed: %@", v61, 0x16u);
                    sub_100002FD0(v62, &qword_10001CA80, &qword_100011358);
                    v11 = &FindMyDeviceSharedConfigurationXPCService;

                    sub_100002C80(v63);
                  }

                  else
                  {
                  }

                  dispatch_group_leave(v97);

                  v29 = v94;
                }

                v35 = v100;
                v33 = v101;
LABEL_23:
                if (v35 == ++v36)
                {

                  goto LABEL_61;
                }
              }

              sub_100002FD0(&aBlock, &qword_10001CA70, &unk_100011B70);
LABEL_35:
              if (v11[51].name != -1)
              {
                swift_once();
              }

              v47 = sub_100010774();
              sub_100002608(v47, qword_10001D870);
              v48 = v38;
              v49 = sub_100010754();
              v50 = sub_100010974();

              if (os_log_type_enabled(v49, v50))
              {
                v51 = swift_slowAlloc();
                v52 = swift_slowAlloc();
                *&aBlock = v52;
                *v51 = v98;
                v53 = sub_1000109E4();
                if (v54)
                {
                  v55 = v54;
                }

                else
                {
                  v53 = 0x3E6C696E3CLL;
                  v55 = 0xE500000000000000;
                }

                v56 = sub_100002BB4(v53, v55, &aBlock);

                *(v51 + 4) = v56;
                _os_log_impl(&_mh_execute_header, v49, v50, "Failed to get serialNumber for paired device: %s", v51, 0xCu);
                sub_100002C80(v52);
                v35 = v100;

                v33 = v101;
              }

              else
              {
              }

              goto LABEL_23;
            }

            __break(1u);
            goto LABEL_76;
          }
        }

LABEL_61:
        v71 = sub_1000107E4();
        v72 = *(v71 - 8);
        v73 = *(v72 + 64);
        v74 = (__chkstk_darwin)();
        v76 = v89 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
        __chkstk_darwin(v74);
        v78 = v89 - v77;
        sub_1000107D4();
        if (qword_10001CE50 != -1)
        {
          swift_once();
        }

        v79 = sub_100010784();
        sub_100002608(v79, qword_10001CE58);
        sub_1000107F4();
        v80 = *(v72 + 8);
        v80(v78, v71);
        v81 = sub_100010994();
        v80(v76, v71);
        v82 = v91;
        os_unfair_lock_lock(v91);
        v83 = *(v99 + 24);
        os_unfair_lock_unlock(v82);
        v84 = v92 | 4;
        if (v83 < 2)
        {
          v84 = v92;
        }

        if (v83 == 1)
        {
          v31 = (v92 | 2);
        }

        else
        {
          v31 = v84;
        }

        if ((v81 & 1) == 0)
        {
          v95(v31, 0);
LABEL_74:

          return;
        }

        if (v11[51].name == -1)
        {
LABEL_70:
          v85 = sub_100010774();
          sub_100002608(v85, qword_10001D870);
          v86 = sub_100010754();
          v87 = sub_100010974();
          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            *v88 = 0;
            _os_log_impl(&_mh_execute_header, v86, v87, "Complete device coverage timed out", v88, 2u);
          }

          v95(v31, 0);
          goto LABEL_74;
        }

LABEL_76:
        swift_once();
        goto LABEL_70;
      }
    }

    if (a2)
    {
      swift_errorRetain();
      if (v11[51].name != -1)
      {
        swift_once();
      }

      v65 = sub_100010774();
      sub_100002608(v65, qword_10001D870);
      swift_errorRetain();
      v66 = sub_100010754();
      v67 = sub_100010974();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v68 = 138412290;
        swift_errorRetain();
        v70 = _swift_stdlib_bridgeErrorToNSError();
        *(v68 + 4) = v70;
        *v69 = v70;
        _os_log_impl(&_mh_execute_header, v66, v67, "Final error verifying coverage: %@.", v68, 0xCu);
        sub_100002FD0(v69, &qword_10001CA80, &qword_100011358);
      }

      swift_errorRetain();
      v95(0, a2);
    }

    else
    {
      v95(v23, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100002504()
{
  v1 = sub_100004898(&qword_10001CBF0, &qword_1000116E8);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  v2 = sub_100004898(&qword_10001CBF8, &qword_1000116F0);
  (*(*(v2 - 8) + 8))(v0 + 24, v2);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000025BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002608(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_100002640(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_1000026CC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(id, uint64_t))
{
  if (a1)
  {
    v29 = a1;
    v8 = [v29 hasTheftAndLoss];
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v9 = sub_100010774();
    sub_100002608(v9, qword_10001D870);

    v10 = sub_100010754();
    v11 = sub_100010984();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v30 = v13;
      *v12 = 67109378;
      *(v12 + 4) = v8;
      *(v12 + 8) = 2080;
      *(v12 + 10) = sub_100002BB4(a3, a4, &v30);
      _os_log_impl(&_mh_execute_header, v10, v11, "Found device coverage: %{BOOL}d, for serialNumber: %s", v12, 0x12u);
      sub_100002C80(v13);
    }

    a5(v8, 0);
  }

  else
  {
    if (a2)
    {
      swift_errorRetain();
      if (qword_10001CE70 != -1)
      {
        swift_once();
      }

      v15 = sub_100010774();
      sub_100002608(v15, qword_10001D870);

      swift_errorRetain();
      v16 = sub_100010754();
      v17 = sub_100010974();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v30 = v20;
        *v18 = 136315394;
        *(v18 + 4) = sub_100002BB4(a3, a4, &v30);
        *(v18 + 12) = 2112;
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 14) = v21;
        *v19 = v21;
        _os_log_impl(&_mh_execute_header, v16, v17, "Failed to get device coverage for serialNumber: %s, error: %@", v18, 0x16u);
        sub_100002FD0(v19, &qword_10001CA80, &qword_100011358);

        sub_100002C80(v20);
      }

      swift_errorRetain();
      a5(0, a2);
    }

    else
    {
      if (qword_10001CE70 != -1)
      {
        swift_once();
      }

      v22 = sub_100010774();
      sub_100002608(v22, qword_10001D870);

      v23 = sub_100010754();
      v24 = sub_100010974();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v30 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_100002BB4(a3, a4, &v30);
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to get device coverage for serialNumber: %s", v25, 0xCu);
        sub_100002C80(v26);
      }

      sub_100003030();
      v27 = swift_allocError();
      *v28 = 0;
      a5(0, v27);
    }
  }
}

uint64_t sub_100002BB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000039E4(v11, 0, 0, 1, a1, a2);
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
    sub_100003AF0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002C80(v11);
  return v7;
}

uint64_t sub_100002C80(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_100002CCC(char a1, uint64_t a2)
{
  v5 = v2[3];
  v4 = v2[4];
  v6 = v2[5];
  if (a1)
  {
    v7 = v2[2];
    os_unfair_lock_lock((v7 + 16));
    v8 = *(v7 + 24);
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    *(v7 + 24) = v10;
    os_unfair_lock_unlock((v7 + 16));
  }

  if (a2)
  {
    swift_errorRetain();
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v11 = sub_100010774();
    sub_100002608(v11, qword_10001D870);
    swift_errorRetain();

    v12 = sub_100010754();
    v13 = sub_100010974();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v14 = 136315394;
      *(v14 + 4) = sub_100002BB4(v5, v4, &v18);
      *(v14 + 12) = 2112;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v17;
      *v15 = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "Complete device (serialNumber: %s) coverage check failed: %@", v14, 0x16u);
      sub_100002FD0(v15, &qword_10001CA80, &qword_100011358);

      sub_100002C80(v16);
    }

    else
    {
    }
  }

  dispatch_group_leave(v6);
}

void sub_100002EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1000105B4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100002F74(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 24);

  a1(*(v2 + 40));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100002FD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004898(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100003030()
{
  result = qword_10001CE78;
  if (!qword_10001CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE78);
  }

  return result;
}

uint64_t sub_100003084(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_10000314C(uint64_t a1, unint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  v5[2] = a3;
  v6 = objc_opt_self();
  _Block_copy(a3);
  v7 = [v6 sharedInstance];
  v8 = [v7 getDevicesExcluding:0];

  sub_10000399C(0, &qword_10001CA68, PDRDevice_ptr);
  v9 = sub_100010934();

  if (v9 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100010AB4())
  {
    v39 = a3;
    v40 = v5;
    v11 = 0;
    v12 = PDRDevicePropertyKeyUDID;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = sub_100010A94();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v5 = v13;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = [v13 valueForProperty:v12];
      if (v15)
      {
        a3 = v15;
        sub_100010A04();
        swift_unknownObjectRelease();
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
      }

      aBlock = v48;
      v43 = v49;
      if (*(&v49 + 1))
      {
        if (swift_dynamicCast())
        {
          a3 = v47;
          if (v46 == a1 && v47 == a2)
          {

LABEL_23:

            if ([v5 valueForProperty:PDRDevicePropertyKeySerialNumber])
            {
              sub_100010A04();
              swift_unknownObjectRelease();
            }

            else
            {
              v48 = 0u;
              v49 = 0u;
            }

            aBlock = v48;
            v43 = v49;
            if (*(&v49 + 1))
            {
              if (swift_dynamicCast())
              {
                v18 = v46;
                v17 = v47;
                if (qword_10001CE70 != -1)
                {
                  swift_once();
                }

                v19 = sub_100010774();
                sub_100002608(v19, qword_10001D870);

                v20 = sub_100010754();
                v21 = sub_100010984();

                if (os_log_type_enabled(v20, v21))
                {
                  v22 = swift_slowAlloc();
                  *&aBlock = swift_slowAlloc();
                  *v22 = 136315394;
                  *(v22 + 4) = sub_100002BB4(v18, v17, &aBlock);
                  *(v22 + 12) = 2080;
                  *(v22 + 14) = sub_100002BB4(a1, a2, &aBlock);
                  _os_log_impl(&_mh_execute_header, v20, v21, "Looking up serial number: %s for UDID: %s", v22, 0x16u);
                  swift_arrayDestroy();
                }

                v23 = swift_allocObject();
                *(v23 + 16) = sub_100002F64;
                *(v23 + 24) = v40;
                if (NDOACCoverageDetailsProvider)
                {
                  v24 = objc_opt_self();

                  v25 = sub_100010824();
                  v26 = swift_allocObject();
                  v26[2] = v18;
                  v26[3] = v17;
                  v26[4] = sub_10000FF28;
                  v26[5] = v23;
                  v44 = sub_100002BA4;
                  v45 = v26;
                  *&aBlock = _NSConcreteStackBlock;
                  *(&aBlock + 1) = 1107296256;
                  *&v43 = sub_100002640;
                  *(&v43 + 1) = &unk_100018E78;
                  v27 = _Block_copy(&aBlock);

                  [v24 getCachedCoverageDetailsForSerialNumber:v25 requester:0 completion:v27];

                  _Block_release(v27);

                  return;
                }

                sub_100003030();
                swift_allocError();
                *v35 = 7;
                v36 = sub_1000105B4();
                (v39)[2](v39, 0, v36);

                goto LABEL_40;
              }
            }

            else
            {
              sub_100002FD0(&aBlock, &qword_10001CA70, &unk_100011B70);
            }

            if (qword_10001CE70 != -1)
            {
              swift_once();
            }

            v28 = sub_100010774();
            sub_100002608(v28, qword_10001D870);

            v29 = sub_100010754();
            v30 = sub_100010974();

            if (os_log_type_enabled(v29, v30))
            {
              v31 = swift_slowAlloc();
              v32 = swift_slowAlloc();
              *&aBlock = v32;
              *v31 = 136315138;
              *(v31 + 4) = sub_100002BB4(a1, a2, &aBlock);
              _os_log_impl(&_mh_execute_header, v29, v30, "Failed to get serialNumber for device with UDID: %s", v31, 0xCu);
              sub_100002C80(v32);
            }

            sub_100003030();
            swift_allocError();
            *v33 = 2;
            v34 = sub_1000105B4();
            (v39)[2](v39, 0, v34);

LABEL_40:

            goto LABEL_47;
          }

          v16 = sub_100010B14();

          if (v16)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {

        sub_100002FD0(&aBlock, &qword_10001CA70, &unk_100011B70);
      }

      ++v11;
      if (v14 == i)
      {

        a3 = v39;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_46:
  sub_100003030();
  swift_allocError();
  *v37 = 1;
  v38 = sub_1000105B4();
  (a3)[2](a3, 0, v38);

LABEL_47:
}

uint64_t sub_10000395C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000399C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_1000039E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000B604(a5, a6);
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
    result = sub_100010AA4();
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

uint64_t sub_100003AF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003B4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003B5C(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1 & 1);
}

void sub_100003B88(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  ObjectType = swift_getObjectType();
  if (sub_100010514())
  {
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = sub_100010824();
    v11 = [v9 BOOLForKey:v10];

    if (v11)
    {
      a3(1, 0);
      return;
    }
  }

  if (a2)
  {
    v12 = a2;
  }

  else
  {
    v13 = MobileGestalt_get_current_device();
    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = v13;
    v15 = MobileGestalt_copy_serialNumber_obj();

    if (!v15)
    {
      sub_100003030();
      v24 = swift_allocError();
      *v25 = 2;
      a3(0, v24);
      goto LABEL_14;
    }

    a1 = sub_100010854();
    v12 = v16;
  }

  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = v12;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = ObjectType;
  if (NDOACCoverageDetailsProvider)
  {
    v18 = objc_opt_self();

    v19 = sub_100010824();
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = v12;
    v20[4] = sub_10000AF98;
    v20[5] = v17;
    v26[4] = sub_100002BA8;
    v26[5] = v20;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 1107296256;
    v26[2] = sub_100002640;
    v26[3] = &unk_100018B28;
    v21 = _Block_copy(v26);

    [v18 getCachedCoverageDetailsForSerialNumber:v19 requester:0 completion:v21];

    _Block_release(v21);

    return;
  }

  sub_100003030();
  v22 = swift_allocError();
  *v23 = 7;

  sub_100001718(0, v22, a1, v12, a3, a4);

LABEL_14:
}

uint64_t sub_100003FD4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004028()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100004070()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000040B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000040E8()
{
  v1 = *(type metadata accessor for LocalizedStringsEndpoint(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + 48);

  v7 = sub_100010574();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v4);

  v9 = *(v0 + v4 + 16);
  if (v9 >> 60 != 15)
  {
    sub_10000F124(*(v0 + v4 + 8), v9);
  }

  v10 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v0 + v10;
  v14 = *(v0 + v10 + 8);

  v15 = *(v13 + 24);

  v16 = *(v0 + v11);

  v17 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v12 + 16, v2 | 7);
}

uint64_t sub_100004260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100010684();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000430C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100010684();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000043B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100010574();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000441C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100010574();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000044D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_100010784();
  sub_10000EFF4(v5, a2);
  *sub_100002608(v5, a2) = a3;
  v6 = *(*(v5 - 8) + 104);

  return v6();
}

Swift::Int sub_100004578()
{
  v1 = *v0;
  sub_100010B84();
  sub_100010B94(v1);
  return sub_100010BA4();
}

Swift::Int sub_1000045EC()
{
  v1 = *v0;
  sub_100010B84();
  sub_100010B94(v1);
  return sub_100010BA4();
}

uint64_t sub_100004640()
{
  v0 = sub_1000109A4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = sub_1000109B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000107C4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_10000399C(0, &qword_10001CA40, OS_dispatch_queue_ptr);
  sub_1000107B4();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  v10[1] = &_swiftEmptyArrayStorage;
  sub_10000D290(&qword_10001CA48, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004898(&qword_10001CA50, &unk_100011340);
  sub_10000D2D8(&qword_10001CA58, &qword_10001CA50, &unk_100011340);
  sub_100010A24();
  return sub_1000109D4();
}

uint64_t sub_100004898(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000048E0(uint64_t *a1, uint64_t *a2)
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

id sub_100004928()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_10000495C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1000109A4();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = sub_1000109B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000107C4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v14 = OBJC_IVAR____TtC41FindMyDeviceSharedConfigurationXPCService41FindMyDeviceSharedConfigurationXPCService_downloadSerialQueue;
  v13 = sub_10000399C(0, &qword_10001CA40, OS_dispatch_queue_ptr);
  sub_1000107B4();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  v17 = &_swiftEmptyArrayStorage;
  sub_10000D290(&qword_10001CA48, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004898(&qword_10001CA50, &unk_100011340);
  sub_10000D2D8(&qword_10001CA58, &qword_10001CA50, &unk_100011340);
  sub_100010A24();
  v10 = sub_1000109D4();
  v11 = ObjectType;
  *&v0[v14] = v10;
  v16.receiver = v0;
  v16.super_class = v11;
  return objc_msgSendSuper2(&v16, "init");
}

id sub_100004C10()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100004C58()
{
  if (qword_10001CE70 != -1)
  {
    swift_once();
  }

  v0 = sub_100010774();

  return sub_100002608(v0, qword_10001D870);
}

void sub_100004CBC(uint64_t a1, unint64_t a2, void (*a3)(void, uint64_t), void *a4)
{
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 getDevicesExcluding:0];

  sub_10000399C(0, &qword_10001CA68, PDRDevice_ptr);
  v9 = sub_100010934();

  if (v9 >> 62)
  {
LABEL_43:
    v10 = sub_100010AB4();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_44:

LABEL_45:
    sub_100003030();
    v37 = swift_allocError();
    *v38 = 1;
    a3(0, v37);
    goto LABEL_46;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_44;
  }

LABEL_3:
  v39 = a3;
  v40 = a4;
  v11 = 0;
  v12 = PDRDevicePropertyKeyUDID;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = sub_100010A94();
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v13 = *(v9 + 8 * v11 + 32);
    }

    a4 = v13;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v15 = [v13 valueForProperty:v12];
    if (v15)
    {
      a3 = v15;
      sub_100010A04();
      swift_unknownObjectRelease();
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
    }

    aBlock = v48;
    v43 = v49;
    if (*(&v49 + 1))
    {
      break;
    }

    sub_100002FD0(&aBlock, &qword_10001CA70, &unk_100011B70);
LABEL_5:
    ++v11;
    if (v14 == v10)
    {

      a3 = v39;
      goto LABEL_45;
    }
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

    goto LABEL_5;
  }

  a3 = v47;
  if (v46 != a1 || v47 != a2)
  {
    v16 = sub_100010B14();

    if (v16)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_23:

  if ([a4 valueForProperty:PDRDevicePropertyKeySerialNumber])
  {
    sub_100010A04();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  aBlock = v48;
  v43 = v49;
  if (!*(&v49 + 1))
  {
    sub_100002FD0(&aBlock, &qword_10001CA70, &unk_100011B70);
    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v28 = sub_100010774();
    sub_100002608(v28, qword_10001D870);

    v29 = sub_100010754();
    v30 = sub_100010974();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&aBlock = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_100002BB4(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to get serialNumber for device with UDID: %s", v31, 0xCu);
      sub_100002C80(v32);
    }

    sub_100003030();
    v33 = swift_allocError();
    *v34 = 2;
    v39(0, v33);

    goto LABEL_46;
  }

  v18 = v46;
  v17 = v47;
  if (qword_10001CE70 != -1)
  {
    swift_once();
  }

  v19 = sub_100010774();
  sub_100002608(v19, qword_10001D870);

  v20 = sub_100010754();
  v21 = sub_100010984();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_100002BB4(v18, v17, &aBlock);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_100002BB4(a1, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v20, v21, "Looking up serial number: %s for UDID: %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v39;
  *(v23 + 24) = v40;
  if (NDOACCoverageDetailsProvider)
  {
    v24 = objc_opt_self();

    v25 = sub_100010824();
    v26 = swift_allocObject();
    v26[2] = v18;
    v26[3] = v17;
    v26[4] = sub_100003B5C;
    v26[5] = v23;
    v44 = sub_100002BA4;
    v45 = v26;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v43 = sub_100002640;
    *(&v43 + 1) = &unk_100018BA0;
    v27 = _Block_copy(&aBlock);

    [v24 getCachedCoverageDetailsForSerialNumber:v25 requester:0 completion:v27];

    _Block_release(v27);
    return;
  }

  sub_100003030();
  v35 = swift_allocError();
  *v36 = 7;
  v39(0, v35);

LABEL_46:
}

uint64_t sub_100005440(void *a1, void (*a2)(void), uint64_t a3)
{

  sub_10000CF18(a1, v3, a2, a3);
}

id sub_1000054A0(void *a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  if (sub_100010514())
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = sub_100010824();
    v8 = [v6 BOOLForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 fmipActive];

  if (v10)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v15 = sub_100010774();
    sub_100002608(v15, qword_10001D870);
    v16 = sub_100010754();
    v17 = sub_100010984();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_16;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Find My iPhone is enabled, not posting CFU";
    goto LABEL_15;
  }

  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = [result aa_primaryAppleAccount];

  if (!v14)
  {
    if (v8)
    {
      goto LABEL_18;
    }

    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v22 = sub_100010774();
    sub_100002608(v22, qword_10001D870);
    v16 = sub_100010754();
    v17 = sub_100010984();
    if (!os_log_type_enabled(v16, v17))
    {
LABEL_16:

      return a2(0, 0);
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Device is signed out of iCloud, not posting CFU";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v16, v17, v19, v18, 2u);

    goto LABEL_16;
  }

LABEL_18:
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a1;

  v21 = a1;
  sub_100003B88(0, 0, sub_10000D274, v20);
}

void sub_10000587C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1000105B4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_1000058E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, void *a5)
{
  if (!a1)
  {
    if (a2)
    {
      swift_errorRetain();
      if (qword_10001CE70 != -1)
      {
        swift_once();
      }

      v40 = sub_100010774();
      sub_100002608(v40, qword_10001D870);
      swift_errorRetain();
      v41 = sub_100010754();
      v42 = sub_100010974();

      if (!os_log_type_enabled(v41, v42))
      {

        goto LABEL_48;
      }

      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138543362;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v45;
      *v44 = v45;
      _os_log_impl(&_mh_execute_header, v41, v42, "No device coverage. Cannot queue CFU. error %{public}@", v43, 0xCu);
      sub_100002FD0(v44, &qword_10001CA80, &qword_100011358);
    }

    else
    {
      if (qword_10001CE70 != -1)
      {
        swift_once();
      }

      v58 = sub_100010774();
      sub_100002608(v58, qword_10001D870);
      v41 = sub_100010754();
      v59 = sub_100010984();
      if (os_log_type_enabled(v41, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v41, v59, "No device coverage. Cannot queue CFU.", v60, 2u);
      }
    }

LABEL_48:
    a3(0, a2);
    return;
  }

  v7 = [objc_allocWithZone(FLFollowUpItem) init];
  v8 = sub_100010824();
  [v7 setUniqueIdentifier:v8];

  [v7 setGroupIdentifier:FLGroupIdentifierDevice];
  v9 = [a5 title];
  if (!v9)
  {
    sub_100010854();
    v9 = sub_100010824();
  }

  [v7 setTitle:v9];

  v10 = [a5 informativeText];
  if (!v10)
  {
    sub_100010854();
    v10 = sub_100010824();
  }

  [v7 setInformativeText:v10];

  v11 = sub_100010824();
  [v7 setTargetBundleIdentifier:v11];

  v12 = sub_100010824();
  [v7 setExtensionIdentifier:v12];

  sub_100004898(&qword_10001CBC8, &qword_1000116C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100011310;
  v70[0] = 0xD00000000000001CLL;
  v70[1] = 0x8000000100011ED0;
  sub_100010A64();
  v14 = [objc_allocWithZone(NSNumber) initWithBool:1];
  *(inited + 96) = sub_10000399C(0, &qword_10001CB80, NSNumber_ptr);
  *(inited + 72) = v14;
  sub_10000D9B8(inited);
  swift_setDeallocating();
  sub_100002FD0(inited + 32, &qword_10001CBD0, &qword_1000116D0);
  isa = sub_100010804().super.isa;

  [v7 setUserInfo:isa];

  v16 = [objc_allocWithZone(FLFollowUpNotification) init];
  v17 = [v7 title];
  [v16 setTitle:v17];

  v18 = [a5 informativeText];
  if (!v18)
  {
    sub_100010854();
    v18 = sub_100010824();
  }

  [v16 setInformativeText:v18];

  [v16 setFrequency:0.0];
  [v16 setFirstNotificationDelay:0.0];
  [v7 setNotification:v16];
  v19 = objc_opt_self();
  v20 = sub_100010824();
  v21 = [v19 localizedStringWithKey:v20];

  if (!v21)
  {
    sub_100010854();
    v21 = sub_100010824();
  }

  v22 = [objc_opt_self() actionWithLabel:v21 url:0];

  if (v22)
  {
    v23 = [objc_allocWithZone(NSUUID) init];
    v24 = [v23 UUIDString];

    if (!v24)
    {
      sub_100010854();
      v24 = sub_100010824();
    }

    [v22 setIdentifier:v24];

    v25 = [v7 notification];
    if (v25)
    {
      v26 = v25;
      [v25 setActivateAction:v22];

      sub_100004898(&qword_10001CBD8, &qword_1000116D8);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100011320;
      *(v27 + 32) = v22;
      sub_10000399C(0, &qword_10001CBE0, FLFollowUpAction_ptr);
      v28 = v22;
      v29 = sub_100010924().super.isa;

      [v7 setActions:v29];

      v30 = objc_allocWithZone(FLFollowUpController);
      v31 = sub_100010824();
      v32 = [v30 initWithClientIdentifier:v31];

      if (v32)
      {
        v70[0] = 0;
        if ([v32 postFollowUpItem:v7 error:v70])
        {
          v33 = qword_10001CE70;
          v34 = v70[0];
          if (v33 != -1)
          {
            swift_once();
          }

          v35 = sub_100010774();
          sub_100002608(v35, qword_10001D870);
          v36 = sub_100010754();
          v37 = sub_100010984();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&_mh_execute_header, v36, v37, "Found TnL coverage. CFU posted.", v38, 2u);
          }

          a3(1, 0);
        }

        else
        {
          v61 = v70[0];
          v62 = sub_1000105C4();

          swift_willThrow();
          if (qword_10001CE70 != -1)
          {
            swift_once();
          }

          v63 = sub_100010774();
          sub_100002608(v63, qword_10001D870);
          swift_errorRetain();
          v64 = sub_100010754();
          v65 = sub_100010974();

          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            *v66 = 138412290;
            swift_errorRetain();
            v68 = _swift_stdlib_bridgeErrorToNSError();
            *(v66 + 4) = v68;
            *v67 = v68;
            _os_log_impl(&_mh_execute_header, v64, v65, "Failed to post the follow up with error: %@", v66, 0xCu);
            sub_100002FD0(v67, &qword_10001CA80, &qword_100011358);
          }

          swift_errorRetain();
          a3(1, v62);
        }
      }

      else
      {
        if (qword_10001CE70 != -1)
        {
          swift_once();
        }

        v52 = sub_100010774();
        sub_100002608(v52, qword_10001D870);
        v53 = sub_100010754();
        v54 = sub_100010974();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&_mh_execute_header, v53, v54, "Failed to create the FU controller", v55, 2u);
        }

        sub_100003030();
        v56 = swift_allocError();
        *v57 = 9;
        a3(1, v56);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v46 = sub_100010774();
    sub_100002608(v46, qword_10001D870);
    v47 = sub_100010754();
    v48 = sub_100010974();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed to create the follow-up action", v49, 2u);
    }

    sub_100003030();
    v50 = swift_allocError();
    *v51 = 8;
    a3(1, v50);
  }
}

void sub_1000065FC(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1000105B4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_10000666C(void (*a1)(void))
{
  v2 = objc_allocWithZone(FLFollowUpController);
  v3 = sub_100010824();
  v4 = [v2 initWithClientIdentifier:v3];

  if (v4)
  {
    sub_100004898(&qword_10001CA78, &qword_100011350);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100011310;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = 0xD000000000000010;
    *(v5 + 40) = 0x8000000100011BD0;
    isa = sub_100010924().super.isa;

    v22 = 0;
    v7 = [v4 clearPendingFollowUpItemsWithUniqueIdentifiers:isa error:&v22];

    if (v7)
    {
      v8 = v22;
      (a1)(0);
    }

    else
    {
      v14 = v22;
      v15 = sub_1000105C4();

      swift_willThrow();
      if (qword_10001CE70 != -1)
      {
        swift_once();
      }

      v16 = sub_100010774();
      sub_100002608(v16, qword_10001D870);
      swift_errorRetain();
      v17 = sub_100010754();
      v18 = sub_100010974();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v21;
        *v20 = v21;
        _os_log_impl(&_mh_execute_header, v17, v18, "Unable to clear pending followup for id: com.apple.findmy with error: %@", v19, 0xCu);
        sub_100002FD0(v20, &qword_10001CA80, &qword_100011358);
      }

      swift_errorRetain();
      (a1)(v15);
    }
  }

  else
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v9 = sub_100010774();
    sub_100002608(v9, qword_10001D870);
    v10 = sub_100010754();
    v11 = sub_100010974();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to create the Follow Up controller", v12, 2u);
    }

    sub_100003030();
    swift_allocError();
    *v13 = 9;
    a1();
  }
}

uint64_t sub_100006AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100010794();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000107C4();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v4[OBJC_IVAR____TtC41FindMyDeviceSharedConfigurationXPCService41FindMyDeviceSharedConfigurationXPCService_downloadSerialQueue];
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = sub_10000D280;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000706C;
  aBlock[3] = &unk_100018C18;
  v19 = _Block_copy(aBlock);
  v20 = v4;

  sub_1000107A4();
  v24 = &_swiftEmptyArrayStorage;
  sub_10000D290(&qword_10001CA88, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004898(&qword_10001CA90, &unk_100011360);
  sub_10000D2D8(&qword_10001CA98, &qword_10001CA90, &unk_100011360);
  sub_100010A24();
  sub_1000109C4();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

void sub_100006DC4(void *a1, NSObject *a2, uint64_t a3, void (*a4)(uint64_t), void *a5)
{
  v10 = sub_1000107E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  v19 = v18;

  sub_10000E73C(a2, a3, a1, v19, a4, a5);

  sub_1000107D4();
  if (qword_10001CE30 != -1)
  {
    swift_once();
  }

  v20 = sub_100010784();
  sub_100002608(v20, qword_10001CE38);
  sub_1000107F4();
  v21 = *(v11 + 8);
  v21(v15, v10);
  if (sub_100010994())
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v22 = sub_100010774();
    sub_100002608(v22, qword_10001D870);
    v23 = sub_100010754();
    v24 = sub_100010974();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Download exceeded timeout, allowing next download to proceed concurrently", v25, 2u);
    }

    else
    {
    }

    v21(v17, v10);
  }

  else
  {
    v21(v17, v10);
  }
}

uint64_t sub_10000706C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100007168@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100004898(&qword_10001CBC0, &qword_1000116C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v62 - v4;
  v6 = sub_100010684();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v62 - v12;
  v14 = [objc_opt_self() sharedInstance];
  v15 = sub_100010824();

  v16 = [v14 contentsWithLocale:v15];

  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = sub_100010814();

  v67 = sub_100010854();
  v68 = v18;
  sub_100010A64();
  if (!*(v17 + 16))
  {
    goto LABEL_12;
  }

  v19 = sub_10000B9D4(v69);
  if ((v20 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_100003AF0(*(v17 + 56) + 32 * v19, v70);
  sub_10000F8D8(v69);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v21 = v68;
  v66 = v67;
  v67 = sub_100010854();
  v68 = v22;
  sub_100010A64();
  if (!*(v17 + 16) || (v23 = sub_10000B9D4(v69), (v24 & 1) == 0))
  {

LABEL_12:

    sub_10000F8D8(v69);
LABEL_13:
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v29 = sub_100010774();
    sub_100002608(v29, qword_10001D870);
    v30 = sub_100010754();
    v31 = sub_100010974();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v69[0] = v33;
      *v32 = 136315138;
      v34 = sub_100010854();
      v36 = sub_100002BB4(v34, v35, v69);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Missing %s field", v32, 0xCu);
      sub_100002C80(v33);
    }

    goto LABEL_17;
  }

  sub_100003AF0(*(v17 + 56) + 32 * v23, v70);
  sub_10000F8D8(v69);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v64 = v67;
  v65 = v68;
  v67 = sub_100010854();
  v68 = v25;
  sub_100010A64();
  if (!*(v17 + 16) || (v26 = sub_10000B9D4(v69), (v27 & 1) == 0))
  {

    sub_10000F8D8(v69);
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_23;
  }

  sub_100003AF0(*(v17 + 56) + 32 * v26, v70);
  sub_10000F8D8(v69);
  v28 = swift_dynamicCast();
  (*(v7 + 56))(v5, v28 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

LABEL_23:
    sub_100002FD0(v5, &qword_10001CBC0, &qword_1000116C0);
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v39 = sub_100010774();
    sub_100002608(v39, qword_10001D870);
    v30 = sub_100010754();
    v40 = sub_100010974();
    if (os_log_type_enabled(v30, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v69[0] = v42;
      *v41 = 136315138;
      v43 = sub_100010854();
      v45 = sub_100002BB4(v43, v44, v69);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v30, v40, "Missing %s field", v41, 0xCu);
      sub_100002C80(v42);
    }

    sub_10000F124(v64, v65);
LABEL_17:

LABEL_18:
    v37 = type metadata accessor for Configuration(0);
    return (*(*(v37 - 8) + 56))(a1, 1, 1, v37);
  }

  v63 = *(v7 + 32);
  v63(v13, v5, v6);
  v67 = sub_100010854();
  v68 = v46;
  sub_100010A64();
  if (!*(v17 + 16) || (v47 = sub_10000B9D4(v69), (v48 & 1) == 0))
  {

    sub_10000F8D8(v69);
LABEL_33:
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v54 = sub_100010774();
    sub_100002608(v54, qword_10001D870);
    v55 = sub_100010754();
    v56 = sub_100010974();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v69[0] = v58;
      *v57 = 136315138;
      v59 = sub_100010854();
      v61 = sub_100002BB4(v59, v60, v69);

      *(v57 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v55, v56, "Missing %s field", v57, 0xCu);
      sub_100002C80(v58);
    }

    sub_10000F124(v64, v65);

    (*(v7 + 8))(v13, v6);
    goto LABEL_18;
  }

  sub_100003AF0(*(v17 + 56) + 32 * v47, v70);
  sub_10000F8D8(v69);

  sub_10000399C(0, &qword_10001CB80, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_33;
  }

  v49 = v67;
  (*(v7 + 16))(v11, v13, v6);
  [v49 doubleValue];
  v51 = v50;

  (*(v7 + 8))(v13, v6);
  *a1 = v66;
  a1[1] = v21;
  v52 = v65;
  a1[2] = v64;
  a1[3] = v52;
  v53 = type metadata accessor for Configuration(0);
  v63(a1 + *(v53 + 24), v11, v6);
  *(a1 + *(v53 + 28)) = v51;
  return (*(*(v53 - 8) + 56))(a1, 0, 1, v53);
}

id sub_100007AEC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringsEndpoint(0);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result aa_primaryAppleAccount];

  if (!v8)
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v26 = sub_100010774();
    sub_100002608(v26, qword_10001D870);
    v19 = sub_100010754();
    v27 = sub_100010974();
    if (os_log_type_enabled(v19, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v19, v27, "No Apple Account", v28, 2u);
    }

    goto LABEL_23;
  }

  v9 = [v8 propertiesForDataclass:ACAccountDataclassDeviceLocator];
  if (v9 && (v10 = v9, v11 = sub_100010814(), v10, v12 = sub_10000A864(v11), , v12))
  {
    if (*(v12 + 16))
    {
      v13 = sub_10000BA18(0x656D616E74736F68, 0xE800000000000000);
      if (v14)
      {
        v15 = (*(v12 + 56) + 16 * v13);
        v16 = *v15;
        v17 = v15[1];

        if (v17)
        {
          sub_100010564();
          sub_100010554();
          sub_100010534();
          sub_100010544();
          sub_10000F4B8(v5, a1, type metadata accessor for LocalizedStringsEndpoint);
          return (*(v33 + 56))(a1, 0, 1, v2);
        }

        goto LABEL_24;
      }
    }

    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v29 = sub_100010774();
    sub_100002608(v29, qword_10001D870);
    v19 = sub_100010754();
    v30 = sub_100010974();
    if (!os_log_type_enabled(v19, v30))
    {
      goto LABEL_22;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v19, v30, "No hostname", v31, 2u);
  }

  else
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v18 = sub_100010774();
    sub_100002608(v18, qword_10001D870);
    v19 = sub_100010754();
    v20 = sub_100010974();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_22;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34 = v22;
    *v21 = 136315138;
    v23 = sub_100010854();
    v25 = sub_100002BB4(v23, v24, &v34);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "Nothing for dataclass %s", v21, 0xCu);
    sub_100002C80(v22);
  }

LABEL_22:

LABEL_23:
LABEL_24:
  v32 = *(v33 + 56);

  return v32(a1, 1, 1, v2);
}

uint64_t sub_100008000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 432) = v15;
  *(v8 + 400) = v13;
  *(v8 + 416) = v14;
  *(v8 + 368) = v11;
  *(v8 + 384) = v12;
  *(v8 + 352) = a7;
  *(v8 + 360) = a8;
  *(v8 + 336) = a5;
  *(v8 + 344) = a6;

  return (_swift_task_switch)(sub_1000080A4, 0, 0);
}

uint64_t sub_1000080A4()
{
  if (&class metadata base offset for ServerInteractionController)
  {
    v1 = &protocol conformance descriptor for ServerInteractionController == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1 || &type metadata accessor for ServerInteractionController == 0 || &type metadata for ServerInteractionController == 0 || &metaclass for ServerInteractionController == 0 || &nominal type descriptor for ServerInteractionController == 0)
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v22 = sub_100010774();
    sub_100002608(v22, qword_10001D870);
    v23 = sub_100010754();
    v24 = sub_100010974();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Request failed because FindMyServerInteraction is not available.", v25, 2u);
    }

    v27 = *(v0 + 336);
    v26 = *(v0 + 344);

    sub_100003030();
    swift_allocError();
    *v28 = 6;
    v27();

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v6 = *(v0 + 408);
    v7 = *(v0 + 392);
    v30 = *(v0 + 384);
    v31 = *(v0 + 400);
    v9 = *(v0 + 368);
    v8 = *(v0 + 376);
    v11 = *(v0 + 352);
    v10 = *(v0 + 360);
    sub_1000106A4();
    *(v0 + 440) = sub_100010694();
    v12 = sub_100010744();
    *(v0 + 448) = v12;
    v13 = *(v12 - 8);
    *(v0 + 456) = v13;
    *(v0 + 464) = *(v13 + 64);
    v14 = swift_task_alloc();
    *(v0 + 472) = v14;
    *(v0 + 40) = type metadata accessor for LocalizedStringsEndpoint(0);
    *(v0 + 48) = sub_10000F6F0();
    v15 = sub_10000F748((v0 + 16));
    sub_10000F178(v11, v15);
    *(v0 + 80) = &type metadata for LocalizedStringsRequest;
    v16 = sub_10000F7AC();
    *(v0 + 56) = v10;
    *(v0 + 88) = v16;
    *(v0 + 64) = v9;
    *(v0 + 72) = v8;
    *(v0 + 120) = &type metadata for LocalizedStringsCredential;
    *(v0 + 128) = sub_10000F800();
    v17 = swift_allocObject();
    *(v0 + 96) = v17;
    v17[2] = v30;
    v17[3] = v7;
    v17[4] = v31;
    v17[5] = v6;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0;
    *(v0 + 136) = 0u;

    sub_10000F450(v9, v8);
    v18 = *(&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + 1);
    v19 = async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:);

    v20 = swift_task_alloc();
    *(v0 + 480) = v20;
    *v20 = v0;
    v20[1] = sub_1000084A4;

    return ((&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + v19))(v14, v0 + 16, v0 + 56, v0 + 96, v0 + 136);
  }
}

uint64_t sub_1000084A4()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v6 = *v1;
  *(*v1 + 488) = v0;

  sub_100002FD0(v2 + 136, &qword_10001CB68, &qword_100011678);
  if (v0)
  {
    v4 = sub_10000990C;
  }

  else
  {
    sub_100002FD0(v2 + 96, &qword_10001CB70, &qword_100011680);
    sub_100002C80((v2 + 56));
    sub_100002C80((v2 + 16));
    v4 = sub_100008634;
  }

  return (_swift_task_switch)(v4, 0, 0);
}

uint64_t sub_100008634()
{
  v178 = v0;
  v1 = v0[59];
  if ((sub_100010714() - 200) > 0x63)
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v29 = v0[59];
    v30 = v0[56];
    v31 = v0[57];
    v32 = v0[58] + 15;
    v33 = sub_100010774();
    sub_100002608(v33, qword_10001D870);
    v34 = swift_task_alloc();
    (*(v31 + 16))(v34, v29, v30);
    v35 = sub_100010754();
    v36 = sub_100010974();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[56];
    v39 = v0[57];
    if (v37)
    {
      v40 = swift_slowAlloc();
      *v40 = 134217984;
      v41 = sub_100010714();
      v42 = *(v39 + 8);
      v42(v34, v38);

      *(v40 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Request failed, HTTP status: %ld", v40, 0xCu);
    }

    else
    {
      v42 = *(v39 + 8);
      v42(v34, v0[56]);
    }

    v43 = v0[61];
    v45 = v0[53];
    v44 = v0[54];
    v46 = (type metadata accessor for Configuration(0) - 8);
    v47 = *(*v46 + 64) + 15;
    v48 = swift_task_alloc();
    v49 = v48 + v46[8];
    sub_100010664();
    *v48 = 48;
    *(v48 + 8) = 0xE100000000000000;
    *(v48 + 16) = xmmword_100011330;
    *(v48 + v46[9]) = 0x40F5180000000000;
    sub_100009E44();
    sub_10000F520(v48, type metadata accessor for Configuration);

    if (v43)
    {
      swift_errorRetain();
      v50 = sub_100010754();
      v51 = sub_100010974();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138543362;
        swift_errorRetain();
        v54 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 4) = v54;
        *v53 = v54;
        _os_log_impl(&_mh_execute_header, v50, v51, "Failed to write config fetch attempt: %{public}@", v52, 0xCu);
        sub_100002FD0(v53, &qword_10001CA80, &qword_100011358);
      }

      else
      {
      }
    }

    v74 = v0[59];
    v75 = v0[56];
    v76 = v0[57];
    v77 = v0[55];
    v79 = v0[42];
    v78 = v0[43];
    sub_100003030();
    swift_allocError();
    *v80 = 6;
    v79();

    v42(v74, v75);
    goto LABEL_39;
  }

  v2 = v0[59];
  v3 = objc_opt_self();
  v4 = sub_100010724();
  v6 = v5;
  isa = sub_100010624().super.isa;
  sub_10000F124(v4, v6);
  v0[39] = 0;
  v8 = [v3 JSONObjectWithData:isa options:0 error:v0 + 39];

  v9 = v0[39];
  if (!v8)
  {
    v55 = v9;
    sub_1000105C4();

    swift_willThrow();
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v56 = sub_100010774();
    sub_100002608(v56, qword_10001D870);
    swift_errorRetain();
    v57 = sub_100010754();
    v58 = sub_100010974();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      swift_errorRetain();
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 4) = v61;
      *v60 = v61;
      _os_log_impl(&_mh_execute_header, v57, v58, "The response is not valid JSON: %@", v59, 0xCu);
      sub_100002FD0(v60, &qword_10001CA80, &qword_100011358);
    }

    v62 = v0[59];
    v63 = v0[56];
    v64 = v0[57];
    v65 = v0[55];
    v67 = v0[42];
    v66 = v0[43];

    sub_100003030();
    swift_allocError();
    *v68 = 6;
    v67();

    goto LABEL_27;
  }

  v10 = v9;
  sub_100010A04();
  swift_unknownObjectRelease();
  sub_100004898(&qword_10001CB78, &qword_100011688);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_10001CE70 == -1)
    {
LABEL_29:
      v69 = sub_100010774();
      sub_100002608(v69, qword_10001D870);
      v70 = sub_100010754();
      v71 = sub_100010974();
      if (!os_log_type_enabled(v70, v71))
      {
LABEL_38:
        v82 = v0[59];
        v83 = v0[56];
        v84 = v0[57];
        v85 = v0[55];
        v87 = v0[42];
        v86 = v0[43];

        sub_100003030();
        swift_allocError();
        *v88 = 6;
        v87();

        (*(v84 + 8))(v82, v83);
        goto LABEL_39;
      }

      v72 = swift_slowAlloc();
      *v72 = 0;
      v73 = "The response is not valid JSON: not object";
LABEL_37:
      _os_log_impl(&_mh_execute_header, v70, v71, v73, v72, 2u);

      goto LABEL_38;
    }

LABEL_72:
    swift_once();
    goto LABEL_29;
  }

  v11 = v0[40];
  if (!*(v11 + 16) || (v12 = sub_10000BA18(0xD000000000000014, 0x8000000100011CE0), (v13 & 1) == 0) || (sub_100003AF0(*(v11 + 56) + 32 * v12, (v0 + 26)), sub_10000399C(0, &qword_10001CB80, NSNumber_ptr), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v81 = sub_100010774();
    sub_100002608(v81, qword_10001D870);
    v70 = sub_100010754();
    v71 = sub_100010974();
    if (!os_log_type_enabled(v70, v71))
    {
      goto LABEL_38;
    }

    v72 = swift_slowAlloc();
    *v72 = 0;
    v73 = "The response is missing configExpiryInMillis";
    goto LABEL_37;
  }

  v14 = v0[41];
  if (*(v11 + 16) && (v15 = sub_10000BA18(0x6F43737574617473, 0xEA00000000006564), (v16 & 1) != 0))
  {
    sub_100003AF0(*(v11 + 56) + 32 * v15, (v0 + 30));

    if (swift_dynamicCast())
    {
      v17 = sub_100009B44(v0[37], v0[38]);
      if ((v18 & 1) == 0)
      {
        if ((v17 - 200) <= 0x63)
        {
          v19 = v0[59];
          [v14 doubleValue];
          v21 = v20;

          v22 = sub_1000106B4();
          v23 = *(v22 - 8);
          v24 = *(v23 + 64) + 15;
          v25 = swift_task_alloc();
          sub_100010734();
          v26 = sub_1000106C4();
          v28 = v27;
          (*(v23 + 8))(v25, v22);
          if (v28)
          {
            v174 = v26;
          }

          else
          {
            v108 = v0[52];
            swift_beginAccess();
            v28 = *(v108 + 24);
            v174 = *(v108 + 16);
          }

          v172 = v0[61];
          v109 = v0[59];
          v111 = v0[53];
          v110 = v0[54];

          v112 = (type metadata accessor for Configuration(0) - 8);
          v113 = *(*v112 + 64) + 15;
          v114 = swift_task_alloc();

          v115 = sub_100010724();
          v117 = v116;
          v118 = v28;
          v119 = v112[8];
          sub_100010664();
          *v114 = v174;
          v114[1] = v118;
          v175 = v118;
          v114[2] = v115;
          v114[3] = v117;
          *(v114 + v112[9]) = v21 / 1000.0;
          v120 = sub_100010684();
          v121 = *(v120 - 8);
          v122 = *(v121 + 64) + 15;
          v123 = swift_task_alloc();
          sub_100010644();
          sub_100009E44();
          if (v172)
          {
            v124 = v0[59];
            v126 = v0[56];
            v125 = v0[57];
            v127 = v0[55];

            (*(v121 + 8))(v123, v120);
            sub_10000F520(v114, type metadata accessor for Configuration);
            (*(v125 + 8))(v124, v126);

            v128 = v0[59];

            if (qword_10001CE70 != -1)
            {
              swift_once();
            }

            v129 = sub_100010774();
            sub_100002608(v129, qword_10001D870);
            swift_errorRetain();
            v130 = sub_100010754();
            v131 = sub_100010974();

            if (os_log_type_enabled(v130, v131))
            {
              v132 = swift_slowAlloc();
              v133 = swift_slowAlloc();
              *v132 = 138412290;
              swift_errorRetain();
              v134 = _swift_stdlib_bridgeErrorToNSError();
              *(v132 + 4) = v134;
              *v133 = v134;
              _os_log_impl(&_mh_execute_header, v130, v131, "Request failed %@", v132, 0xCu);
              sub_100002FD0(v133, &qword_10001CA80, &qword_100011358);
            }

            v136 = v0[42];
            v135 = v0[43];

            sub_100003030();
            swift_allocError();
            *v137 = 6;
            v136();

            goto LABEL_40;
          }

          v169 = v114;
          v171 = v121;
          v173 = v123;
          if (qword_10001CE70 != -1)
          {
            swift_once();
          }

          v138 = v0[59];
          v140 = v0[56];
          v139 = v0[57];
          v141 = v0[54];
          v142 = v0[58] + 15;
          v143 = sub_100010774();
          sub_100002608(v143, qword_10001D870);
          v144 = swift_task_alloc();
          (*(v139 + 16))(v144, v138, v140);
          v145 = swift_task_alloc();
          (*(v171 + 16))(v145, v173, v120);

          v146 = sub_100010754();
          v147 = sub_100010984();

          if (!os_log_type_enabled(v146, v147))
          {
            v170 = *(v0[57] + 8);
            v170(v144, v0[56]);

            v176 = *(v171 + 8);
            v176(v145, v120);
LABEL_77:
            v162 = v0[59];
            v164 = v0[55];
            v163 = v0[56];
            v166 = v0[42];
            v165 = v0[43];

            v166(0);

            v176(v173, v120);
            sub_10000F520(v169, type metadata accessor for Configuration);
            v170(v162, v163);

            goto LABEL_39;
          }

          log = v146;
          v148 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          v177[0] = swift_slowAlloc();
          *v148 = 134218754;
          v149 = sub_100010724();
          v151 = v150 >> 62;
          if ((v150 >> 62) <= 1)
          {
            if (v151)
            {
              v156 = HIDWORD(v149);
              v157 = v149;
              result = sub_10000F124(v149, v150);
              if (__OFSUB__(v156, v157))
              {
                __break(1u);
                return result;
              }

              v153 = v156 - v157;
            }

            else
            {
              v152 = BYTE6(v150);
              sub_10000F124(v149, v150);
              v153 = v152;
            }

            goto LABEL_76;
          }

          if (v151 != 2)
          {
            sub_10000F124(v149, v150);
            v153 = 0;
LABEL_76:
            v159 = v0[53];
            v158 = v0[54];
            v170 = *(v0[57] + 8);
            v170(v144, v0[56]);
            *(v148 + 4) = v153;
            *(v148 + 12) = 2082;
            *(v148 + 14) = sub_100002BB4(v159, v158, v177);
            *(v148 + 22) = 2080;
            v160 = sub_100002BB4(v174, v175, v177);

            *(v148 + 24) = v160;
            *(v148 + 32) = 2114;
            v161 = sub_100010654().super.isa;
            v176 = *(v171 + 8);
            v176(v145, v120);
            *(v148 + 34) = v161;
            *v167 = v161;
            _os_log_impl(&_mh_execute_header, log, v147, "Stored %ld B for %{public}s, version: %s, expires: %{public}@", v148, 0x2Au);
            sub_100002FD0(v167, &qword_10001CA80, &qword_100011358);

            swift_arrayDestroy();

            goto LABEL_77;
          }

          v155 = *(v149 + 16);
          v154 = *(v149 + 24);
          sub_10000F124(v149, v150);
          v153 = v154 - v155;
          if (!__OFSUB__(v154, v155))
          {
            goto LABEL_76;
          }

          __break(1u);
          goto LABEL_72;
        }

        v104 = v17;
        if (qword_10001CE70 != -1)
        {
          swift_once();
        }

        v105 = sub_100010774();
        sub_100002608(v105, qword_10001D870);
        v92 = sub_100010754();
        v106 = sub_100010974();
        if (!os_log_type_enabled(v92, v106))
        {
          goto LABEL_49;
        }

        v107 = swift_slowAlloc();
        *v107 = 134217984;
        *(v107 + 4) = v104;
        v95 = "The response statusCode indicates failure: %ld";
        v96 = v106;
        v97 = v92;
        v98 = v107;
        v99 = 12;
        goto LABEL_48;
      }
    }
  }

  else
  {
  }

  if (qword_10001CE70 != -1)
  {
    swift_once();
  }

  v91 = sub_100010774();
  sub_100002608(v91, qword_10001D870);
  v92 = sub_100010754();
  v93 = sub_100010974();
  if (!os_log_type_enabled(v92, v93))
  {
    goto LABEL_49;
  }

  v94 = swift_slowAlloc();
  *v94 = 0;
  v95 = "The response is missing statusCode";
  v96 = v93;
  v97 = v92;
  v98 = v94;
  v99 = 2;
LABEL_48:
  _os_log_impl(&_mh_execute_header, v97, v96, v95, v98, v99);

LABEL_49:
  v62 = v0[59];
  v63 = v0[56];
  v64 = v0[57];
  v100 = v0[55];
  v102 = v0[42];
  v101 = v0[43];

  sub_100003030();
  swift_allocError();
  *v103 = 6;
  v102();

LABEL_27:

  (*(v64 + 8))(v62, v63);
LABEL_39:

LABEL_40:
  v89 = v0[1];

  return v89();
}

uint64_t sub_10000990C()
{
  v1 = v0[55];

  sub_100002FD0((v0 + 12), &qword_10001CB70, &qword_100011680);
  sub_100002C80(v0 + 7);
  sub_100002C80(v0 + 2);
  v2 = v0[61];
  v3 = v0[59];

  if (qword_10001CE70 != -1)
  {
    swift_once();
  }

  v4 = sub_100010774();
  sub_100002608(v4, qword_10001D870);
  swift_errorRetain();
  v5 = sub_100010754();
  v6 = sub_100010974();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Request failed %@", v7, 0xCu);
    sub_100002FD0(v8, &qword_10001CA80, &qword_100011358);
  }

  v11 = v0[42];
  v10 = v0[43];

  sub_100003030();
  swift_allocError();
  *v12 = 6;
  v11();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100009B44(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_100010AA4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_10000C518(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100009E44()
{
  v1 = sub_1000105A4();
  v73 = *(v1 - 8);
  v2 = *(v73 + 64);
  __chkstk_darwin(v1);
  v72 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100010614();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v71 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v69 - v10;
  __chkstk_darwin(v9);
  v13 = &v69 - v12;
  v14 = [objc_opt_self() sharedInstance];
  v15 = sub_100010824();
  v16 = [v14 fileURLWithLocale:v15];

  if (v16)
  {
    v70 = v1;
    sub_1000105F4();

    (*(v5 + 32))(v13, v11, v4);
    v17 = [objc_allocWithZone(NSMutableDictionary) init];
    v18 = sub_100010854();
    v20 = v19;
    v21 = *v0;
    v22 = v0[1];
    v23 = sub_100010824();
    v74 = v4;
    v75 = v5;
    v24 = v23;
    v76 = v18;
    v77 = v20;
    [v17 __swift_setObject:v23 forKeyedSubscript:sub_100010B24()];

    swift_unknownObjectRelease();
    v25 = sub_100010854();
    v27 = v26;
    v28 = v0[2];
    v29 = v0[3];
    isa = sub_100010624().super.isa;
    v76 = v25;
    v77 = v27;
    [v17 __swift_setObject:isa forKeyedSubscript:sub_100010B24()];

    swift_unknownObjectRelease();
    v31 = sub_100010854();
    v33 = v32;
    v34 = type metadata accessor for Configuration(0);
    v35 = v13;
    v36 = v0;
    v37 = v0 + *(v34 + 24);
    v38 = sub_100010654().super.isa;
    v76 = v31;
    v77 = v33;
    [v17 __swift_setObject:v38 forKeyedSubscript:sub_100010B24()];

    swift_unknownObjectRelease();
    v39 = sub_100010854();
    v41 = v40;
    v42 = *(v36 + *(v34 + 28));
    v43 = v35;
    v44 = [objc_allocWithZone(NSNumber) initWithDouble:v42];
    v76 = v39;
    v77 = v41;
    [v17 __swift_setObject:v44 forKeyedSubscript:sub_100010B24()];

    swift_unknownObjectRelease();
    sub_1000105E4(v45);
    v47 = v46;
    v76 = 0;
    LODWORD(v41) = [v17 writeToURL:v46 error:&v76];

    v48 = v76;
    if (v41)
    {
      v49 = v74;
      v50 = v75;
      v51 = objc_opt_self();
      v52 = v48;
      v53 = [v51 defaultManager];
      sub_100004898(&qword_10001CB90, &qword_100011698);
      inited = swift_initStackObject();
      *(inited + 32) = NSFilePosixPermissions;
      *(inited + 16) = xmmword_100011310;
      *(inited + 64) = &type metadata for Int;
      *(inited + 40) = 420;
      v55 = NSFilePosixPermissions;
      sub_10000DC08(inited);
      swift_setDeallocating();
      sub_100002FD0(inited + 32, &qword_10001CB98, &qword_1000116A0);
      type metadata accessor for FileAttributeKey(0);
      sub_10000D290(&qword_10001CBA0, type metadata accessor for FileAttributeKey);
      v56 = sub_100010804().super.isa;

      sub_100010604();
      v57 = sub_100010824();

      v76 = 0;
      v58 = [v53 setAttributes:v56 ofItemAtPath:v57 error:&v76];

      if (v58)
      {
        v59 = v76;
        v60 = v72;
        sub_100010594();
        sub_100010584();
        v61 = v50;
        v62 = *(v50 + 16);
        v63 = v71;
        v62(v71, v43, v49);
        sub_1000105D4();

        v64 = *(v61 + 8);
        v64(v63, v49);
        (*(v73 + 8))(v60, v70);
        return (v64)(v43, v49);
      }

      else
      {
        v68 = v76;
        sub_1000105C4();

        swift_willThrow();
        return (*(v50 + 8))(v43, v49);
      }
    }

    else
    {
      v67 = v76;
      sub_1000105C4();

      swift_willThrow();
      return (*(v75 + 8))(v35, v74);
    }
  }

  else
  {
    sub_100003030();
    swift_allocError();
    *v66 = 3;
    return swift_willThrow();
  }
}

uint64_t sub_10000A564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004898(&qword_10001CB50, &qword_100011638);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000F92C(a3, v27 - v11, &qword_10001CB50, &qword_100011638);
  v13 = sub_100010964();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100002FD0(v12, &qword_10001CB50, &qword_100011638);
  }

  else
  {
    sub_100010954();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_100010944();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100010864() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100002FD0(a3, &qword_10001CB50, &qword_100011638);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100002FD0(a3, &qword_10001CB50, &qword_100011638);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

unint64_t sub_10000A864(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_100004898(&qword_10001CBB0, &qword_1000116B0);
    v2 = sub_100010AE4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v16 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v16);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v16 = v9;
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v16 << 6);
    sub_10000F87C(*(v1 + 48) + 40 * v17, v30);
    sub_100003AF0(*(v1 + 56) + 32 * v17, v31 + 8);
    v28[0] = v31[0];
    v28[1] = v31[1];
    v29 = v32;
    v27[0] = v30[0];
    v27[1] = v30[1];
    sub_10000F87C(v27, v26);
    if (!swift_dynamicCast())
    {
      sub_100002FD0(v27, &qword_10001CBB8, &qword_1000116B8);

      goto LABEL_22;
    }

    sub_100003AF0(v28 + 8, v26);
    sub_100002FD0(v27, &qword_10001CBB8, &qword_1000116B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_10000BA18(v24, v25);
    if (v18)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      v13 = v12[1];
      *v12 = v24;
      v12[1] = v25;

      v14 = (v2[7] + v11);
      v1 = v10;
      v15 = v14[1];
      *v14 = v24;
      v14[1] = v25;

      v9 = v16;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v24;
      v19[1] = v25;
      v20 = (v2[7] + 16 * result);
      *v20 = v24;
      v20[1] = v25;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      v2[2] = v23;
      v9 = v16;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_10000AB44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100010574();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10000ABAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_10000C218(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_10000BA18(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_10000C3A0();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_10000C068(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_10000AD1C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_10000AD4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_10000AD94()
{
  v0 = sub_100010774();
  sub_10000EFF4(v0, qword_10001D870);
  sub_100002608(v0, qword_10001D870);
  return sub_100010764();
}

BOOL sub_10000AE58(void *a1, uint64_t *a2)
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

void *sub_10000AE88@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_10000AEB4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10000AFAC(uint64_t a1, id *a2)
{
  result = sub_100010834();
  *a2 = 0;
  return result;
}

uint64_t sub_10000B024(uint64_t a1, id *a2)
{
  v3 = sub_100010844();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000B0A4@<X0>(void *a1@<X8>)
{
  sub_100010854();
  v2 = sub_100010824();

  *a1 = v2;
  return result;
}

uint64_t sub_10000B0E8()
{
  v1 = *v0;
  sub_100010854();
  v2 = sub_1000108F4();

  return v2;
}

uint64_t sub_10000B124()
{
  v1 = *v0;
  sub_100010854();
  sub_100010884();
}

Swift::Int sub_10000B178()
{
  v1 = *v0;
  sub_100010854();
  sub_100010B84();
  sub_100010884();
  v2 = sub_100010BA4();

  return v2;
}

uint64_t sub_10000B200@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100003084(a1);

  *a2 = v3;
  return result;
}

void *sub_10000B240@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000B25C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_100010854();
  v6 = v5;
  if (v4 == sub_100010854() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100010B14();
  }

  return v9 & 1;
}

uint64_t sub_10000B2E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_100010824();

  *a2 = v5;
  return result;
}

uint64_t sub_10000B32C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100010854();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000B358(uint64_t a1)
{
  v2 = sub_10000D290(&qword_10001CBA0, type metadata accessor for FileAttributeKey);
  v3 = sub_10000D290(&unk_10001CD30, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000B414(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000B50C;

  return v7(a1);
}

uint64_t sub_10000B50C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_10000B604(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000B650(a1, a2);
  sub_10000B780(&off_100018AB0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000B650(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000B86C(v5, 0);
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

  result = sub_100010AA4();
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
        v10 = sub_1000108A4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000B86C(v10, 0);
        result = sub_100010A74();
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

uint64_t sub_10000B780(uint64_t result)
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

  result = sub_10000B8E0(result, v12, 1, v3);
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

void *sub_10000B86C(uint64_t a1, uint64_t a2)
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

  sub_100004898(&qword_10001CB88, &qword_100011690);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000B8E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004898(&qword_10001CB88, &qword_100011690);
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

unint64_t sub_10000B9D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100010A44(*(v2 + 40));

  return sub_10000BB24(a1, v4);
}

unint64_t sub_10000BA18(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100010B84();
  sub_100010884();
  v6 = sub_100010BA4();

  return sub_10000BBEC(a1, a2, v6);
}

unint64_t sub_10000BA90(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_100010854();
  sub_100010B84();
  sub_100010884();
  v4 = sub_100010BA4();

  return sub_10000BCA4(a1, v4);
}

unint64_t sub_10000BB24(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000F87C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100010A54();
      sub_10000F8D8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10000BBEC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100010B14())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000BCA4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100010854();
      v9 = v8;
      if (v7 == sub_100010854() && v9 == v10)
      {
        break;
      }

      v12 = sub_100010B14();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_10000BDA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004898(&qword_10001CBB0, &qword_1000116B0);
  v40 = a2;
  result = sub_100010AD4();
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
      sub_100010B84();
      sub_100010884();
      result = sub_100010BA4();
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

uint64_t sub_10000C068(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100010A34() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_100010B84();

      sub_100010884();
      v13 = sub_100010BA4();

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
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
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

uint64_t sub_10000C218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10000BA18(a3, a4);
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
      sub_10000BDA8(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_10000BA18(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_100010B34();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10000C3A0();
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

void *sub_10000C3A0()
{
  v1 = v0;
  sub_100004898(&qword_10001CBB0, &qword_1000116B0);
  v2 = *v0;
  v3 = sub_100010AC4();
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

unsigned __int8 *sub_10000C518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100010904();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000CAA4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_100010AA4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10000CAA4()
{
  v0 = sub_100010914();
  v4 = sub_10000CB24(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10000CB24(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_100010874();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1000109F4();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10000B86C(v9, 0);
  v12 = sub_10000CC7C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_100010874();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_100010AA4();
LABEL_4:

  return sub_100010874();
}

unint64_t sub_10000CC7C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10000CE9C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1000108D4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_100010AA4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10000CE9C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1000108B4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10000CE9C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1000108E4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1000108C4();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10000CF18(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  if (sub_100010514())
  {
    v8 = [objc_opt_self() standardUserDefaults];
    v9 = sub_100010824();
    v10 = [v8 BOOLForKey:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 fmipActive];

  if (!v12 || (v10 & 1) != 0)
  {
    v18 = [objc_opt_self() defaultStore];
    if (!v18)
    {

      __break(1u);
      return result;
    }

    v19 = v18;
    v20 = [v18 aa_primaryAppleAccount];

    if (v20)
    {
    }

    else if (!v10)
    {
      if (qword_10001CE70 != -1)
      {
        swift_once();
      }

      v24 = sub_100010774();
      sub_100002608(v24, qword_10001D870);
      v14 = sub_100010754();
      v15 = sub_100010984();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_11;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "Device is signed out of iCloud, not posting CFU";
      goto LABEL_10;
    }

    v21 = swift_allocObject();
    v21[2] = sub_10000F994;
    v21[3] = v7;
    v21[4] = a1;

    v22 = a1;
    sub_100003B88(0, 0, sub_10000FF34, v21);

    goto LABEL_17;
  }

  if (qword_10001CE70 != -1)
  {
    swift_once();
  }

  v13 = sub_100010774();
  sub_100002608(v13, qword_10001D870);
  v14 = sub_100010754();
  v15 = sub_100010984();
  if (!os_log_type_enabled(v14, v15))
  {
    goto LABEL_11;
  }

  v16 = swift_slowAlloc();
  *v16 = 0;
  v17 = "Find My iPhone is enabled, not posting CFU";
LABEL_10:
  _os_log_impl(&_mh_execute_header, v14, v15, v17, v16, 2u);

LABEL_11:

  a3(0);
LABEL_17:
}

uint64_t sub_10000D290(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D2D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000048E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharedConfigurationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharedConfigurationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000D4DC()
{
  result = qword_10001CE80[0];
  if (!qword_10001CE80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10001CE80);
  }

  return result;
}

void sub_10000D658(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  if (sub_100010514())
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = sub_100010824();
    v8 = [v6 BOOLForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 fmipActive];

  if (!v10 || (v8 & 1) != 0)
  {
    v16 = [objc_opt_self() defaultStore];
    if (!v16)
    {
      _Block_release(a3);
      __break(1u);
      return;
    }

    v17 = v16;
    v18 = [v16 aa_primaryAppleAccount];

    if (v18)
    {
    }

    else if (!v8)
    {
      if (qword_10001CE70 != -1)
      {
        swift_once();
      }

      v21 = sub_100010774();
      sub_100002608(v21, qword_10001D870);
      v12 = sub_100010754();
      v13 = sub_100010984();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_11;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Device is signed out of iCloud, not posting CFU";
      goto LABEL_10;
    }

    v19 = swift_allocObject();
    v19[2] = sub_10000E160;
    v19[3] = v5;
    v19[4] = a1;

    v20 = a1;
    sub_100003B88(0, 0, sub_10000FF34, v19);

    goto LABEL_17;
  }

  if (qword_10001CE70 != -1)
  {
    swift_once();
  }

  v11 = sub_100010774();
  sub_100002608(v11, qword_10001D870);
  v12 = sub_100010754();
  v13 = sub_100010984();
  if (!os_log_type_enabled(v12, v13))
  {
    goto LABEL_11;
  }

  v14 = swift_slowAlloc();
  *v14 = 0;
  v15 = "Find My iPhone is enabled, not posting CFU";
LABEL_10:
  _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);

LABEL_11:

  a3[2](a3, 0, 0);
LABEL_17:
}

unint64_t sub_10000D9B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004898(&qword_10001CBE8, &qword_1000116E0);
    v3 = sub_100010AE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F92C(v4, v13, &qword_10001CBD0, &qword_1000116D0);
      result = sub_10000B9D4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000F86C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_10000DAF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004898(&qword_10001CBB0, &qword_1000116B0);
    v3 = sub_100010AE4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000BA18(v5, v6);
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

unint64_t sub_10000DC08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004898(&qword_10001CBA8, &qword_1000116A8);
    v3 = sub_100010AE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F92C(v4, &v11, &qword_10001CB98, &qword_1000116A0);
      v5 = v11;
      result = sub_10000BA90(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000F86C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void sub_10000DD30(uint64_t a1)
{
  v2 = objc_allocWithZone(FLFollowUpController);
  v3 = sub_100010824();
  v4 = [v2 initWithClientIdentifier:v3];

  if (v4)
  {
    sub_100004898(&qword_10001CA78, &qword_100011350);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100011310;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = 0xD000000000000010;
    *(v5 + 40) = 0x8000000100011BD0;
    isa = sub_100010924().super.isa;

    v24 = 0;
    v7 = [v4 clearPendingFollowUpItemsWithUniqueIdentifiers:isa error:&v24];

    if (v7)
    {
      v8 = *(a1 + 16);
      v9 = v24;
      v8(a1, 0);
    }

    else
    {
      v16 = v24;
      sub_1000105C4();

      swift_willThrow();
      if (qword_10001CE70 != -1)
      {
        swift_once();
      }

      v17 = sub_100010774();
      sub_100002608(v17, qword_10001D870);
      swift_errorRetain();
      v18 = sub_100010754();
      v19 = sub_100010974();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        swift_errorRetain();
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v22;
        *v21 = v22;
        _os_log_impl(&_mh_execute_header, v18, v19, "Unable to clear pending followup for id: com.apple.findmy with error: %@", v20, 0xCu);
        sub_100002FD0(v21, &qword_10001CA80, &qword_100011358);
      }

      swift_errorRetain();
      v23 = sub_1000105B4();
      (*(a1 + 16))(a1, v23);
    }
  }

  else
  {
    if (qword_10001CE70 != -1)
    {
      swift_once();
    }

    v10 = sub_100010774();
    sub_100002608(v10, qword_10001D870);
    v11 = sub_100010754();
    v12 = sub_100010974();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to create the Follow Up controller", v13, 2u);
    }

    sub_100003030();
    swift_allocError();
    *v14 = 9;
    v15 = sub_1000105B4();
    (*(a1 + 16))(a1, v15);
  }
}

id sub_10000E168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a1;
  v7 = sub_100010684();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_100010A84(21);

  v58 = 0xD000000000000010;
  v59 = 0x8000000100011D20;
  v60._countAndFlagsBits = sub_100010504();
  sub_100010894(v60);

  v61._countAndFlagsBits = 47;
  v61._object = 0xE100000000000000;
  sub_100010894(v61);
  v62._countAndFlagsBits = sub_100010524();
  sub_100010894(v62);

  v54 = v59;
  v55 = v58;
  v12 = sub_10000DAF4(&_swiftEmptyArrayStorage);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = v12;
  sub_10000C218(a3, a4, 0xD00000000000001BLL, 0x8000000100011D00, isUniquelyReferenced_nonNull_native);
  v14 = v58;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v14;
  sub_10000C218(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x8000000100011D40, v15);
  v58 = v57;
  sub_100010674();
  v16 = sub_100010634();
  (*(v8 + 8))(v11, v7);
  v57 = v16;
  v17 = sub_100010B04();
  v19 = v18;
  v20 = v58;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v20;
  sub_10000C218(v17, v19, 0xD000000000000015, 0x8000000100011D60, v21);
  v22 = v57;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v22;
  sub_10000C218(49, 0xE100000000000000, 0xD000000000000013, 0x8000000100011D80, v23);
  v24 = v57;
  v58 = v57;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = MobileGestalt_copy_cpuArchitecture_obj();

  if (v27)
  {
    v28 = sub_100010854();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0xE000000000000000;
  }

  v31 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v24;
  sub_10000C218(v28, v30, 0xD000000000000010, 0x8000000100011DA0, v31);
  v58 = v57;
  result = [objc_opt_self() currentDevice];
  if (!result)
  {
    goto LABEL_15;
  }

  v32 = result;

  v33 = [v32 serverFriendlyDescription];

  if (v33)
  {
    v34 = sub_100010854();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  sub_10000ABAC(v34, v36, 0xD000000000000011, 0x8000000100011DC0);
  v37 = v58;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v37;
  sub_10000C218(50, 0xE100000000000000, 0x762D747065636341, 0xEE006E6F69737265, v38);
  v39 = v57;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v39;
  sub_10000C218(v55, v54, 0x6567412D72657355, 0xEA0000000000746ELL, v40);
  v41 = v57;

  v42 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v41;
  v43 = v56;
  sub_10000C218(v56, a2, 0x4C2D747065636341, 0xEF65676175676E61, v42);
  v44 = v57;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v44;
  sub_10000C218(v43, a2, 0xD000000000000010, 0x8000000100011DE0, v45);
  v46 = v57;
  v58 = v57;
  if (sub_100010514())
  {
    sub_100010854();
    v47 = objc_allocWithZone(NSUserDefaults);
    v48 = sub_100010824();

    v49 = [v47 initWithSuiteName:v48];

    if (v49)
    {
      v50 = sub_100010824();
      v51 = [v49 BOOLForKey:v50];

      if (v51)
      {
        v52 = v58;
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v57 = v52;
        sub_10000C218(1702195828, 0xE400000000000000, 0xD000000000000018, 0x8000000100011E20, v53);
        return v57;
      }
    }
  }

  return v46;
}

uint64_t sub_10000E73C(NSObject *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t), void *a6)
{
  v87 = a3;
  v93 = a2;
  v10 = sub_100004898(&qword_10001CB50, &qword_100011638);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v88 = &v82 - v12;
  v13 = sub_100004898(&qword_10001CB58, &qword_100011640);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v82 - v15;
  v17 = type metadata accessor for LocalizedStringsEndpoint(0);
  v94 = *(v17 - 8);
  v18 = *(v94 + 64);
  v19 = __chkstk_darwin(v17);
  v85 = v20;
  v86 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v89 = &v82 - v21;
  v22 = sub_100004898(&qword_10001CB60, &qword_100011648);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = (&v82 - v24);
  v26 = type metadata accessor for Configuration(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = (&v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = swift_allocObject();
  v31[2] = a4;
  v31[3] = a5;
  v92 = a5;
  v95 = v31;
  v31[4] = a6;
  v32 = swift_allocObject();
  *(v32 + 16) = 48;
  *(v32 + 24) = 0xE100000000000000;
  v90 = a4;
  v91 = a6;
  v33 = v93;

  sub_100007168(v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_100002FD0(v25, &qword_10001CB60, &qword_100011648);
  }

  else
  {
    sub_10000F4B8(v25, v30, type metadata accessor for Configuration);
    v34 = *v30;
    v35 = v30[1];

    sub_10000F520(v30, type metadata accessor for Configuration);
    *(v32 + 16) = v34;
    *(v32 + 24) = v35;
  }

  sub_100007AEC(v16);
  if ((*(v94 + 48))(v16, 1, v17) != 1)
  {
    v42 = v89;
    sub_10000F4B8(v16, v89, type metadata accessor for LocalizedStringsEndpoint);
    v43 = *(v32 + 16);
    v44 = *(v32 + 24);

    v45 = sub_10000E168(a1, v33, v43, v44);
    v46 = [objc_opt_self() defaultStore];
    if (!v46)
    {
      goto LABEL_18;
    }

    v47 = v46;
    v48 = [v46 aa_primaryAppleAccount];
    if (v48)
    {
      v49 = v48;
      v50 = [v48 aa_personID];
      if (v50)
      {
        v51 = v50;
        v52 = sub_100010854();
        v54 = v53;

        v55 = [v49 aa_authToken];
        if (v55)
        {
          v56 = v55;
          v57 = sub_100010854();
          v83 = v58;
          v84 = v57;

          if (v54)
          {
            v59 = sub_100010964();
            (*(*(v59 - 8) + 56))(v88, 1, 1, v59);
            v92 = v52;
            v60 = v86;
            sub_10000F178(v42, v86);
            v61 = *(v94 + 80);
            v91 = v45;
            v62 = (v61 + 56) & ~v61;
            v63 = (v85 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
            v64 = (v63 + 31) & 0xFFFFFFFFFFFFFFF8;
            v94 = (v64 + 39) & 0xFFFFFFFFFFFFFFF8;
            v65 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
            v66 = swift_allocObject();
            v66[2] = 0;
            v66[3] = 0;
            v85 = v54;
            v67 = v87;
            v66[4] = v87;
            v66[5] = sub_10000F0D0;
            v90 = a1;
            v66[6] = v95;
            sub_10000F4B8(v60, v66 + v62, type metadata accessor for LocalizedStringsEndpoint);
            v68 = v66 + v63;
            *v68 = v91;
            *(v68 + 8) = xmmword_100011330;
            v69 = (v66 + v64);
            v70 = v84;
            v71 = v85;
            *v69 = v92;
            v69[1] = v71;
            v69[2] = v70;
            v69[3] = v83;
            *(v66 + v94) = v32;
            v72 = (v66 + v65);
            *v72 = v90;
            v72[1] = v33;

            v73 = v67;

            sub_10000F450(0, 0xC000000000000000);

            sub_10000A564(0, 0, v88, &unk_100011658, v66);

            sub_10000F110(0, 0xC000000000000000);
            v74 = v89;
LABEL_23:
            sub_10000F520(v74, type metadata accessor for LocalizedStringsEndpoint);
            goto LABEL_24;
          }
        }

        else
        {
        }

LABEL_18:
        if (qword_10001CE70 != -1)
        {
          swift_once();
        }

        v75 = sub_100010774();
        sub_100002608(v75, qword_10001D870);
        v76 = sub_100010754();
        v77 = sub_100010974();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&_mh_execute_header, v76, v77, "Failed to create LocalizedStringsCredential", v78, 2u);
        }

        sub_100003030();
        v79 = swift_allocError();
        *v80 = 5;
        dispatch_group_leave(v90);
        v92(v79);

        sub_10000F110(0, 0xC000000000000000);
        v74 = v42;
        goto LABEL_23;
      }
    }

    goto LABEL_18;
  }

  sub_100002FD0(v16, &qword_10001CB58, &qword_100011640);
  if (qword_10001CE70 != -1)
  {
    swift_once();
  }

  v36 = sub_100010774();
  sub_100002608(v36, qword_10001D870);
  v37 = sub_100010754();
  v38 = sub_100010974();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Failed to create LocalizedStringsEndpoint", v39, 2u);
  }

  sub_100003030();
  v40 = swift_allocError();
  *v41 = 4;
  dispatch_group_leave(v90);
  v92(v40);

LABEL_24:
}

uint64_t *sub_10000EFF4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10000F098(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F0D0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  dispatch_group_leave(v3);
  return v4(a1);
}

uint64_t sub_10000F110(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F124(a1, a2);
  }

  return a1;
}

uint64_t sub_10000F124(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000F178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringsEndpoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F1DC()
{
  v2 = *(type metadata accessor for LocalizedStringsEndpoint(0) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v0 + 40);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v0 + v4);
  v9 = v8[1];
  v22 = *v8;
  v23 = *(v0 + 48);
  v10 = v8[2];
  v21 = *(v0 + v5);
  v11 = *(v0 + v6);
  v13 = *(v0 + v5 + 16);
  v12 = *(v0 + v5 + 24);
  v14 = *(v0 + v7);
  v15 = *(v0 + v7 + 8);
  v16 = swift_task_alloc();
  *(v1 + 16) = v16;
  *v16 = v1;
  v16[1] = sub_10000F35C;

  return sub_100008000(v16, v17, v18, v19, v25, v23, v0 + v3, v22);
}

uint64_t sub_10000F35C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000F450(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F464(a1, a2);
  }

  return a1;
}

uint64_t sub_10000F464(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000F4B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000F520(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000F580(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000FF38;

  return sub_10000B414(a1, v5);
}

uint64_t sub_10000F638(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F35C;

  return sub_10000B414(a1, v5);
}

unint64_t sub_10000F6F0()
{
  result = qword_10001D290;
  if (!qword_10001D290)
  {
    type metadata accessor for LocalizedStringsEndpoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D290);
  }

  return result;
}

uint64_t *sub_10000F748(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_10000F7AC()
{
  result = qword_10001D298;
  if (!qword_10001D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D298);
  }

  return result;
}

unint64_t sub_10000F800()
{
  result = qword_10001D2A0;
  if (!qword_10001D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D2A0);
  }

  return result;
}

_OWORD *sub_10000F86C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000F92C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004898(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000F994(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

uint64_t sub_10000F9C0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000FA0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000FA2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_10000FA68(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 sub_10000FAB4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000FAC0(uint64_t a1, int a2)
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

uint64_t sub_10000FB08(uint64_t result, int a2, int a3)
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

uint64_t sub_10000FB58(uint64_t a1)
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

uint64_t sub_10000FB74(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_10000FB9C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000FBB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000FBF8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10000FC70()
{
  result = sub_100010684();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000FD24()
{
  result = sub_100010574();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10000FD94()
{
  result = qword_10001D350[0];
  if (!qword_10001D350[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10001D350);
  }

  return result;
}

unint64_t sub_10000FEC4()
{
  result = qword_10001D760[0];
  if (!qword_10001D760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10001D760);
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  qword_10001D888 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  qword_10001D890 = [objc_opt_self() serviceListener];
  [qword_10001D890 setDelegate:qword_10001D888];
  [qword_10001D890 resume];
  return 0;
}

id sub_10001008C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC41FindMyDeviceSharedConfigurationXPCService15ServiceDelegate_service;
  type metadata accessor for FindMyDeviceSharedConfigurationXPCService();
  *&v0[v2] = sub_100004928();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_100010170(void *a1)
{
  v3 = sub_100010774();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([a1 valueForEntitlement:kFMDSharedConfigurationXPCServiceAccessEntitlement])
  {
    sub_100010A04();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  sub_10001042C(v19, &v17);
  if (*(&v18 + 1))
  {
    if (swift_dynamicCast() && (v16[15] & 1) != 0)
    {
      v8 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___FMDSharedConfigurationXPCInterface];
      [a1 setExportedInterface:v8];

      [a1 setExportedObject:*(v1 + OBJC_IVAR____TtC41FindMyDeviceSharedConfigurationXPCService15ServiceDelegate_service)];
      [a1 resume];
      v9 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    sub_10001049C(&v17);
  }

  v10 = sub_100004C58();
  (*(v4 + 16))(v7, v10, v3);
  v11 = a1;
  v12 = sub_100010754();
  v13 = sub_100010974();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = [v11 processIdentifier];

    _os_log_impl(&_mh_execute_header, v12, v13, "Connection from pid: %d failed entitlements check", v14, 8u);
  }

  else
  {
  }

  (*(v4 + 8))(v7, v3);
  v9 = 0;
LABEL_13:
  sub_10001049C(v19);
  return v9;
}

uint64_t sub_10001042C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004898(&qword_10001CA70, &unk_100011B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001049C(uint64_t a1)
{
  v2 = sub_100004898(&qword_10001CA70, &unk_100011B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}