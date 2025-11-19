uint64_t sub_1A8881BF4()
{
  v1 = OBJC_IVAR____TtCE17IMSharedUtilitiesCSo23IMServiceForSendingTaskP33_3EED2FA8A158671F213145B6668888AC8Deadline_time;
  v2 = sub_1A88C7F28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1A8881D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___IMServiceForSendingTask_requestedServices] = MEMORY[0x1E69E7CD0];
  v7 = OBJC_IVAR___IMServiceForSendingTask_requestIDToResults;
  v8 = MEMORY[0x1E69E7CC0];
  *&v4[v7] = sub_1A8739A20(MEMORY[0x1E69E7CC0]);
  v9 = OBJC_IVAR___IMServiceForSendingTask_pendingRequests;
  *&v4[v9] = sub_1A8739B30(v8);
  *&v4[OBJC_IVAR___IMServiceForSendingTask_deadline] = 0;
  *&v4[OBJC_IVAR___IMServiceForSendingTask_latestBestResult] = 0;
  swift_unknownObjectWeakAssign();
  v10 = &v4[OBJC_IVAR___IMServiceForSendingTask_updateHandler];
  *v10 = a2;
  *(v10 + 1) = a3;
  v11 = sub_1A88C74B8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1A88C6C38();
  v15 = sub_1A88C7488();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  v18 = &v4[OBJC_IVAR___IMServiceForSendingTask_taskID];
  *v18 = v15;
  v18[1] = v17;
  v21.receiver = v4;
  v21.super_class = IMServiceForSendingTask;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  sub_1A8881F20();

  swift_unknownObjectRelease();

  return v19;
}

id sub_1A8881F20()
{
  v1 = v0;
  v2 = sub_1A88C8AB8();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v31 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A88C7EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_1A88C7F28();
  v8 = *(v29 - 8);
  v9 = MEMORY[0x1EEE9AC00](v29);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v28 = v27 - v12;
  v30 = OBJC_IVAR___IMServiceForSendingTask_deadline;
  v13 = *&v0[OBJC_IVAR___IMServiceForSendingTask_deadline];
  if (v13)
  {
    swift_getObjectType();

    swift_unknownObjectRetain();
    v14 = sub_1A88C8AD8();
    swift_unknownObjectRelease();
    if ((v14 & 1) == 0 && (*(v13 + OBJC_IVAR____TtCE17IMSharedUtilitiesCSo23IMServiceForSendingTaskP33_3EED2FA8A158671F213145B6668888AC8Deadline_fired) & 1) == 0)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1A88C8AF8();
      swift_unknownObjectRelease();
    }
  }

  result = [v0 delegate];
  if (result)
  {
    v16 = result;
    sub_1A88C7F08();
    *v7 = [v16 taskDeadlineSeconds];
    (*(v5 + 104))(v7, *MEMORY[0x1E69E7F48], v4);
    v17 = v28;
    sub_1A88C7F18();
    (*(v5 + 8))(v7, v4);
    v27[1] = v16;
    v18 = *(v8 + 8);
    v19 = v11;
    v20 = v29;
    v18(v19, v29);
    _s8DeadlineCMa();
    v21 = swift_allocObject();
    *(v21 + OBJC_IVAR____TtCE17IMSharedUtilitiesCSo23IMServiceForSendingTaskP33_3EED2FA8A158671F213145B6668888AC8Deadline_fired) = 0;
    (*(v8 + 16))(v21 + OBJC_IVAR____TtCE17IMSharedUtilitiesCSo23IMServiceForSendingTaskP33_3EED2FA8A158671F213145B6668888AC8Deadline_time, v17, v20);
    sub_1A85E9718(0, &qword_1EB3007E0);
    v22 = v31;
    sub_1A88C8AA8();
    sub_1A85E9718(0, &qword_1ED8C95A0);
    v23 = sub_1A88C8A38();
    v24 = sub_1A88C8AC8();

    (*(v32 + 8))(v22, v33);
    v18(v17, v20);
    *(v21 + OBJC_IVAR____TtCE17IMSharedUtilitiesCSo23IMServiceForSendingTaskP33_3EED2FA8A158671F213145B6668888AC8Deadline_timer) = v24;
    v25 = swift_allocObject();
    *(v25 + 16) = v1;
    v26 = v1;
    sub_1A8881778(sub_1A88871BC, v25);

    swift_unknownObjectRelease();
    *&v1[v30] = v21;
  }

  return result;
}

void sub_1A88823F8()
{
  if (qword_1EB3007F8 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB300800);
  v2 = v0;
  v3 = sub_1A88C7E38();
  v4 = sub_1A88C89A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = [v2 taskID];
    v8 = sub_1A88C82E8();
    v10 = v9;

    v11 = sub_1A85F0394(v8, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1A85E5000, v3, v4, "%{public}s deadline timer fired", v5, 0xCu);
    sub_1A85F1084(v6);
    MEMORY[0x1AC571F20](v6, -1, -1);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }

  v12 = *&v2[OBJC_IVAR___IMServiceForSendingTask_deadline];
  if (v12)
  {
    swift_getObjectType();

    swift_unknownObjectRetain();
    v13 = sub_1A88C8AD8();
    swift_unknownObjectRelease();
    if ((v13 & 1) == 0 && *(v12 + OBJC_IVAR____TtCE17IMSharedUtilitiesCSo23IMServiceForSendingTaskP33_3EED2FA8A158671F213145B6668888AC8Deadline_fired) != 1)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1A88C8AF8();
      swift_unknownObjectRelease();
    }

    sub_1A88834B8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A8882618(void *a1, void *a2)
{
  v5 = sub_1A88C7EC8();
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A88C7EF8();
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A85E9718(0, &qword_1ED8C95A0);
  v11 = sub_1A88C8A38();
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1A8885A3C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A85EB8C0;
  aBlock[3] = &unk_1F1BB7688;
  v13 = _Block_copy(aBlock);
  v14 = v2;
  v15 = a1;
  v16 = a2;

  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A85EE1A8(&qword_1ED8C9480, MEMORY[0x1E69E7F60]);
  sub_1A870CCE0(&unk_1EB3081F0);
  sub_1A85FB520(&qword_1ED8C9470, &unk_1EB3081F0);
  sub_1A88C8CE8();
  MEMORY[0x1AC56F330](0, v10, v7, v13);
  _Block_release(v13);

  (*(v19 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v18);
}

void sub_1A8882920(void *a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___IMServiceForSendingTask_requestIDToResults;
  swift_beginAccess();
  v7 = *&v2[v6];

  v8 = [a1 requestID];
  v9 = sub_1A88C82E8();
  v11 = v10;

  if (!*(v7 + 16))
  {

    goto LABEL_7;
  }

  sub_1A85F5F40(v9, v11);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_7:
    if (qword_1EB3007F8 != -1)
    {
LABEL_33:
      swift_once();
    }

    v23 = sub_1A88C7E58();
    sub_1A85EF0E4(v23, qword_1EB300800);
    v24 = a2;
    v25 = a1;
    v26 = v3;
    v27 = sub_1A88C7E38();
    v28 = sub_1A88C89C8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v119[0] = v31;
      *v29 = 136446722;
      v32 = [v26 taskID];
      v33 = sub_1A88C82E8();
      v35 = v34;

      v36 = sub_1A85F0394(v33, v35, v119);

      *(v29 + 4) = v36;
      *(v29 + 12) = 2082;
      v37 = [v25 requestID];
      v38 = sub_1A88C82E8();
      v40 = v39;

      v41 = sub_1A85F0394(v38, v40, v119);

      *(v29 + 14) = v41;
      *(v29 + 22) = 2112;
      *(v29 + 24) = v24;
      *v30 = v24;
      v42 = v24;
      _os_log_impl(&dword_1A85E5000, v27, v28, "%{public}s dropping reachability update for untracked request %{public}s %@", v29, 0x20u);
      sub_1A85EF638(v30, &qword_1EB306540);
      MEMORY[0x1AC571F20](v30, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v31, -1, -1);
      MEMORY[0x1AC571F20](v29, -1, -1);
    }

    v43 = [objc_opt_self() sharedInstance];
    if (v43)
    {
      v44 = v43;
      v45 = sub_1A88C82A8();
      v46 = sub_1A88C82A8();
      v47 = sub_1A88C82A8();
      [v44 forceAutoBugCaptureWithSubType:v45 errorPayload:0 type:v46 context:v47];

      return;
    }

    __break(1u);
    goto LABEL_54;
  }

  v14 = [a1 requestID];
  v15 = sub_1A88C82E8();
  v17 = v16;

  swift_beginAccess();
  v18 = *&v3[v6];
  if (*(v18 + 16))
  {
    v19 = sub_1A85F5F40(v15, v17);
    v21 = v20;

    if (v21)
    {
      v22 = *(*(v18 + 56) + 8 * v19);

      goto LABEL_14;
    }
  }

  else
  {
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_14:
  swift_endAccess();
  v116 = v6;
  v117 = a2;
  if (!(v22 >> 62))
  {
    v48 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_16;
    }

LABEL_35:

    v53 = v117;
LABEL_36:
    if (qword_1EB3007F8 != -1)
    {
      swift_once();
    }

    v70 = sub_1A88C7E58();
    sub_1A85EF0E4(v70, qword_1EB300800);
    v71 = v53;
    v72 = a1;
    v73 = v3;
    v74 = sub_1A88C7E38();
    v75 = sub_1A88C89A8();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v119[0] = v115;
      *v76 = 136446978;
      v77 = [v73 taskID];
      v118 = v71;
      v78 = sub_1A88C82E8();
      v80 = v79;

      v81 = sub_1A85F0394(v78, v80, v119);

      *(v76 + 4) = v81;
      *(v76 + 12) = 2082;
      v82 = [v72 requestID];
      v83 = sub_1A88C82E8();
      v85 = v84;

      v86 = sub_1A85F0394(v83, v85, v119);

      *(v76 + 14) = v86;
      *(v76 + 22) = 2082;
      v87 = [v72 serviceName];
      v88 = sub_1A88C82E8();
      v90 = v89;

      v91 = sub_1A85F0394(v88, v90, v119);

      *(v76 + 24) = v91;
      *(v76 + 32) = 2080;
      v92 = [v118 description];
      v93 = sub_1A88C82E8();
      v95 = v94;

      v96 = sub_1A85F0394(v93, v95, v119);
      v71 = v118;

      *(v76 + 34) = v96;
      _os_log_impl(&dword_1A85E5000, v74, v75, "%{public}s received reachability update for request %{public}s on service %{public}s: %s", v76, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v115, -1, -1);
      MEMORY[0x1AC571F20](v76, -1, -1);
    }

    else
    {
    }

    v97 = [v72 requestID];
    v98 = sub_1A88C82E8();
    v100 = v99;

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = *&v3[v116];
    *&v3[v116] = 0x8000000000000000;
    v103 = sub_1A85F5F40(v98, v100);
    v105 = v102[2];
    v106 = (v104 & 1) == 0;
    v107 = __OFADD__(v105, v106);
    v108 = v105 + v106;
    if (v107)
    {
      __break(1u);
LABEL_52:
      sub_1A88C8638();
LABEL_50:
      sub_1A88C8678();
      swift_endAccess();

      sub_1A88834B8();
      return;
    }

    v109 = v104;
    if (v102[3] < v108)
    {
      sub_1A887B0C8(v108, isUniquelyReferenced_nonNull_native);
      v103 = sub_1A85F5F40(v98, v100);
      if ((v109 & 1) == (v110 & 1))
      {
        goto LABEL_47;
      }

      v103 = sub_1A88C9488();
      __break(1u);
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v114 = v103;
      sub_1A87B2660();
      v103 = v114;
    }

LABEL_47:
    *&v3[v116] = v102;
    if ((v109 & 1) == 0)
    {
      v111 = v103;
      sub_1A85FADC8(v103, v98, v100, MEMORY[0x1E69E7CC0], v102);

      v103 = v111;
    }

    v112 = (v102[7] + 8 * v103);
    v113 = v71;
    MEMORY[0x1AC56EEA0]();
    if (*((*v112 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_50;
    }

    goto LABEL_52;
  }

  v48 = sub_1A88C8D38();
  if (!v48)
  {
    goto LABEL_35;
  }

LABEL_16:
  v49 = 0;
  while (1)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x1AC56F710](v49, v22);
    }

    else
    {
      if (v49 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v50 = *(v22 + 8 * v49 + 32);
    }

    a2 = v50;
    v51 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if ([v50 isFinal])
    {
      break;
    }

    ++v49;
    if (v51 == v48)
    {
      goto LABEL_35;
    }
  }

  if (qword_1EB3007F8 != -1)
  {
    swift_once();
  }

  v52 = sub_1A88C7E58();
  sub_1A85EF0E4(v52, qword_1EB300800);
  v53 = v117;
  v54 = v117;
  v55 = a1;
  v56 = a2;
  v57 = sub_1A88C7E38();
  v58 = sub_1A88C89C8();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v59 = 138412802;
    *(v59 + 4) = v54;
    *(v59 + 12) = 2112;
    *(v59 + 14) = v55;
    *v60 = v54;
    v60[1] = v55;
    *(v59 + 22) = 2112;
    *(v59 + 24) = v56;
    v60[2] = v56;
    v61 = v54;
    v62 = v55;
    v63 = v56;
    _os_log_impl(&dword_1A85E5000, v57, v58, "Received an updated result %@ for a reachability request %@ after receiving the final result %@", v59, 0x20u);
    sub_1A870CCE0(&qword_1EB306540);
    swift_arrayDestroy();
    v64 = v60;
    v53 = v117;
    MEMORY[0x1AC571F20](v64, -1, -1);
    MEMORY[0x1AC571F20](v59, -1, -1);
  }

  v65 = [objc_opt_self() sharedInstance];
  if (v65)
  {
    v66 = v65;
    v67 = sub_1A88C82A8();
    v68 = sub_1A88C82A8();
    v69 = sub_1A88C82A8();
    [v66 forceAutoBugCaptureWithSubType:v67 errorPayload:0 type:v68 context:v69];

    goto LABEL_36;
  }

LABEL_54:
  __break(1u);
}

void sub_1A88834B8()
{
  v1 = v0;
  v2 = sub_1A88C7EC8();
  v116 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v114 = v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1A88C7EF8();
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v112 = v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A88C7F28();
  v6 = *(v5 - 1);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (v107 - v10);
  v119 = OBJC_IVAR___IMServiceForSendingTask_deadline;
  v12 = *&v0[OBJC_IVAR___IMServiceForSendingTask_deadline];
  if (v12)
  {

    sub_1A88C7F08();
    v118 = *(v6 + 16);
    v118(v9, v12 + OBJC_IVAR____TtCE17IMSharedUtilitiesCSo23IMServiceForSendingTaskP33_3EED2FA8A158671F213145B6668888AC8Deadline_time, v5);
    v117 = sub_1A85EE1A8(&qword_1EB3007E8, MEMORY[0x1E69E7FF8]);
    v13 = sub_1A88C8288();

    v14 = *(v6 + 8);
    v14(v9, v5);
    v14(v11, v5);
    if ((v13 & 1) != 0 || !sub_1A8884BF8())
    {
      goto LABEL_9;
    }

    v111 = v2;
    if (qword_1EB3007F8 != -1)
    {
      goto LABEL_64;
    }

    while (1)
    {
      v15 = sub_1A88C7E58();
      sub_1A85EF0E4(v15, qword_1EB300800);
      v16 = v1;
      v17 = sub_1A88C7E38();
      v18 = sub_1A88C89D8();

      v110 = v18;
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v108 = v19;
        v107[0] = swift_slowAlloc();
        aBlock = v107[0];
        *v19 = 136446210;
        v20 = [v16 taskID];
        v109 = v17;
        v21 = v1;
        v22 = v20;
        v23 = sub_1A88C82E8();
        v107[1] = v16;
        v25 = v24;

        v1 = v21;
        v26 = sub_1A85F0394(v23, v25, &aBlock);

        v27 = v108;
        *(v108 + 1) = v26;
        v2 = v111;
        _os_log_impl(&dword_1A85E5000, v109, v110, "%{public}s ran additional requests that were no longer waiting, extending timer", v27, 0xCu);
        v28 = v107[0];
        sub_1A85F1084(v107[0]);
        MEMORY[0x1AC571F20](v28, -1, -1);
        MEMORY[0x1AC571F20](v108, -1, -1);
      }

      else
      {

        v2 = v111;
      }

      sub_1A8881F20();
LABEL_9:
      if ((sub_1A8885344() & 1) == 0)
      {
        if (qword_1EB3007F8 != -1)
        {
          goto LABEL_48;
        }

        goto LABEL_13;
      }

      if (sub_1A88850F4())
      {
        v110 = 1;
      }

      else
      {
        v40 = *&v119[v1];
        if (!v40)
        {
          goto LABEL_67;
        }

        sub_1A88C7F08();
        v118(v9, v40 + OBJC_IVAR____TtCE17IMSharedUtilitiesCSo23IMServiceForSendingTaskP33_3EED2FA8A158671F213145B6668888AC8Deadline_time, v5);
        v110 = sub_1A88C8288();

        v14(v9, v5);
        v14(v11, v5);
      }

      if (sub_1A88850F4())
      {
        v41 = 1;
      }

      else
      {
        v42 = *&v119[v1];
        if (!v42)
        {
          goto LABEL_68;
        }

        sub_1A88C7F08();
        v118(v9, v42 + OBJC_IVAR____TtCE17IMSharedUtilitiesCSo23IMServiceForSendingTaskP33_3EED2FA8A158671F213145B6668888AC8Deadline_time, v5);
        v43 = sub_1A88C8288();

        v14(v9, v5);
        v14(v11, v5);
        v41 = v43 ^ 1;
      }

      v111 = v2;
      if (sub_1A88850F4())
      {
        v44 = *&v119[v1];
        if (!v44)
        {
          goto LABEL_69;
        }

        swift_getObjectType();

        swift_unknownObjectRetain();
        v45 = sub_1A88C8AD8();
        swift_unknownObjectRelease();
        if ((v45 & 1) == 0 && (*(v44 + OBJC_IVAR____TtCE17IMSharedUtilitiesCSo23IMServiceForSendingTaskP33_3EED2FA8A158671F213145B6668888AC8Deadline_fired) & 1) == 0)
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1A88C8AF8();
          swift_unknownObjectRelease();
        }
      }

      LODWORD(v118) = v41;
      v46 = OBJC_IVAR___IMServiceForSendingTask_requestIDToResults;
      swift_beginAccess();
      v119 = v46;

      v5 = 0;
      v48 = sub_1A8880D98(v47);

      v49 = *(v48 + 16);
      if (!v49)
      {
        break;
      }

      v117 = 0;
      v50 = sub_1A85F2008(v49, 0);
      v5 = sub_1A85F2010(&aBlock, v50 + 32, v49, v48);
      v51 = v1;
      v1 = aBlock;
      v14 = v122;
      v9 = v123;
      v11 = v124;
      v52 = v51;
      v53 = v51;

      sub_1A85EF290();
      if (v5 == v49)
      {
        v1 = v52;
        v5 = v117;
        goto LABEL_32;
      }

      __break(1u);
LABEL_64:
      swift_once();
    }

    v54 = v1;
    v50 = MEMORY[0x1E69E7CC0];
LABEL_32:
    aBlock = v50;
    v9 = v1;
    sub_1A88870E4(&aBlock, v9);
    if (v5)
    {
      goto LABEL_70;
    }

    v55 = aBlock;
    v117 = 0;
    if (aBlock < 0 || (aBlock & 0x4000000000000000) != 0)
    {
      v56 = v1;
      v57 = sub_1A88C8D38();
      if (v57)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v56 = v1;
      v57 = *(aBlock + 16);
      if (v57)
      {
LABEL_36:
        v58 = 0;
        v1 = v55 & 0xC000000000000001;
        while (1)
        {
          if (v1)
          {
            v59 = MEMORY[0x1AC56F710](v58, v55);
          }

          else
          {
            if (v58 >= *(v55 + 16))
            {
              goto LABEL_47;
            }

            v59 = *(v55 + 8 * v58 + 32);
          }

          v60 = v59;
          v61 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            break;
          }

          if ([v59 allAreReachable] && !objc_msgSend(v60, sel_error))
          {

            goto LABEL_51;
          }

          ++v58;
          if (v61 == v57)
          {
            goto LABEL_50;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        swift_once();
LABEL_13:
        v29 = sub_1A88C7E58();
        sub_1A85EF0E4(v29, qword_1EB300800);
        v30 = v1;
        v31 = sub_1A88C7E38();
        v32 = sub_1A88C89A8();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          aBlock = v34;
          *v33 = 136446210;
          v35 = [v30 taskID];
          v36 = sub_1A88C82E8();
          v38 = v37;

          v39 = sub_1A85F0394(v36, v38, &aBlock);

          *(v33 + 4) = v39;
          _os_log_impl(&dword_1A85E5000, v31, v32, "%{public}s called to update but criteria unmet", v33, 0xCu);
          sub_1A85F1084(v34);
          MEMORY[0x1AC571F20](v34, -1, -1);
          MEMORY[0x1AC571F20](v33, -1, -1);
        }

        return;
      }
    }

LABEL_50:

    v60 = 0;
LABEL_51:
    v62 = *(v9 + OBJC_IVAR___IMServiceForSendingTask_latestBestResult);
    *(v9 + OBJC_IVAR___IMServiceForSendingTask_latestBestResult) = v60;
    v63 = v60;

    if (!(v118 & 1 | (v60 == 0)))
    {
      v118 = v56;
      v64 = qword_1EB3007F8;
      v65 = v63;
      if (v64 != -1)
      {
        swift_once();
      }

      v66 = sub_1A88C7E58();
      sub_1A85EF0E4(v66, qword_1EB300800);
      v67 = v9;
      v68 = sub_1A88C7E38();
      v69 = sub_1A88C89A8();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = v65;
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        aBlock = v72;
        *v71 = 136446210;
        v73 = [v67 taskID];
        v74 = sub_1A88C82E8();
        v76 = v75;

        v77 = sub_1A85F0394(v74, v76, &aBlock);

        *(v71 + 4) = v77;
        _os_log_impl(&dword_1A85E5000, v68, v69, "%{public}s terminating due to deadline fired, marking current best result as final", v71, 0xCu);
        sub_1A85F1084(v72);
        MEMORY[0x1AC571F20](v72, -1, -1);
        v78 = v71;
        v65 = v70;
        MEMORY[0x1AC571F20](v78, -1, -1);
      }

      [v65 setFinal_];
    }

    v80 = sub_1A8880D98(v79);

    v81 = objc_allocWithZone(IMServiceForSendingResult);
    sub_1A85E9718(0, &qword_1EB300790);
    v5 = v63;
    v82 = sub_1A88C8188();
    v83 = [v81 initAsFinalResult:v110 & 1 bestResult:v5 resultsByAccountID:v82];

    if (qword_1EB3007F8 != -1)
    {
      swift_once();
    }

    v84 = sub_1A88C7E58();
    sub_1A85EF0E4(v84, qword_1EB300800);
    v85 = v9;
    v9 = v83;
    v86 = sub_1A88C7E38();
    v87 = sub_1A88C89A8();

    v88 = os_log_type_enabled(v86, v87);
    v119 = v5;
    if (v88)
    {
      v89 = swift_slowAlloc();
      v118 = v80;
      v90 = v89;
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      aBlock = v92;
      *v90 = 136446466;
      v93 = [v85 taskID];
      v94 = sub_1A88C82E8();
      v5 = v95;

      v96 = sub_1A85F0394(v94, v5, &aBlock);

      *(v90 + 4) = v96;
      *(v90 + 12) = 2112;
      *(v90 + 14) = v9;
      *v91 = v9;
      v97 = v9;
      _os_log_impl(&dword_1A85E5000, v86, v87, "%{public}s updating with result %@", v90, 0x16u);
      sub_1A85EF638(v91, &qword_1EB306540);
      MEMORY[0x1AC571F20](v91, -1, -1);
      sub_1A85F1084(v92);
      MEMORY[0x1AC571F20](v92, -1, -1);
      MEMORY[0x1AC571F20](v90, -1, -1);
    }

    v98 = im_primary_queue();
    if (v98)
    {
      v99 = v98;

      v100 = swift_allocObject();
      *(v100 + 16) = v85;
      *(v100 + 24) = v9;
      v125 = sub_1A8887184;
      v126 = v100;
      aBlock = MEMORY[0x1E69E9820];
      v122 = 1107296256;
      v123 = sub_1A85EB8C0;
      v124 = &unk_1F1BB76D8;
      v101 = _Block_copy(&aBlock);
      v102 = v85;
      v103 = v9;
      v104 = v112;
      _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
      v120 = MEMORY[0x1E69E7CC0];
      sub_1A85EE1A8(&qword_1ED8C9480, MEMORY[0x1E69E7F60]);
      sub_1A870CCE0(&unk_1EB3081F0);
      sub_1A85FB520(&qword_1ED8C9470, &unk_1EB3081F0);
      v105 = v114;
      v106 = v111;
      sub_1A88C8CE8();
      MEMORY[0x1AC56F330](0, v104, v105, v101);
      _Block_release(v101);

      (*(v116 + 8))(v105, v106);
      (*(v113 + 8))(v104, v115);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:

  __break(1u);
}

id IMServiceForSendingTask.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t _s8DeadlineCMa()
{
  result = qword_1EB3007A8;
  if (!qword_1EB3007A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A88844D0()
{
  result = sub_1A88C7F28();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A8884894()
{
  swift_beginAccess();

  v28 = sub_1A8880D98(v1);

  v2 = OBJC_IVAR___IMServiceForSendingTask_pendingRequests;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = OBJC_IVAR___IMServiceForSendingTask_requestedServices;

  v29 = v0;
  v27 = v7;
  result = swift_beginAccess();
  v9 = 0;
  v10 = (v4 + 63) >> 6;
  v26 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    while (1)
    {
LABEL_11:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = v12 | (v9 << 6);
      v14 = (*(v3 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(v3 + 56) + 40 * v13;
      v18 = *(v17 + 16);
      v33 = *v17;
      v34 = v18;
      v35 = *(v17 + 32);
      v36 = v33;
      v37[0] = v18;
      v19 = *(v29 + v27);

      sub_1A87E678C(&v36, v30);
      sub_1A888591C(v37, v30);

      v20 = sub_1A8881098(v28, v19);

      if (!v20)
      {
        goto LABEL_6;
      }

      if (v20 == 1)
      {
        swift_beginAccess();
        sub_1A88BF478(v15, v16, v31);
        swift_endAccess();
        sub_1A85EF638(v31, &unk_1EB308828);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1A8736060(0, *(v26 + 16) + 1, 1, v26);
          v26 = result;
        }

        v22 = *(v26 + 16);
        v21 = *(v26 + 24);
        if (v22 >= v21 >> 1)
        {
          result = sub_1A8736060((v21 > 1), v22 + 1, 1, v26);
          v26 = result;
        }

        *(v26 + 16) = v22 + 1;
        v23 = v26 + 40 * v22;
        v24 = v33;
        v25 = v34;
        *(v23 + 64) = v35;
        *(v23 + 32) = v24;
        *(v23 + 48) = v25;
        if (!v6)
        {
          break;
        }
      }

      else
      {
        swift_beginAccess();
        sub_1A88BF478(v15, v16, v32);
        swift_endAccess();
        sub_1A85EF638(v32, &unk_1EB308828);
LABEL_6:
        sub_1A87EBE14(&v36);
        sub_1A85EF638(v37, &qword_1EB308820);

        if (!v6)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return v26;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1A8884BF8()
{
  v1 = v0;
  v2 = sub_1A8884894();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 64;
    v5 = *(v2 + 16);
    do
    {
      v6 = *(v4 - 8);
      v4 += 40;

      v7 = sub_1A88C82A8();
      [v1 beganRequestWithID_];

      v6();

      --v5;
    }

    while (v5);
  }

  return v3 != 0;
}

uint64_t sub_1A8884DEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___IMServiceForSendingTask_requestIDToResults;
  swift_beginAccess();
  v7 = sub_1A85F5F40(a1, a2);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + v6);
    v13 = *(v3 + v6);
    *(v3 + v6) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A87B2660();
      v11 = v13;
    }

    sub_1A87B32C4(v9, v11);
    *(v3 + v6) = v11;
  }

  return swift_endAccess();
}

unint64_t sub_1A8884F28@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    result = sub_1A88C8D38();
    if (!result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_8:
      *a2 = result;
      return result;
    }
  }

  if (__OFSUB__(result--, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_12:
    result = MEMORY[0x1AC56F710](result, v3);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v3 + 8 * result + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A8884FC4()
{
  v1 = OBJC_IVAR___IMServiceForSendingTask_pendingRequests;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    return 0;
  }

  v3 = OBJC_IVAR___IMServiceForSendingTask_requestIDToResults;
  result = swift_beginAccess();
  v4 = 0;
  v5 = *(v0 + v3);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_11:
    v11 = *(*(v5 + 56) + ((v4 << 9) | (8 * __clz(__rbit64(v8)))));
    if (v11 >> 62)
    {
      result = sub_1A88C8D38();
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 &= v8 - 1;
    if (!result)
    {
      return result;
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      return 1;
    }

    v8 = *(v5 + 64 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A88850F4()
{
  if (sub_1A8884FC4())
  {
    swift_beginAccess();

    v1 = sub_1A8880D98(v0);

    v2 = 1 << *(v1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(v1 + 64);
    v5 = (v2 + 63) >> 6;

    v7 = 0;
    while (v4)
    {
      v8 = v7;
LABEL_11:
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      result = [*(*(v1 + 56) + ((v8 << 9) | (8 * v9))) isFinal];
      if ((result & 1) == 0)
      {
        v10 = 0;
LABEL_15:

        return v10;
      }
    }

    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v5)
      {
        v10 = 1;
        goto LABEL_15;
      }

      v4 = *(v1 + 64 + 8 * v8);
      ++v7;
      if (v4)
      {
        v7 = v8;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

id sub_1A8885230(void **a1, void **a2, id a3)
{
  v3 = *a1;
  v4 = *a2;
  result = [a3 delegate];
  if (result)
  {
    v6 = result;
    v7 = [v3 service];
    if (!v7)
    {
      sub_1A88C82E8();
      v7 = sub_1A88C82A8();
    }

    v8 = [v6 sortOrderForServiceName_];

    v9 = [v4 service];
    if (!v9)
    {
      sub_1A88C82E8();
      v9 = sub_1A88C82A8();
    }

    v10 = [v6 sortOrderForServiceName_];

    swift_unknownObjectRelease();
    return (v10 < v8);
  }

  return result;
}

uint64_t sub_1A8885344()
{
  v1 = v0;
  v2 = sub_1A88C7F28();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = v48 - v8;
  v10 = *&v1[OBJC_IVAR___IMServiceForSendingTask_deadline];
  if (v10)
  {
    if (*(v10 + OBJC_IVAR____TtCE17IMSharedUtilitiesCSo23IMServiceForSendingTaskP33_3EED2FA8A158671F213145B6668888AC8Deadline_fired))
    {
      if (qword_1EB3007F8 != -1)
      {
        swift_once();
      }

      v11 = sub_1A88C7E58();
      sub_1A85EF0E4(v11, qword_1EB300800);
      v12 = v1;
      v13 = sub_1A88C7E38();
      v14 = sub_1A88C89A8();

      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_8;
      }

      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v48[0] = v16;
      *v15 = 136446210;
      v17 = [v12 taskID];
      v18 = sub_1A88C82E8();
      v20 = v19;

      v21 = sub_1A85F0394(v18, v20, v48);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1A85E5000, v13, v14, "%{public}s cannot update anymore: deadline fired", v15, 0xCu);
      sub_1A85F1084(v16);
      MEMORY[0x1AC571F20](v16, -1, -1);
      v22 = v15;
LABEL_7:
      MEMORY[0x1AC571F20](v22, -1, -1);
LABEL_8:

      return 0;
    }

    sub_1A88C7F08();
    (*(v3 + 16))(v6, v10 + OBJC_IVAR____TtCE17IMSharedUtilitiesCSo23IMServiceForSendingTaskP33_3EED2FA8A158671F213145B6668888AC8Deadline_time, v2);
    sub_1A85EE1A8(&qword_1EB3007E8, MEMORY[0x1E69E7FF8]);
    v23 = sub_1A88C8288();

    v24 = *(v3 + 8);
    v24(v6, v2);
    v24(v9, v2);
    if (v23)
    {
      if (qword_1EB3007F8 != -1)
      {
        swift_once();
      }

      v25 = sub_1A88C7E58();
      sub_1A85EF0E4(v25, qword_1EB300800);
      v26 = v1;
      v27 = sub_1A88C7E38();
      v28 = sub_1A88C89A8();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v48[0] = v30;
        *v29 = 136446210;
        v31 = [v26 taskID];
        v32 = sub_1A88C82E8();
        v34 = v33;

        v35 = sub_1A85F0394(v32, v34, v48);

        *(v29 + 4) = v35;
        _os_log_impl(&dword_1A85E5000, v27, v28, "%{public}s cannot update anymore: deadline exceeded", v29, 0xCu);
        sub_1A85F1084(v30);
        MEMORY[0x1AC571F20](v30, -1, -1);
        MEMORY[0x1AC571F20](v29, -1, -1);
      }
    }

    else if ((sub_1A8884FC4() & 1) == 0)
    {
      if (qword_1EB3007F8 != -1)
      {
        swift_once();
      }

      v36 = sub_1A88C7E58();
      sub_1A85EF0E4(v36, qword_1EB300800);
      v37 = v1;
      v13 = sub_1A88C7E38();
      v38 = sub_1A88C89A8();
      if (!os_log_type_enabled(v13, v38))
      {

        return 0;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v49 = v40;
      *v39 = 136446466;
      v41 = [v37 taskID];
      v42 = sub_1A88C82E8();
      v44 = v43;

      v45 = sub_1A85F0394(v42, v44, &v49);

      *(v39 + 4) = v45;
      *(v39 + 12) = 1024;
      v46 = OBJC_IVAR___IMServiceForSendingTask_pendingRequests;
      swift_beginAccess();
      v47 = *(*&v37[v46] + 16);

      *(v39 + 14) = v47 != 0;
      _os_log_impl(&dword_1A85E5000, v13, v38, "%{public}s cannot update: don't have all results (has pending: %{BOOL}d)", v39, 0x12u);
      sub_1A85F1084(v40);
      MEMORY[0x1AC571F20](v40, -1, -1);
      v22 = v39;
      goto LABEL_7;
    }

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A888591C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB308820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A888599C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A8885A28(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1A8885AA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A88C8D38();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A88C8D38();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A85FB520(&unk_1EB308870, &qword_1EB308868);
          for (i = 0; i != v6; ++i)
          {
            sub_1A870CCE0(&qword_1EB308868);
            v9 = sub_1A886D8B4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for IMChip();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A8885C48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A88C8D38();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A88C8D38();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A85FB520(&qword_1EB308850, &qword_1EB308848);
          for (i = 0; i != v6; ++i)
          {
            sub_1A870CCE0(&qword_1EB308848);
            v9 = sub_1A886D528(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A85E9718(0, &qword_1ED8C9210);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A8885DFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A88C8D38();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A88C8D38();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A85FB520(&qword_1EB308860, &qword_1EB308858);
          for (i = 0; i != v6; ++i)
          {
            sub_1A870CCE0(&qword_1EB308858);
            v9 = sub_1A886D934(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for IMLowPowerModeMonitor.ListenerBox();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A8885FA0(void **__src, id *a2, id *a3, id *__dst, void *a5)
{
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v29 = a2;
    if (__dst != a2 || &a2[v12] <= __dst)
    {
      v30 = __dst;
      memmove(__dst, a2, 8 * v12);
      __dst = v30;
    }

    v45 = __dst;
    v16 = &__dst[v12];
    if (v10 >= 8)
    {
      v14 = __dst;
      if (v29 <= v6)
      {
        goto LABEL_54;
      }

      v31 = v29;
LABEL_33:
      v29 = v31;
      v32 = v31 - 1;
      --v5;
      v33 = v16;
      v48 = v31;
      v44 = v31 - 1;
      do
      {
        v34 = *--v33;
        v35 = *v32;
        v36 = v34;
        v37 = v35;
        v38 = [a5 delegate];
        if (v38)
        {
          v39 = v38;
          v50 = v16;
          v40 = [v36 service];
          if (!v40)
          {
            sub_1A88C82E8();
            v40 = sub_1A88C82A8();
          }

          v46 = [v39 sortOrderForServiceName_];

          v41 = [v37 service];
          if (!v41)
          {
            sub_1A88C82E8();
            v41 = sub_1A88C82A8();
          }

          v42 = [v39 sortOrderForServiceName_];

          swift_unknownObjectRelease();
          v26 = v42 < v46;
          v29 = v48;
          v16 = v50;
          v32 = v44;
          if (v26)
          {
            if (v5 + 1 != v48)
            {
              *v5 = *v44;
            }

            v14 = v45;
            if (v50 <= v45 || (v31 = v44, v44 <= v6))
            {
              v29 = v44;
              goto LABEL_54;
            }

            goto LABEL_33;
          }
        }

        else
        {
        }

        if (v5 + 1 != v16)
        {
          *v5 = *v33;
        }

        --v5;
        v16 = v33;
      }

      while (v33 > v45);
      v16 = v33;
    }

    v14 = v45;
    goto LABEL_54;
  }

  v14 = __dst;
  if (__dst != __src || &__src[v9] <= __dst)
  {
    memmove(__dst, __src, 8 * v9);
  }

  v49 = &v14[v9];
  if (v7 < 8 || a2 >= v5)
  {
    v29 = v6;
    v16 = &v14[v9];
    goto LABEL_54;
  }

  v15 = a2;
  v16 = v49;
  do
  {
    v17 = *v14;
    v18 = *v15;
    v19 = v17;
    v20 = [a5 delegate];
    if (v20)
    {
      v21 = v20;
      v22 = [v18 service];
      if (!v22)
      {
        sub_1A88C82E8();
        v22 = sub_1A88C82A8();
      }

      v47 = v15;
      v23 = [v21 sortOrderForServiceName_];

      v24 = [v19 service];
      if (!v24)
      {
        sub_1A88C82E8();
        v24 = sub_1A88C82A8();
      }

      v25 = [v21 sortOrderForServiceName_];

      swift_unknownObjectRelease();
      v26 = v25 < v23;
      v15 = v47;
      v16 = v49;
      if (v26)
      {
        v27 = v47;
        v15 = v47 + 1;
        if (v6 == v47)
        {
          goto LABEL_24;
        }

LABEL_23:
        *v6 = *v27;
        goto LABEL_24;
      }
    }

    else
    {
    }

    v27 = v14;
    if (v6 != v14++)
    {
      goto LABEL_23;
    }

LABEL_24:
    ++v6;
  }

  while (v14 < v16 && v15 < v5);
  v29 = v6;
LABEL_54:
  if (v29 != v14 || v29 >= (v14 + ((v16 - v14 + (v16 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v29, v14, 8 * ((v16 - v14) / 8));
  }

  return 1;
}

void sub_1A8886400(char **a1, id *a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_1A8885A28(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      __src = (v9 + 8 * *v10);
      v23 = (v9 + 8 * *v13);
      v14 = (v9 + 8 * v5);
      v15 = v21;
      sub_1A8885FA0(__src, v23, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_1A88865A0(id **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = a3[1];
  v127 = MEMORY[0x1E69E7CC0];
  v124 = a5;
  if (v6 >= 1)
  {
    v108 = a4;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = &selRef_posterArchiveData;
    do
    {
      v10 = v7;
      v11 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v12 = *a3;
        v126 = *(*a3 + 8 * v11);
        v13 = v7;
        v125 = *(v12 + 8 * v7);
        v14 = v125;
        v15 = v126;
        v16 = v14;
        v118 = sub_1A8885230(&v126, &v125, v124);
        if (v121)
        {

          goto LABEL_110;
        }

        v17 = v13 + 2;
        v10 = v13;
        if (v13 + 2 < v6)
        {
          v106 = v13;
          v18 = (v12 + 8 * v13 + 16);
          v114 = v6;
          do
          {
            v21 = *(v18 - 1);
            v22 = *v18;
            v23 = v21;
            v24 = [v124 delegate];
            if (v24)
            {
              v25 = v24;
              v26 = [v22 service];
              if (!v26)
              {
                sub_1A88C82E8();
                v26 = sub_1A88C82A8();
              }

              v27 = [v25 sortOrderForServiceName_];

              v28 = [v23 service];
              if (!v28)
              {
                sub_1A88C82E8();
                v28 = sub_1A88C82A8();
              }

              v19 = [v25 sortOrderForServiceName_];

              swift_unknownObjectRelease();
              v20 = v19 >= v27;
              v6 = v114;
              if (((v118 ^ v20) & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            else
            {

              if (v118)
              {
                v9 = &selRef_posterArchiveData;
                v10 = v106;
                goto LABEL_21;
              }
            }

            ++v18;
            ++v17;
          }

          while (v6 != v17);
          v17 = v6;
LABEL_19:
          v9 = &selRef_posterArchiveData;
          v10 = v106;
        }

        if (v118)
        {
LABEL_21:
          if (v17 < v10)
          {
            goto LABEL_131;
          }

          if (v10 < v17)
          {
            v29 = 8 * v17 - 8;
            v30 = 8 * v10;
            v11 = v17;
            v31 = v10;
            while (1)
            {
              if (v31 != --v17)
              {
                v32 = *a3;
                if (!*a3)
                {
                  goto LABEL_136;
                }

                v33 = *(v32 + v30);
                *(v32 + v30) = *(v32 + v29);
                *(v32 + v29) = v33;
              }

              ++v31;
              v29 -= 8;
              v30 += 8;
              if (v31 >= v17)
              {
                goto LABEL_29;
              }
            }
          }
        }

        v11 = v17;
      }

LABEL_29:
      v34 = a3[1];
      if (v11 >= v34)
      {
        v36 = v11;
        if (v11 < v10)
        {
          goto LABEL_129;
        }
      }

      else
      {
        if (__OFSUB__(v11, v10))
        {
          goto LABEL_130;
        }

        if (v11 - v10 >= v108)
        {
          goto LABEL_37;
        }

        v35 = v10 + v108;
        if (__OFADD__(v10, v108))
        {
          goto LABEL_132;
        }

        if (v35 >= v34)
        {
          v35 = a3[1];
        }

        if (v35 < v10)
        {
LABEL_133:
          __break(1u);
LABEL_134:

          __break(1u);
LABEL_135:

          __break(1u);
LABEL_136:

          __break(1u);
LABEL_137:

          __break(1u);
LABEL_138:

          __break(1u);
          return;
        }

        if (v11 == v35)
        {
LABEL_37:
          v36 = v11;
          if (v11 < v10)
          {
            goto LABEL_129;
          }
        }

        else
        {
          v120 = v8;
          v123 = *a3;
          v107 = v10;
          v91 = v10 - v11;
          v92 = *a3 + 8 * v11 - 8;
          v110 = v35;
          do
          {
            v113 = v92;
            v116 = v11;
            v93 = v123[v11];
            v111 = v91;
            while (1)
            {
              v94 = *v92;
              v95 = v93;
              v96 = v94;
              v97 = [v124 delegate];
              if (!v97)
              {

                goto LABEL_91;
              }

              v98 = v97;
              v99 = [v95 v9[257]];
              if (!v99)
              {
                sub_1A88C82E8();
                v99 = sub_1A88C82A8();
              }

              v100 = [v98 sortOrderForServiceName_];

              v101 = [v96 v9[257]];
              if (!v101)
              {
                sub_1A88C82E8();
                v101 = sub_1A88C82A8();
              }

              v102 = [v98 sortOrderForServiceName_];

              swift_unknownObjectRelease();
              if (v102 >= v100)
              {
                break;
              }

              if (!v123)
              {
                goto LABEL_134;
              }

              v103 = *v92;
              v93 = *(v92 + 8);
              *v92 = v93;
              *(v92 + 8) = v103;
              v92 -= 8;
              v104 = __CFADD__(v91++, 1);
              v9 = &selRef_posterArchiveData;
              if (v104)
              {
                goto LABEL_91;
              }
            }

            v9 = &selRef_posterArchiveData;
LABEL_91:
            v11 = v116 + 1;
            v92 = v113 + 8;
            v91 = v111 - 1;
          }

          while (v116 + 1 != v110);
          v36 = v110;
          v8 = v120;
          v10 = v107;
          if (v110 < v107)
          {
            goto LABEL_129;
          }
        }
      }

      v115 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1A873586C(0, *(v8 + 2) + 1, 1, v8);
      }

      v38 = *(v8 + 2);
      v37 = *(v8 + 3);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v8 = sub_1A873586C((v37 > 1), v38 + 1, 1, v8);
      }

      *(v8 + 2) = v39;
      v40 = v8 + 32;
      v41 = &v8[16 * v38 + 32];
      *v41 = v10;
      *(v41 + 1) = v115;
      v127 = v8;
      v122 = *a1;
      if (!*a1)
      {
        goto LABEL_137;
      }

      if (v38)
      {
        v112 = v8 + 32;
        v119 = v8;
        while (1)
        {
          v42 = v39 - 1;
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v43 = *(v8 + 4);
            v44 = *(v8 + 5);
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_60:
            if (v46)
            {
              goto LABEL_120;
            }

            v59 = &v8[16 * v39];
            v61 = *v59;
            v60 = *(v59 + 1);
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_123;
            }

            v65 = &v40[16 * v42];
            v67 = *v65;
            v66 = *(v65 + 1);
            v53 = __OFSUB__(v66, v67);
            v68 = v66 - v67;
            if (v53)
            {
              goto LABEL_126;
            }

            if (__OFADD__(v63, v68))
            {
              goto LABEL_127;
            }

            if (v63 + v68 >= v45)
            {
              if (v45 < v68)
              {
                v42 = v39 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          v69 = &v8[16 * v39];
          v71 = *v69;
          v70 = *(v69 + 1);
          v53 = __OFSUB__(v70, v71);
          v63 = v70 - v71;
          v64 = v53;
LABEL_74:
          if (v64)
          {
            goto LABEL_122;
          }

          v72 = &v40[16 * v42];
          v74 = *v72;
          v73 = *(v72 + 1);
          v53 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v53)
          {
            goto LABEL_125;
          }

          if (v75 < v63)
          {
            goto LABEL_3;
          }

LABEL_81:
          if (v42 - 1 >= v39)
          {
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_133;
          }

          v80 = *a3;
          if (!*a3)
          {
            goto LABEL_135;
          }

          v81 = &v40[16 * v42 - 16];
          v82 = *v81;
          v83 = v42;
          v84 = &v40[16 * v42];
          v85 = *(v84 + 1);
          v86 = (v80 + 8 * *v81);
          v87 = (v80 + 8 * *v84);
          v88 = (v80 + 8 * v85);
          v89 = v124;
          sub_1A8885FA0(v86, v87, v88, v122, v89);
          if (v121)
          {
            goto LABEL_109;
          }

          if (v85 < v82)
          {
            goto LABEL_115;
          }

          v90 = *(v119 + 2);
          if (v83 > v90)
          {
            goto LABEL_116;
          }

          *v81 = v82;
          *(v81 + 1) = v85;
          if (v83 >= v90)
          {
            goto LABEL_117;
          }

          v39 = v90 - 1;
          memmove(v84, v84 + 16, 16 * (v90 - 1 - v83));
          v8 = v119;
          *(v119 + 2) = v90 - 1;
          v9 = &selRef_posterArchiveData;
          v40 = v112;
          if (v90 <= 2)
          {
LABEL_3:
            v127 = v8;
            goto LABEL_4;
          }
        }

        v47 = &v40[16 * v39];
        v48 = *(v47 - 8);
        v49 = *(v47 - 7);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_118;
        }

        v52 = *(v47 - 6);
        v51 = *(v47 - 5);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_119;
        }

        v54 = &v8[16 * v39];
        v56 = *v54;
        v55 = *(v54 + 1);
        v53 = __OFSUB__(v55, v56);
        v57 = v55 - v56;
        if (v53)
        {
          goto LABEL_121;
        }

        v53 = __OFADD__(v45, v57);
        v58 = v45 + v57;
        if (v53)
        {
          goto LABEL_124;
        }

        if (v58 >= v50)
        {
          v76 = &v40[16 * v42];
          v78 = *v76;
          v77 = *(v76 + 1);
          v53 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v53)
          {
            goto LABEL_128;
          }

          if (v45 < v79)
          {
            v42 = v39 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_4:
      v7 = v115;
      v6 = a3[1];
    }

    while (v115 < v6);
  }

  v105 = *a1;
  if (!*a1)
  {
    goto LABEL_138;
  }

  v89 = v124;
  sub_1A8886400(&v127, v105, a3, v89);
  if (v121)
  {
LABEL_109:

LABEL_110:
  }

  else
  {
  }
}

void sub_1A8886DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (a3 != a2)
  {
    v24 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_6:
    v21 = v5;
    v22 = a3;
    v7 = *(v24 + 8 * a3);
    v20 = v6;
    while (1)
    {
      v8 = *v5;
      v9 = v7;
      v10 = v8;
      v11 = [a5 delegate];
      if (!v11)
      {

LABEL_5:
        a3 = v22 + 1;
        v5 = v21 + 8;
        v6 = v20 - 1;
        if (v22 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v12 = v11;
      v13 = [v9 service];
      if (!v13)
      {
        sub_1A88C82E8();
        v13 = sub_1A88C82A8();
      }

      v14 = [v12 sortOrderForServiceName_];

      v15 = [v10 service];
      if (!v15)
      {
        sub_1A88C82E8();
        v15 = sub_1A88C82A8();
      }

      v16 = [v12 sortOrderForServiceName_];

      swift_unknownObjectRelease();
      if (v16 >= v14)
      {
        goto LABEL_5;
      }

      if (!v24)
      {
        break;
      }

      v17 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v17;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1A8886F90(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_1A88C9338();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A85E9718(0, &qword_1EB300790);
        v8 = sub_1A88C8658();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      v9 = v4;
      sub_1A88865A0(v10, v11, a1, v6, v9);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_1A8886DE4(0, v3, 1, a1, v4);
  }
}

void sub_1A88870E4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1A860CB18(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_1A8886F90(v8, v7);

  sub_1A88C8EE8();
}

uint64_t sub_1A88871F4()
{
  v1 = *(v0 + 32);
  result = (*(v0 + 16))();
  *(v1 + OBJC_IVAR____TtCE17IMSharedUtilitiesCSo23IMServiceForSendingTaskP33_3EED2FA8A158671F213145B6668888AC8Deadline_fired) = 1;
  return result;
}

uint64_t sub_1A8887258(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a1 + 56);
  v33 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = sub_1A88C72E8();
  v40 = &v31;
  v9 = *(v8 - 8);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v32 = (v5 + 63) >> 6;
  v46 = v9 + 16;
  v47 = v11;
  v45 = v2 + 56;
  v48 = (v9 + 8);
  v36 = v9;
  v37 = v3;
  v34 = v9 + 32;
  v35 = v12;
  if (v7)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v7));
      v15 = (v7 - 1) & v7;
LABEL_13:
      v18 = *(v9 + 72);
      v19 = *(v3 + 48) + v18 * (v14 | (v13 << 6));
      v43 = *(v9 + 16);
      v44 = v18;
      v20 = v43(v12, v19, v8);
      v41 = &v31;
      MEMORY[0x1EEE9AC00](v20);
      v42 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
      v22 = &v31 - v42;
      (*(v9 + 32))(&v31 - v42, v12, v8);
      sub_1A87173B4(&qword_1EB303178);
      v23 = sub_1A88C8228();
      v24 = -1 << *(v2 + 32);
      v25 = v23 & ~v24;
      if (((*(v45 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        break;
      }

      v38 = v48 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v39 = v15;
      v26 = v2;
      v27 = ~v24;
      while (1)
      {
        MEMORY[0x1EEE9AC00](v23);
        v28 = &v31 - v42;
        v43(&v31 - v42, *(v26 + 48) + v25 * v44, v8);
        sub_1A87173B4(&qword_1EB303180);
        v29 = sub_1A88C8298();
        v30 = *v48;
        v23 = (*v48)(v28, v8);
        if (v29)
        {
          break;
        }

        v25 = (v25 + 1) & v27;
        if (((*(v45 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          v30(v22, v8);
          return 0;
        }
      }

      result = (v30)(v22, v8);
      v2 = v26;
      v9 = v36;
      v3 = v37;
      v7 = v39;
      v12 = v35;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v48)(v22, v8);
    return 0;
  }

  else
  {
LABEL_8:
    v16 = v13;
    while (1)
    {
      v13 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v13 >= v32)
      {
        return 1;
      }

      v17 = *(v33 + 8 * v13);
      ++v16;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v15 = (v17 - 1) & v17;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A888761C(void *a1)
{
  sub_1A88A7C3C(a1);
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 24);
  swift_beginAccess();
  if (v4)
  {
    *(v4 + 24) = a1;
    swift_retain_n();

    swift_beginAccess();
    a1[2] = v4;

    v5 = *(v1 + 16);
    swift_beginAccess();
    *(v5 + 24) = a1;

    v6 = *(v1 + 16);
    swift_beginAccess();
    v7 = a1[4];
    v8 = a1[5];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v6 + 32);
    *(v6 + 32) = 0x8000000000000000;
    sub_1A87ACF78(a1, v7, v8, isUniquelyReferenced_nonNull_native);

    *(v6 + 32) = v16;
    swift_endAccess();
  }

  else
  {
    *(v3 + 16) = a1;
    swift_retain_n();

    v10 = *(v1 + 16);
    swift_beginAccess();
    *(v10 + 24) = a1;

    v11 = *(v1 + 16);
    swift_beginAccess();
    v12 = a1[4];
    v13 = a1[5];
    swift_beginAccess();

    v14 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v11 + 32);
    *(v11 + 32) = 0x8000000000000000;
    sub_1A87ACF78(a1, v12, v13, v14);

    *(v11 + 32) = v17;
    swift_endAccess();
  }
}

uint64_t sub_1A8887878(uint64_t a1)
{
  sub_1A88A7FA4(a1);
  v2 = sub_1A8889464(&unk_1EB3090E0, type metadata accessor for RemoteIntentFilePersistedNodeStore);
  v3 = v2[6];
  v4 = type metadata accessor for RemoteIntentFilePersistedNodeStore();

  v5 = v3(v4, v2);

  if (v5)
  {
    v6 = sub_1A8889464(&qword_1EB3048D8, type metadata accessor for RemoteIntentFileListNode);
    v7 = v6[10];
    v8 = type metadata accessor for RemoteIntentFileListNode(0);
    v9 = swift_retain_n();
    v7(v9, v8, v6);
    v10 = v6[7];

    v10(v11, v8, v6);
    v12 = v2[7];

    v12(a1, v4, v2);

    v13 = v6[12];

    v13(&v22, v8, v6);
    v14 = _s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreCyAA0cde4ListG0CSgSScig_0(v22, v23);

    if (v14)
    {
      swift_getKeyPath();
      sub_1A8889464(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
      sub_1A88C7618();

      swift_getKeyPath();
      sub_1A8889464(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
      sub_1A88894AC();
      sub_1A88C80D8();

      _s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreC6update_4withyAA0cde4ListG0C_Shy10Foundation3URLVGtF_0(v14);

LABEL_6:
    }

    sub_1A8889464(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
    sub_1A88C8018();
  }

  else
  {
    v15 = v2[4];
    swift_retain_n();

    v15(a1, v4, v2);

    v16 = v2[7];

    v16(a1, v4, v2);

    v17 = sub_1A8889464(&qword_1EB3048D8, type metadata accessor for RemoteIntentFileListNode);
    v18 = *(v17 + 96);
    v19 = type metadata accessor for RemoteIntentFileListNode(0);

    v18(&v22, v19, v17);
    v20 = _s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreCyAA0cde4ListG0CSgSScig_0(v22, v23);

    if (v20)
    {
      swift_getKeyPath();
      sub_1A8889464(&qword_1EB3048A8, type metadata accessor for RemoteIntentFileListNode);
      sub_1A88C7618();

      swift_getKeyPath();
      sub_1A8889464(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
      sub_1A88894AC();
      sub_1A88C80D8();

      _s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreC6update_4withyAA0cde4ListG0C_Shy10Foundation3URLVGtF_0(v20);

      goto LABEL_6;
    }

    sub_1A8889464(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);
    sub_1A88C8018();
  }
}

uint64_t sub_1A8887E10()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB308880);
  sub_1A85EF0E4(v0, qword_1EB308880);
  return sub_1A88C7E48();
}

uint64_t sub_1A8887E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  sub_1A88C8118();
  v4[10] = swift_task_alloc();
  v5 = sub_1A88C8128();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A8887FC0, v6, 0);
}

uint64_t sub_1A8887FC0()
{
  v38 = v0;
  v32 = v0[14];
  v33 = v0[12];
  v34 = v0[13];
  v36 = v0[11];
  v1 = v0[9];
  v30 = v0[7];
  v31 = v0[8];
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  v2 = IMSMSDirectoryURL();
  v3 = sub_1A88C72E8();
  v4 = *(v3 - 8);
  v5 = swift_task_alloc();
  sub_1A88C7288();

  v0[2] = 0xD000000000000024;
  v6 = v4;
  v0[3] = 0x80000001A8920150;
  v7 = sub_1A88C71E8();
  v8 = *(v7 - 8);
  v9 = swift_task_alloc();
  (*(v8 + 104))(v9, *MEMORY[0x1E6968F78], v7);
  sub_1A8722620();
  sub_1A88C72D8();
  (*(v8 + 8))(v9, v7);
  (*(v6 + 8))(v5, v3);

  *(v1 + 24) = v30;
  *(v1 + 32) = v31;
  swift_unknownObjectWeakAssign();
  swift_task_alloc();
  (*(v6 + 16))();
  sub_1A88C8108();
  sub_1A88C8138();

  (*(v33 + 16))(v34, v32, v36);
  type metadata accessor for RemoteIntentFilePersistedNodeStore();
  swift_allocObject();
  v10 = RemoteIntentFilePersistedNodeStore.init(configuration:)(v34);
  v11 = v0[9];
  sub_1A870CCE0(&qword_1EB3088B8);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + OBJC_IVAR____TtC17IMSharedUtilities24RemoteIntentFileManifest_cache) = v12;

  v13 = RemoteIntentFilePersistedNodeStore.count.getter();

  if (qword_1EB302320 != -1)
  {
    swift_once();
  }

  v14 = sub_1A88C7E58();
  sub_1A85EF0E4(v14, qword_1EB308880);
  swift_unknownObjectRetain();
  v15 = sub_1A88C7E38();
  v16 = sub_1A88C89D8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[7];
    v35 = v0[8];
    v18 = v0[6];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v20;
    *v19 = 136315650;
    v0[4] = v18;
    v0[5] = v17;
    swift_unknownObjectRetain();
    sub_1A870CCE0(&unk_1EB3088C0);
    v21 = sub_1A88C8338();
    v23 = sub_1A85F0394(v21, v22, &v37);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v35;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v13;
    _os_log_impl(&dword_1A85E5000, v15, v16, "init with delegate: %s, cacheLimit: %ld, current count: %ld. Pruning to limit if necessary.", v19, 0x20u);
    sub_1A85F1084(v20);
    MEMORY[0x1AC571F20](v20, -1, -1);
    MEMORY[0x1AC571F20](v19, -1, -1);
  }

  v24 = v0[14];
  v25 = v0[11];
  v26 = v0[12];
  sub_1A8888A68();
  swift_unknownObjectRelease();

  (*(v26 + 8))(v24, v25);

  v27 = v0[1];
  v28 = v0[9];

  return v27(v28);
}

void sub_1A88885D8(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = _s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreCyAA0cde4ListG0CSgSScig_0(a2, a3);

  if (!v6 || (v7 = sub_1A8889464(&qword_1EB3048D8, type metadata accessor for RemoteIntentFileListNode), v8 = *(v7 + 104), v9 = type metadata accessor for RemoteIntentFileListNode(0), v8(&v30, v9, v7), , v10 = , LOBYTE(v7) = sub_1A8887258(v10, a1), swift_bridgeObjectRelease_n(), (v7 & 1) == 0))
  {

    v11 = _s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreCyAA0cde4ListG0CSgSScig_0(a2, a3);

    if (v11)
    {

      _s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreC6update_4withyAA0cde4ListG0C_Shy10Foundation3URLVGtF_0(v11);

      v12 = v11;
    }

    else
    {
      type metadata accessor for RemoteIntentFileListNode(0);
      swift_allocObject();

      v12 = sub_1A8756344();
    }

    sub_1A8887878(v12);

    v13 = _s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreCyAA0cde4ListG0CSgSScig_0(a2, a3);

    if (v13)
    {
      v14 = sub_1A8889464(&qword_1EB3048D8, type metadata accessor for RemoteIntentFileListNode);
      v15 = *(v14 + 104);
      v16 = type metadata accessor for RemoteIntentFileListNode(0);
      v15(&v30, v16, v14);
    }

    v17 = RemoteIntentFilePersistedNodeStore.count.getter();

    if (qword_1EB302320 != -1)
    {
      swift_once();
    }

    v18 = sub_1A88C7E58();
    sub_1A85EF0E4(v18, qword_1EB308880);

    v19 = sub_1A88C7E38();
    v20 = sub_1A88C89B8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 134218754;
      *(v21 + 4) = v17;
      v30 = v22;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1A85F0394(a2, a3, &v30);
      *(v21 + 22) = 2080;
      sub_1A88C72E8();
      sub_1A87173B4(&qword_1EB303178);
      v23 = sub_1A88C8908();
      v25 = sub_1A85F0394(v23, v24, &v30);

      *(v21 + 24) = v25;
      *(v21 + 32) = 2080;
      v26 = sub_1A88C8908();
      v28 = v27;

      v29 = sub_1A85F0394(v26, v28, &v30);

      *(v21 + 34) = v29;
      _os_log_impl(&dword_1A85E5000, v19, v20, "Current cache count: %ld. Updated most recent file transfer for guid: %s, new file paths: %s. All known paths for this guid: %s", v21, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v22, -1, -1);
      MEMORY[0x1AC571F20](v21, -1, -1);
    }

    else
    {
    }

    sub_1A8888A68();
  }
}

void sub_1A8888A68()
{
  v1 = v0;
  v53 = sub_1A870CCE0(&qword_1EB304888);
  v2 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v4 = v47 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC17IMSharedUtilities24RemoteIntentFileManifest_cache);

  v6 = RemoteIntentFilePersistedNodeStore.count.getter();

  v54 = *(v0 + 32);
  if (v54 < v6)
  {
    if (qword_1EB302320 != -1)
    {
LABEL_34:
      swift_once();
    }

    v49 = sub_1A88C7E58();
    v7 = sub_1A85EF0E4(v49, qword_1EB308880);

    v47[1] = v7;
    v8 = sub_1A88C7E38();
    v9 = sub_1A88C89B8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134218240;
      *(v10 + 4) = v54;
      *(v10 + 12) = 2048;

      v11 = RemoteIntentFilePersistedNodeStore.count.getter();

      *(v10 + 14) = v11;

      _os_log_impl(&dword_1A85E5000, v8, v9, "pruneToLimit: %ld, current count: %ld", v10, 0x16u);
      MEMORY[0x1AC571F20](v10, -1, -1);
    }

    else
    {
    }

    v57 = 0;
    v13 = 0;
    v52 = (v2 + 8);
    *&v12 = 138412290;
    v48 = v12;
    v50 = v5;
    v51 = v1;
    while (1)
    {
      v14 = sub_1A870CCE0(&qword_1EB304890);
      v58 = v47;
      MEMORY[0x1EEE9AC00](v14 - 8);
      v16 = v47 - v15;
      v17 = sub_1A870CCE0(&qword_1EB304898);
      (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
      v18 = type metadata accessor for RemoteIntentFileListNode(0);
      v19 = sub_1A8889464(&qword_1EB304848, type metadata accessor for RemoteIntentFileListNode);

      sub_1A88C8078();
      v55 = v19;
      v20 = sub_1A88C7FD8();
      if (v13)
      {
        if (qword_1EB302148 != -1)
        {
          swift_once();
        }

        sub_1A85EF0E4(v49, qword_1EB304818);
        v21 = v13;
        v22 = sub_1A88C7E38();
        v23 = sub_1A88C89C8();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = v48;
          v26 = v13;
          v27 = _swift_stdlib_bridgeErrorToNSError();
          *(v24 + 4) = v27;
          *v25 = v27;
          _os_log_impl(&dword_1A85E5000, v22, v23, "Failed to fetch count of persisted nodes. Error: %@", v24, 0xCu);
          sub_1A8755CB4(v25);
          MEMORY[0x1AC571F20](v25, -1, -1);
          MEMORY[0x1AC571F20](v24, -1, -1);
        }

        else
        {
        }

        v28 = 0;
      }

      else
      {
        v28 = v20;
      }

      (*v52)(v4, v53);

      if (v54 >= v28)
      {
        break;
      }

      v56 = 0;
      v29 = sub_1A8889464(&unk_1EB3090E0, type metadata accessor for RemoteIntentFilePersistedNodeStore);
      v30 = *(v29 + 24);
      v31 = type metadata accessor for RemoteIntentFilePersistedNodeStore();

      v32 = v30(v31, v29);

      if (!v32)
      {
        goto LABEL_26;
      }

      sub_1A88A7FA4(v33);
      v34 = sub_1A8889464(&qword_1EB3048D8, type metadata accessor for RemoteIntentFileListNode);
      v35 = *(v34 + 96);

      v35(&v59, v18, v34);
      if (_s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreCyAA0cde4ListG0CSgSScig_0(v59, v60))
      {
        sub_1A88C8008();
      }

      else
      {
      }

      v35(&v59, v18, v34);
      (*(v34 + 104))(v61, v18, v34);

      v36 = v60;
      v5 = v50;
      v1 = v51;
      if (!v60)
      {
LABEL_26:
        v40 = sub_1A88C7E38();
        v41 = sub_1A88C89C8();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_1A85E5000, v40, v41, "Attempted to evict oldest file, but no file was evicted. The cache count may be incorrect.", v42, 2u);
          MEMORY[0x1AC571F20](v42, -1, -1);
        }

        break;
      }

      v37 = v59;
      v2 = v61[0];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v38 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        (*(v38 + 8))(v37, v36, v2, ObjectType, v38);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v13 = v56;
      if (__OFADD__(v57, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      ++v57;
    }

    v43 = sub_1A88C7E38();
    v44 = sub_1A88C89B8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134218240;
      *(v45 + 4) = v57;
      *(v45 + 12) = 2048;

      v46 = RemoteIntentFilePersistedNodeStore.count.getter();

      *(v45 + 14) = v46;

      _os_log_impl(&dword_1A85E5000, v43, v44, "pruneToLimit evicted %ld files. Current count: %ld", v45, 0x16u);
      MEMORY[0x1AC571F20](v45, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1A88892A8()
{
  sub_1A88699EC(v0 + 16);
  v1 = OBJC_IVAR____TtC17IMSharedUtilities24RemoteIntentFileManifest_storeURL;
  v2 = sub_1A88C72E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteIntentFileManifest()
{
  result = qword_1EB3088A8;
  if (!qword_1EB3088A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A88893B0()
{
  result = sub_1A88C72E8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A8889464(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A88894AC()
{
  result = qword_1EB3048B0;
  if (!qword_1EB3048B0)
  {
    sub_1A870CD28(&qword_1EB3048B8);
    sub_1A87173B4(&qword_1EB3048C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3048B0);
  }

  return result;
}

uint64_t Wallpaper.fileName.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMWallpaper_SwiftImpl_fileName);

  return v1;
}

uint64_t Wallpaper.filePath.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMWallpaper_SwiftImpl_filePath);

  return v1;
}

uint64_t Wallpaper.lowResFileName.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileName);

  return v1;
}

uint64_t Wallpaper.lowResFilePath.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFilePath);

  return v1;
}

void *Wallpaper.metadata.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMWallpaper_SwiftImpl_metadata);
  v2 = v1;
  return v1;
}

id Wallpaper.__allocating_init(fileName:filePath:lowResFileName:lowResFilePath:metadata:contentIsSensitive:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v19 = objc_allocWithZone(v10);
  v20 = &v19[OBJC_IVAR___IMWallpaper_SwiftImpl_filePathKey];
  *v20 = 0xD000000000000014;
  v20[1] = 0x80000001A8920180;
  v21 = &v19[OBJC_IVAR___IMWallpaper_SwiftImpl_fileNameKey];
  *v21 = 0xD000000000000014;
  v21[1] = 0x80000001A89201A0;
  v22 = &v19[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFilePathKey];
  *v22 = 0xD00000000000001ALL;
  v22[1] = 0x80000001A89201C0;
  v23 = &v19[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileNameKey];
  *v23 = 0xD00000000000001ALL;
  v23[1] = 0x80000001A89201E0;
  v24 = &v19[OBJC_IVAR___IMWallpaper_SwiftImpl_dataVersionKey];
  *v24 = 0xD000000000000013;
  v24[1] = 0x80000001A8920200;
  v25 = &v19[OBJC_IVAR___IMWallpaper_SwiftImpl_highResKey];
  *v25 = 0xD000000000000013;
  v25[1] = 0x80000001A8920220;
  v26 = &v19[OBJC_IVAR___IMWallpaper_SwiftImpl_metadataKey];
  *v26 = 0xD000000000000014;
  v26[1] = 0x80000001A8920240;
  v27 = &v19[OBJC_IVAR___IMWallpaper_SwiftImpl_contentIsSensitiveKey];
  *v27 = 0xD000000000000015;
  v27[1] = 0x80000001A8920260;
  v28 = &v19[OBJC_IVAR___IMWallpaper_SwiftImpl_fileName];
  *v28 = a1;
  v28[1] = a2;
  v29 = &v19[OBJC_IVAR___IMWallpaper_SwiftImpl_filePath];
  *v29 = a3;
  v29[1] = a4;
  v30 = &v19[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileName];
  *v30 = a5;
  v30[1] = a6;
  v31 = &v19[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFilePath];
  *v31 = a7;
  v31[1] = a8;
  *&v19[OBJC_IVAR___IMWallpaper_SwiftImpl_dataVersion] = 0;
  *&v19[OBJC_IVAR___IMWallpaper_SwiftImpl_metadata] = a9;
  v19[OBJC_IVAR___IMWallpaper_SwiftImpl_contentIsSensitive] = a10;
  v33.receiver = v19;
  v33.super_class = v10;
  return objc_msgSendSuper2(&v33, sel_init);
}

id Wallpaper.init(fileName:filePath:lowResFileName:lowResFilePath:metadata:contentIsSensitive:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v11 = &v10[OBJC_IVAR___IMWallpaper_SwiftImpl_filePathKey];
  *v11 = 0xD000000000000014;
  v11[1] = 0x80000001A8920180;
  v12 = &v10[OBJC_IVAR___IMWallpaper_SwiftImpl_fileNameKey];
  *v12 = 0xD000000000000014;
  v12[1] = 0x80000001A89201A0;
  v13 = &v10[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFilePathKey];
  *v13 = 0xD00000000000001ALL;
  v13[1] = 0x80000001A89201C0;
  v14 = &v10[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileNameKey];
  *v14 = 0xD00000000000001ALL;
  v14[1] = 0x80000001A89201E0;
  v15 = &v10[OBJC_IVAR___IMWallpaper_SwiftImpl_dataVersionKey];
  *v15 = 0xD000000000000013;
  v15[1] = 0x80000001A8920200;
  v16 = &v10[OBJC_IVAR___IMWallpaper_SwiftImpl_highResKey];
  *v16 = 0xD000000000000013;
  v16[1] = 0x80000001A8920220;
  v17 = &v10[OBJC_IVAR___IMWallpaper_SwiftImpl_metadataKey];
  *v17 = 0xD000000000000014;
  v17[1] = 0x80000001A8920240;
  v18 = &v10[OBJC_IVAR___IMWallpaper_SwiftImpl_contentIsSensitiveKey];
  *v18 = 0xD000000000000015;
  v18[1] = 0x80000001A8920260;
  v19 = &v10[OBJC_IVAR___IMWallpaper_SwiftImpl_fileName];
  *v19 = a1;
  v19[1] = a2;
  v20 = &v10[OBJC_IVAR___IMWallpaper_SwiftImpl_filePath];
  *v20 = a3;
  v20[1] = a4;
  v21 = &v10[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileName];
  *v21 = a5;
  v21[1] = a6;
  v22 = &v10[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFilePath];
  *v22 = a7;
  v22[1] = a8;
  *&v10[OBJC_IVAR___IMWallpaper_SwiftImpl_dataVersion] = 0;
  *&v10[OBJC_IVAR___IMWallpaper_SwiftImpl_metadata] = a9;
  v10[OBJC_IVAR___IMWallpaper_SwiftImpl_contentIsSensitive] = a10;
  v24.receiver = v10;
  v24.super_class = type metadata accessor for Wallpaper();
  return objc_msgSendSuper2(&v24, sel_init);
}

void *Wallpaper.__allocating_init(fileName:filePath:data:lowResFileName:lowResFilePath:lowResData:metadata:contentIsSensitive:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void *a13, char a14)
{
  v54 = a3;
  v56 = objc_allocWithZone(v14);
  if (a2)
  {
    v20 = sub_1A88C82A8();
  }

  else
  {
    v20 = 0;
  }

  v21 = 0;
  v55 = a6 >> 60;
  if (a6 >> 60 != 15 && a4)
  {

    v21 = sub_1A88C82A8();
  }

  v57 = a5;
  v22 = a12;
  v62 = a13;
  v61 = a12;
  v59 = a9;
  v23 = a4;
  v24 = a6;
  if (a8)
  {
    v25 = sub_1A88C82A8();

    v22 = v61;
  }

  else
  {
    v25 = 0;
  }

  v60 = a11;
  v26 = v22 >> 60;
  if (v22 >> 60 == 15 || a10 == 0)
  {
    v28 = 0;
  }

  else
  {

    v28 = sub_1A88C82A8();
  }

  v29 = [v56 initWithFileName:v20 filePath:v21 lowResFileName:v25 lowResFilePath:v28 metadata:v62 contentIsSensitive:a14 & 1];

  if (v26 > 0xE)
  {

    v30 = v57;
    v31 = v58;
    v32 = v24;
    v33 = v23;
LABEL_24:
    v35 = v60;
    v42 = v29;
    goto LABEL_25;
  }

  v31 = v58;
  v32 = v24;
  v33 = v23;
  if (!a10)
  {
    v30 = v57;
    goto LABEL_24;
  }

  v56 = v32;
  v35 = v60;
  v34 = v61;
  sub_1A871DFB8(v60, v61);
  v36 = sub_1A88C82A8();
  v37 = [v36 stringByDeletingLastPathComponent];

  if (!v37)
  {
    sub_1A88C82E8();
    v37 = sub_1A88C82A8();
  }

  IMSharedHelperEnsureDirectoryExistsAtPath(v37);

  v38 = sub_1A88C72E8();
  v53 = &v52;
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v52 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7218();

  sub_1A88C7368();
  if (v31)
  {
    (*(v39 + 8))(v41, v38);
    sub_1A871CD4C(v35, v34);

    v42 = v29;
    sub_1A871CD4C(v57, v56);
    sub_1A871CD4C(v35, v34);

    return v42;
  }

  (*(v39 + 8))(v41, v38);
  sub_1A871CD4C(v35, v34);
  v42 = v29;
  v32 = v56;
  v30 = v57;
LABEL_25:
  if (v55 <= 0xE)
  {
    if (v33)
    {
      v43 = v30;
      v56 = v32;
      v44 = sub_1A88C82A8();
      v45 = [v44 stringByDeletingLastPathComponent];

      if (!v45)
      {
        sub_1A88C82E8();
        v45 = sub_1A88C82A8();
      }

      IMSharedHelperEnsureDirectoryExistsAtPath(v45);

      v46 = sub_1A88C72E8();
      v47 = *(v46 - 8);
      MEMORY[0x1EEE9AC00](v46);
      v49 = &v52 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1A88C7218();

      v50 = v56;
      sub_1A88C7368();
      if (v31)
      {
        v53 = &v52;
        (*(v47 + 8))(v49, v46);

        sub_1A871CD4C(v43, v50);
        sub_1A871CD4C(v60, v61);
      }

      else
      {
        (*(v47 + 8))(v49, v46);
        sub_1A871CD4C(v43, v50);

        sub_1A871CD4C(v60, v61);
      }
    }

    else
    {

      sub_1A871CD4C(v35, v61);
      sub_1A871CD4C(v30, v32);
    }
  }

  else
  {

    sub_1A871CD4C(v35, v61);
  }

  return v42;
}

id Wallpaper.init(fileName:filePath:data:lowResFileName:lowResFilePath:lowResData:metadata:contentIsSensitive:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void *a13, char a14)
{
  if (a2)
  {
    v20 = sub_1A88C82A8();
  }

  else
  {
    v20 = 0;
  }

  v21 = 0;
  v50 = a6 >> 60;
  if (a6 >> 60 != 15 && a4)
  {

    v21 = sub_1A88C82A8();
  }

  v52 = a4;
  v53 = a6;
  v22 = a12;
  v57 = a13;
  v56 = a12;
  v51 = a9;
  v49 = a3;
  v23 = a5;
  if (a8)
  {
    v24 = sub_1A88C82A8();

    v22 = v56;
  }

  else
  {
    v24 = 0;
  }

  v54 = a11;
  v25 = v22 >> 60;
  if (v22 >> 60 == 15 || a10 == 0)
  {
    v27 = 0;
  }

  else
  {

    v27 = sub_1A88C82A8();
  }

  v55 = [v55 initWithFileName:v20 filePath:v21 lowResFileName:v24 lowResFilePath:v27 metadata:v57 contentIsSensitive:a14 & 1];

  if (v25 >= 0xF)
  {

    v28 = v14;
    v29 = v53;
    v30 = v23;
LABEL_24:
    v35 = v52;
    v31 = v54;
    goto LABEL_25;
  }

  v28 = v14;
  v30 = a5;
  if (!a10)
  {
    v29 = v53;
    goto LABEL_24;
  }

  v48 = a5;
  v31 = v54;
  v32 = v56;
  sub_1A871DFB8(v54, v56);
  v33 = sub_1A88C82A8();
  v34 = [v33 stringByDeletingLastPathComponent];

  v35 = v52;
  if (!v34)
  {
    sub_1A88C82E8();
    v34 = sub_1A88C82A8();
  }

  IMSharedHelperEnsureDirectoryExistsAtPath(v34);

  v36 = sub_1A88C72E8();
  v47 = &v47;
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v47 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7218();

  sub_1A88C7368();
  if (v14)
  {
    sub_1A871CD4C(v31, v32);

    sub_1A871CD4C(v48, v53);
    sub_1A871CD4C(v31, v32);

    (*(v37 + 8))(v39, v36);
    return v55;
  }

  sub_1A871CD4C(v31, v32);
  (*(v37 + 8))(v39, v36);
  v30 = v48;
  v29 = v53;
LABEL_25:
  if (v50 < 0xF)
  {
    if (v35)
    {
      v40 = sub_1A88C82A8();
      v41 = [v40 stringByDeletingLastPathComponent];

      if (!v41)
      {
        sub_1A88C82E8();
        v41 = sub_1A88C82A8();
      }

      IMSharedHelperEnsureDirectoryExistsAtPath(v41);

      v42 = sub_1A88C72E8();
      v43 = *(v42 - 8);
      MEMORY[0x1EEE9AC00](v42);
      v45 = &v47 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1A88C7218();

      sub_1A88C7368();
      if (v28)
      {
      }

      sub_1A871CD4C(v30, v29);

      sub_1A871CD4C(v54, v56);
      (*(v43 + 8))(v45, v42);
    }

    else
    {

      sub_1A871CD4C(v31, v56);
      sub_1A871CD4C(v30, v29);
    }
  }

  else
  {

    sub_1A871CD4C(v31, v56);
  }

  return v55;
}

id Wallpaper.init(dictionaryRepresentation:)(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_filePathKey];
  *v4 = 0xD000000000000014;
  v4[1] = 0x80000001A8920180;
  v5 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_fileNameKey];
  *v5 = 0xD000000000000014;
  v5[1] = 0x80000001A89201A0;
  v6 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFilePathKey];
  *v6 = 0xD00000000000001ALL;
  v6[1] = 0x80000001A89201C0;
  v7 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileNameKey];
  *v7 = 0xD00000000000001ALL;
  v7[1] = 0x80000001A89201E0;
  v8 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_dataVersionKey];
  *v8 = 0xD000000000000013;
  v8[1] = 0x80000001A8920200;
  v9 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_highResKey];
  *v9 = 0xD000000000000013;
  v9[1] = 0x80000001A8920220;
  v10 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_metadataKey];
  *v10 = 0xD000000000000014;
  v10[1] = 0x80000001A8920240;
  v11 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_contentIsSensitiveKey];
  *v11 = 0xD000000000000015;
  v11[1] = 0x80000001A8920260;
  if (*(a1 + 16))
  {
    v12 = sub_1A85F5F40(0xD00000000000001ALL, 0x80000001A89201E0);
    if (v13)
    {
      sub_1A85F1028(*(a1 + 56) + 32 * v12, v67);
      if (swift_dynamicCast())
      {
        v63 = v66;
        if (*(a1 + 16))
        {
          v57 = v65;
          v62 = v10;
          v14 = v6[1];
          v60 = *v6;

          v58 = sub_1A85F5F40(v60, v14);
          LOBYTE(v60) = v15;

          if (v60)
          {
            sub_1A85F1028(*(a1 + 56) + 32 * v58, v67);
            if (swift_dynamicCast())
            {
              v61 = v66;
              if (*(a1 + 16))
              {
                v55 = v65;
                v16 = v8[1];
                v59 = *v8;

                v56 = sub_1A85F5F40(v59, v16);
                LOBYTE(v59) = v17;
                v18 = v62;

                if (v59)
                {
                  sub_1A85F1028(*(a1 + 56) + 32 * v56, v67);
                  if (swift_dynamicCast())
                  {
                    v19 = v65;
                    v20 = *(a1 + 16);
                    if (v20)
                    {
                      v21 = *v5;
                      v22 = v5[1];

                      v23 = sub_1A85F5F40(v21, v22);
                      v25 = v24;

                      if (v25)
                      {
                        sub_1A85F1028(*(a1 + 56) + 32 * v23, v67);
                        v26 = swift_dynamicCast();
                        v20 = v65;
                        v27 = v66;
                        if (!v26)
                        {
                          v20 = 0;
                          v27 = 0;
                        }
                      }

                      else
                      {
                        v20 = 0;
                        v27 = 0;
                      }

                      v18 = v62;
                    }

                    else
                    {
                      v27 = 0;
                    }

                    v29 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_fileName];
                    *v29 = v20;
                    v29[1] = v27;
                    v30 = *(a1 + 16);
                    if (v30)
                    {
                      v31 = *v4;
                      v32 = v4[1];

                      v33 = sub_1A85F5F40(v31, v32);
                      v35 = v34;

                      if (v35)
                      {
                        sub_1A85F1028(*(a1 + 56) + 32 * v33, v67);
                        v36 = swift_dynamicCast();
                        v30 = v65;
                        v37 = v66;
                        if (!v36)
                        {
                          v30 = 0;
                          v37 = 0;
                        }
                      }

                      else
                      {
                        v30 = 0;
                        v37 = 0;
                      }

                      v18 = v62;
                    }

                    else
                    {
                      v37 = 0;
                    }

                    v38 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_filePath];
                    *v38 = v30;
                    v38[1] = v37;
                    v39 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileName];
                    *v39 = v57;
                    v39[1] = v63;
                    v40 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFilePath];
                    *v40 = v55;
                    v40[1] = v61;
                    *&v2[OBJC_IVAR___IMWallpaper_SwiftImpl_dataVersion] = v19;
                    v41 = *(a1 + 16);
                    if (v41)
                    {
                      v42 = *v11;
                      v43 = v11[1];

                      v44 = sub_1A85F5F40(v42, v43);
                      v46 = v45;

                      if ((v46 & 1) != 0 && (sub_1A85F1028(*(a1 + 56) + 32 * v44, v67), swift_dynamicCast()))
                      {
                        LOBYTE(v41) = v65;
                      }

                      else
                      {
                        LOBYTE(v41) = 0;
                      }

                      v18 = v62;
                    }

                    v2[OBJC_IVAR___IMWallpaper_SwiftImpl_contentIsSensitive] = v41;
                    if (*(a1 + 16) && (v47 = *v18, v48 = v18[1], , v49 = sub_1A85F5F40(v47, v48), v51 = v50, , (v51 & 1) != 0))
                    {
                      sub_1A85F1028(*(a1 + 56) + 32 * v49, v67);

                      sub_1A870CCE0(&unk_1EB3091D0);
                      if (swift_dynamicCast())
                      {
                        v52 = objc_allocWithZone(IMWallpaperMetadata);
                        v53 = sub_1A88C8188();

                        v54 = [v52 initWithDictionaryRepresentation_];

LABEL_40:
                        *&v2[OBJC_IVAR___IMWallpaper_SwiftImpl_metadata] = v54;
                        v64.receiver = v2;
                        v64.super_class = type metadata accessor for Wallpaper();
                        return objc_msgSendSuper2(&v64, sel_init);
                      }
                    }

                    else
                    {
                    }

                    v54 = 0;
                    goto LABEL_40;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  type metadata accessor for Wallpaper();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1A888AF48(void *a1)
{
  if (*(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_fileName + 8) && *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_filePath + 8))
  {
    v3 = sub_1A88C82A8();
    v4 = sub_1A88C82A8();
    [a1 encodeObject:v3 forKey:v4];

    v5 = sub_1A88C82A8();
    v6 = sub_1A88C82A8();
    [a1 encodeObject:v5 forKey:v6];
  }

  if (*(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileName + 8))
  {
    v7 = sub_1A88C82A8();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1A88C82A8();
  [a1 encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFilePath + 8))
  {
    v9 = sub_1A88C82A8();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1A88C82A8();
  [a1 encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  v11 = sub_1A88C8958();
  v12 = sub_1A88C82A8();
  [a1 encodeObject:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_contentIsSensitive);
  v14 = sub_1A88C82A8();
  [a1 encodeBool:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_metadata);
  if (v15)
  {
    v16 = v15;
    v17 = sub_1A88C82A8();
    [a1 encodeObject:v16 forKey:v17];
  }
}

id Wallpaper.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_filePathKey];
  *v4 = 0xD000000000000014;
  v4[1] = 0x80000001A8920180;
  v5 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_fileNameKey];
  *v5 = 0xD000000000000014;
  v5[1] = 0x80000001A89201A0;
  v6 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFilePathKey];
  *v6 = 0xD00000000000001ALL;
  v6[1] = 0x80000001A89201C0;
  v7 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileNameKey];
  *v7 = 0xD00000000000001ALL;
  v7[1] = 0x80000001A89201E0;
  v8 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_dataVersionKey];
  *v8 = 0xD000000000000013;
  v8[1] = 0x80000001A8920200;
  v9 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_highResKey];
  *v9 = 0xD000000000000013;
  v9[1] = 0x80000001A8920220;
  v10 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_metadataKey];
  *v10 = 0xD000000000000014;
  v10[1] = 0x80000001A8920240;
  v11 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_contentIsSensitiveKey];
  *v11 = 0xD000000000000015;
  v11[1] = 0x80000001A8920260;
  sub_1A85E9718(0, &qword_1ED8C9450);
  v12 = sub_1A88C8B68();
  if (v12)
  {
    v27 = v12;
    v13 = v2;
    sub_1A85E9718(0, &unk_1ED8C9440);

    v14 = sub_1A88C8B68();

    sub_1A88C82D8();

    v15 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileName];
    *v15 = 0;
    v15[1] = 0;

    v16 = sub_1A88C8B68();

    sub_1A88C82D8();

    v17 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFilePath];
    *v17 = 0;
    v17[1] = 0;

    v18 = sub_1A88C8B68();

    sub_1A88C82D8();

    v19 = &v2[OBJC_IVAR___IMWallpaper_SwiftImpl_filePath];
    *v19 = 0;
    v19[1] = 0;

    v20 = sub_1A88C8B68();

    sub_1A88C82D8();

    v21 = &v13[OBJC_IVAR___IMWallpaper_SwiftImpl_fileName];
    *v21 = 0;
    v21[1] = 0;
    v22 = [v27 integerValue];
    *&v13[OBJC_IVAR___IMWallpaper_SwiftImpl_dataVersion] = v22;
    sub_1A85E9718(0, &qword_1EB308950);

    v23 = sub_1A88C8B68();

    *&v13[OBJC_IVAR___IMWallpaper_SwiftImpl_metadata] = v23;

    v24 = sub_1A88C82A8();

    LOBYTE(v18) = [a1 decodeBoolForKey_];

    v13[OBJC_IVAR___IMWallpaper_SwiftImpl_contentIsSensitive] = v18;
    v28.receiver = v13;
    v28.super_class = type metadata accessor for Wallpaper();
    v25 = objc_msgSendSuper2(&v28, sel_init);
  }

  else
  {

    type metadata accessor for Wallpaper();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v25;
}

id sub_1A888B820(void *a1)
{
  v2 = (v1 + *a1);
  v3 = v2[1];
  if (!v3)
  {
    return 0;
  }

  v4 = *v2;
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = [objc_opt_self() defaultManager];
  v7 = sub_1A88C82A8();
  v8 = [v6 fileExistsAtPath_];

  return v8;
}

uint64_t sub_1A888B918(void *a1)
{
  if (*(v1 + *a1 + 8))
  {
    v3 = v2;
    v4 = sub_1A88C72E8();
    v5 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v4);
    v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1A88C7218();
    v8 = sub_1A88C72F8();
    if (!v2)
    {
      v3 = v8;
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_1A888CAE4();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
  }

  return v3;
}

id sub_1A888BA98(char *a1, uint64_t a2, void *a3, void *a4)
{
  if (*&a1[*a4 + 8])
  {
    v6 = sub_1A88C72E8();
    v7 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v6);
    v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = a1;
    sub_1A88C7218();
    v15 = sub_1A88C72F8();
    v17 = v16;

    (*(v7 + 8))(v9, v6);
    v18 = sub_1A88C7338();
    sub_1A871CD60(v15, v17);
    v19 = v18;
  }

  else
  {
    sub_1A888CAE4();
    v13 = swift_allocError();
    *v14 = 0;
    swift_willThrow();
    if (a3)
    {
      v11 = sub_1A88C7158();

      v12 = v11;
      v19 = 0;
      *a3 = v11;
    }

    else
    {

      v19 = 0;
    }
  }

  return v19;
}

uint64_t sub_1A888BC88(uint64_t a1)
{
  sub_1A87303E8(a1, v22);
  if (!v23)
  {
    sub_1A85EF638(v22, &qword_1EB3057B0);
    goto LABEL_43;
  }

  type metadata accessor for Wallpaper();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_43:
    v19 = 0;
    return v19 & 1;
  }

  v2 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_fileName + 8);
  v3 = *&v21[OBJC_IVAR___IMWallpaper_SwiftImpl_fileName + 8];
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_42;
    }

    v4 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_fileName) == *&v21[OBJC_IVAR___IMWallpaper_SwiftImpl_fileName] && v2 == v3;
    if (!v4 && (sub_1A88C9398() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v3)
  {
    goto LABEL_42;
  }

  v5 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_filePath + 8);
  v6 = *&v21[OBJC_IVAR___IMWallpaper_SwiftImpl_filePath + 8];
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_42;
    }

    v7 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_filePath) == *&v21[OBJC_IVAR___IMWallpaper_SwiftImpl_filePath] && v5 == v6;
    if (!v7 && (sub_1A88C9398() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v6)
  {
    goto LABEL_42;
  }

  if (*(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_dataVersion) != *&v21[OBJC_IVAR___IMWallpaper_SwiftImpl_dataVersion])
  {
    goto LABEL_42;
  }

  v8 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileName + 8);
  v9 = *&v21[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileName + 8];
  if (v8)
  {
    if (!v9 || (*(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileName) != *&v21[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileName] || v8 != v9) && (sub_1A88C9398() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v9)
  {
    goto LABEL_42;
  }

  v10 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFilePath + 8);
  v11 = *&v21[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFilePath + 8];
  if (v10)
  {
    if (!v11 || (*(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFilePath) != *&v21[OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFilePath] || v10 != v11) && (sub_1A88C9398() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v11)
  {
    goto LABEL_42;
  }

  v12 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_metadata);
  v13 = *&v21[OBJC_IVAR___IMWallpaper_SwiftImpl_metadata];
  if (v12)
  {
    if (v13)
    {
      sub_1A85E9718(0, &qword_1EB308950);
      v14 = v13;
      v15 = v12;
      v16 = sub_1A88C8BA8();

      if (v16)
      {
        goto LABEL_40;
      }
    }

LABEL_42:

    goto LABEL_43;
  }

  if (v13)
  {
    goto LABEL_42;
  }

LABEL_40:
  v17 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_contentIsSensitive);
  v18 = v21[OBJC_IVAR___IMWallpaper_SwiftImpl_contentIsSensitive];

  v19 = v17 ^ v18 ^ 1;
  return v19 & 1;
}

unint64_t sub_1A888BF8C()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  v3 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_dataVersionKey + 8);
  *(inited + 32) = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_dataVersionKey);
  *(inited + 40) = v3;
  v4 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_dataVersion);
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 48) = v4;

  v5 = sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A85EF638(inited + 32, &qword_1EB303720);
  v6 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_fileName + 8);
  v7 = MEMORY[0x1E69E6158];
  if (v6)
  {
    v8 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_fileName);
    v9 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_fileNameKey);
    v10 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_fileNameKey + 8);
    v27 = MEMORY[0x1E69E6158];
    *&v26 = v8;
    *(&v26 + 1) = v6;
    sub_1A85E99B0(&v26, v25);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC700(v25, v9, v10, isUniquelyReferenced_nonNull_native);
  }

  v12 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileName + 8);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileName);
    v14 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileNameKey);
    v15 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileNameKey + 8);
    v27 = v7;
    *&v26 = v13;
    *(&v26 + 1) = v12;
    sub_1A85E99B0(&v26, v25);

    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC700(v25, v14, v15, v16);
  }

  v17 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_metadata);
  if (v17)
  {
    v18 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_metadataKey);
    v19 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_metadataKey + 8);
    v20 = v17;
    v21 = [v20 dictionaryRepresentation];
    v22 = sub_1A88C81A8();

    v27 = sub_1A870CCE0(&unk_1EB3091D0);
    *&v26 = v22;
    sub_1A85E99B0(&v26, v25);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC700(v25, v18, v19, v23);
  }

  return v5;
}

id sub_1A888C210(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1A88C8188();

  return v5;
}

unint64_t sub_1A888C28C()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  v3 = *(v0 + OBJC_IVAR___IMWallpaper_SwiftImpl_dataVersionKey + 8);
  *(inited + 32) = *(v0 + OBJC_IVAR___IMWallpaper_SwiftImpl_dataVersionKey);
  *(inited + 40) = v3;
  v4 = *(v0 + OBJC_IVAR___IMWallpaper_SwiftImpl_dataVersion);
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 48) = v4;

  v5 = sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A85EF638(inited + 32, &qword_1EB303720);
  v6 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_fileName + 8);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_filePath + 8);
    if (v7)
    {
      v8 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_fileName);
      v9 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_filePath);
      v10 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_fileNameKey);
      v11 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_fileNameKey + 8);
      v12 = MEMORY[0x1E69E6158];
      v42 = MEMORY[0x1E69E6158];
      *&v41 = v8;
      *(&v41 + 1) = v6;
      sub_1A85E99B0(&v41, v40);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1A87AC700(v40, v10, v11, isUniquelyReferenced_nonNull_native);
      v14 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_filePathKey);
      v15 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_filePathKey + 8);
      v42 = v12;
      *&v41 = v9;
      *(&v41 + 1) = v7;
      sub_1A85E99B0(&v41, v40);
      v16 = swift_isUniquelyReferenced_nonNull_native();
      sub_1A87AC700(v40, v14, v15, v16);
    }
  }

  v17 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileName + 8);
  if (v17)
  {
    v18 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFilePath + 8);
    if (v18)
    {
      v19 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileName);
      v20 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFilePath);
      v21 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileNameKey);
      v22 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFileNameKey + 8);
      v23 = MEMORY[0x1E69E6158];
      v42 = MEMORY[0x1E69E6158];
      *&v41 = v19;
      *(&v41 + 1) = v17;
      sub_1A85E99B0(&v41, v40);

      v24 = swift_isUniquelyReferenced_nonNull_native();
      sub_1A87AC700(v40, v21, v22, v24);
      v25 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFilePathKey);
      v26 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_lowResFilePathKey + 8);
      v42 = v23;
      *&v41 = v20;
      *(&v41 + 1) = v18;
      sub_1A85E99B0(&v41, v40);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      sub_1A87AC700(v40, v25, v26, v27);
    }
  }

  v28 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_metadata);
  if (v28)
  {
    v29 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_metadataKey);
    v30 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_metadataKey + 8);
    v31 = v28;
    v32 = [v31 dictionaryRepresentation];
    v33 = sub_1A88C81A8();

    v42 = sub_1A870CCE0(&unk_1EB3091D0);
    *&v41 = v33;
    sub_1A85E99B0(&v41, v40);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC700(v40, v29, v30, v34);
  }

  v35 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_contentIsSensitiveKey);
  v36 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_contentIsSensitiveKey + 8);
  v37 = *(v1 + OBJC_IVAR___IMWallpaper_SwiftImpl_contentIsSensitive);
  v42 = MEMORY[0x1E69E6370];
  LOBYTE(v41) = v37;
  sub_1A85E99B0(&v41, v40);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A87AC700(v40, v35, v36, v38);
  return v5;
}

id Wallpaper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Wallpaper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Wallpaper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A888C830(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = "iagnose-only";
  }

  else
  {
    v4 = "noWallpaperPathSet";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a2)
  {
    v7 = "noWallpaperPathSet";
  }

  else
  {
    v7 = "iagnose-only";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1A88C9398();
  }

  return v9 & 1;
}

uint64_t sub_1A888C8DC()
{
  sub_1A88C9528();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A888C95C()
{
  sub_1A88C8268();
}

uint64_t sub_1A888C9C8()
{
  sub_1A88C9528();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A888CA44@<X0>(char *a1@<X8>)
{
  v2 = sub_1A88C9028();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1A888CAA4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (*v1)
  {
    v3 = "noWallpaperPathSet";
  }

  else
  {
    v3 = "iagnose-only";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1A888CAE4()
{
  result = qword_1EB308958;
  if (!qword_1EB308958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308958);
  }

  return result;
}

unint64_t sub_1A888CD5C()
{
  result = qword_1EB308960;
  if (!qword_1EB308960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308960);
  }

  return result;
}

__n128 sub_1A888CDB0(uint64_t a1, __int128 *a2)
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

uint64_t sub_1A888CDDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1A888CE24(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1A888CE90(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A888CEB0, 0, 0);
}

uint64_t sub_1A888CEB0()
{
  v2 = v0[2];
  v1 = v0[3];
  v13 = *(v1 + 40);
  v3 = sub_1A88C82A8();
  sub_1A8757B60(*(v1 + 16));
  v4 = sub_1A88C85E8();

  v5 = sub_1A88C82A8();
  v6 = sub_1A88C82A8();
  v7 = sub_1A88C82A8();
  v8 = sub_1A88C82A8();
  v9 = sub_1A88C8188();
  v10 = sub_1A88C82A8();
  [v2 joinChatID:v3 handleInfo:v4 identifier:v5 style:v13 groupID:v6 lastAddressedHandle:v7 lastAddressedSIMID:v8 joinProperties:v9 account:v10];

  v11 = v0[1];

  return v11();
}

unint64_t sub_1A888D018(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4449554774616863;
    v6 = 0x6E65644974616863;
    if (a1 != 2)
    {
      v6 = 0x6C79745374616863;
    }

    if (a1)
    {
      v5 = 0x6E49656C646E6168;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    v2 = 0x746E756F636361;
    if (a1 == 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 == 4)
    {
      v3 = 0x444970756F7267;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A888D158(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB3089F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A888E4D8();
  sub_1A88C95C8();
  LOBYTE(v11) = 0;
  sub_1A88C9278();
  if (!v2)
  {
    v11 = *(v3 + 16);
    HIBYTE(v10) = 1;
    sub_1A870CCE0(&qword_1EB3089D8);
    sub_1A85FB520(&qword_1EB308A00, &qword_1EB3089D8);
    sub_1A88C92C8();
    LOBYTE(v11) = 2;
    sub_1A88C9278();
    LOBYTE(v11) = 3;
    sub_1A88C92F8();
    LOBYTE(v11) = 4;
    sub_1A88C9278();
    LOBYTE(v11) = 5;
    sub_1A88C9278();
    LOBYTE(v11) = 6;
    sub_1A88C9278();
    v11 = *(v3 + 96);
    HIBYTE(v10) = 7;
    sub_1A870CCE0(&qword_1EB3089E8);
    sub_1A85FB520(&qword_1EB308A08, &qword_1EB3089E8);
    sub_1A88C92C8();
    LOBYTE(v11) = 8;
    sub_1A88C9278();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A888D48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A888DAE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A888D4B4(uint64_t a1)
{
  v2 = sub_1A888E4D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A888D4F0(uint64_t a1)
{
  v2 = sub_1A888E4D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A888D52C()
{
  v0 = *aJoinchatid;

  return v0;
}

double sub_1A888D564@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A888DDEC(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

unint64_t sub_1A888D610(uint64_t a1)
{
  result = sub_1A888D638();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A888D638()
{
  result = qword_1EB308980;
  if (!qword_1EB308980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308980);
  }

  return result;
}

unint64_t sub_1A888D6D4()
{
  result = qword_1EB308998;
  if (!qword_1EB308998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308998);
  }

  return result;
}

unint64_t sub_1A888D728(uint64_t a1)
{
  result = sub_1A888D750();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A888D750()
{
  result = qword_1EB3089A0;
  if (!qword_1EB3089A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3089A0);
  }

  return result;
}

uint64_t sub_1A888D7A4(uint64_t a1)
{
  v2 = sub_1A888DA90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A888D7E0(uint64_t a1)
{
  v2 = sub_1A888DA90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A888D81C(uint64_t a1)
{
  result = sub_1A888D844();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A888D844()
{
  result = qword_1EB3089A8;
  if (!qword_1EB3089A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3089A8);
  }

  return result;
}

unint64_t sub_1A888D898(uint64_t a1)
{
  result = sub_1A888D8C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A888D8C0()
{
  result = qword_1EB3089B0;
  if (!qword_1EB3089B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3089B0);
  }

  return result;
}

uint64_t sub_1A888D940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A888D97C(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB3089B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A888DA90();
  sub_1A88C95C8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A888DA90()
{
  result = qword_1EB3089C0;
  if (!qword_1EB3089C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3089C0);
  }

  return result;
}

uint64_t sub_1A888DAE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449554774616863 && a2 == 0xE800000000000000;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E49656C646E6168 && a2 == 0xEE00617461446F66 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644974616863 && a2 == 0xEE00726569666974 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8920510 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8920530 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8920550 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746E756F636361 && a2 == 0xE700000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1A888DDEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB3089C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A888E4D8();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  LOBYTE(v51[0]) = 0;
  v9 = sub_1A88C9108();
  v41 = a2;
  v42 = v10;
  sub_1A870CCE0(&qword_1EB3089D8);
  LOBYTE(v43) = 1;
  sub_1A85FB520(&qword_1EB3089E0, &qword_1EB3089D8);
  sub_1A88C9158();
  v11 = v51[0];
  LOBYTE(v51[0]) = 2;
  v39 = sub_1A88C9108();
  v40 = v12;
  LOBYTE(v51[0]) = 3;
  v62 = sub_1A88C9188();
  LOBYTE(v51[0]) = 4;
  v36 = sub_1A88C9108();
  v38 = v13;
  LOBYTE(v51[0]) = 5;
  v14 = sub_1A88C9108();
  v37 = v15;
  v16 = v11;
  v33 = v14;
  LOBYTE(v51[0]) = 6;
  v35 = 0;
  v17 = sub_1A88C9108();
  v34 = v18;
  v32 = v17;
  sub_1A870CCE0(&qword_1EB3089E8);
  LOBYTE(v43) = 7;
  sub_1A85FB520(&qword_1EB3089F0, &qword_1EB3089E8);
  sub_1A88C9158();
  v31 = v51[0];
  v63 = 8;
  v19 = sub_1A88C9108();
  v21 = v20;
  (*(v6 + 8))(v8, v5);
  *&v43 = v9;
  v22 = v42;
  *(&v43 + 1) = v42;
  *&v44 = v16;
  *(&v44 + 1) = v39;
  *&v45 = v40;
  BYTE8(v45) = v62;
  *&v46 = v36;
  *(&v46 + 1) = v38;
  v23 = v33;
  *&v47 = v33;
  v24 = v32;
  *(&v47 + 1) = v37;
  *&v48 = v32;
  *(&v48 + 1) = v34;
  *&v49 = v31;
  *(&v49 + 1) = v19;
  v50 = v21;
  sub_1A87E8654(&v43, v51);
  sub_1A85F1084(a1);
  v51[0] = v9;
  v51[1] = v22;
  v51[2] = v16;
  v51[3] = v39;
  v51[4] = v40;
  v52 = v62;
  v53 = v36;
  v54 = v38;
  v55 = v23;
  v56 = v37;
  v57 = v24;
  v58 = v34;
  v59 = v31;
  v60 = v19;
  v61 = v21;
  result = sub_1A888E52C(v51);
  v26 = v48;
  v27 = v41;
  *(v41 + 64) = v47;
  *(v27 + 80) = v26;
  *(v27 + 96) = v49;
  *(v27 + 112) = v50;
  v28 = v44;
  *v27 = v43;
  *(v27 + 16) = v28;
  v29 = v46;
  *(v27 + 32) = v45;
  *(v27 + 48) = v29;
  return result;
}

unint64_t sub_1A888E4D8()
{
  result = qword_1EB3089D0;
  if (!qword_1EB3089D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3089D0);
  }

  return result;
}

unint64_t sub_1A888E590()
{
  result = qword_1EB308A10;
  if (!qword_1EB308A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308A10);
  }

  return result;
}

unint64_t sub_1A888E5E8()
{
  result = qword_1EB308A18;
  if (!qword_1EB308A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308A18);
  }

  return result;
}

unint64_t sub_1A888E640()
{
  result = qword_1EB308A20;
  if (!qword_1EB308A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308A20);
  }

  return result;
}

unint64_t sub_1A888E698()
{
  result = qword_1EB308A28;
  if (!qword_1EB308A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308A28);
  }

  return result;
}

unint64_t sub_1A888E6F0()
{
  result = qword_1EB308A30;
  if (!qword_1EB308A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308A30);
  }

  return result;
}

IMChipReply_optional __swiftcall IMChipReply.init(dictionary:)(Swift::OpaquePointer dictionary)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1A88C8188();

  v3 = [v1 initWithDictionary_];

  v6 = v3;
  result.value.suggestion = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

id IMChipReply.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_1A85F5F40(0x6974736567677573, 0xEA00000000006E6FLL), (v5 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v4, v11);

    sub_1A870CCE0(&unk_1EB3091D0);
    if (swift_dynamicCast())
    {
      v6 = objc_allocWithZone(IMChipSuggestion);
      v7 = sub_1A88C8188();

      v8 = [v6 initWithDictionary_];

      if (v8)
      {
        v9 = [v2 initWithSuggestion_];

        return v9;
      }
    }
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1A888EB50()
{
  sub_1A870CCE0(&qword_1EB304808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  *(inited + 32) = @"__kIMSuggestedReplyAttributeName";
  v2 = @"__kIMSuggestedReplyAttributeName";
  v3 = [v0 dictionaryRepresentation];
  v4 = sub_1A88C81A8();

  *(inited + 40) = v4;
  v5 = sub_1A8738F70(inited);
  swift_setDeallocating();
  sub_1A85EF638(inited + 32, &qword_1EB304810);
  v6 = @"\uFFFF";
  sub_1A878C550(v5);

  v7 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  type metadata accessor for Key(0);
  sub_1A8750554();
  v8 = sub_1A88C8188();

  v9 = [v7 initWithString:v6 attributes:v8];

  return v9;
}

IMChipReply __swiftcall IMChipReply.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.suggestion = v2;
  result.super.isa = v1;
  return result;
}

unint64_t type metadata accessor for IMChipReply()
{
  result = qword_1EB308A40;
  if (!qword_1EB308A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB308A40);
  }

  return result;
}

uint64_t sub_1A888EE10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1A888EE58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A888EEB8(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB308AB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1A870C278(a1, a1[3]);
  sub_1A888FD10();
  sub_1A88C95C8();
  v11 = *v3;
  v10[7] = 0;
  sub_1A870CCE0(&qword_1EB3039F0);
  sub_1A85FB520(&qword_1EB303A08, &qword_1EB3039F0);
  sub_1A88C92C8();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[6] = 1;
  sub_1A88C9278();
  v10[5] = 2;
  sub_1A88C9278();
  v10[4] = 3;
  sub_1A88C92F8();
  v10[3] = 4;
  sub_1A88C9278();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A888F0F0()
{
  v1 = *v0;
  v2 = 0x4449554774616863;
  v3 = 0x6E65644974616863;
  v4 = 0x6C79745374616863;
  if (v1 != 3)
  {
    v4 = 0x746E756F636361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A888F1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A888F7D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A888F1C8(uint64_t a1)
{
  v2 = sub_1A888FD10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A888F204(uint64_t a1)
{
  v2 = sub_1A888FD10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A888F240()
{
  v0 = *aSendmessage_0;

  return v0;
}

double sub_1A888F278@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A888F9A0(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_1A888F300(uint64_t a1)
{
  result = sub_1A888F328();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A888F328()
{
  result = qword_1EB308A58;
  if (!qword_1EB308A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308A58);
  }

  return result;
}

unint64_t sub_1A888F3C4()
{
  result = qword_1EB308A70;
  if (!qword_1EB308A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308A70);
  }

  return result;
}

unint64_t sub_1A888F418(uint64_t a1)
{
  result = sub_1A888F440();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A888F440()
{
  result = qword_1EB308A78;
  if (!qword_1EB308A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308A78);
  }

  return result;
}

uint64_t sub_1A888F494(uint64_t a1)
{
  v2 = sub_1A888F780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A888F4D0(uint64_t a1)
{
  v2 = sub_1A888F780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A888F50C(uint64_t a1)
{
  result = sub_1A888F534();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A888F534()
{
  result = qword_1EB308A80;
  if (!qword_1EB308A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308A80);
  }

  return result;
}

unint64_t sub_1A888F588(uint64_t a1)
{
  result = sub_1A888F5B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A888F5B0()
{
  result = qword_1EB308A88;
  if (!qword_1EB308A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308A88);
  }

  return result;
}

uint64_t sub_1A888F630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A888F66C(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB308A90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A888F780();
  sub_1A88C95C8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A888F780()
{
  result = qword_1EB308A98;
  if (!qword_1EB308A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308A98);
  }

  return result;
}

uint64_t sub_1A888F7D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001A89205B0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449554774616863 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644974616863 && a2 == 0xEE00726569666974 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E756F636361 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1A88C9398();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A888F9A0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB308AA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A888FD10();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  sub_1A870CCE0(&qword_1EB3039F0);
  LOBYTE(v27) = 0;
  sub_1A85FB520(&qword_1EB3039F8, &qword_1EB3039F0);
  sub_1A88C9158();
  v9 = v31[0];
  LOBYTE(v31[0]) = 1;
  v25 = sub_1A88C9108();
  v26 = v10;
  LOBYTE(v31[0]) = 2;
  v23 = sub_1A88C9108();
  v24 = v11;
  LOBYTE(v31[0]) = 3;
  v35 = sub_1A88C9188();
  v36 = 4;
  v12 = sub_1A88C9108();
  v13 = v8;
  v15 = v14;
  (*(v6 + 8))(v13, v5);
  v16 = v25;
  *&v27 = v9;
  *(&v27 + 1) = v25;
  v18 = v23;
  v17 = v24;
  *&v28 = v26;
  *(&v28 + 1) = v23;
  *&v29 = v24;
  BYTE8(v29) = v35;
  *&v30 = v12;
  *(&v30 + 1) = v15;
  sub_1A87E8350(&v27, v31);
  sub_1A85F1084(a1);
  v31[0] = v9;
  v31[1] = v16;
  v31[2] = v26;
  v31[3] = v18;
  v31[4] = v17;
  v32 = v35;
  v33 = v12;
  v34 = v15;
  result = sub_1A888FD64(v31);
  v20 = v28;
  *a2 = v27;
  a2[1] = v20;
  v21 = v30;
  a2[2] = v29;
  a2[3] = v21;
  return result;
}

unint64_t sub_1A888FD10()
{
  result = qword_1EB308AA8;
  if (!qword_1EB308AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308AA8);
  }

  return result;
}

unint64_t sub_1A888FDC8()
{
  result = qword_1EB308AB8;
  if (!qword_1EB308AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308AB8);
  }

  return result;
}

unint64_t sub_1A888FE20()
{
  result = qword_1EB308AC0;
  if (!qword_1EB308AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308AC0);
  }

  return result;
}

unint64_t sub_1A888FE78()
{
  result = qword_1EB308AC8;
  if (!qword_1EB308AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308AC8);
  }

  return result;
}

unint64_t sub_1A888FED0()
{
  result = qword_1EB308AD0;
  if (!qword_1EB308AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308AD0);
  }

  return result;
}

unint64_t sub_1A888FF28()
{
  result = qword_1EB308AD8;
  if (!qword_1EB308AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308AD8);
  }

  return result;
}

id sub_1A88901E4()
{
  result = [swift_getObjCClassFromMetadata() isFilterUnknownSendersEnabled];
  if (result)
  {
    result = [objc_opt_self() isTimeSensitiveCustomModelAvailable];
    if (result)
    {
      v1 = @"com.apple.MobileSMS";
      v2 = sub_1A88C82A8();
      IMSyncedSettingsKey.defaultValue.getter(5, &v4);
      swift_dynamicCast();
      v3 = IMGetDomainBoolForKeyWithDefaultValue();

      return v3;
    }
  }

  return result;
}

id sub_1A88902F8()
{
  result = [swift_getObjCClassFromMetadata() isFilterUnknownSendersEnabled];
  if (result)
  {
    if ([objc_opt_self() isTimeSensitiveCustomModelAvailable])
    {
      return 0;
    }

    else
    {
      v1 = @"com.apple.MobileSMS";
      v2 = sub_1A88C82A8();
      IMSyncedSettingsKey.defaultValue.getter(11, &v4);
      swift_dynamicCast();
      v3 = IMGetDomainBoolForKeyWithDefaultValue();

      return v3;
    }
  }

  return result;
}

id sub_1A8890414()
{
  result = [swift_getObjCClassFromMetadata() isFilterUnknownSendersEnabled];
  if (result)
  {
    v1 = @"com.apple.MobileSMS";
    v2 = sub_1A88C82A8();
    IMSyncedSettingsKey.defaultValue.getter(6, &v4);
    swift_dynamicCast();
    v3 = IMGetDomainBoolForKeyWithDefaultValue();

    return v3;
  }

  return result;
}

id sub_1A889050C()
{
  result = [swift_getObjCClassFromMetadata() isFilterUnknownSendersEnabled];
  if (result)
  {
    v1 = @"com.apple.MobileSMS";
    v2 = sub_1A88C82A8();
    IMSyncedSettingsKey.defaultValue.getter(7, &v4);
    swift_dynamicCast();
    v3 = IMGetDomainBoolForKeyWithDefaultValue();

    return v3;
  }

  return result;
}

id sub_1A8890604()
{
  result = [swift_getObjCClassFromMetadata() isFilterUnknownSendersEnabled];
  if (result)
  {
    v1 = @"com.apple.MobileSMS";
    v2 = sub_1A88C82A8();
    IMSyncedSettingsKey.defaultValue.getter(8, &v4);
    swift_dynamicCast();
    v3 = IMGetDomainBoolForKeyWithDefaultValue();

    return v3;
  }

  return result;
}

uint64_t sub_1A88906D0()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isIntroductionsEnabled];

  if (v1)
  {
    [swift_getObjCClassFromMetadata() isFilterUnknownSendersEnabled];
    return sub_1A88C86C8();
  }

  v3 = sub_1A88C82A8();
  v4 = sub_1A88C82A8();
  v5 = IMGetCachedDomainValueForKey();

  if (v5)
  {
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_1A85E9718(0, &qword_1ED8C9450);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_1A860169C(v9);
  }

  sub_1A85E9718(0, &qword_1ED8C9450);
  return sub_1A88C8B88();
}

IMNotificationSettings __swiftcall IMNotificationSettings.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1A889091C()
{
  v0 = @"com.apple.MobileSMS";
  v1 = sub_1A88C82A8();
  IMSyncedSettingsKey.defaultValue.getter(3, &v4);
  swift_dynamicCast();
  v2 = IMGetDomainBoolForKeyWithDefaultValue();

  return v2;
}

uint64_t sub_1A8890A00(void *a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB308B88);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  sub_1A870C278(a1, a1[3]);
  sub_1A88920F8();
  sub_1A88C95C8();
  v9[1] = a2;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A8716048(&qword_1EB303120);
  sub_1A88C92C8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A8890B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A8920960 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A88C9398();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A8890C30(uint64_t a1)
{
  v2 = sub_1A88920F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8890C6C(uint64_t a1)
{
  v2 = sub_1A88920F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8890CA8()
{
  v0 = qword_1EB308AE8;

  return v0;
}

void sub_1A8890CE0(void *a1)
{
  v2 = sub_1A88C85E8();
  [a1 permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs_];
}

void *sub_1A8890D44@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A8891A5C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1A8890DB8(uint64_t a1)
{
  result = sub_1A8890DE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8890DE0()
{
  result = qword_1EB308B18;
  if (!qword_1EB308B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308B18);
  }

  return result;
}

uint64_t sub_1A8890E34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v7 = sub_1A870CCE0(&qword_1EB308B70);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  sub_1A870C278(a1, a1[3]);
  sub_1A88920A4();
  sub_1A88C95C8();
  v15 = a2;
  v14 = 0;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A8716048(&qword_1EB303120);
  sub_1A88C92C8();
  if (!v4)
  {
    v13 = 1;
    sub_1A88C9278();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A8891014()
{
  if (*v0)
  {
    return 0x44497972657571;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1A8891054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A8920960 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x44497972657571 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A88C9398();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A889113C(uint64_t a1)
{
  v2 = sub_1A88920A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8891178(uint64_t a1)
{
  v2 = sub_1A88920A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A88911B4()
{
  v0 = qword_1EB308AF8;

  return v0;
}

void sub_1A88911EC(void *a1)
{
  v2 = sub_1A88C85E8();
  v3 = sub_1A88C82A8();
  [a1 permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs:v2 queryID:v3];
}

uint64_t sub_1A8891274@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A8891C04(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1A88912F0(uint64_t a1)
{
  result = sub_1A8891318();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8891318()
{
  result = qword_1EB308B20;
  if (!qword_1EB308B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308B20);
  }

  return result;
}

uint64_t sub_1A889136C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1A870CCE0(&qword_1EB308B58);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  sub_1A870C278(a1, a1[3]);
  sub_1A8892050();
  sub_1A88C95C8();
  v14 = a2;
  v13 = 0;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A8716048(&qword_1EB303120);
  sub_1A88C92C8();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_1A88C92C8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A8891554()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x4449554774616863;
  }
}

uint64_t sub_1A8891598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449554774616863 && a2 == 0xE900000000000073;
  if (v6 || (sub_1A88C9398() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8920960 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A88C9398();

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

uint64_t sub_1A8891684(uint64_t a1)
{
  v2 = sub_1A8892050();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A88916C0(uint64_t a1)
{
  v2 = sub_1A8892050();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A88916FC()
{
  v0 = qword_1EB308B08;

  return v0;
}

void sub_1A8891734(void *a1)
{
  v2 = sub_1A88C85E8();
  v3 = sub_1A88C85E8();
  [a1 permanentlyDeletedRecoverableMessagesForChatsWithGUIDs:v2 deletedChatGUIDs:v3];
}

uint64_t sub_1A88917BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A8891E2C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1A8891830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A889186C(uint64_t a1)
{
  result = sub_1A8891894();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8891894()
{
  result = qword_1EB308B28;
  if (!qword_1EB308B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308B28);
  }

  return result;
}

unint64_t sub_1A88918E8(uint64_t a1)
{
  result = sub_1A8891910();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8891910()
{
  result = qword_1EB308B30;
  if (!qword_1EB308B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308B30);
  }

  return result;
}

unint64_t sub_1A8891964(uint64_t a1)
{
  result = sub_1A889198C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A889198C()
{
  result = qword_1EB308B38;
  if (!qword_1EB308B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308B38);
  }

  return result;
}

unint64_t sub_1A88919E0(uint64_t a1)
{
  result = sub_1A8891A08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8891A08()
{
  result = qword_1EB308B40;
  if (!qword_1EB308B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308B40);
  }

  return result;
}

void *sub_1A8891A5C(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB308B78);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = sub_1A870C278(a1, a1[3]);
  sub_1A88920F8();
  sub_1A88C95A8();
  if (v1)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    sub_1A870CCE0(&qword_1EB303100);
    sub_1A8716048(&qword_1EB303108);
    sub_1A88C9158();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_1A85F1084(a1);
  }

  return v7;
}

uint64_t sub_1A8891C04(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB308B60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1A870C278(a1, v7);
  sub_1A88920A4();
  sub_1A88C95A8();
  if (!v1)
  {
    sub_1A870CCE0(&qword_1EB303100);
    v9[7] = 0;
    sub_1A8716048(&qword_1EB303108);
    sub_1A88C9158();
    v7 = v10;
    v9[6] = 1;
    sub_1A88C9108();
    (*(v4 + 8))(v6, v3);
  }

  sub_1A85F1084(a1);
  return v7;
}

uint64_t sub_1A8891E2C(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB308B48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A8892050();
  sub_1A88C95A8();
  sub_1A870CCE0(&qword_1EB303100);
  v9 = 0;
  sub_1A8716048(&qword_1EB303108);
  sub_1A88C9158();
  v7 = v10;
  v9 = 1;
  sub_1A88C9158();
  (*(v3 + 8))(v5, v2);
  sub_1A85F1084(a1);
  return v7;
}

unint64_t sub_1A8892050()
{
  result = qword_1EB308B50;
  if (!qword_1EB308B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308B50);
  }

  return result;
}

unint64_t sub_1A88920A4()
{
  result = qword_1EB308B68;
  if (!qword_1EB308B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308B68);
  }

  return result;
}

unint64_t sub_1A88920F8()
{
  result = qword_1EB308B80;
  if (!qword_1EB308B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308B80);
  }

  return result;
}

unint64_t sub_1A8892180()
{
  result = qword_1EB308B90;
  if (!qword_1EB308B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308B90);
  }

  return result;
}

unint64_t sub_1A88921D8()
{
  result = qword_1EB308B98;
  if (!qword_1EB308B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308B98);
  }

  return result;
}

unint64_t sub_1A8892230()
{
  result = qword_1EB308BA0;
  if (!qword_1EB308BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308BA0);
  }

  return result;
}

unint64_t sub_1A8892288()
{
  result = qword_1EB308BA8;
  if (!qword_1EB308BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308BA8);
  }

  return result;
}

unint64_t sub_1A88922E0()
{
  result = qword_1EB308BB0;
  if (!qword_1EB308BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308BB0);
  }

  return result;
}

unint64_t sub_1A8892338()
{
  result = qword_1EB308BB8;
  if (!qword_1EB308BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308BB8);
  }

  return result;
}

unint64_t sub_1A8892390()
{
  result = qword_1EB308BC0;
  if (!qword_1EB308BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308BC0);
  }

  return result;
}

unint64_t sub_1A88923E8()
{
  result = qword_1EB308BC8;
  if (!qword_1EB308BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308BC8);
  }

  return result;
}

unint64_t sub_1A8892440()
{
  result = qword_1EB308BD0;
  if (!qword_1EB308BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308BD0);
  }

  return result;
}

uint64_t sub_1A889249C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 296))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A88924F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 296) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 296) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1A88925A8()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC8];
  v102 = MEMORY[0x1E69E7CC8];
  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v3;
  v4 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v5 = v1[1];
  if (v5)
  {
    v6 = *v1;
    v100 = v4;
    *&v99 = v6;
    *(&v99 + 1) = v5;
    sub_1A85E99B0(&v99, v98);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, isUniquelyReferenced_nonNull_native);
    sub_1A8717360(v101);
    v102 = v2;
  }

  else
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
  }

  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v8;
  v9 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v10 = v1[3];
  if (v10)
  {
    v11 = v1[2];
    v100 = v9;
    *&v99 = v11;
    *(&v99 + 1) = v10;
    sub_1A85E99B0(&v99, v98);

    v12 = v102;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, v13);
    sub_1A8717360(v101);
    v102 = v12;
  }

  else
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
  }

  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v14;
  sub_1A88C8D88();
  v15 = v1[5];
  if (v15)
  {
    v16 = v1[4];
    v100 = v9;
    *&v99 = v16;
    *(&v99 + 1) = v15;
    sub_1A85E99B0(&v99, v98);

    v17 = v102;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, v18);
    sub_1A8717360(v101);
    v102 = v17;
  }

  else
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
  }

  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v19;
  sub_1A88C8D88();
  v20 = v1[7];
  if (v20)
  {
    v21 = v1[6];
    v100 = v9;
    *&v99 = v21;
    *(&v99 + 1) = v20;
    sub_1A85E99B0(&v99, v98);

    v22 = v102;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, v23);
    sub_1A8717360(v101);
    v102 = v22;
  }

  else
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
  }

  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v24;
  sub_1A88C8D88();
  v25 = v1[9];
  if (v25)
  {
    v26 = v1[8];
    v100 = v9;
    *&v99 = v26;
    *(&v99 + 1) = v25;
    sub_1A85E99B0(&v99, v98);

    v27 = v102;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, v28);
    sub_1A8717360(v101);
    v102 = v27;
  }

  else
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
  }

  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v29;
  sub_1A88C8D88();
  v30 = v1[11];
  if (v30)
  {
    v31 = v1[10];
    v100 = v9;
    *&v99 = v31;
    *(&v99 + 1) = v30;
    sub_1A85E99B0(&v99, v98);

    v32 = v102;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, v33);
    sub_1A8717360(v101);
    v102 = v32;
  }

  else
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
  }

  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v34;
  sub_1A88C8D88();
  v35 = v1[13];
  if (v35)
  {
    v36 = v1[12];
    v100 = v9;
    *&v99 = v36;
    *(&v99 + 1) = v35;
    sub_1A85E99B0(&v99, v98);

    v37 = v102;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, v38);
    sub_1A8717360(v101);
    v102 = v37;
  }

  else
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
  }

  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v39;
  sub_1A88C8D88();
  v40 = *(v1 + 112);
  if (v40 == 2)
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
  }

  else
  {
    v100 = MEMORY[0x1E69E6370];
    LOBYTE(v99) = v40;
    sub_1A85E99B0(&v99, v98);
    v41 = v102;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, v42);
    sub_1A8717360(v101);
    v102 = v41;
  }

  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v43;
  sub_1A88C8D88();
  v44 = v1[16];
  if (v44)
  {
    v45 = v1[15];
    v100 = v9;
    *&v99 = v45;
    *(&v99 + 1) = v44;
    sub_1A85E99B0(&v99, v98);

    v46 = v102;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, v47);
    sub_1A8717360(v101);
    v102 = v46;
  }

  else
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
  }

  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v48;
  sub_1A88C8D88();
  v49 = v1[18];
  if (v49)
  {
    v50 = v1[17];
    v100 = v9;
    *&v99 = v50;
    *(&v99 + 1) = v49;
    sub_1A85E99B0(&v99, v98);

    v51 = v102;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, v52);
    sub_1A8717360(v101);
    v102 = v51;
  }

  else
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
  }

  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v53;
  sub_1A88C8D88();
  v54 = v1[20];
  if (v54)
  {
    v55 = v1[19];
    v100 = v9;
    *&v99 = v55;
    *(&v99 + 1) = v54;
    sub_1A85E99B0(&v99, v98);

    v56 = v102;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, v57);
    sub_1A8717360(v101);
    v102 = v56;
  }

  else
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
  }

  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v58;
  sub_1A88C8D88();
  v59 = v1[22];
  if (v59)
  {
    v60 = v1[21];
    v100 = v9;
    *&v99 = v60;
    *(&v99 + 1) = v59;
    sub_1A85E99B0(&v99, v98);

    v61 = v102;
    v62 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, v62);
    sub_1A8717360(v101);
    v102 = v61;
  }

  else
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
  }

  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v63;
  sub_1A88C8D88();
  v64 = v1[24];
  if (v64)
  {
    v65 = v1[23];
    v100 = v9;
    *&v99 = v65;
    *(&v99 + 1) = v64;
    sub_1A85E99B0(&v99, v98);

    v66 = v102;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, v67);
    sub_1A8717360(v101);
    v102 = v66;
  }

  else
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
  }

  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v68;
  sub_1A88C8D88();
  v69 = v1[26];
  if (v69)
  {
    v70 = v1[25];
    v100 = v9;
    *&v99 = v70;
    *(&v99 + 1) = v69;
    sub_1A85E99B0(&v99, v98);

    v71 = v102;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, v72);
    sub_1A8717360(v101);
    v102 = v71;
  }

  else
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
  }

  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v73;
  sub_1A88C8D88();
  v74 = v1[28];
  if (v74)
  {
    v75 = v1[27];
    v100 = v9;
    *&v99 = v75;
    *(&v99 + 1) = v74;
    sub_1A85E99B0(&v99, v98);

    v76 = v102;
    v77 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, v77);
    sub_1A8717360(v101);
    v102 = v76;
  }

  else
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
  }

  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v78;
  sub_1A88C8D88();
  v79 = v1[30];
  if (v79)
  {
    v80 = v1[29];
    v100 = v9;
    *&v99 = v80;
    *(&v99 + 1) = v79;
    sub_1A85E99B0(&v99, v98);

    v81 = v102;
    v82 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, v82);
    sub_1A8717360(v101);
    v102 = v81;
  }

  else
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
  }

  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v83;
  sub_1A88C8D88();
  if (v1[32])
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
  }

  else
  {
    v84 = v1[31];
    v100 = MEMORY[0x1E69E6810];
    *&v99 = v84;
    sub_1A85E99B0(&v99, v98);
    v85 = v102;
    v86 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, v86);
    sub_1A8717360(v101);
    v102 = v85;
  }

  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v87;
  sub_1A88C8D88();
  v88 = v1[34];
  if (v88)
  {
    v89 = v1[33];
    v100 = v9;
    *&v99 = v89;
    *(&v99 + 1) = v88;
    sub_1A85E99B0(&v99, v98);

    v90 = v102;
    v91 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, v91);
    sub_1A8717360(v101);
    v102 = v90;
  }

  else
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
  }

  *&v99 = sub_1A88C82E8();
  *(&v99 + 1) = v92;
  sub_1A88C8D88();
  v93 = v1[36];
  if (v93)
  {
    v94 = v1[35];
    v100 = v9;
    *&v99 = v94;
    *(&v99 + 1) = v93;
    sub_1A85E99B0(&v99, v98);

    v95 = v102;
    v96 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v98, v101, v96);
    sub_1A8717360(v101);
    return v95;
  }

  else
  {
    sub_1A88BEFF8(v101, &v99);
    sub_1A860169C(&v99);
    sub_1A8717360(v101);
    return v102;
  }
}

unint64_t sub_1A88932BC(char a1)
{
  result = 1684632935;
  switch(a1)
  {
    case 1:
      result = 0x444955476B636170;
      break;
    case 2:
      result = 0x68736148656C6966;
      break;
    case 3:
      result = 0x657069636572;
      break;
    case 4:
      result = 0x4449656C646E7562;
      break;
    case 5:
    case 17:
      result = 0x646F63736E617274;
      break;
    case 6:
      result = 0x7954746365666665;
      break;
    case 7:
      result = 0x6974636165527369;
      break;
    case 8:
      result = 0x6C616E7265747865;
      break;
    case 9:
      result = 0x6E4974756F79616CLL;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x72616C61635378;
      break;
    case 13:
      result = 0x72616C61635379;
      break;
    case 14:
      result = 0x656C616373;
      break;
    case 15:
      result = 0x6E6F697461746F72;
      break;
    case 16:
      result = 0xD000000000000019;
      break;
    case 18:
      result = 0x6E6F697469736F70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A88934E0(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB308BD8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  sub_1A870C278(a1, a1[3]);
  sub_1A8893A24();
  sub_1A88C95C8();
  v9 = 0;
  sub_1A88C91C8();
  if (!v1)
  {
    v9 = 1;
    sub_1A88C91C8();
    v9 = 2;
    sub_1A88C91C8();
    v9 = 3;
    sub_1A88C91C8();
    v9 = 4;
    sub_1A88C91C8();
    v9 = 5;
    sub_1A88C91C8();
    v9 = 6;
    sub_1A88C91C8();
    v9 = 7;
    sub_1A88C91D8();
    v9 = 8;
    sub_1A88C91C8();
    v9 = 9;
    sub_1A88C91C8();
    v9 = 10;
    sub_1A88C91C8();
    v9 = 11;
    sub_1A88C91C8();
    v9 = 12;
    sub_1A88C91C8();
    v9 = 13;
    sub_1A88C91C8();
    v9 = 14;
    sub_1A88C91C8();
    v9 = 15;
    sub_1A88C91C8();
    v9 = 16;
    sub_1A88C9218();
    v9 = 17;
    sub_1A88C91C8();
    v9 = 18;
    sub_1A88C91C8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A88938D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8894790(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8893908(uint64_t a1)
{
  v2 = sub_1A8893A24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8893944(uint64_t a1)
{
  v2 = sub_1A8893A24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1A8893980@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A8894D88(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x128uLL);
  }

  return result;
}

unint64_t sub_1A8893A24()
{
  result = qword_1EB308BE0;
  if (!qword_1EB308BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308BE0);
  }

  return result;
}

uint64_t sub_1A8893A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = sub_1A88C82E8();
  v148 = v4;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v5 = sub_1A8602F10(v146), (v6 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v5, &v147);
    sub_1A8717360(v146);
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = v144;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v145;
    }

    else
    {
      v9 = 0;
    }

    v142 = v9;
    v143 = v8;
  }

  else
  {
    sub_1A8717360(v146);
    v142 = 0;
    v143 = 0;
  }

  v147 = sub_1A88C82E8();
  v148 = v10;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v11 = sub_1A8602F10(v146), (v12 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v11, &v147);
    sub_1A8717360(v146);
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v144;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v145;
    }

    else
    {
      v15 = 0;
    }

    v140 = v15;
    v141 = v14;
  }

  else
  {
    sub_1A8717360(v146);
    v140 = 0;
    v141 = 0;
  }

  v147 = sub_1A88C82E8();
  v148 = v16;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v17 = sub_1A8602F10(v146), (v18 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v17, &v147);
    sub_1A8717360(v146);
    v19 = swift_dynamicCast();
    if (v19)
    {
      v20 = v144;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v145;
    }

    else
    {
      v21 = 0;
    }

    v138 = v21;
    v139 = v20;
  }

  else
  {
    sub_1A8717360(v146);
    v138 = 0;
    v139 = 0;
  }

  v147 = sub_1A88C82E8();
  v148 = v22;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v23 = sub_1A8602F10(v146), (v24 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v23, &v147);
    sub_1A8717360(v146);
    v25 = swift_dynamicCast();
    if (v25)
    {
      v26 = v144;
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v27 = v145;
    }

    else
    {
      v27 = 0;
    }

    v136 = v27;
    v137 = v26;
  }

  else
  {
    sub_1A8717360(v146);
    v136 = 0;
    v137 = 0;
  }

  v147 = sub_1A88C82E8();
  v148 = v28;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v29 = sub_1A8602F10(v146), (v30 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v29, &v147);
    sub_1A8717360(v146);
    v31 = swift_dynamicCast();
    if (v31)
    {
      v32 = v144;
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v33 = v145;
    }

    else
    {
      v33 = 0;
    }

    v134 = v33;
    v135 = v32;
  }

  else
  {
    sub_1A8717360(v146);
    v134 = 0;
    v135 = 0;
  }

  v147 = sub_1A88C82E8();
  v148 = v34;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v35 = sub_1A8602F10(v146), (v36 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v35, &v147);
    sub_1A8717360(v146);
    v37 = swift_dynamicCast();
    if (v37)
    {
      v38 = v144;
    }

    else
    {
      v38 = 0;
    }

    if (v37)
    {
      v39 = v145;
    }

    else
    {
      v39 = 0;
    }

    v132 = v39;
    v133 = v38;
  }

  else
  {
    sub_1A8717360(v146);
    v132 = 0;
    v133 = 0;
  }

  v147 = sub_1A88C82E8();
  v148 = v40;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v41 = sub_1A8602F10(v146), (v42 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v41, &v147);
    sub_1A8717360(v146);
    v43 = swift_dynamicCast();
    if (v43)
    {
      v44 = v144;
    }

    else
    {
      v44 = 0;
    }

    if (v43)
    {
      v45 = v145;
    }

    else
    {
      v45 = 0;
    }

    v130 = v45;
    v131 = v44;
  }

  else
  {
    sub_1A8717360(v146);
    v130 = 0;
    v131 = 0;
  }

  v147 = sub_1A88C82E8();
  v148 = v46;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v47 = sub_1A8602F10(v146), (v48 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v47, &v147);
    sub_1A8717360(v146);
    v49 = swift_dynamicCast();
    v50 = v144;
    if (!v49)
    {
      v50 = 2;
    }
  }

  else
  {
    sub_1A8717360(v146);
    v50 = 2;
  }

  v129 = v50;
  v147 = sub_1A88C82E8();
  v148 = v51;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v52 = sub_1A8602F10(v146), (v53 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v52, &v147);
    sub_1A8717360(v146);
    v54 = swift_dynamicCast();
    if (v54)
    {
      v55 = v144;
    }

    else
    {
      v55 = 0;
    }

    if (v54)
    {
      v56 = v145;
    }

    else
    {
      v56 = 0;
    }

    v127 = v56;
    v128 = v55;
  }

  else
  {
    sub_1A8717360(v146);
    v127 = 0;
    v128 = 0;
  }

  v147 = sub_1A88C82E8();
  v148 = v57;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v58 = sub_1A8602F10(v146), (v59 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v58, &v147);
    sub_1A8717360(v146);
    v60 = swift_dynamicCast();
    if (v60)
    {
      v61 = v144;
    }

    else
    {
      v61 = 0;
    }

    if (v60)
    {
      v62 = v145;
    }

    else
    {
      v62 = 0;
    }

    v125 = v62;
    v126 = v61;
  }

  else
  {
    sub_1A8717360(v146);
    v125 = 0;
    v126 = 0;
  }

  v147 = sub_1A88C82E8();
  v148 = v63;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v64 = sub_1A8602F10(v146), (v65 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v64, &v147);
    sub_1A8717360(v146);
    v66 = swift_dynamicCast();
    if (v66)
    {
      v67 = v144;
    }

    else
    {
      v67 = 0;
    }

    if (v66)
    {
      v68 = v145;
    }

    else
    {
      v68 = 0;
    }

    v123 = v68;
    v124 = v67;
  }

  else
  {
    sub_1A8717360(v146);
    v123 = 0;
    v124 = 0;
  }

  v147 = sub_1A88C82E8();
  v148 = v69;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v70 = sub_1A8602F10(v146), (v71 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v70, &v147);
    sub_1A8717360(v146);
    v72 = swift_dynamicCast();
    if (v72)
    {
      v73 = v144;
    }

    else
    {
      v73 = 0;
    }

    if (v72)
    {
      v74 = v145;
    }

    else
    {
      v74 = 0;
    }

    v121 = v74;
    v122 = v73;
  }

  else
  {
    sub_1A8717360(v146);
    v121 = 0;
    v122 = 0;
  }

  v147 = sub_1A88C82E8();
  v148 = v75;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v76 = sub_1A8602F10(v146), (v77 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v76, &v147);
    sub_1A8717360(v146);
    v78 = swift_dynamicCast();
    if (v78)
    {
      v79 = v144;
    }

    else
    {
      v79 = 0;
    }

    if (v78)
    {
      v80 = v145;
    }

    else
    {
      v80 = 0;
    }

    v119 = v80;
    v120 = v79;
  }

  else
  {
    sub_1A8717360(v146);
    v119 = 0;
    v120 = 0;
  }

  v147 = sub_1A88C82E8();
  v148 = v81;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v82 = sub_1A8602F10(v146), (v83 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v82, &v147);
    sub_1A8717360(v146);
    v84 = swift_dynamicCast();
    if (v84)
    {
      v85 = v144;
    }

    else
    {
      v85 = 0;
    }

    if (v84)
    {
      v86 = v145;
    }

    else
    {
      v86 = 0;
    }

    v117 = v86;
    v118 = v85;
  }

  else
  {
    sub_1A8717360(v146);
    v117 = 0;
    v118 = 0;
  }

  v147 = sub_1A88C82E8();
  v148 = v87;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v88 = sub_1A8602F10(v146), (v89 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v88, &v147);
    sub_1A8717360(v146);
    v90 = swift_dynamicCast();
    if (v90)
    {
      v91 = v144;
    }

    else
    {
      v91 = 0;
    }

    if (v90)
    {
      v92 = v145;
    }

    else
    {
      v92 = 0;
    }
  }

  else
  {
    sub_1A8717360(v146);
    v91 = 0;
    v92 = 0;
  }

  v147 = sub_1A88C82E8();
  v148 = v93;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v94 = sub_1A8602F10(v146), (v95 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v94, &v147);
    sub_1A8717360(v146);
    v96 = swift_dynamicCast();
    if (v96)
    {
      v97 = v144;
    }

    else
    {
      v97 = 0;
    }

    if (v96)
    {
      v98 = v145;
    }

    else
    {
      v98 = 0;
    }
  }

  else
  {
    sub_1A8717360(v146);
    v97 = 0;
    v98 = 0;
  }

  v147 = sub_1A88C82E8();
  v148 = v99;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v100 = sub_1A8602F10(v146), (v101 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v100, &v147);
    sub_1A8717360(v146);
    v102 = swift_dynamicCast();
    if (v102)
    {
      v103 = v144;
    }

    else
    {
      v103 = 0;
    }

    v104 = v102 ^ 1;
  }

  else
  {
    sub_1A8717360(v146);
    v103 = 0;
    v104 = 1;
  }

  v147 = sub_1A88C82E8();
  v148 = v105;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v106 = sub_1A8602F10(v146), (v107 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v106, &v147);
    sub_1A8717360(v146);
    v108 = swift_dynamicCast();
    if (v108)
    {
      v109 = v144;
    }

    else
    {
      v109 = 0;
    }

    if (v108)
    {
      v110 = v145;
    }

    else
    {
      v110 = 0;
    }
  }

  else
  {
    sub_1A8717360(v146);
    v109 = 0;
    v110 = 0;
  }

  v147 = sub_1A88C82E8();
  v148 = v111;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v112 = sub_1A8602F10(v146), (v113 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v112, &v147);
    sub_1A8717360(v146);

    result = swift_dynamicCast();
    v115 = v144;
    v116 = v145;
    if (!result)
    {
      v115 = 0;
      v116 = 0;
    }
  }

  else
  {

    result = sub_1A8717360(v146);
    v115 = 0;
    v116 = 0;
  }

  *a2 = v143;
  *(a2 + 8) = v142;
  *(a2 + 16) = v141;
  *(a2 + 24) = v140;
  *(a2 + 32) = v139;
  *(a2 + 40) = v138;
  *(a2 + 48) = v137;
  *(a2 + 56) = v136;
  *(a2 + 64) = v135;
  *(a2 + 72) = v134;
  *(a2 + 80) = v133;
  *(a2 + 88) = v132;
  *(a2 + 96) = v131;
  *(a2 + 104) = v130;
  *(a2 + 112) = v129;
  *(a2 + 120) = v128;
  *(a2 + 128) = v127;
  *(a2 + 136) = v126;
  *(a2 + 144) = v125;
  *(a2 + 152) = v124;
  *(a2 + 160) = v123;
  *(a2 + 168) = v122;
  *(a2 + 176) = v121;
  *(a2 + 184) = v120;
  *(a2 + 192) = v119;
  *(a2 + 200) = v118;
  *(a2 + 208) = v117;
  *(a2 + 216) = v91;
  *(a2 + 224) = v92;
  *(a2 + 232) = v97;
  *(a2 + 240) = v98;
  *(a2 + 248) = v103;
  *(a2 + 256) = v104;
  *(a2 + 264) = v109;
  *(a2 + 272) = v110;
  *(a2 + 280) = v115;
  *(a2 + 288) = v116;
  return result;
}

uint64_t sub_1A8894790(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632935 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444955476B636170 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68736148656C6966 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657069636572 && a2 == 0xE600000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646F63736E617274 && a2 == 0xEE00687361486465 || (sub_1A88C9398() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7954746365666665 && a2 == 0xEA00000000006570 || (sub_1A88C9398() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6974636165527369 && a2 == 0xEA00000000006E6FLL || (sub_1A88C9398() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xEB00000000495255 || (sub_1A88C9398() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E4974756F79616CLL && a2 == 0xEC000000746E6574 || (sub_1A88C9398() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8920980 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A89209A0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x72616C61635378 && a2 == 0xE700000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x72616C61635379 && a2 == 0xE700000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A89209C0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x646F63736E617274 && a2 == 0xEF656C6163536465 || (sub_1A88C9398() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xEF6E6F6973726556)
  {

    return 18;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

void *sub_1A8894D88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB308BE8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - v6;
  v8 = a1[3];
  v107 = a1;
  sub_1A870C278(a1, v8);
  sub_1A8893A24();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(v107);
  }

  v9 = a2;
  LOBYTE(v77[0]) = 0;
  v10 = sub_1A88C9058();
  v74 = v11;
  LOBYTE(v77[0]) = 1;
  v12 = sub_1A88C9058();
  v69 = v13;
  v73 = v12;
  LOBYTE(v77[0]) = 2;
  v72 = sub_1A88C9058();
  v68 = v14;
  LOBYTE(v77[0]) = 3;
  v71 = sub_1A88C9058();
  v67 = v15;
  LOBYTE(v77[0]) = 4;
  v70 = sub_1A88C9058();
  v66 = v16;
  LOBYTE(v77[0]) = 5;
  v57 = sub_1A88C9058();
  v65 = v17;
  LOBYTE(v77[0]) = 6;
  v56 = sub_1A88C9058();
  v64 = v18;
  LOBYTE(v77[0]) = 7;
  v55 = sub_1A88C9068();
  LOBYTE(v77[0]) = 8;
  v54 = sub_1A88C9058();
  v63 = v19;
  v75 = 0;
  LOBYTE(v77[0]) = 9;
  v20 = sub_1A88C9058();
  v62 = v21;
  v75 = 0;
  v22 = v20;
  LOBYTE(v77[0]) = 10;
  v53 = sub_1A88C9058();
  v61 = v23;
  v75 = 0;
  LOBYTE(v77[0]) = 11;
  v52 = sub_1A88C9058();
  v60 = v24;
  v75 = 0;
  LOBYTE(v77[0]) = 12;
  v51 = sub_1A88C9058();
  v59 = v25;
  v75 = 0;
  LOBYTE(v77[0]) = 13;
  v50 = sub_1A88C9058();
  v58 = v26;
  v75 = 0;
  LOBYTE(v77[0]) = 14;
  v48 = sub_1A88C9058();
  v49 = v27;
  v75 = 0;
  LOBYTE(v77[0]) = 15;
  v46 = sub_1A88C9058();
  v47 = v28;
  LOBYTE(v77[0]) = 16;
  v44 = sub_1A88C90A8();
  v75 = 0;
  v105 = v29 & 1;
  LOBYTE(v77[0]) = 17;
  v43 = sub_1A88C9058();
  v45 = v30;
  v75 = 0;
  v103 = 18;
  v31 = sub_1A88C9058();
  v41 = v32;
  v42 = v31;
  v75 = 0;
  MEMORY[8](v7, v5);
  *(&v76[32] + 1) = *v104;
  v33 = v74;
  v76[0] = v10;
  v76[1] = v74;
  v35 = v68;
  v34 = v69;
  v76[2] = v73;
  v76[3] = v69;
  v76[4] = v72;
  v76[5] = v68;
  v37 = v66;
  v36 = v67;
  v76[6] = v71;
  v76[7] = v67;
  v76[8] = v70;
  v76[9] = v66;
  v76[10] = v57;
  v76[11] = v65;
  v76[12] = v56;
  v76[13] = v64;
  LOBYTE(v76[14]) = v55;
  v76[15] = v54;
  v76[16] = v63;
  v76[17] = v22;
  v76[18] = v62;
  v76[19] = v53;
  v76[20] = v61;
  v76[21] = v52;
  v76[22] = v60;
  v76[23] = v51;
  v76[24] = v59;
  v76[25] = v50;
  v76[26] = v58;
  v76[27] = v48;
  v76[28] = v49;
  v76[29] = v46;
  v76[30] = v47;
  v76[31] = v44;
  HIDWORD(v76[32]) = *&v104[3];
  v40 = v105;
  LOBYTE(v76[32]) = v105;
  v76[33] = v43;
  v76[34] = v45;
  v76[35] = v42;
  v76[36] = v41;
  sub_1A8895A08(v76, v77);
  sub_1A85F1084(v107);
  v77[0] = v10;
  v77[1] = v33;
  v77[2] = v73;
  v77[3] = v34;
  v77[4] = v72;
  v77[5] = v35;
  v77[6] = v71;
  v77[7] = v36;
  v77[8] = v70;
  v77[9] = v37;
  v77[10] = v57;
  v77[11] = v65;
  v77[12] = v56;
  v77[13] = v64;
  v78 = v55;
  *v79 = v106[0];
  *&v79[3] = *(v106 + 3);
  v80 = v54;
  v81 = v63;
  v82 = v22;
  v83 = v62;
  v84 = v53;
  v85 = v61;
  v86 = v52;
  v87 = v60;
  v88 = v51;
  v89 = v59;
  v90 = v50;
  v91 = v58;
  v92 = v48;
  v93 = v49;
  v94 = v46;
  v95 = v47;
  v96 = v44;
  v97 = v40;
  *v98 = *v104;
  *&v98[3] = *&v104[3];
  v99 = v43;
  v100 = v45;
  v101 = v42;
  v102 = v41;
  sub_1A8895A40(v77);
  return memcpy(v9, v76, 0x128uLL);
}

uint64_t getEnumTagSinglePayload for RemoteIntentStickerUserInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteIntentStickerUserInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A8895BC4()
{
  result = qword_1EB308BF0;
  if (!qword_1EB308BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308BF0);
  }

  return result;
}

unint64_t sub_1A8895C1C()
{
  result = qword_1EB308BF8;
  if (!qword_1EB308BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308BF8);
  }

  return result;
}

unint64_t sub_1A8895C74()
{
  result = qword_1EB308C00;
  if (!qword_1EB308C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308C00);
  }

  return result;
}

uint64_t sub_1A8895CC8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_12:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1A87303E8(*(a1 + 56) + 32 * v13, v38);
    *&v37 = v16;
    *(&v37 + 1) = v15;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_1A87303E8(&v35, &v28);
    if (v29)
    {
      sub_1A85E99B0(&v28, v33);
      v31 = v34;
      v32[0] = v35;
      v32[1] = v36;
      sub_1A85E99B0(v33, v30);
      v17 = *(v2 + 16);
      if (*(v2 + 24) <= v17)
      {

        sub_1A887935C(v17 + 1, 1);
        v2 = v39;
      }

      else
      {
      }

      v18 = v31;
      sub_1A88C9528();
      sub_1A88C8268();
      result = sub_1A88C9578();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
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
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v2 + 48) + 16 * v23) = v18;
      sub_1A85E99B0(v30, (*(v2 + 56) + 32 * v23));
      ++*(v2 + 16);
      v10 = v32;
    }

    else
    {

      sub_1A85EF638(&v34, &qword_1EB308C30);
      v10 = &v28;
    }

    result = sub_1A85EF638(v10, &qword_1EB3057B0);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

id IMActionDialPhone.init(dictionary:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1A88C8188();

  v2 = [v0 initWithDictionary_];

  return v2;
}

id IMActionDialPhone.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    v4 = sub_1A85F5F40(0x6D754E656E6F6870, 0xEB00000000726562);
    if (v5)
    {
      sub_1A85F1028(*(a1 + 56) + 32 * v4, v12);
      if (swift_dynamicCast())
      {
        v6 = sub_1A88C82A8();

        if (*(a1 + 16) && (v7 = sub_1A85F5F40(0x6B6361626C6C6166, 0xEB000000006C7255), (v8 & 1) != 0))
        {
          sub_1A85F1028(*(a1 + 56) + 32 * v7, v12);

          if (swift_dynamicCast())
          {
            v9 = sub_1A88C82A8();

LABEL_12:
            v11 = [v2 initWithPhoneNumber:v6 fallbackUrl:v9];

            return v11;
          }
        }

        else
        {
        }

        v9 = 0;
        goto LABEL_12;
      }
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id IMActionDialPhone.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMActionDialPhone()
{
  result = qword_1EB308C20;
  if (!qword_1EB308C20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB308C20);
  }

  return result;
}

uint64_t sub_1A8896514()
{
  if (qword_1EB302340 != -1)
  {
    swift_once();
  }

  off_1EB308C38 = qword_1EB308C50;
}

void sub_1A8896578()
{
  if (qword_1EB302328 != -1)
  {
    swift_once();
  }

  v0 = off_1EB308C38;
  v1 = *(off_1EB308C38 + 2);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];

    sub_1A871CE50(0, v1, 0);
    v2 = v11;
    v3 = v0 + 40;
    do
    {
      v4 = (*(*v3 + 16))();
      v12 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        v9 = v4;
        v10 = v5;
        sub_1A871CE50((v6 > 1), v7 + 1, 1);
        v5 = v10;
        v4 = v9;
        v2 = v12;
      }

      *(v2 + 16) = v7 + 1;
      v8 = v2 + 16 * v7;
      *(v8 + 32) = v4;
      *(v8 + 40) = v5;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  qword_1EB308C40 = v2;
}

uint64_t static RemoteIntentSupportedBroadcastEventRequests.supportedEntityIdentifiers.getter()
{
  if (qword_1EB302330 != -1)
  {
    swift_once();
  }
}

void *sub_1A8896710()
{
  result = sub_1A8896730();
  off_1EB308C48 = result;
  return result;
}

uint64_t sub_1A8896730()
{
  if (qword_1EB302328 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v0 = off_1EB308C38;
    v1 = *(off_1EB308C38 + 2);
    if (!v1)
    {
      return MEMORY[0x1E69E7CC8];
    }

    v2 = 0;
    v3 = off_1EB308C38 + 32;
    v4 = MEMORY[0x1E69E7CC8];
    while (v2 < v0[2])
    {
      v23 = *&v3[16 * v2];
      v6 = (*(*&v3[16 * v2 + 8] + 16))();
      v8 = v7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v4;
      v10 = sub_1A85F5F40(v6, v8);
      v12 = v4[2];
      v13 = (v11 & 1) == 0;
      v14 = __OFADD__(v12, v13);
      v15 = v12 + v13;
      if (v14)
      {
        goto LABEL_20;
      }

      v16 = v11;
      if (v4[3] < v15)
      {
        sub_1A887B37C(v15, isUniquelyReferenced_nonNull_native);
        v10 = sub_1A85F5F40(v6, v8);
        if ((v16 & 1) != (v17 & 1))
        {
          result = sub_1A88C9488();
          __break(1u);
          return result;
        }

LABEL_12:
        if (v16)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      v21 = v10;
      sub_1A87B27D4();
      v10 = v21;
      if (v16)
      {
LABEL_4:
        v5 = v10;

        v4 = v24;
        *(v24[7] + 16 * v5) = v23;
        goto LABEL_5;
      }

LABEL_13:
      v4 = v24;
      v24[(v10 >> 6) + 8] |= 1 << v10;
      v18 = (v24[6] + 16 * v10);
      *v18 = v6;
      v18[1] = v8;
      *(v24[7] + 16 * v10) = v23;
      v19 = v24[2];
      v14 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v14)
      {
        goto LABEL_21;
      }

      v24[2] = v20;
LABEL_5:
      if (v1 == ++v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }
}

uint64_t static RemoteIntentSupportedBroadcastEventRequests.requestType(for:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EB302338 != -1)
  {
    v6 = a1;
    v7 = a2;
    swift_once();
    a1 = v6;
    a2 = v7;
  }

  v2 = off_1EB308C48;
  if (*(off_1EB308C48 + 2) && (v3 = sub_1A85F5F40(a1, a2), (v4 & 1) != 0))
  {
    return *(v2[7] + 16 * v3);
  }

  else
  {
    return 0;
  }
}

void sub_1A88969CC()
{
  if (qword_1EB3021B8 != -1)
  {
    swift_once();
  }

  v0 = off_1EB305570;
  v1 = *(off_1EB305570 + 2);
  if (v1)
  {

    v2 = MEMORY[0x1E69E7CC0];
    v3 = 32;
    do
    {
      v5 = *&v0[v3];
      v6 = swift_conformsToProtocol2();
      if (v6)
      {
        v7 = v5 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        v8 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1A8736194(0, *(v2 + 2) + 1, 1, v2);
        }

        v10 = *(v2 + 2);
        v9 = *(v2 + 3);
        if (v10 >= v9 >> 1)
        {
          v2 = sub_1A8736194((v9 > 1), v10 + 1, 1, v2);
        }

        *(v2 + 2) = v10 + 1;
        v4 = &v2[16 * v10];
        *(v4 + 4) = v5;
        *(v4 + 5) = v8;
      }

      v3 += 16;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  qword_1EB308C50 = v2;
}

uint64_t sub_1A8896B34()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB308C58);
  sub_1A85EF0E4(v0, qword_1EB308C58);
  return sub_1A88C7E48();
}

id sub_1A8896BB4()
{
  result = [objc_allocWithZone(IMRemoteIntentFilePersistenceManager) init];
  qword_1EB338E58 = result;
  return result;
}

void __swiftcall IMRemoteIntentFilePersistenceManager.init()(IMRemoteIntentFilePersistenceManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1A8896C7C()
{
  *(v1 + 16) = v0;
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB309050;
  *(v1 + 24) = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A8896D18, v2, 0);
}

uint64_t sub_1A8896D18()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___IMRemoteIntentFilePersistenceManager__manifest;
  v0[4] = OBJC_IVAR___IMRemoteIntentFilePersistenceManager__manifest;
  if (*&v1[v2])
  {
    v7 = v0[1];

    return v7(v3);
  }

  else
  {
    type metadata accessor for RemoteIntentFileManifest();
    swift_allocObject();
    v5 = v1;
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_1A8896E34;

    return sub_1A8887E90(v1, &off_1F1BB8208, 250);
  }
}

uint64_t sub_1A8896E34(uint64_t a1)
{
  v4 = *v2;
  v4[6] = v1;

  v5 = v4[3];
  if (v1)
  {
    v6 = sub_1A8896FF0;
  }

  else
  {
    v4[7] = a1;
    v6 = sub_1A8896F70;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A8896F70()
{
  v1 = v0[7];
  *(v0[2] + v0[4]) = v1;

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1A8896FF0()
{
  if (qword_1EB302348 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB308C58);
  v2 = sub_1A88C7E38();
  v3 = sub_1A88C89C8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 48);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1A85E5000, v2, v3, "Failed to initialize shared RemoteIntentFileManifest. The file cache may be in an inconsistent state.", v6, 2u);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t IMRemoteIntentFilePersistenceManager.touchFilePath(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  sub_1A88C8788();
  v10 = sub_1A88C87A8();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = sub_1A88C72E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  (*(v12 + 16))(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v3;
  (*(v12 + 32))(&v15[v14], &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v16 = &v15[(v13 + v14 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = v3;

  sub_1A8865C1C(0, 0, v9, &unk_1A88F8FC0, v15);

  return sub_1A85EF638(v9, &unk_1EB3090D0);
}

uint64_t sub_1A8897338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a1;
  v7[3] = a5;
  v8 = swift_task_alloc();
  v7[6] = v8;
  *v8 = v7;
  v8[1] = sub_1A88973D0;

  return sub_1A8896C7C();
}

uint64_t sub_1A88973D0(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A88974D0, 0, 0);
}

uint64_t sub_1A88974D0()
{
  if (*(v0 + 56))
  {
    if (qword_1EB302380 != -1)
    {
      swift_once();
    }

    v1 = qword_1EB309050;

    return MEMORY[0x1EEE6DFA0](sub_1A88975A8, v1, 0);
  }

  else
  {
    **(v0 + 16) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1A88975A8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1A870CCE0(&qword_1EB303E18);
  v4 = sub_1A88C72E8();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A88E14F0;
  (*(v5 + 16))(v7 + v6, v3, v4);
  v8 = sub_1A874E1E4(v7);
  swift_setDeallocating();
  (*(v5 + 8))(v7 + v6, v4);
  swift_deallocClassInstance();
  sub_1A88885D8(v8, v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1A889773C, 0, 0);
}