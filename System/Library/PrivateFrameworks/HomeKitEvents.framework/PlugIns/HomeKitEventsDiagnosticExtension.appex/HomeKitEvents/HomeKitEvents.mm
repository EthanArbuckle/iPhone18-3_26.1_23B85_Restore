uint64_t sub_100001258()
{
  v0 = sub_100004774();
  sub_100004260(v0, qword_10000C260);
  *sub_100003750(v0, qword_10000C260) = 300;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

void sub_1000012E8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v81 = sub_100004724();
  v89 = *(v81 - 8);
  v3 = *(v89 + 64);
  (__chkstk_darwin)();
  v79 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1000047A4();
  v5 = *(v84 - 8);
  v6 = *(v5 + 8);
  v7 = (__chkstk_darwin)();
  v9 = (&v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v76 - v10);
  v12 = sub_100003464(&qword_10000C168, &qword_100004CF8);
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - 8);
  v15 = &v76 - v14;
  v16 = sub_100004764();
  v17 = *(v16 - 8);
  v86 = v16;
  v87 = v17;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v85 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v80 = &v76 - v22;
  __chkstk_darwin(v21);
  v24 = &v76 - v23;
  v83 = sub_1000044DC(&qword_10000C170, v25, type metadata accessor for HomeKitEventsDiagnosticExtension);
  v88 = ObjectType;
  sub_100004734();

  v26 = sub_100004754();
  v27 = sub_100004894();
  if (os_log_type_enabled(v26, v27))
  {
    v77 = v9;
    v78 = v11;
    v82 = v5;
    v28 = v87;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v92 = v30;
    *v29 = 136315138;
    if (!a1)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v31 = v30;

    v32 = sub_1000047C4();
    v34 = sub_100003978(v32, v33, &v92);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "Starting with parameters: %s", v29, 0xCu);
    sub_1000040A4(v31);

    v35 = *(v28 + 8);
    v35(v24, v86);
    v5 = v82;
    v11 = v78;
    v9 = v77;
  }

  else
  {

    v35 = *(v87 + 8);
    v35(v24, v86);
    if (!a1)
    {
LABEL_31:
      __break(1u);
      return;
    }
  }

  v90 = sub_1000047D4();
  v91 = v36;
  sub_1000048F4();
  v37 = *(a1 + 16);
  v82 = v35;
  if (v37 && (v38 = sub_100003F20(&v92), (v39 & 1) != 0))
  {
    sub_1000040F0(*(a1 + 56) + 32 * v38, &v94);
    sub_100004584(&v92);
    sub_10000404C(0, &qword_10000C188, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v40 = v90;
      v41 = [v90 BOOLValue];

      goto LABEL_11;
    }
  }

  else
  {
    sub_100004584(&v92);
  }

  v41 = 0;
LABEL_11:
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  v43 = v42 + 16;
  *(v42 + 24) = &_swiftEmptyArrayStorage;
  v44 = dispatch_semaphore_create(0);
  v45 = sub_100004844();
  (*(*(v45 - 8) + 56))(v15, 1, 1, v45);
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  *(v46 + 32) = v41;
  *(v46 + 40) = v42;
  *(v46 + 48) = v44;
  *(v46 + 56) = v88;

  v47 = v44;
  sub_1000022B8(0, 0, v15, &unk_100004D18, v46);

  sub_100004784();
  if (qword_10000C1D0 != -1)
  {
LABEL_28:
    swift_once();
  }

  v48 = sub_100004774();
  sub_100003750(v48, qword_10000C260);
  sub_100004794();
  v49 = *(v5 + 1);
  v50 = v84;
  v49(v9, v84);
  v51 = sub_1000048A4();
  v49(v11, v50);
  if ((v51 & 1) == 0)
  {
    os_unfair_lock_lock(v43);
    v56 = *(v42 + 24);

    os_unfair_lock_unlock(v43);
    sub_100004734();

    v57 = sub_100004754();
    v58 = sub_100004894();

    v59 = os_log_type_enabled(v57, v58);
    v88 = v56;
    v78 = v47;
    if (v59)
    {
      v60 = v42;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v92 = v62;
      *v61 = 136315138;
      v63 = sub_100004814();
      v65 = sub_100003978(v63, v64, &v92);

      *(v61 + 4) = v65;
      v56 = v88;
      _os_log_impl(&_mh_execute_header, v57, v58, "Finished collecting attachments: %s", v61, 0xCu);
      sub_1000040A4(v62);

      v42 = v60;
      v47 = v78;
    }

    v82(v85, v86);
    v66 = *(v56 + 16);
    if (!v66)
    {

      return;
    }

    v86 = v42;
    v94 = &_swiftEmptyArrayStorage;
    sub_10000402C(0, v66, 0);
    v43 = 0;
    v87 = v56 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
    v9 = v94;
    v11 = (v89 + 8);
    v5 = v81;
    v42 = v79;
    while (1)
    {
      if (v43 >= *(v56 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v47 = v66;
      (*(v89 + 16))(v42, v87 + *(v89 + 72) * v43, v5);
      v67 = objc_allocWithZone(DEAttachmentItem);
      sub_100004714(v68);
      v70 = v69;
      v71 = [v67 initWithPathURL:v69];

      if (!v71)
      {
        break;
      }

      sub_10000404C(0, &qword_10000C188, NSNumber_ptr);
      isa = sub_1000048C4(1).super.super.isa;
      [v71 setShouldCompress:isa];

      v73 = sub_1000048C4(1).super.super.isa;
      [v71 setDeleteOnAttach:v73];

      v93 = sub_10000404C(0, &qword_10000C190, DEAttachmentItem_ptr);
      *&v92 = v71;
      (v11->isa)(v42, v5);
      v94 = v9;
      v75 = v9[2];
      v74 = v9[3];
      if (v75 >= v74 >> 1)
      {
        sub_10000402C((v74 > 1), v75 + 1, 1);
        v42 = v79;
        v5 = v81;
        v9 = v94;
      }

      ++v43;
      v9[2] = v75 + 1;
      sub_100004094(&v92, &v9[4 * v75 + 4]);
      v66 = v47;
      v56 = v88;
      if (v47 == v43)
      {

        return;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v52 = v80;
  sub_100004734();
  v53 = sub_100004754();
  v54 = sub_100004884();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "Timed out collecting attachments", v55, 2u);
  }

  v82(v52, v86);
}

uint64_t sub_100001D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v9 = sub_100004764();
  v7[5] = v9;
  v10 = *(v9 - 8);
  v7[6] = v10;
  v11 = *(v10 + 64) + 15;
  v7[7] = swift_task_alloc();
  v12 = sub_100004724();
  v7[8] = v12;
  v13 = *(v12 - 8);
  v7[9] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v7[10] = v15;
  v16 = async function pointer to collectDiagnostics(includeSensitiveData:)[1];
  v17 = swift_task_alloc();
  v7[11] = v17;
  *v17 = v7;
  v17[1] = sub_100001EE8;

  return collectDiagnostics(includeSensitiveData:)(v15, a4);
}

uint64_t sub_100001EE8()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1000020D4;
  }

  else
  {
    v3 = sub_100001FFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100001FFC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  v5 = v0[2];
  v6 = sub_1000026FC(v1);
  (*(v2 + 8))(v1, v3);
  os_unfair_lock_lock((v5 + 16));
  v7 = *(v5 + 24);

  *(v5 + 24) = v6;
  os_unfair_lock_unlock((v5 + 16));
  v8 = v0[10];
  v9 = v0[7];
  v10 = v0[3];
  sub_1000048B4();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000020D4(uint64_t a1, uint64_t a2)
{
  v3 = v2[12];
  v4 = v2[7];
  v5 = v2[4];
  sub_1000044DC(&qword_10000C170, a2, type metadata accessor for HomeKitEventsDiagnosticExtension);
  sub_100004734();
  swift_errorRetain();
  v6 = sub_100004754();
  v7 = sub_100004884();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v2[12];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to collect attachments: %@", v10, 0xCu);
    sub_100004524(v11, &qword_10000C1A8, &qword_100004D48);
  }

  else
  {
    v13 = v2[12];
  }

  (*(v2[6] + 8))(v2[7], v2[5]);
  v14 = v2[10];
  v15 = v2[7];
  v16 = v2[3];
  sub_1000048B4();

  v17 = v2[1];

  return v17();
}

uint64_t sub_1000022B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100003464(&qword_10000C168, &qword_100004CF8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_1000042C4(a3, v26 - v10);
  v12 = sub_100004844();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100004524(v11, &qword_10000C168, &qword_100004CF8);
  }

  else
  {
    sub_100004834();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100004824();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1000047E4() + 32;
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

      sub_100004524(a3, &qword_10000C168, &qword_100004CF8);

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

  sub_100004524(a3, &qword_10000C168, &qword_100004CF8);
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

id sub_1000026A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeKitEventsDiagnosticExtension();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1000026FC(char *a1)
{
  v2 = sub_100003464(&qword_10000C1B0, &qword_100004D50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v88 - v4;
  v6 = sub_1000046F4();
  v102 = *(v6 - 8);
  v103 = v6;
  v7 = *(v102 + 64);
  __chkstk_darwin(v6);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004724();
  v114 = *(v10 - 8);
  v11 = v114[8];
  v12 = __chkstk_darwin(v10);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v97 = &v88 - v16;
  v17 = __chkstk_darwin(v15);
  v110 = &v88 - v18;
  v19 = __chkstk_darwin(v17);
  v109 = &v88 - v20;
  __chkstk_darwin(v19);
  v22 = &v88 - v21;
  v113 = sub_100004764();
  v112 = *(v113 - 8);
  v23 = *(v112 + 64);
  v24 = __chkstk_darwin(v113);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v98 = &v88 - v28;
  v29 = __chkstk_darwin(v27);
  v108 = &v88 - v30;
  __chkstk_darwin(v29);
  v32 = &v88 - v31;
  v33 = [objc_opt_self() defaultManager];
  v111 = sub_100004864();
  if (v111)
  {
    v34 = type metadata accessor for HomeKitEventsDiagnosticExtension();
    v100 = sub_1000044DC(&qword_10000C170, v35, type metadata accessor for HomeKitEventsDiagnosticExtension);
    v101 = v34;
    sub_100004734();
    v36 = v114[2];
    v96 = a1;
    v106 = v36;
    v107 = v114 + 2;
    v36(v22, a1, v10);
    v37 = sub_100004754();
    v38 = sub_100004874();
    v39 = os_log_type_enabled(v37, v38);
    v104 = v33;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v116 = v99;
      *v40 = 136315138;
      sub_1000044DC(&qword_10000C1B8, 255, &type metadata accessor for URL);
      v41 = sub_100004924();
      v43 = v42;
      v105 = v114[1];
      v105(v22, v10);
      v44 = sub_100003978(v41, v43, &v116);
      v45 = v113;

      *(v40 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "Enumerating '%s' for attachments", v40, 0xCu);
      sub_1000040A4(v99);

      v46 = v112;
      v99 = *(v112 + 8);
      (v99)(v32, v45);
      v47 = v114;
    }

    else
    {

      v47 = v114;
      v105 = v114[1];
      v105(v22, v10);
      v46 = v112;
      v99 = *(v112 + 8);
      (v99)(v32, v113);
    }

    sub_100004854();
    sub_1000046E4();
    if (v117)
    {
      v59 = (v47 + 7);
      v94 = (v47 + 4);
      v95 = v47 + 1;
      v93 = v46 + 8;
      v60 = 1;
      *&v58 = 136315138;
      v92 = v58;
      do
      {
        while (1)
        {
          v61 = swift_dynamicCast();
          v62 = *v59;
          if ((v61 & 1) == 0)
          {
            break;
          }

          v62(v5, 0, 1, v10);
          v63 = v109;
          (*v94)(v109, v5, v10);
          sub_100004734();
          v106(v110, v63, v10);
          v64 = sub_100004754();
          v65 = sub_100004874();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v91 = v66;
            v90 = swift_slowAlloc();
            v115 = v90;
            *v66 = v92;
            v89 = v64;
            v67 = v110;
            v88 = sub_100004704();
            v69 = v68;
            v105(v67, v10);
            v70 = sub_100003978(v88, v69, &v115);

            v71 = v91;
            *(v91 + 1) = v70;
            v47 = v114;
            v72 = v89;
            _os_log_impl(&_mh_execute_header, v89, v65, "Adding '%s' to attachments", v71, 0xCu);
            sub_1000040A4(v90);

            (v99)(v108, v113);
            v105(v109, v10);
          }

          else
          {

            v73 = v105;
            v105(v110, v10);
            (v99)(v108, v113);
            v73(v109, v10);
            v47 = v114;
          }

          sub_1000046E4();
          v60 = 0;
          if (!v117)
          {
            (*(v102 + 8))(v9, v103);
LABEL_18:
            sub_100003464(&qword_10000C1C0, &qword_100004D58);
            v74 = v47[9];
            v75 = (*(v47 + 80) + 32) & ~*(v47 + 80);
            v76 = swift_allocObject();
            *(v76 + 1) = xmmword_100004C90;
            v106(&v76[v75], v96, v10);

            v33 = v104;
            goto LABEL_27;
          }
        }

        v62(v5, 1, 1, v10);
        sub_100004524(v5, &qword_10000C1B0, &qword_100004D50);
        sub_1000046E4();
      }

      while (v117);
      (*(v102 + 8))(v9, v103);
      if ((v60 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      (*(v102 + 8))(v9, v103);
    }

    v77 = v98;
    sub_100004734();
    v78 = v97;
    v106(v97, v96, v10);
    v79 = sub_100004754();
    v80 = sub_100004874();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v116 = v82;
      *v81 = 136315138;
      sub_1000044DC(&qword_10000C1B8, 255, &type metadata accessor for URL);
      v83 = sub_100004924();
      v85 = v84;
      v105(v78, v10);
      v86 = sub_100003978(v83, v85, &v116);

      *(v81 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v79, v80, "Directory '%s' is empty", v81, 0xCu);
      sub_1000040A4(v82);
    }

    else
    {

      v105(v78, v10);
    }

    (v99)(v77, v113);
    v33 = v104;
  }

  else
  {
    type metadata accessor for HomeKitEventsDiagnosticExtension();
    sub_1000044DC(&qword_10000C170, v48, type metadata accessor for HomeKitEventsDiagnosticExtension);
    sub_100004734();
    (v114[2])(v14, a1, v10);
    v49 = sub_100004754();
    v50 = sub_100004884();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v104 = v33;
      v52 = v51;
      v53 = swift_slowAlloc();
      v116 = v53;
      *v52 = 136315138;
      sub_1000044DC(&qword_10000C1B8, 255, &type metadata accessor for URL);
      v54 = sub_100004924();
      v56 = v55;
      (v114[1])(v14, v10);
      v57 = sub_100003978(v54, v56, &v116);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "Could not enumerate '%s'", v52, 0xCu);
      sub_1000040A4(v53);

      v33 = v104;
    }

    else
    {

      (v114[1])(v14, v10);
    }

    (*(v112 + 8))(v26, v113);
  }

  v76 = &_swiftEmptyArrayStorage;
LABEL_27:

  return v76;
}

uint64_t sub_100003464(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000034AC()
{
  v1 = sub_100003464(&qword_10000C178, &qword_100004D00);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  v2 = sub_100003464(&qword_10000C180, &qword_100004D08);
  (*(*(v2 - 8) + 8))(v0 + 24, v2);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003564()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000035AC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000365C;

  return sub_100001D84(v6, v7, v8, v2, v3, v4, v5);
}

uint64_t sub_10000365C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003750(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003788(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003880;

  return v7(a1);
}

uint64_t sub_100003880()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003978(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003A44(v11, 0, 0, 1, a1, a2);
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
    sub_1000040F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000040A4(v11);
  return v7;
}

unint64_t sub_100003A44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003B50(a5, a6);
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
    result = sub_100004914();
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

char *sub_100003B50(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003B9C(a1, a2);
  sub_100003CCC(&off_1000083C0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003B9C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003DB8(v5, 0);
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

  result = sub_100004914();
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
        v10 = sub_1000047F4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003DB8(v10, 0);
        result = sub_100004904();
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

uint64_t sub_100003CCC(uint64_t result)
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

  result = sub_100003E2C(result, v12, 1, v3);
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

void *sub_100003DB8(uint64_t a1, uint64_t a2)
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

  sub_100003464(&qword_10000C198, &qword_100004D20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003E2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003464(&qword_10000C198, &qword_100004D20);
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

unint64_t sub_100003F20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000048D4(*(v2 + 40));

  return sub_100003F64(a1, v4);
}

unint64_t sub_100003F64(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000045D8(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000048E4();
      sub_100004584(v8);
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

char *sub_10000402C(char *a1, int64_t a2, char a3)
{
  result = sub_100004150(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10000404C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

_OWORD *sub_100004094(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000040A4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000040F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_100004150(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003464(&qword_10000C1A0, &qword_100004D28);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t *sub_100004260(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000042C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003464(&qword_10000C168, &qword_100004CF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004334(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000046E0;

  return sub_100003788(a1, v5);
}

uint64_t sub_1000043EC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004424(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000365C;

  return sub_100003788(a1, v5);
}

uint64_t sub_1000044DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100004524(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003464(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004644(uint64_t a1, int a2)
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

uint64_t sub_100004664(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_10000C1C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10000C1C8);
    }
  }
}