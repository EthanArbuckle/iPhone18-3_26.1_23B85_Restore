void *sub_10000175C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void type metadata accessor for CSUIShareItemStatus()
{
  if (!qword_100010360)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100010360);
    }
  }
}

void sub_100001850(void *a1)
{
  v2 = (*(*(sub_1000064AC(&qword_1000103B0, &qword_100009CD8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v148 = &v137 - v3;
  v4 = sub_100009400();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v137 - v11;
  v13 = __chkstk_darwin(v10);
  v149 = &v137 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v137 - v16;
  v18 = __chkstk_darwin(v15);
  v146 = &v137 - v19;
  v20 = __chkstk_darwin(v18);
  v144 = &v137 - v21;
  v22 = __chkstk_darwin(v20);
  v145 = &v137 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v137 - v25;
  __chkstk_darwin(v24);
  v28 = &v137 - v27;
  sub_1000093D0();
  v29 = sub_1000093F0();
  v30 = sub_100009520();
  v31 = os_log_type_enabled(v29, v30);
  v147 = v9;
  v143 = v17;
  if (v31)
  {
    v32 = v5;
    v33 = v4;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v153[0] = v35;
    *v34 = 136446210;
    *(v34 + 4) = sub_100006B40(0xD000000000000013, 0x800000010000A2D0, v153);
    _os_log_impl(&_mh_execute_header, v29, v30, "%{public}s called.", v34, 0xCu);
    sub_100007510(v35);

    v4 = v33;
    v5 = v32;

    v36 = v32;
  }

  else
  {

    v36 = v5;
  }

  v37 = *(v36 + 8);
  v37(v28, v4);
  v38 = type metadata accessor for CreateiCloudLinkViewController();
  v39 = v150;
  v156.receiver = v150;
  v156.super_class = v38;
  objc_msgSendSuper2(&v156, "beginRequestWithExtensionContext:", a1);
  v40 = [a1 inputItems];
  v41 = sub_100009490();

  if (!*(v41 + 16))
  {

    goto LABEL_55;
  }

  sub_1000074B4(v41 + 32, v153);

  sub_10000776C(0, &qword_1000103E8, NSExtensionItem_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_55:
    sub_1000093D0();
    v133 = sub_1000093F0();
    v134 = sub_100009530();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v153[0] = v136;
      *v135 = 136446210;
      *(v135 + 4) = sub_100006B40(0xD000000000000013, 0x800000010000A2D0, v153);
      _os_log_impl(&_mh_execute_header, v133, v134, "%{public}s Extension did not receive item provider.", v135, 0xCu);
      sub_100007510(v136);
    }

    v81 = v12;
    goto LABEL_58;
  }

  v142 = v5;
  v42 = v154;
  v43 = [v154 attachments];
  if (!v43)
  {

    goto LABEL_55;
  }

  v44 = v43;
  sub_10000776C(0, &qword_1000103F0, NSItemProvider_ptr);
  v45 = sub_100009490();

  if (!(v45 >> 62))
  {
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    goto LABEL_54;
  }

  if (!sub_100009640())
  {
LABEL_54:

    goto LABEL_55;
  }

LABEL_9:
  if ((v45 & 0xC000000000000001) != 0)
  {
    v46 = sub_1000095D0();
  }

  else
  {
    if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v46 = *(v45 + 32);
  }

  v47 = v46;

  sub_1000093D0();
  v48 = v47;
  v49 = sub_1000093F0();
  v50 = sub_100009520();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v153[0] = v141;
    *v51 = 136315138;
    v52 = [v48 debugDescription];
    v53 = sub_100009440();
    v140 = v50;
    v54 = v48;
    v55 = v42;
    v56 = v4;
    v57 = v53;
    v58 = v37;
    v60 = v59;

    v61 = v57;
    v4 = v56;
    v42 = v55;
    v48 = v54;
    v62 = sub_100006B40(v61, v60, v153);
    v37 = v58;

    *(v51 + 4) = v62;
    v39 = v150;
    _os_log_impl(&_mh_execute_header, v49, v140, "itemProvider: %s", v51, 0xCu);
    sub_100007510(v141);

    v58(v26, v4);
  }

  else
  {

    v37(v26, v4);
  }

  v64 = v148;
  v63 = v149;
  v65 = sub_100009500();
  (*(*(v65 - 8) + 56))(v64, 1, 1, v65);
  sub_1000094E0();
  v66 = v48;
  v67 = v39;
  v68 = sub_1000094D0();
  v69 = swift_allocObject();
  v69[2] = v68;
  v69[3] = &protocol witness table for MainActor;
  v69[4] = v66;
  v69[5] = v67;
  sub_100004300(0, 0, v64, &unk_100009D60, v69);

  v70 = [v42 userInfo];
  if (!v70)
  {
    goto LABEL_24;
  }

  v71 = v70;
  v72 = sub_100009420();

  v151 = 0xD000000000000017;
  v152 = 0x800000010000A2F0;
  sub_1000095B0();
  if (!*(v72 + 16) || (v73 = sub_1000070E8(v153), (v74 & 1) == 0))
  {

    sub_100007664(v153);
LABEL_24:
    v154 = 0u;
    v155 = 0u;
    goto LABEL_25;
  }

  sub_1000074B4(*(v72 + 56) + 32 * v73, &v154);
  sub_100007664(v153);

  if (!*(&v155 + 1))
  {
LABEL_25:
    sub_10000770C(&v154, &qword_1000103F8, &qword_100009D68);
    goto LABEL_26;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    sub_1000093D0();
    v78 = sub_1000093F0();
    v79 = sub_100009530();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "Extension did not receive required collaborationData.", v80, 2u);
    }

    else
    {
    }

    goto LABEL_30;
  }

  v148 = v67;
  v76 = v153[0];
  v75 = v153[1];
  sub_10000776C(0, &qword_100010400, NSKeyedUnarchiver_ptr);
  sub_10000776C(0, &qword_100010408, SWCollaborationMetadata_ptr);
  v77 = sub_100009570();
  v82 = v77;
  if (!v77)
  {
    v63 = v143;
    sub_1000093D0();
    v105 = sub_1000093F0();
    v106 = sub_100009530();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&_mh_execute_header, v105, v106, "No colloboration data received!", v107, 2u);

      sub_1000076B8(v76, v75);
    }

    else
    {

      sub_1000076B8(v76, v75);
    }

LABEL_30:
    v81 = v63;
LABEL_58:
    v37(v81, v4);
    return;
  }

  v149 = v76;
  v150 = v75;
  v147 = v66;
  v83 = v145;
  sub_1000093D0();
  v84 = v82;
  v85 = sub_1000093F0();
  v86 = sub_100009540();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = v42;
    v89 = swift_slowAlloc();
    *v87 = 138412290;
    *(v87 + 4) = v84;
    *v89 = v82;
    v90 = v84;
    _os_log_impl(&_mh_execute_header, v85, v86, "Retrieved collaboration metadata: %@", v87, 0xCu);
    sub_10000770C(v89, &qword_100010410, &qword_100009D70);
    v42 = v88;

    v83 = v145;
  }

  v37(v83, v4);
  v91 = v144;
  sub_1000093D0();
  v92 = v84;
  v93 = sub_1000093F0();
  v94 = sub_100009520();

  v95 = os_log_type_enabled(v93, v94);
  v139 = v37;
  v138 = v42;
  if (v95)
  {
    v96 = v4;
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v153[0] = v98;
    *v97 = 136315138;
    v99 = [v92 userSelectedShareOptions];
    if (v99)
    {
      v100 = v99;
      v101 = [v99 summary];

      v102 = sub_100009440();
      v104 = v103;

      v91 = v144;
    }

    else
    {
      v104 = 0xE300000000000000;
      v102 = 7104878;
    }

    v108 = sub_100006B40(v102, v104, v153);

    *(v97 + 4) = v108;
    _os_log_impl(&_mh_execute_header, v93, v94, "summary: %s", v97, 0xCu);
    sub_100007510(v98);

    v4 = v96;
    v109 = v96;
    v37 = v139;
    v139(v91, v109);
    v42 = v138;
  }

  else
  {

    v37(v91, v4);
  }

  v110 = v146;
  sub_1000093D0();
  v111 = v92;
  v112 = sub_1000093F0();
  v113 = sub_100009520();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = v4;
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v153[0] = v116;
    *v115 = 136315138;
    v117 = [v111 userSelectedShareOptions];
    if (v117)
    {
      v118 = v117;
      v119 = [v117 optionsGroups];

      sub_10000776C(0, &qword_100010418, SWCollaborationOptionsGroup_ptr);
      sub_100009490();
    }

    sub_10000776C(0, &qword_100010418, SWCollaborationOptionsGroup_ptr);
    v120 = sub_1000094A0();
    v122 = v121;

    v123 = sub_100006B40(v120, v122, v153);

    *(v115 + 4) = v123;
    _os_log_impl(&_mh_execute_header, v112, v113, "optionsGroups: %s", v115, 0xCu);
    sub_100007510(v116);

    v139(v146, v114);
    v42 = v138;
  }

  else
  {

    v37(v110, v4);
  }

  v124 = [v111 userSelectedShareOptions];
  v125 = v147;
  v127 = v149;
  v126 = v150;
  if (v124)
  {
    v128 = v124;
    v129 = [v124 optionsGroups];

    sub_10000776C(0, &qword_100010418, SWCollaborationOptionsGroup_ptr);
    v130 = sub_100009490();

    v131 = sub_1000045AC(v130);
    sub_1000076B8(v127, v126);

    if (v131)
    {
      v132 = *&v148[OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_optionsGroups];
      *&v148[OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_optionsGroups] = v131;
    }
  }

  else
  {

    sub_1000076B8(v127, v126);
  }
}

uint64_t sub_100002988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = *(*(sub_1000064AC(&qword_1000103B0, &qword_100009CD8) - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v7 = sub_100009400();
  v5[22] = v7;
  v8 = *(v7 - 8);
  v5[23] = v8;
  v9 = *(v8 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v10 = sub_1000064AC(&qword_1000103D0, &qword_100009D18);
  v5[28] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v12 = sub_100009320();
  v5[30] = v12;
  v13 = *(v12 - 8);
  v5[31] = v13;
  v5[32] = *(v13 + 64);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = sub_1000094E0();
  v5[36] = sub_1000094D0();

  return _swift_task_switch(sub_100002B68, 0, 0);
}

uint64_t sub_100002B68()
{
  v1 = v0[19];
  v2 = swift_task_alloc();
  v0[37] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[38] = v4;
  *v4 = v0;
  v4[1] = sub_100002C50;
  v6 = v0[28];
  v5 = v0[29];

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0x284C525564616F6CLL, 0xE900000000000029, sub_100007810, v2, v6);
}

uint64_t sub_100002C50()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 296);
  v4 = *(*v0 + 288);
  v5 = *(*v0 + 280);
  v9 = *v0;

  v7 = sub_1000094B0();
  *(v1 + 312) = v7;
  *(v1 + 320) = v6;

  return _swift_task_switch(sub_100002DB0, v7, v6);
}

uint64_t sub_100002DB0()
{
  v32 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[36];
    v5 = v0[24];

    sub_10000770C(v3, &qword_1000103D0, &qword_100009D18);
    sub_1000093D0();
    v6 = sub_1000093F0();
    v7 = sub_100009530();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[23];
    v9 = v0[24];
    v11 = v0[22];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_100006B40(0xD000000000000013, 0x800000010000A2D0, &v31);
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s Unable to load URL, will show nothing.", v12, 0xCu);
      sub_100007510(v13);
    }

    (*(v10 + 8))(v9, v11);
    v15 = v0[33];
    v14 = v0[34];
    v16 = v0[29];
    v18 = v0[26];
    v17 = v0[27];
    v20 = v0[24];
    v19 = v0[25];
    v21 = v0[21];

    v22 = v0[1];

    return v22();
  }

  else
  {
    v24 = v0[34];
    v25 = *(v2 + 32);
    v0[41] = v25;
    v0[42] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v25(v24, v3, v1);
    v26 = objc_opt_self();
    sub_100009310(v27);
    v29 = v28;
    v0[43] = v28;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000030F8;
    v30 = swift_continuation_init();
    v0[17] = sub_1000064AC(&qword_100010420, &qword_100009D78);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100003834;
    v0[13] = &unk_10000C860;
    v0[14] = v30;
    [v26 sharingStatusForFileOrFolderURL:v29 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1000030F8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 352) = v3;
  v4 = *(v1 + 320);
  v5 = *(v1 + 312);
  if (v3)
  {
    v6 = sub_10000372C;
  }

  else
  {
    v6 = sub_100003228;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100003228()
{
  v59 = v0;
  v1 = v0[43];
  v2 = v0[36];
  v3 = v0[27];

  v4 = v0[18];

  sub_1000093D0();
  v5 = sub_1000093F0();
  v6 = sub_100009510();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[27];
  v9 = v0[22];
  v10 = v0[23];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v58 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_100006B40(0xD000000000000013, 0x800000010000A2D0, &v58);
    *(v11 + 12) = 2050;
    *(v11 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s sharing status: %{public}ld", v11, 0x16u);
    sub_100007510(v12);
  }

  v13 = *(v10 + 8);
  v13(v8, v9);
  if (v4 == 2)
  {
    v14 = v0[25];
    sub_1000093D0();
    v15 = sub_1000093F0();
    v16 = sub_100009510();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[25];
    v19 = v0[22];
    v20 = v0[23];
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v58 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_100006B40(0xD000000000000013, 0x800000010000A2D0, &v58);
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s File is already shared by another user, copying existing link and exiting...", v21, 0xCu);
      sub_100007510(v22);
    }

    v13(v18, v19);
    v57 = &unk_100009D98;
  }

  else
  {
    v23 = v0[26];
    sub_1000093D0();
    v24 = sub_1000093F0();
    v25 = sub_100009510();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[26];
    v28 = v0[22];
    v29 = v0[23];
    if (v26)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v58 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_100006B40(0xD000000000000013, 0x800000010000A2D0, &v58);
      _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s File is eligible for sharing UI, setting it up...", v30, 0xCu);
      sub_100007510(v31);
    }

    v13(v27, v28);
    v57 = &unk_100009D88;
  }

  v55 = v0[41];
  v56 = v0[42];
  v33 = v0[34];
  v32 = v0[35];
  v34 = v0[32];
  v35 = v0[33];
  v36 = v0[30];
  v37 = v0[31];
  v39 = v0[20];
  v38 = v0[21];
  v40 = sub_100009500();
  (*(*(v40 - 8) + 56))(v38, 1, 1, v40);
  (*(v37 + 16))(v35, v33, v36);
  v41 = v39;
  v42 = sub_1000094D0();
  v43 = (*(v37 + 80) + 40) & ~*(v37 + 80);
  v44 = swift_allocObject();
  *(v44 + 2) = v42;
  *(v44 + 3) = &protocol witness table for MainActor;
  *(v44 + 4) = v41;
  v55(&v44[v43], v35, v36);
  sub_100003AF4(0, 0, v38, v57, v44);

  (*(v37 + 8))(v33, v36);
  v46 = v0[33];
  v45 = v0[34];
  v47 = v0[29];
  v49 = v0[26];
  v48 = v0[27];
  v51 = v0[24];
  v50 = v0[25];
  v52 = v0[21];

  v53 = v0[1];

  return v53();
}

uint64_t sub_10000372C()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[36];
  v4 = v0[33];
  v5 = v0[34];
  v6 = v0[30];
  v7 = v0[31];
  v8 = v0[29];
  v10 = v0[26];
  v9 = v0[27];
  v14 = v0[25];
  v15 = v0[24];
  v16 = v0[21];

  swift_willThrow();
  (*(v7 + 8))(v5, v6);

  v11 = v0[1];
  v12 = v0[44];

  return v11();
}

uint64_t sub_100003834(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100007B60((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000064AC(&qword_100010428, &qword_100009DA0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100003900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = *(*(sub_1000064AC(&qword_1000103D0, &qword_100009D18) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  sub_1000094E0();
  v5[8] = sub_1000094D0();
  v8 = sub_1000094B0();

  return _swift_task_switch(sub_1000039D0, v8, v7);
}

uint64_t sub_1000039D0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  v5 = sub_100009320();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, v4, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v7 = OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_fileUrl;
  swift_beginAccess();
  sub_100007AF0(v2, v3 + v7);
  swift_endAccess();
  sub_10000477C();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100003AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000064AC(&qword_1000103B0, &qword_100009CD8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000068B0(a3, v27 - v11, &qword_1000103B0, &qword_100009CD8);
  v13 = sub_100009500();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000770C(v12, &qword_1000103B0, &qword_100009CD8);
  }

  else
  {
    sub_1000094F0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000094B0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100009460() + 32;
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

      sub_10000770C(a3, &qword_1000103B0, &qword_100009CD8);

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

  sub_10000770C(a3, &qword_1000103B0, &qword_100009CD8);
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

uint64_t sub_100003DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000064AC(&qword_1000103B0, &qword_100009CD8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000068B0(a3, v27 - v11, &qword_1000103B0, &qword_100009CD8);
  v13 = sub_100009500();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000770C(v12, &qword_1000103B0, &qword_100009CD8);
  }

  else
  {
    sub_1000094F0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000094B0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100009460() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_1000064AC(&qword_1000103E0, &qword_100009D48);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_10000770C(a3, &qword_1000103B0, &qword_100009CD8);

      return v24;
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

  sub_10000770C(a3, &qword_1000103B0, &qword_100009CD8);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_1000064AC(&qword_1000103E0, &qword_100009D48);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100004108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = *(*(sub_1000064AC(&qword_1000103D0, &qword_100009D18) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  sub_1000094E0();
  v5[8] = sub_1000094D0();
  v8 = sub_1000094B0();

  return _swift_task_switch(sub_1000041D8, v8, v7);
}

uint64_t sub_1000041D8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  v5 = sub_100009320();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, v4, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v7 = OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_fileUrl;
  swift_beginAccess();
  sub_100007AF0(v2, v3 + v7);
  swift_endAccess();
  sub_100005284(v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100004300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_1000064AC(&qword_1000103B0, &qword_100009CD8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v23 - v9;
  sub_1000068B0(a3, v23 - v9, &qword_1000103B0, &qword_100009CD8);
  v11 = sub_100009500();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000770C(v10, &qword_1000103B0, &qword_100009CD8);
  }

  else
  {
    sub_1000094F0();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000094B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100009460() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_10000770C(a3, &qword_1000103B0, &qword_100009CD8);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000770C(a3, &qword_1000103B0, &qword_100009CD8);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void *sub_1000045AC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_100009610();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100009640())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = sub_1000095D0();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1000095F0();
      v8 = _swiftEmptyArrayStorage[2];
      sub_100009620();
      sub_100009630();
      sub_100009600();
      if (v7 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_100009640();
    sub_100009610();
  }

  return _swiftEmptyArrayStorage;
}

void sub_10000477C()
{
  v1 = v0;
  v2 = sub_100009400();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  __chkstk_darwin(v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000093A0();
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  v8 = __chkstk_darwin(v6);
  v66 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v64 - v10;
  v11 = sub_1000064AC(&qword_1000103D0, &qword_100009D18);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v64 - v13;
  v15 = sub_100009320();
  v16 = *(v15 - 8);
  v17 = *(v16 + 8);
  v18 = __chkstk_darwin(v15);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v64 - v21;
  v23 = OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_fileUrl;
  swift_beginAccess();
  sub_1000068B0(&v1[v23], v14, &qword_1000103D0, &qword_100009D18);
  if ((*(v16 + 6))(v14, 1, v15) != 1)
  {
    (*(v16 + 4))(v22, v14, v15);
    sub_100009380();
    v27 = *(v16 + 2);
    v64 = v15;
    v65 = v22;
    v27(v20, v22, v15);
    v28 = *&v1[OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_optionsGroups];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();

    v29 = sub_100009370();
    swift_unknownObjectWeakDestroy();

    v30 = *&v1[OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_createiCloudLinkViewModel];
    *&v1[OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_createiCloudLinkViewModel] = v29;
    swift_retain_n();

    v31 = v69;
    sub_100009390();
    (*(v67 + 16))(v66, v31, v68);
    v32 = objc_allocWithZone(sub_1000064AC(&qword_1000103D8, &qword_100009D20));
    v33 = sub_100009410();
    [v1 addChildViewController:v33];
    v34 = [v1 view];
    if (v34)
    {
      v35 = v34;
      v36 = [v33 view];
      if (v36)
      {
        v37 = v36;
        [v35 addSubview:v36];

        v38 = [v33 view];
        if (v38)
        {
          v66 = v16;
          [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

          v39 = [v33 view];
          if (v39)
          {
            v40 = [v39 topAnchor];

            v41 = [v1 view];
            if (v41)
            {
              v42 = v41;
              v43 = [v41 topAnchor];

              v44 = [v40 constraintEqualToAnchor:v43];
              [v44 setActive:1];

              v45 = [v33 view];
              if (v45)
              {
                v46 = [v45 bottomAnchor];

                v47 = [v1 view];
                if (v47)
                {
                  v48 = v47;
                  v49 = [v47 bottomAnchor];

                  v50 = [v46 constraintEqualToAnchor:v49];
                  [v50 setActive:1];

                  v51 = [v33 view];
                  if (v51)
                  {
                    v52 = [v51 leftAnchor];

                    v53 = [v1 view];
                    if (v53)
                    {
                      v54 = v53;
                      v55 = [v53 leftAnchor];

                      v56 = [v52 constraintEqualToAnchor:v55];
                      [v56 setActive:1];

                      v57 = [v33 view];
                      if (v57)
                      {
                        v58 = [v57 rightAnchor];

                        v59 = [v1 view];
                        v60 = v65;
                        if (v59)
                        {
                          v61 = v59;
                          v62 = [v59 rightAnchor];

                          v63 = [v58 constraintEqualToAnchor:v62];
                          [v63 setActive:1];

                          (*(v67 + 8))(v69, v68);
                          (*(v66 + 1))(v60, v64);
                          return;
                        }

LABEL_28:
                        __break(1u);
                        return;
                      }

LABEL_27:
                      __break(1u);
                      goto LABEL_28;
                    }

LABEL_26:
                    __break(1u);
                    goto LABEL_27;
                  }

LABEL_25:
                  __break(1u);
                  goto LABEL_26;
                }

LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  sub_10000770C(v14, &qword_1000103D0, &qword_100009D18);
  sub_1000093D0();
  v24 = sub_1000093F0();
  v25 = sub_100009530();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "File URL is nil.", v26, 2u);
  }

  (*(v64 + 8))(v5, v65);
  sub_100005D80();
}

uint64_t sub_100005028(uint64_t a1)
{
  v2 = sub_1000064AC(&qword_1000103B0, &qword_100009CD8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  v6 = sub_100009500();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1000094E0();

  v7 = sub_1000094D0();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a1;
  sub_100003DF4(0, 0, v5, &unk_100009D30, v8);
}

uint64_t sub_10000514C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1000094E0();
  v4[7] = sub_1000094D0();
  v6 = sub_1000094B0();

  return _swift_task_switch(sub_1000051E4, v6, v5);
}

uint64_t sub_1000051E4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100005D80();
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

void sub_100005284(uint64_t a1)
{
  v2 = sub_100009360();
  v74 = *(v2 - 8);
  v75 = v2;
  v3 = *(v74 + 64);
  v4 = __chkstk_darwin(v2);
  v72 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v73 = &v70 - v6;
  v7 = sub_1000064AC(&qword_1000103B0, &qword_100009CD8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v70 - v9;
  v11 = sub_100009320();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100009400();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000093E0();
  v21 = sub_1000093F0();
  v22 = sub_100009510();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v70 = v11;
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Show Copy iCloud Link view.", v23, 2u);
    v11 = v70;
  }

  (*(v17 + 8))(v20, v16);
  (*(v12 + 16))(v15, a1, v11);
  v24 = sub_100009340();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_100009330();
  v28 = sub_100009500();
  (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  sub_1000094E0();

  v29 = sub_1000094D0();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = &protocol witness table for MainActor;
  v30[4] = v27;
  sub_100003AF4(0, 0, v10, &unk_100009CE8, v30);

  v31 = swift_allocObject();
  v32 = v71;
  *(v31 + 16) = v71;
  *(swift_allocObject() + 16) = v32;
  v33 = v32;

  v34 = v33;
  v35 = v73;
  sub_100009350();
  (*(v74 + 16))(v72, v35, v75);
  v36 = objc_allocWithZone(sub_1000064AC(&qword_1000103B8, &qword_100009CF0));
  v37 = sub_100009410();
  [v34 addChildViewController:v37];
  v38 = [v34 view];
  if (!v38)
  {
    __break(1u);
    goto LABEL_16;
  }

  v39 = v38;
  v40 = [v37 view];
  if (!v40)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v41 = v40;
  [v39 addSubview:v40];

  v42 = [v37 view];
  if (!v42)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_1000064AC(&qword_1000103C0, &qword_100009CF8);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100009C90;
  v44 = [v37 view];

  if (!v44)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v45 = [v44 topAnchor];

  v46 = [v34 view];
  if (!v46)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v47 = v46;
  v48 = [v46 topAnchor];

  v49 = [v45 constraintEqualToAnchor:v48];
  *(v43 + 32) = v49;
  v50 = [v37 view];

  if (!v50)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v51 = [v50 bottomAnchor];

  v52 = [v34 view];
  if (!v52)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v53 = v52;
  v54 = [v52 bottomAnchor];

  v55 = [v51 constraintEqualToAnchor:v54];
  *(v43 + 40) = v55;
  v56 = [v37 view];

  if (!v56)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v57 = [v56 leftAnchor];

  v58 = [v34 view];
  if (!v58)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v59 = v58;
  v60 = [v58 leftAnchor];

  v61 = [v57 constraintEqualToAnchor:v60];
  *(v43 + 48) = v61;
  v62 = [v37 view];

  if (!v62)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v63 = [v62 rightAnchor];

  v64 = [v34 view];
  if (v64)
  {
    v65 = v64;
    v66 = objc_opt_self();
    v67 = [v65 rightAnchor];

    v68 = [v63 constraintEqualToAnchor:v67];
    *(v43 + 56) = v68;
    sub_10000776C(0, &qword_1000103C8, NSLayoutConstraint_ptr);
    isa = sub_100009480().super.isa;

    [v66 activateConstraints:isa];

    (*(v74 + 8))(v73, v75);
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_100005B20()
{
  v0[2] = sub_1000094E0();
  v0[3] = sub_1000094D0();
  v1 = *(&async function pointer to dispatch thunk of CopyiCloudLinkViewModel.fetchShareURL() + 1);
  v4 = (&async function pointer to dispatch thunk of CopyiCloudLinkViewModel.fetchShareURL() + async function pointer to dispatch thunk of CopyiCloudLinkViewModel.fetchShareURL());
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_100005BE4;

  return v4();
}

uint64_t sub_100005BE4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1000094B0();

  return _swift_task_switch(sub_100005D20, v5, v4);
}

uint64_t sub_100005D20()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100005D80()
{
  v1 = v0;
  v2 = sub_100009400();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000093E0();
  v7 = sub_1000093F0();
  v8 = sub_100009510();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Dismissing CreateiCloudLinkExtension Flow.", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  aBlock[4] = sub_10000648C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006010;
  aBlock[3] = &unk_10000C6A8;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  [v12 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);
}

void sub_100005F74(void *a1)
{
  v1 = [a1 extensionContext];
  if (v1)
  {
    v2 = v1;
    isa = sub_100009480().super.isa;
    [v2 completeRequestReturningItems:isa completionHandler:0];
  }
}

uint64_t sub_100006010(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_10000625C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CreateiCloudLinkViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CreateiCloudLinkViewController()
{
  result = qword_100010398;
  if (!qword_100010398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100006354()
{
  sub_1000063FC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000063FC()
{
  if (!qword_1000103A8)
  {
    sub_100009320();
    v0 = sub_100009580();
    if (!v1)
    {
      atomic_store(v0, &qword_1000103A8);
    }
  }
}

uint64_t sub_100006454()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006494(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000064AC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000064F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007BC4;

  return sub_100005B20();
}

uint64_t sub_1000065D0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000066C8;

  return v7(a1);
}

uint64_t sub_1000066C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000067C0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000067F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007BC4;

  return sub_1000065D0(a1, v5);
}

uint64_t sub_1000068B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000064AC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006918()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006958()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006998(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100006A4C;

  return sub_10000514C(a1, v4, v5, v6);
}

uint64_t sub_100006A4C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100006B40(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006C0C(v11, 0, 0, 1, a1, a2);
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
    sub_1000074B4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007510(v11);
  return v7;
}

unint64_t sub_100006C0C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100006D18(a5, a6);
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
    result = sub_1000095E0();
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

void *sub_100006D18(uint64_t a1, unint64_t a2)
{
  v4 = sub_100006D64(a1, a2);
  sub_100006E94(&off_10000C638);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_100006D64(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100006F80(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000095E0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100009470();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100006F80(v10, 0);
        result = sub_1000095C0();
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

uint64_t sub_100006E94(uint64_t result)
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

  result = sub_100006FF4(result, v12, 1, v3);
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

void *sub_100006F80(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000064AC(&qword_100010430, &unk_100009DA8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100006FF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000064AC(&qword_100010430, &unk_100009DA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_1000070E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100009590(*(v2 + 40));

  return sub_10000712C(a1, v4);
}

unint64_t sub_10000712C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000077B4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000095A0();
      sub_100007664(v8);
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

uint64_t sub_1000071F4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000072E8;

  return v6(v2 + 32);
}

uint64_t sub_1000072E8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000073FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007BC4;

  return sub_1000071F4(a1, v5);
}

uint64_t sub_1000074B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007510(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000755C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000075A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100006A4C;

  return sub_100002988(a1, v4, v5, v7, v6);
}

uint64_t sub_1000076B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000770C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000064AC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000776C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100007834(uint64_t a1)
{
  v4 = *(sub_100009320() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100007BC4;

  return sub_100003900(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10000792C()
{
  v1 = sub_100009320();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000079F8(uint64_t a1)
{
  v4 = *(sub_100009320() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100007BC4;

  return sub_100004108(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100007AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000064AC(&qword_1000103D0, &qword_100009D18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_100007B60(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100007BCC(uint64_t a1, void *a2)
{
  v32 = a2;
  v30 = sub_1000064AC(&qword_100010438, &unk_100009DD0);
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v30);
  v28 = &v26 - v5;
  v31 = sub_1000093C0();
  v29 = *(v31 - 8);
  v6 = *(v29 + 64);
  __chkstk_darwin(v31);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009400();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000093D0();
  v14 = sub_1000093F0();
  v15 = sub_100009510();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_100006B40(0x284C525564616F6CLL, 0xE900000000000029, &v33);
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s Starting to load URL...", v17, 0xCu);
    sub_100007510(v18);

    a1 = v27;
  }

  (*(v10 + 8))(v13, v9);
  sub_1000093B0();
  v19 = v28;
  v20 = v30;
  (*(v3 + 16))(v28, a1, v30);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v19, v20);
  v23 = v32;
  *(v22 + ((v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
  v24 = v23;

  return (*(v29 + 8))(v8, v31);
}

uint64_t sub_100007F54(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v83 = a5;
  v88 = a4;
  LODWORD(v87) = a2;
  v6 = sub_1000064AC(&qword_100010438, &unk_100009DD0);
  v82 = *(v6 - 8);
  v80 = *(v82 + 64);
  __chkstk_darwin(v6);
  v81 = &v74 - v7;
  v8 = sub_100009320();
  v91 = *(v8 - 8);
  v9 = *(v91 + 8);
  v10 = __chkstk_darwin(v8);
  v75 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v89 = &v74 - v12;
  v13 = sub_1000064AC(&qword_1000103D0, &qword_100009D18);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v76 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v84 = &v74 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v74 - v20;
  __chkstk_darwin(v19);
  v23 = &v74 - v22;
  v24 = sub_100009400();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v86 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v90 = &v74 - v30;
  __chkstk_darwin(v29);
  v32 = &v74 - v31;
  sub_1000093D0();
  v85 = a1;
  sub_100009090(a1, v23);
  v33 = sub_1000093F0();
  v34 = sub_100009510();
  if (os_log_type_enabled(v33, v34))
  {
    v77 = v25;
    v78 = v24;
    v79 = v6;
    v35 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v35 = 136446722;
    *(v35 + 4) = sub_100006B40(0x284C525564616F6CLL, 0xE900000000000029, v93);
    *(v35 + 12) = 2080;
    sub_100009090(v23, v21);
    v36 = (*(v91 + 6))(v21, 1, v8);
    v74 = v8;
    if (v36 == 1)
    {
      sub_100009100(v21);
      v37 = 0;
      v38 = 0;
    }

    else
    {
      v37 = sub_100009300();
      v38 = v41;
      (*(v91 + 1))(v21, v8);
    }

    v92[0] = v37;
    v92[1] = v38;
    sub_1000064AC(&qword_100010450, &qword_100009DE0);
    v42 = sub_100009450();
    v44 = v43;
    sub_100009100(v23);
    v45 = sub_100006B40(v42, v44, v93);

    *(v35 + 14) = v45;
    *(v35 + 22) = 1026;
    *(v35 + 24) = v87 & 1;
    _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s Received URL %s, openInPlace %{BOOL,public}d", v35, 0x1Cu);
    swift_arrayDestroy();

    v25 = v77;
    v40 = v78;
    v39 = *(v77 + 8);
    v39(v32, v78);
    v8 = v74;
    v6 = v79;
  }

  else
  {

    sub_100009100(v23);
    v39 = *(v25 + 8);
    v39(v32, v24);
    v40 = v24;
  }

  v46 = v84;
  sub_100009090(v85, v84);
  v47 = v91;
  v48 = (*(v91 + 6))(v46, 1, v8);
  v49 = v89;
  v50 = v86;
  if (v48 == 1)
  {
    sub_100009100(v46);
LABEL_13:
    sub_1000093D0();
    v61 = sub_1000093F0();
    v62 = sub_100009510();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v91 = v39;
      v64 = v50;
      v65 = v63;
      v66 = swift_slowAlloc();
      v92[0] = v66;
      *v65 = 136446210;
      *(v65 + 4) = sub_100006B40(0x284C525564616F6CLL, 0xE900000000000029, v92);
      _os_log_impl(&_mh_execute_header, v61, v62, "%{public}s Either fileURL is nil or openInPlace is false. Attempting to load URL from item provider...", v65, 0xCu);
      sub_100007510(v66);

      v91(v64, v40);
    }

    else
    {

      v39(v50, v40);
    }

    v68 = v81;
    v67 = v82;
    (*(v82 + 16))(v81, v88, v6);
    v69 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v70 = swift_allocObject();
    (*(v67 + 32))(v70 + v69, v68, v6);
    sub_100009288(&qword_100010440);
  }

  (*(v47 + 4))(v89, v46, v8);
  if ((v87 & 1) == 0)
  {
    (*(v47 + 1))(v49, v8);
    goto LABEL_13;
  }

  v77 = v25;
  v78 = v40;
  v79 = v6;
  sub_1000093D0();
  v51 = v75;
  v87 = *(v47 + 2);
  v87(v75, v49, v8);
  v52 = sub_1000093F0();
  v53 = sub_100009510();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v92[0] = v86;
    *v54 = 136315394;
    *(v54 + 4) = sub_100006B40(0x284C525564616F6CLL, 0xE900000000000029, v92);
    *(v54 + 12) = 2080;
    sub_100009288(&qword_100010448);
    v55 = sub_100009650();
    v57 = v56;
    v58 = v51;
    v59 = *(v91 + 1);
    v59(v58, v8);
    v60 = sub_100006B40(v55, v57, v92);
    v49 = v89;

    *(v54 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v52, v53, "%s openInPlace is true, resuming with url %s.", v54, 0x16u);
    swift_arrayDestroy();

    v47 = v91;
  }

  else
  {

    v72 = v51;
    v59 = *(v47 + 1);
    v59(v72, v8);
  }

  v39(v90, v78);
  v73 = v76;
  v87(v76, v49, v8);
  (*(v47 + 7))(v73, 0, 1, v8);
  sub_1000094C0();
  return (v59)(v49, v8);
}

uint64_t sub_100008924()
{
  v1 = sub_1000064AC(&qword_100010438, &unk_100009DD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000089CC(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(sub_1000064AC(&qword_100010438, &unk_100009DD0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100007F54(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_100008A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v5 = sub_100009400();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v49[-v10];
  v12 = sub_1000064AC(&qword_1000103D0, &qword_100009D18);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v56 = &v49[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v49[-v16];
  v18 = sub_100009320();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v49[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v25 = &v49[-v24];
  sub_100009090(a1, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100009100(v17);
    sub_1000093D0();
    swift_errorRetain();
    v26 = sub_1000093F0();
    v27 = sub_100009530();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v58 = a2;
      v59 = v29;
      *v28 = 136315138;
      swift_errorRetain();
      sub_1000064AC(&qword_100010458, qword_100009DE8);
      v30 = sub_100009450();
      v32 = sub_100006B40(v30, v31, &v59);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to load URL from item provider: %s", v28, 0xCu);
      sub_100007510(v29);
    }

    (*(v54 + 8))(v9, v55);
    (*(v19 + 56))(v56, 1, 1, v18);
    sub_1000064AC(&qword_100010438, &unk_100009DD0);
    return sub_1000094C0();
  }

  else
  {
    (*(v19 + 32))(v25, v17, v18);
    sub_1000093D0();
    v34 = *(v19 + 16);
    v34(v23, v25, v18);
    v35 = sub_1000093F0();
    v36 = sub_100009510();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v53 = v34;
      v38 = v37;
      v52 = swift_slowAlloc();
      v59 = v52;
      *v38 = 136446466;
      *(v38 + 4) = sub_100006B40(0x284C525564616F6CLL, 0xE900000000000029, &v59);
      *(v38 + 12) = 2080;
      sub_100009288(&qword_100010448);
      v51 = v35;
      v39 = sub_100009650();
      v41 = v40;
      v42 = *(v19 + 8);
      v50 = v36;
      v43 = v23;
      v44 = v42;
      v42(v43, v18);
      v45 = sub_100006B40(v39, v41, &v59);

      *(v38 + 14) = v45;
      v46 = v51;
      _os_log_impl(&_mh_execute_header, v51, v50, "%{public}s Loaded fileUrl using NSURL: %s.", v38, 0x16u);
      swift_arrayDestroy();

      v34 = v53;
    }

    else
    {

      v47 = v23;
      v44 = *(v19 + 8);
      v44(v47, v18);
    }

    (*(v54 + 8))(v11, v55);
    v48 = v56;
    v34(v56, v25, v18);
    (*(v19 + 56))(v48, 0, 1, v18);
    sub_1000064AC(&qword_100010438, &unk_100009DD0);
    sub_1000094C0();
    return (v44)(v25, v18);
  }
}

uint64_t sub_100009090(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000064AC(&qword_1000103D0, &qword_100009D18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009100(uint64_t a1)
{
  v2 = sub_1000064AC(&qword_1000103D0, &qword_100009D18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100009168()
{
  v1 = sub_1000064AC(&qword_100010438, &unk_100009DD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000091FC(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000064AC(&qword_100010438, &unk_100009DD0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100008A8C(a1, a2, v6);
}

uint64_t sub_100009288(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100009320();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}