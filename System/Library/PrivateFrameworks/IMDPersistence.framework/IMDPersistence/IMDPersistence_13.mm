void sub_1B7C37AB0(uint64_t a1, id *a2, uint64_t a3, void (*a4)(void))
{
  v7 = sub_1B7AE3F68();
  v43 = 0;
  v44 = 0xE000000000000000;
  v8 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD00000000000002ALL, 0x80000001B7D525C0);
  v9 = sub_1B7AE3A9C(0, 1, 1, v8);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v41 = MEMORY[0x1E69E6810];
  v42 = &off_1F2FA8A98;
  *&v40 = a1;
  v9[2] = v11 + 1;
  sub_1B7AE910C(&v40, &v9[5 * v11 + 4]);
  v45 = v9;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](0x616C6620444E4120, 0xED0000204E492067);
  if (a2 >> 62)
  {
    v12 = sub_1B7CFF120();
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    goto LABEL_18;
  }

  *&v40 = MEMORY[0x1E69E7CC0];
  sub_1B7C31320(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v39 = v7;
    v14 = a4;
    v13 = v40;
    if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v12; ++i)
      {
        v16 = [MEMORY[0x1B8CAE380](i a2)];
        swift_unknownObjectRelease();
        *&v40 = v13;
        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1B7C31320((v17 > 1), v18 + 1, 1);
          v13 = v40;
        }

        *(v13 + 16) = v18 + 1;
        *(v13 + 8 * v18 + 32) = v16;
      }
    }

    else
    {
      v19 = a2 + 4;
      do
      {
        v20 = [*v19 integerValue];
        *&v40 = v13;
        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        if (v22 >= v21 >> 1)
        {
          v23 = v20;
          sub_1B7C31320((v21 > 1), v22 + 1, 1);
          v20 = v23;
          v13 = v40;
        }

        *(v13 + 16) = v22 + 1;
        *(v13 + 8 * v22 + 32) = v20;
        ++v19;
        --v12;
      }

      while (v12);
    }

    a4 = v14;
LABEL_18:
    v24 = sub_1B7C2F3B4(v13);

    sub_1B7AF57A0(v24);

    MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
    v25 = v43;
    v26 = v44;
    v27 = v45;
    v28 = objc_opt_self();
    if ([v28 _shouldExplainQueryPlans])
    {
      v29 = 4;
    }

    else
    {
      v29 = 0;
    }

    sub_1B7CA46D8(v25, v26, v27, v29);

    [v28 _notifyPTasksUpdatedImmediately_];
    a4(0);

    return;
  }

  __break(1u);
  swift_once();
  v30 = sub_1B7CFE420();
  sub_1B7AD9040(v30, qword_1EBA5DA38);
  v31 = a2;
  v32 = sub_1B7CFE400();
  v33 = sub_1B7CFEEF0();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    v36 = a2;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_1B7AD5000, v32, v33, "Failed to clear all tasks with error %@", v34, 0xCu);
    sub_1B7AEE190(v35, &qword_1EBA521E0, &unk_1B7D0CE60);
    MEMORY[0x1B8CB0E70](v35, -1, -1);
    MEMORY[0x1B8CB0E70](v34, -1, -1);
  }

  v38 = a2;
  a4(a2);
}

void sub_1B7C380E4(uint64_t a1, void (*a2)(void, void))
{
  sub_1B7AE3F68();
  v4 = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
  if (v5)
  {
    v28 = a2;
    v6 = 0;
    v7 = 10000;
    v8 = *(a1 + 16);
    while (1)
    {
      v9 = v5 >= v7 ? v7 : v5;
      v10 = v6 + 10000;
      if (__OFADD__(v6, 10000))
      {
        break;
      }

      if (v5 >= v10)
      {
        v11 = v6 + 10000;
      }

      else
      {
        v11 = v5;
      }

      v29 = 0;
      v30 = 0xE000000000000000;
      v31 = v4;
      MEMORY[0x1B8CADCA0](0xD000000000000030, 0x80000001B7D52580);
      if (v11 < v6)
      {
        goto LABEL_25;
      }

      if (v8 == v9)
      {
        v12 = a1;
      }

      else
      {
        sub_1B7CBBE10(a1, a1 + 32, v6, (2 * v11) | 1);
        v12 = v18;
      }

      v13 = sub_1B7AF5664(v12);

      sub_1B7AF57A0(v13);

      MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
      v14 = v29;
      v15 = v30;
      v16 = v31;

      v17 = sub_1B7AE3B2C(v14, v15, 0);
      v29 = MEMORY[0x1E69E7CC0];

      sub_1B7AF1A7C(v16, v17, &v29, v17);

      swift_bridgeObjectRelease_n();
      sub_1B7C50BFC(v29);
      v8 += 10000;
      v7 += 10000;
      v6 += 10000;
      v4 = MEMORY[0x1E69E7CC0];
      if (v10 >= v5)
      {
        v4 = v32;
        a2 = v28;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    swift_once();
    v19 = sub_1B7CFE420();
    sub_1B7AD9040(v19, qword_1EBA5DA38);
    v20 = 0;
    v21 = sub_1B7CFE400();
    v22 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = 0;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1B7AD5000, v21, v22, "Failed to fetch remaining task GUIDs with error %@", v23, 0xCu);
      sub_1B7AEE190(v24, &qword_1EBA521E0, &unk_1B7D0CE60);
      MEMORY[0x1B8CB0E70](v24, -1, -1);
      MEMORY[0x1B8CB0E70](v23, -1, -1);
    }

    v27 = 0;
    (v7)(0, 0);
  }

  else
  {
LABEL_21:
    a2(v4, 0);
  }
}

uint64_t sub_1B7C38680()
{
  result = sub_1B7C386A4();
  qword_1EBA50C90 = result;
  unk_1EBA50C98 = v1;
  return result;
}

uint64_t sub_1B7C386A4()
{
  if (qword_1EDBE2DE0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDBE79A8;
  v1 = sub_1B7C3A764(0xD000000000000017, 0x80000001B7D52E80, 0xD00000000000001BLL, 0x80000001B7D52EA0, qword_1EDBE79A8);
  v3 = v2;
  v4 = sub_1B7C3A764(0x646564756C637865, 0xEF6E6F736165722ELL, 0xD000000000000013, 0x80000001B7D52EC0, v0);
  v6 = v5;
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000006ALL, 0x80000001B7D52EE0);
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000002BLL, 0x80000001B7D52F50);
  MEMORY[0x1B8CADCA0](v1, v3);
  MEMORY[0x1B8CADCA0](0x20444E4120, 0xE500000000000000);
  MEMORY[0x1B8CADCA0](v4, v6);
  MEMORY[0x1B8CADCA0](0x204E4548542029, 0xE700000000000000);
  MEMORY[0x1B8CADCA0](0xD000000000000017, 0x80000001B7D52E80);
  MEMORY[0x1B8CADCA0](0xD000000000000047, 0x80000001B7D52F80);
  MEMORY[0x1B8CADCA0](v1, v3);
  MEMORY[0x1B8CADCA0](0x544F4E20444E4120, 0xE900000000000020);
  MEMORY[0x1B8CADCA0](v4, v6);
  MEMORY[0x1B8CADCA0](0x204E4548542029, 0xE700000000000000);
  MEMORY[0x1B8CADCA0](0x646564756C637865, 0xEF6E6F736165722ELL);
  MEMORY[0x1B8CADCA0](0xD00000000000004BLL, 0x80000001B7D52FD0);
  MEMORY[0x1B8CADCA0](v1, v3);
  MEMORY[0x1B8CADCA0](0x20444E4120, 0xE500000000000000);
  MEMORY[0x1B8CADCA0](v4, v6);
  MEMORY[0x1B8CADCA0](0x204E4548542029, 0xE700000000000000);
  MEMORY[0x1B8CADCA0](0xD000000000000017, 0x80000001B7D52E80);
  MEMORY[0x1B8CADCA0](0xD000000000000077, 0x80000001B7D53020);
  MEMORY[0x1B8CADCA0](0xD000000000000017, 0x80000001B7D52E80);
  MEMORY[0x1B8CADCA0](0xD00000000000003FLL, 0x80000001B7D530A0);
  MEMORY[0x1B8CADCA0](0x646564756C637865, 0xEF6E6F736165722ELL);
  MEMORY[0x1B8CADCA0](0x29444E450ALL, 0xE500000000000000);
  MEMORY[0x1B8CADCA0](0, 0xE000000000000000);

  MEMORY[0x1B8CADCA0](0xD000000000000018, 0x80000001B7D530E0);
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000002BLL, 0x80000001B7D52F50);
  MEMORY[0x1B8CADCA0](v1, v3);
  MEMORY[0x1B8CADCA0](0x20444E4120, 0xE500000000000000);
  MEMORY[0x1B8CADCA0](v4, v6);
  MEMORY[0x1B8CADCA0](0x204E4548542029, 0xE700000000000000);
  MEMORY[0x1B8CADCA0](0xD000000000000020, 0x80000001B7D53100);
  MEMORY[0x1B8CADCA0](0xD000000000000047, 0x80000001B7D52F80);
  MEMORY[0x1B8CADCA0](v1, v3);
  MEMORY[0x1B8CADCA0](0x544F4E20444E4120, 0xE900000000000020);
  MEMORY[0x1B8CADCA0](v4, v6);
  MEMORY[0x1B8CADCA0](0x204E4548542029, 0xE700000000000000);
  MEMORY[0x1B8CADCA0](0xD000000000000018, 0x80000001B7D53130);
  MEMORY[0x1B8CADCA0](0xD00000000000004BLL, 0x80000001B7D52FD0);
  MEMORY[0x1B8CADCA0](v1, v3);
  MEMORY[0x1B8CADCA0](0x20444E4120, 0xE500000000000000);
  MEMORY[0x1B8CADCA0](v4, v6);
  MEMORY[0x1B8CADCA0](0x204E4548542029, 0xE700000000000000);
  MEMORY[0x1B8CADCA0](0xD000000000000020, 0x80000001B7D53100);
  MEMORY[0x1B8CADCA0](0xD000000000000077, 0x80000001B7D53020);
  MEMORY[0x1B8CADCA0](0xD000000000000020, 0x80000001B7D53100);
  MEMORY[0x1B8CADCA0](0xD00000000000003FLL, 0x80000001B7D530A0);
  MEMORY[0x1B8CADCA0](0xD000000000000018, 0x80000001B7D53130);
  MEMORY[0x1B8CADCA0](0x29444E450ALL, 0xE500000000000000);
  MEMORY[0x1B8CADCA0](0, 0xE000000000000000);

  MEMORY[0x1B8CADCA0](0xD000000000000061, 0x80000001B7D53150);
  MEMORY[0x1B8CADCA0](v1, v3);

  MEMORY[0x1B8CADCA0](0x20444E4120, 0xE500000000000000);
  MEMORY[0x1B8CADCA0](v4, v6);

  MEMORY[0x1B8CADCA0](0xD00000000000026ELL, 0x80000001B7D531C0);
  return 0;
}

uint64_t sub_1B7C38CD8(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void *a6, uint64_t a7, unint64_t a8)
{
  v84 = a8;
  v83 = a7;
  v82 = a6;
  v89 = a3;
  v12 = sub_1B7CFE180();
  v90 = *(v12 - 8);
  v13 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v71[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = sub_1B7C107FC(&unk_1EBA525F0, &qword_1B7D0CB90);
  v15 = *(*(v88 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v88);
  v80 = &v71[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v71[-v18];
  v20 = sub_1B7C107FC(&qword_1EBA525D8, &qword_1B7D0CB88);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v78 = &v71[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v81 = &v71[-v25];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v79 = &v71[-v27];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v71[-v29];
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v71[-v32];
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v71[-v34];
  swift_beginAccess();
  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  v86 = a4;
  v77 = a2;
  v36 = [a2 lastReindexSchedulingID];
  v85 = a5;
  if (v36)
  {
    v37 = v36;
    sub_1B7CFE160();

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = v90;
  v40 = *(v90 + 56);
  v40(v35, v38, 1, v12);
  v41 = *(v39 + 16);
  v74 = v39 + 16;
  v73 = v41;
  v41(v33, v89, v12);
  v75 = v40;
  v40(v33, 0, 1, v12);
  v42 = *(v88 + 48);
  sub_1B7C3D5CC(v35, v19);
  sub_1B7C3D5CC(v33, &v19[v42]);
  v43 = *(v39 + 48);
  if (v43(v19, 1, v12) == 1)
  {
    v76 = v43;
    sub_1B7AEE190(v33, &qword_1EBA525D8, &qword_1B7D0CB88);
    sub_1B7AEE190(v35, &qword_1EBA525D8, &qword_1B7D0CB88);
    if (v76(&v19[v42], 1, v12) == 1)
    {
      sub_1B7AEE190(v19, &qword_1EBA525D8, &qword_1B7D0CB88);
      a4 = v86;
      v44 = v77;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_1B7C3D5CC(v19, v30);
  if (v43(&v19[v42], 1, v12) == 1)
  {
    sub_1B7AEE190(v33, &qword_1EBA525D8, &qword_1B7D0CB88);
    sub_1B7AEE190(v35, &qword_1EBA525D8, &qword_1B7D0CB88);
    (*(v90 + 8))(v30, v12);
LABEL_10:
    sub_1B7AEE190(v19, &unk_1EBA525F0, &qword_1B7D0CB90);
    a4 = v86;
LABEL_22:
    swift_beginAccess();
    v57 = *(a1 + 16);
    v58 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v59 = sub_1B7AE15D4(v57);
    return a4(v59);
  }

  v76 = v43;
  (*(v90 + 32))(v87, &v19[v42], v12);
  sub_1B7AE10D0(&qword_1EBA50F98, MEMORY[0x1E69695A8]);
  v72 = sub_1B7CFEA20();
  v45 = *(v90 + 8);
  v45(v87, v12);
  sub_1B7AEE190(v33, &qword_1EBA525D8, &qword_1B7D0CB88);
  sub_1B7AEE190(v35, &qword_1EBA525D8, &qword_1B7D0CB88);
  v45(v30, v12);
  sub_1B7AEE190(v19, &qword_1EBA525D8, &qword_1B7D0CB88);
  a4 = v86;
  v44 = v77;
  if ((v72 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  sub_1B7C3BE80(v82, v83, v84);
  swift_beginAccess();
  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  v46 = [v44 lastReindexSchedulingID];
  if (v46)
  {
    v47 = v79;
    v48 = v46;
    sub_1B7CFE160();

    v49 = 0;
    v50 = v80;
  }

  else
  {
    v49 = 1;
    v50 = v80;
    v47 = v79;
  }

  v51 = v75;
  v75(v47, v49, 1, v12);
  v52 = v81;
  v73(v81, v89, v12);
  v51(v52, 0, 1, v12);
  v53 = *(v88 + 48);
  sub_1B7C3D5CC(v47, v50);
  sub_1B7C3D5CC(v52, &v50[v53]);
  v54 = v76;
  if (v76(v50, 1, v12) == 1)
  {
    sub_1B7AEE190(v52, &qword_1EBA525D8, &qword_1B7D0CB88);
    sub_1B7AEE190(v47, &qword_1EBA525D8, &qword_1B7D0CB88);
    if (v54(&v50[v53], 1, v12) == 1)
    {
      sub_1B7AEE190(v50, &qword_1EBA525D8, &qword_1B7D0CB88);
      v55 = v77;
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v56 = v78;
  sub_1B7C3D5CC(v50, v78);
  if (v54(&v50[v53], 1, v12) == 1)
  {
    sub_1B7AEE190(v81, &qword_1EBA525D8, &qword_1B7D0CB88);
    sub_1B7AEE190(v47, &qword_1EBA525D8, &qword_1B7D0CB88);
    (*(v90 + 8))(v56, v12);
LABEL_21:
    sub_1B7AEE190(v50, &unk_1EBA525F0, &qword_1B7D0CB90);
    goto LABEL_22;
  }

  v61 = v90;
  v62 = &v50[v53];
  v63 = v87;
  (*(v90 + 32))(v87, v62, v12);
  sub_1B7AE10D0(&qword_1EBA50F98, MEMORY[0x1E69695A8]);
  LODWORD(v89) = sub_1B7CFEA20();
  v64 = *(v61 + 8);
  v64(v63, v12);
  sub_1B7AEE190(v81, &qword_1EBA525D8, &qword_1B7D0CB88);
  sub_1B7AEE190(v47, &qword_1EBA525D8, &qword_1B7D0CB88);
  v64(v56, v12);
  sub_1B7AEE190(v80, &qword_1EBA525D8, &qword_1B7D0CB88);
  v55 = v77;
  if ((v89 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  v65 = objc_opt_self();
  if ([v65 reindexSchedulingLastRowID] <= 0)
  {
    swift_beginAccess();
    v69 = *(a1 + 16);
    v70 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    sub_1B7AE15D4(v69);
    [v65 setReindexSchedulingInProgress_];
    [v65 setReindexSchedulingContext_];
    [v65 setReindexSchedulingLastRowID_];
    [v65 setReindexSchedulingUserInfoData_];
    v59 = sub_1B7C36318();
    return a4(v59);
  }

  result = swift_beginAccess();
  v66 = *(a1 + 16);
  if (v66)
  {
    v67 = *(a1 + 24);
    aBlock[4] = *(a1 + 16);
    aBlock[5] = v67;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B7AE14D0;
    aBlock[3] = &unk_1F2FA3D10;
    v68 = _Block_copy(aBlock);
    sub_1B7AD8F38(v66);

    [v65 reindexSchedulingBatchDelay];
    [v55 _performHandoffBlock_delay_];
    _Block_release(v68);
    return sub_1B7AE15D4(v66);
  }

  return result;
}

uint64_t sub_1B7C39784(void *a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t))
{
  sub_1B7AE3F68();
  v8 = [a1 laneOverride];
  v39 = a3;
  if (v8)
  {
    v9 = v8;
    v38 = [v8 unsignedIntegerValue];
  }

  else
  {
    v38 = [objc_opt_self() laneForFlag:3 reason:{objc_msgSend(a1, sel_reason)}];
  }

  v10 = *(sub_1B7C40CA8(3) + 16);
  v43 = MEMORY[0x1E69E7CC0];
  v44 = 0xD00000000000007ELL;
  v45 = 0x80000001B7D53430;
  v11 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = v11[2];
  v12 = v11[3];
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1B7AE3A9C((v12 > 1), v13 + 1, 1, v11);
  }

  v15 = MEMORY[0x1E69E6810];
  v41 = MEMORY[0x1E69E6810];
  v42 = &off_1F2FA8A98;
  *&v40 = v10;
  v11[2] = v14;
  sub_1B7AE910C(&v40, &v11[5 * v13 + 4]);
  v43 = v11;
  v44 = 0xD000000000000083;
  v45 = 0x80000001B7D534B0;
  v16 = v11[3];
  if ((v13 + 2) > (v16 >> 1))
  {
    v11 = sub_1B7AE3A9C((v16 > 1), v13 + 2, 1, v11);
  }

  v41 = v15;
  v42 = &off_1F2FA8A98;
  *&v40 = 3;
  v11[2] = v13 + 2;
  sub_1B7AE910C(&v40, &v11[5 * v14 + 4]);
  v43 = v11;
  v44 = 0xD000000000000088;
  v45 = 0x80000001B7D53540;
  if (qword_1EBA50DE8 != -1)
  {
    swift_once();
  }

  v17 = qword_1EBA5DA00;
  v18 = *(qword_1EBA5DA00 + 16);
  if (v18)
  {
    v19 = sub_1B7C41954(3);
    if (v20)
    {
      v37 = a4;
      a4 = *(*(v17 + 56) + 8 * v19);
      v13 = v11[2];
      v18 = v11[3];
      v17 = v13 + 1;
      if (v13 < v18 >> 1)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_26:
  v11 = sub_1B7AE3A9C((v18 > 1), v17, 1, v11);
LABEL_13:
  v21 = MEMORY[0x1E69E6530];
  v41 = MEMORY[0x1E69E6530];
  v42 = &off_1F2FA89F8;
  *&v40 = a4;
  v11[2] = v17;
  sub_1B7AE910C(&v40, &v11[5 * v13 + 4]);
  v43 = v11;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v23 = v11[2];
  v22 = v11[3];
  if (v23 >= v22 >> 1)
  {
    v11 = sub_1B7AE3A9C((v22 > 1), v23 + 1, 1, v11);
  }

  v41 = v15;
  v42 = &off_1F2FA8A98;
  *&v40 = v38;
  v11[2] = v23 + 1;
  sub_1B7AE910C(&v40, &v11[5 * v23 + 4]);
  v43 = v11;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v24 = [a1 reason];
  v26 = v11[2];
  v25 = v11[3];
  if (v26 >= v25 >> 1)
  {
    v35 = v24;
    v11 = sub_1B7AE3A9C((v25 > 1), v26 + 1, 1, v11);
    v24 = v35;
  }

  v41 = v21;
  v42 = &off_1F2FA89F8;
  *&v40 = v24;
  v11[2] = v26 + 1;
  sub_1B7AE910C(&v40, &v11[5 * v26 + 4]);
  v43 = v11;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v27 = sub_1B7C3DA5C([a1 reason], 3);
  v29 = v11[2];
  v28 = v11[3];
  if (v29 >= v28 >> 1)
  {
    v36 = v27;
    v11 = sub_1B7AE3A9C((v28 > 1), v29 + 1, 1, v11);
    v27 = v36;
  }

  v41 = v21;
  v42 = &off_1F2FA89F8;
  *&v40 = v27;
  v11[2] = v29 + 1;
  sub_1B7AE910C(&v40, &v11[5 * v29 + 4]);
  v43 = v11;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  sub_1B7C3D3CC(a2, v39);
  v31 = v11[2];
  v30 = v11[3];
  if (v31 >= v30 >> 1)
  {
    v11 = sub_1B7AE3A9C((v30 > 1), v31 + 1, 1, v11);
  }

  v41 = sub_1B7C107FC(&qword_1EBA52408, qword_1B7D13650);
  v42 = sub_1B7C3D464();
  *&v40 = a2;
  *(&v40 + 1) = v39;
  v11[2] = v31 + 1;
  sub_1B7AE910C(&v40, &v11[5 * v31 + 4]);
  v43 = v11;
  sub_1B7C3D3CC(a2, v39);
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  sub_1B7C2049C(a2, v39);
  MEMORY[0x1B8CADCA0](0xD00000000000002BLL, 0x80000001B7D535D0);
  if (qword_1EBA50C88 != -1)
  {
    swift_once();
  }

  MEMORY[0x1B8CADCA0](qword_1EBA50C90, unk_1EBA50C98);
  sub_1B7AF3098(MEMORY[0x1E69E7CC0]);
  v32 = v43;
  sub_1B7AE3B2C(v44, v45, 0);
  sub_1B7AF3FE4(v32);

  v37(v33);
}

uint64_t sub_1B7C39F8C(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1B7AE3F68();
  v7 = sub_1B7C3A29C(a1, a2, a3);
  v9 = v8;
  v11 = v10;
  v12 = v3;

  v13 = sub_1B7AE3B2C(v7, v9, 0);
  v14 = v12;
  sub_1B7C95CC8(v11, v13, v14, &v16);

  swift_bridgeObjectRelease_n();
  return v16;
}

void *sub_1B7C3A29C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xE000000000000000;
  v21 = 0;
  *&v22 = 0xE000000000000000;
  v7 = MEMORY[0x1E69E7CC0];
  *(&v22 + 1) = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD00000000000008BLL, 0x80000001B7D524F0);
  sub_1B7C15098(a1);
  v20 = v22;
  if (*(a2 + 16))
  {
    v25 = a2;
    v26 = v7;
    v21 = 0x4220524544524F20;
    *&v22 = 0xEA00000000002059;
    sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
    sub_1B7AF7FAC();
    v8 = sub_1B7CFEA10();
    MEMORY[0x1B8CADCA0](v8);

    sub_1B7AF3098(v7);
    sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7D0A7B0;
    *(inited + 32) = 0x4220524544524F20;
    v10 = inited + 32;
    *(inited + 40) = 0xEA00000000002059;
    *(inited + 48) = v7;
    v11 = sub_1B7CB5C48(inited);
    v6 = v12;
    v7 = v13;
    swift_setDeallocating();
    sub_1B7C3D308(v10);
  }

  else
  {
    v11 = 0;
  }

  v14 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1B7AE3A9C((v15 > 1), v16 + 1, 1, v14);
  }

  v23 = MEMORY[0x1E69E6530];
  v24 = &off_1F2FA89F8;
  v21 = a3;
  v14[2] = v16 + 1;
  sub_1B7AE910C(&v21, &v14[5 * v16 + 4]);
  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1B7D0CB60;
  *(v17 + 32) = 0;
  *(v17 + 40) = v20;
  *(v17 + 56) = v11;
  *(v17 + 64) = v6;
  *(v17 + 72) = v7;
  *(v17 + 80) = 0x202054494D494C20;
  *(v17 + 88) = 0xEA0000000000203FLL;
  *(v17 + 96) = v14;
  v18 = sub_1B7CB5C48(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v18;
}

uint64_t sub_1B7C3A5FC(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7C3A6B4(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1B7C3A5FC(a1, &a1[a2]);
  }

  v3 = sub_1B7CFDCC0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1B7CFDC80();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1B7CFE000();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1B7C3A764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *(*a5 + 168);
  v11 = *(v10() + 16);

  if (!v11)
  {
    return 48;
  }

  sub_1B7CFF210();

  MEMORY[0x1B8CADCA0](a3, a4);
  MEMORY[0x1B8CADCA0](2112800, 0xE300000000000000);
  v25 = a5[2];
  v12 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v12);

  MEMORY[0x1B8CADCA0](0x20444E4120, 0xE500000000000000);
  MEMORY[0x1B8CADCA0](a1, a2);
  v13 = MEMORY[0x1B8CADCA0](0x28204E4920, 0xE500000000000000);
  v14 = (v10)(v13);
  swift_getKeyPath();
  v15 = *(v14 + 16);
  if (v15)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v15, 0);
    v16 = 32;
    do
    {
      v24 = *(v14 + v16);
      swift_getAtKeyPath();
      v18 = *(v27 + 16);
      v17 = *(v27 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B7AECEEC((v17 > 1), v18 + 1, 1);
      }

      *(v27 + 16) = v18 + 1;
      v19 = v27 + 16 * v18;
      *(v19 + 32) = v25;
      *(v19 + 40) = v26;
      v16 += 8;
      --v15;
    }

    while (v15);
  }

  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v21 = sub_1B7CFEA10();
  v23 = v22;

  MEMORY[0x1B8CADCA0](v21, v23);

  MEMORY[0x1B8CADCA0](10537, 0xE200000000000000);
  return 40;
}

sqlite3_int64 sub_1B7C3AA1C(sqlite3_int64 result)
{
  v1 = *(result + 16);
  if (v1 < 3)
  {
    __break(1u);
    goto LABEL_44;
  }

  v2 = result;
  v3 = *(result + 72);
  if (v3 < 0xFFFFFFFF80000000)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  result = sqlite3_column_int64(*(result + 64), v3);
  if (result < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v1 == 3)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v4 = *(v2 + 88);
  if (v4 < 0xFFFFFFFF80000000)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v4 > 0x7FFFFFFF)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v5 = result;
  result = sqlite3_column_int64(*(v2 + 80), v4);
  if (result < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v1 < 9)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v6 = *(v2 + 168);
  if (v6 < 0xFFFFFFFF80000000)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v7 = result;
  v8 = *(v2 + 160);
  v9 = sqlite3_column_type(v8, *(v2 + 168));
  result = sub_1B7CD6250(v9);
  if (result == 4 && (result = sqlite3_column_type(v8, v6), result != 5))
  {
    v27 = sqlite3_column_bytes(v8, v6);
    if (v27 < 1)
    {
      v10 = 0;
      v11 = 0xC000000000000000;
    }

    else
    {
      v28 = v27;
      result = sqlite3_column_blob(v8, v6);
      if (!result)
      {
LABEL_71:
        __break(1u);
        return result;
      }

      v10 = sub_1B7C3A6B4(result, v28);
      v11 = v29;
    }

    v30 = objc_opt_self();
    sub_1B7C1A208(v10, v11);
    v31 = sub_1B7CFE010();
    v32 = [v30 _decodeUserInfoData_];

    if (v32)
    {
      v37 = sub_1B7CFE990();

      result = sub_1B7C204B0(v10, v11);
    }

    else
    {
      result = sub_1B7C204B0(v10, v11);
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
    v10 = 0;
    v11 = 0xF000000000000000;
  }

  v12 = *(v2 + 40);
  if (v12 < 0xFFFFFFFF80000000)
  {
    goto LABEL_54;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  result = sqlite3_column_int64(*(v2 + 32), v12);
  v13 = *(v2 + 56);
  if (v13 < 0xFFFFFFFF80000000)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v13 > 0x7FFFFFFF)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v14 = result;
  v36 = v10;
  result = sqlite3_column_text(*(v2 + 48), v13);
  if (!result)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  result = sub_1B7CFEB80();
  v15 = *(v2 + 104);
  if (v15 < 0xFFFFFFFF80000000)
  {
    goto LABEL_58;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  result = sqlite3_column_int64(*(v2 + 96), v15);
  v16 = *(v2 + 120);
  if (v16 < 0xFFFFFFFF80000000)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v34 = result;
  v35 = v14;
  result = sqlite3_column_int64(*(v2 + 112), v16);
  if (result < 0)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v17 = *(v2 + 136);
  if (v17 < 0xFFFFFFFF80000000)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v17 > 0x7FFFFFFF)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v18 = result;
  v33 = v11;
  result = sqlite3_column_int64(*(v2 + 128), v17);
  v19 = *(v2 + 152);
  if (v19 < 0xFFFFFFFF80000000)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v19 > 0x7FFFFFFF)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v20 = result;
  result = sqlite3_column_int64(*(v2 + 144), v19);
  if (v1 == 9)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v21 = *(v2 + 184);
  if (v21 < 0xFFFFFFFF80000000)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v21 > 0x7FFFFFFF)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v22 = result;
  v23 = sqlite3_column_int64(*(v2 + 176), v21);
  v24 = sub_1B7CFEA30();

  if (v37)
  {
    v25 = sub_1B7CFE980();
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_allocWithZone(IMDPersistentTask) initWithRowID:v35 guid:v24 group:v5 flag:v7 flagPriority:v34 lane:v18 reason:v20 reasonPriority:v22 userInfo:v25 retryCount:v23];

  sub_1B7C2049C(v36, v33);
  return v26;
}

uint64_t sub_1B7C3AE7C(void *a1, unint64_t a2, unint64_t a3)
{
  v57 = a1;
  v60 = sub_1B7AE3F68();
  *&v74 = MEMORY[0x1E69E7CC0];
  sub_1B7CFF2C0();
  if (qword_1EDBE2DE0 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {

    sub_1B7CFF290();
    v5 = *(v74 + 16);
    sub_1B7CFF2D0();
    sub_1B7CFF2E0();
    sub_1B7CFF2A0();
    if (qword_1EDBE2DE8 != -1)
    {
      swift_once();
    }

    sub_1B7CFF290();
    v6 = *(v74 + 16);
    sub_1B7CFF2D0();
    sub_1B7CFF2E0();
    sub_1B7CFF2A0();
    if (qword_1EDBE2DF0 != -1)
    {
      swift_once();
    }

    sub_1B7CFF290();
    v7 = *(v74 + 16);
    sub_1B7CFF2D0();
    sub_1B7CFF2E0();
    sub_1B7CFF2A0();
    v8 = v74;

    v9 = *(v74 + 16);
    if (!v9)
    {
      goto LABEL_47;
    }

LABEL_9:
    v61 = a2;
    a2 = 0;
    v62 = v8 & 0xC000000000000001;
    v56 = v8 + 32;
    v10 = MEMORY[0x1E69E7CC0];
    v58 = v9;
    v59 = v8;
    v68 = a3;
    while (1)
    {
      if (v62)
      {
        v11 = MEMORY[0x1B8CAE380](a2);
      }

      else
      {
        if (a2 >= *(v8 + 16))
        {
          goto LABEL_44;
        }

        v11 = *(v56 + 8 * a2);
      }

      v12 = __OFADD__(a2++, 1);
      v63 = a2;
      if (v12)
      {
        break;
      }

      v13 = v61;
      if (!v61)
      {
        goto LABEL_68;
      }

      v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      *&v74 = v14;
      MEMORY[0x1EEE9AC00](v14);
      v55 = &v74;
      v15 = v72;
      v16 = sub_1B7C19BFC(sub_1B7C3D934, v54, v13);
      v72 = v15;

      if (v16)
      {
LABEL_68:
        a2 = v11[5];
        v66 = *(a2 + 16);
        if (v66)
        {
          v65 = a2 + 32;

          v17 = 0;
          v64 = a2;
          while (1)
          {
            if (v17 >= *(a2 + 16))
            {
              __break(1u);
              goto LABEL_43;
            }

            v18 = v11[6];
            v71 = *(v18 + 16);
            if (v71)
            {
              break;
            }

LABEL_22:
            if (++v17 == v66)
            {

              goto LABEL_11;
            }
          }

          v67 = v17;
          v19 = *(v65 + 8 * v17);
          v70 = v18 + 32;

          v20 = 0;
          v69 = v18;
          while (v20 < *(v18 + 16))
          {
            v77 = v20;
            v21 = *(v70 + 8 * v20);
            if (!a3)
            {
              goto LABEL_31;
            }

            v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
            *&v74 = v22;
            MEMORY[0x1EEE9AC00](v22);
            v55 = &v74;
            v23 = v72;
            v24 = sub_1B7C19BFC(sub_1B7C3D934, v54, a3);
            v72 = v23;

            if ((v24 & 1) == 0)
            {
LABEL_31:
              v25 = sub_1B7CFEF80();
              v26 = *(v25 + 16);
              v73 = v25;
              if (v26)
              {
                v27 = (v25 + 32);
                do
                {
                  v29 = *v27++;
                  v28 = v29;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v10 = sub_1B7CA2634(0, v10[2] + 1, 1, v10);
                  }

                  v31 = v10[2];
                  v30 = v10[3];
                  if (v31 >= v30 >> 1)
                  {
                    v10 = sub_1B7CA2634((v30 > 1), v31 + 1, 1, v10);
                  }

                  v10[2] = v31 + 1;
                  v32 = &v10[4 * v31];
                  v32[4] = v19;
                  v32[5] = v11;
                  v32[6] = v28;
                  v32[7] = v21;
                  --v26;
                }

                while (v26);
              }

              a3 = v68;
              v18 = v69;
            }

            v20 = v77 + 1;
            if (v77 + 1 == v71)
            {

              a2 = v64;
              v17 = v67;
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_41:

          goto LABEL_48;
        }
      }

LABEL_11:
      v8 = v59;
      a2 = v63;
      if (v63 == v58)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v34 = v74;
  v9 = sub_1B7CFF120();
  v8 = v34;
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_47:

  v10 = MEMORY[0x1E69E7CC0];
LABEL_48:
  v69 = v10[2];
  if (v69)
  {
    v35 = 0;
    v70 = 0x80000001B7D53820;
    v36 = v10 + 7;
    while (v35 < v10[2])
    {
      v37 = *(v36 - 3);
      v38 = *(v36 - 2);
      v39 = *v36;
      v77 = *(v36 - 1);
      v73 = v39;

      v40 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v42 = v40[2];
      v41 = v40[3];
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1B7AE3A9C((v41 > 1), v42 + 1, 1, v40);
      }

      v76 = &off_1F2FA8A98;
      v75 = MEMORY[0x1E69E6810];
      v71 = v37;
      *&v74 = v37;
      v40[2] = v43;
      sub_1B7AE910C(&v74, &v40[5 * v42 + 4]);
      v44 = *(v38 + 16);
      v45 = v40[3];
      v46 = v42 + 2;
      if ((v42 + 2) > (v45 >> 1))
      {
        v40 = sub_1B7AE3A9C((v45 > 1), v42 + 2, 1, v40);
      }

      v76 = &off_1F2FA8A98;
      v75 = MEMORY[0x1E69E6810];
      *&v74 = v44;
      v40[2] = v46;
      sub_1B7AE910C(&v74, &v40[5 * v43 + 4]);
      v47 = v40[3];
      v48 = v42 + 3;
      if ((v42 + 3) > (v47 >> 1))
      {
        v40 = sub_1B7AE3A9C((v47 > 1), v42 + 3, 1, v40);
      }

      v76 = &off_1F2FA8A98;
      v75 = MEMORY[0x1E69E6810];
      *&v74 = v77;
      v40[2] = v48;
      sub_1B7AE910C(&v74, &v40[5 * v46 + 4]);
      v49 = v40[3];
      if ((v42 + 4) > (v49 >> 1))
      {
        v40 = sub_1B7AE3A9C((v49 > 1), v42 + 4, 1, v40);
      }

      v76 = &off_1F2FA89F8;
      v75 = MEMORY[0x1E69E6530];
      *&v74 = v73;
      v40[2] = v42 + 4;
      sub_1B7AE910C(&v74, &v40[5 * v48 + 4]);
      v50 = v72;
      v51 = sub_1B7AE3B2C(0xD00000000000006CLL, v70, 0);
      if (v50)
      {
      }

      v52 = v51;
      *&v74 = MEMORY[0x1E69E7CC0];

      sub_1B7AF2C24(v40, v52, &v74, v52);
      v72 = 0;

      v53 = *(v74 + 16);

      if (v53)
      {
        [v57 recordFlag:v71 lane:v77 reason:v73 count:1];
      }

      ++v35;

      v36 += 4;
      if (v69 == v35)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_63:
  }

  return result;
}

uint64_t sub_1B7C3B758(uint64_t a1, void (**a2)(void))
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  v4 = objc_opt_self();
  _Block_copy(a2);
  if (![v4 reindexSchedulingInProgress])
  {
    if (qword_1EBA50EC0 != -1)
    {
      swift_once();
    }

    v15 = sub_1B7CFE420();
    sub_1B7AD9040(v15, qword_1EBA5DA38);
    v16 = sub_1B7CFE400();
    v17 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1B7AD5000, v16, v17, "Ignoring request to resume reindex scheduling from stored state as no reindexing state was recorded", v18, 2u);
      MEMORY[0x1B8CB0E70](v18, -1, -1);
    }

    goto LABEL_15;
  }

  v5 = [v4 reindexSchedulingContext];
  if (!v5)
  {
LABEL_5:
    if (qword_1EBA50EC0 != -1)
    {
      swift_once();
    }

    v11 = sub_1B7CFE420();
    sub_1B7AD9040(v11, qword_1EBA5DA38);
    v12 = sub_1B7CFE400();
    v13 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B7AD5000, v12, v13, "Ignoring request to resume reindex scheduling from stored state because indexing context decoding failed", v14, 2u);
      MEMORY[0x1B8CB0E70](v14, -1, -1);
    }

    [v4 setReindexSchedulingInProgress_];
LABEL_15:
    a2[2](a2);
    goto LABEL_16;
  }

  v6 = v5;
  v7 = sub_1B7CFE020();
  v9 = v8;

  sub_1B7AEE088(0, &qword_1EBA525E0, 0x1E696ACD0);
  sub_1B7AEE088(0, &qword_1EBA525E8, off_1E7CB50D0);
  v10 = sub_1B7CFEF20();
  if (!v10)
  {
    sub_1B7C204B0(v7, v9);
    goto LABEL_5;
  }

  v20 = v10;
  v21 = [v4 reindexSchedulingUserInfoData];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1B7CFE020();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xF000000000000000;
  }

  if (qword_1EBA50EC0 != -1)
  {
    swift_once();
  }

  v26 = sub_1B7CFE420();
  sub_1B7AD9040(v26, qword_1EBA5DA38);
  v27 = sub_1B7CFE400();
  v28 = sub_1B7CFEED0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1B7AD5000, v27, v28, "Resuming prior reindex scheduling job", v29, 2u);
    MEMORY[0x1B8CB0E70](v29, -1, -1);
  }

  sub_1B7C35FA4(v20, v23, v25, sub_1B7C3D50C, v3);
  sub_1B7C2049C(v23, v25);

  sub_1B7C204B0(v7, v9);
LABEL_16:
}

uint64_t sub_1B7C3BB68(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v6 = __OFADD__(v4, 5000);
      v4 += 5000;
      if (v6)
      {
        v4 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v3;
      if (v4 >= v2)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
LABEL_9:
    v26 = MEMORY[0x1E69E7CC0];
    result = sub_1B7C313B0(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      goto LABEL_61;
    }

    if (!v5)
    {
      if (!v2)
      {
        return v26;
      }

      v9 = 0;
LABEL_34:
      v17 = v9;
      while (1)
      {
        v18 = v17 + 5000;
        if (__OFADD__(v17, 5000))
        {
          goto LABEL_58;
        }

        if (v2 >= v18)
        {
          v19 = v17 + 5000;
        }

        else
        {
          v19 = v2;
        }

        v20 = v19 - v17;
        if (v19 < v17)
        {
          goto LABEL_59;
        }

        if (v9 < 0)
        {
          goto LABEL_60;
        }

        if (v20 == v2)
        {

          v21 = v1;
        }

        else
        {
          v21 = MEMORY[0x1E69E7CC0];
          if (v19 != v17)
          {
            if (v20 >= 1)
            {
              sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
              v21 = swift_allocObject();
              v24 = j__malloc_size(v21);
              v25 = v24 - 32;
              if (v24 < 32)
              {
                v25 = v24 - 17;
              }

              v21[2] = v20;
              v21[3] = 2 * (v25 >> 4);
            }

            result = swift_arrayInitWithCopy();
          }
        }

        v23 = *(v26 + 16);
        v22 = *(v26 + 24);
        if (v23 >= v22 >> 1)
        {
          result = sub_1B7C313B0((v22 > 1), v23 + 1, 1);
        }

        *(v26 + 16) = v23 + 1;
        *(v26 + 8 * v23 + 32) = v21;
        v17 = v18;
        if (v18 >= v2)
        {
          return v26;
        }
      }
    }

    v7 = 0;
    v8 = 0;
    while (v8 < v2)
    {
      if (v7 == 0x68DB8BAC710CBLL)
      {
        goto LABEL_56;
      }

      v9 = v8 + 5000;
      if (v2 >= (v8 + 5000))
      {
        v10 = v8 + 5000;
      }

      else
      {
        v10 = v2;
      }

      v11 = v10 - v8;
      if (v10 < v8)
      {
        goto LABEL_57;
      }

      if (v11 == v2)
      {

        v12 = v1;
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
        if (v10 != v8)
        {
          if (v11 >= 1)
          {
            sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
            v12 = swift_allocObject();
            v15 = j__malloc_size(v12);
            v16 = v15 - 32;
            if (v15 < 32)
            {
              v16 = v15 - 17;
            }

            v12[2] = v11;
            v12[3] = 2 * (v16 >> 4);
          }

          result = swift_arrayInitWithCopy();
        }
      }

      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1B7C313B0((v13 > 1), v14 + 1, 1);
      }

      ++v7;
      *(v26 + 16) = v14 + 1;
      *(v26 + 8 * v14 + 32) = v12;
      v8 = v9;
      if (v7 == v5)
      {
        if (v9 < v2)
        {
          goto LABEL_34;
        }

        return v26;
      }
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

char *sub_1B7C3BE80(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1B7AE3F68();
  v7 = objc_opt_self();
  v44 = [v7 reindexSchedulingLastRowID];
  v42 = v7;
  v8 = [v7 reindexSchedulingBatchSize];
  v9 = [a1 laneOverride];
  v45 = v8;
  if (v9)
  {
    v10 = v9;
    v43 = [v9 unsignedIntegerValue];
  }

  else
  {
    v43 = [objc_opt_self() laneForFlag:2 reason:{objc_msgSend(a1, sel_reason)}];
  }

  v11 = *(sub_1B7C40CA8(2) + 16);
  v49 = MEMORY[0x1E69E7CC0];
  v50 = 0xD00000000000007ELL;
  v51 = 0x80000001B7D52C90;
  v12 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v12[2];
  v13 = v12[3];
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1B7AE3A9C((v13 > 1), v14 + 1, 1, v12);
  }

  v16 = MEMORY[0x1E69E6810];
  v47 = MEMORY[0x1E69E6810];
  v48 = &off_1F2FA8A98;
  *&v46 = v11;
  v12[2] = v15;
  sub_1B7AE910C(&v46, &v12[5 * v14 + 4]);
  v49 = v12;
  v50 = 0xD000000000000083;
  v51 = 0x80000001B7D52D10;
  v17 = v12[3];
  v18 = v14 + 2;
  if (v18 > (v17 >> 1))
  {
    v12 = sub_1B7AE3A9C((v17 > 1), v18, 1, v12);
  }

  v47 = v16;
  v48 = &off_1F2FA8A98;
  *&v46 = 2;
  v12[2] = v18;
  sub_1B7AE910C(&v46, &v12[5 * v15 + 4]);
  v49 = v12;
  v50 = 0xD000000000000088;
  v51 = 0x80000001B7D52DA0;
  if (qword_1EBA50DE8 != -1)
  {
    swift_once();
  }

  v19 = qword_1EBA5DA00;
  v20 = *(qword_1EBA5DA00 + 16);
  if (v20)
  {
    v21 = sub_1B7C41954(2);
    if (v22)
    {
      v6 = *(*(v19 + 56) + 8 * v21);
      v18 = v12[2];
      v20 = v12[3];
      v19 = v18 + 1;
      if (v18 < v20 >> 1)
      {
        goto LABEL_13;
      }

      goto LABEL_31;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_31:
  v12 = sub_1B7AE3A9C((v20 > 1), v19, 1, v12);
LABEL_13:
  v47 = MEMORY[0x1E69E6530];
  v48 = &off_1F2FA89F8;
  *&v46 = v6;
  v12[2] = v19;
  sub_1B7AE910C(&v46, &v12[5 * v18 + 4]);
  v49 = v12;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v24 = v12[2];
  v23 = v12[3];
  if (v24 >= v23 >> 1)
  {
    v12 = sub_1B7AE3A9C((v23 > 1), v24 + 1, 1, v12);
  }

  v47 = v16;
  v48 = &off_1F2FA8A98;
  *&v46 = v43;
  v12[2] = v24 + 1;
  sub_1B7AE910C(&v46, &v12[5 * v24 + 4]);
  v49 = v12;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v25 = [a1 reason];
  v27 = v12[2];
  v26 = v12[3];
  if (v27 >= v26 >> 1)
  {
    v40 = v25;
    v12 = sub_1B7AE3A9C((v26 > 1), v27 + 1, 1, v12);
    v25 = v40;
  }

  v48 = &off_1F2FA89F8;
  v28 = MEMORY[0x1E69E6530];
  v47 = MEMORY[0x1E69E6530];
  *&v46 = v25;
  v12[2] = v27 + 1;
  sub_1B7AE910C(&v46, &v12[5 * v27 + 4]);
  v49 = v12;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v29 = sub_1B7C3DA5C([a1 reason], 2);
  v31 = v12[2];
  v30 = v12[3];
  if (v31 >= v30 >> 1)
  {
    v41 = v29;
    v12 = sub_1B7AE3A9C((v30 > 1), v31 + 1, 1, v12);
    v29 = v41;
    v28 = MEMORY[0x1E69E6530];
  }

  v47 = v28;
  v48 = &off_1F2FA89F8;
  *&v46 = v29;
  v12[2] = v31 + 1;
  sub_1B7AE910C(&v46, &v12[5 * v31 + 4]);
  v49 = v12;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  sub_1B7C3D3CC(a2, a3);
  v33 = v12[2];
  v32 = v12[3];
  if (v33 >= v32 >> 1)
  {
    v12 = sub_1B7AE3A9C((v32 > 1), v33 + 1, 1, v12);
  }

  v47 = sub_1B7C107FC(&qword_1EBA52408, qword_1B7D13650);
  v48 = sub_1B7C3D464();
  *&v46 = a2;
  *(&v46 + 1) = a3;
  v12[2] = v33 + 1;
  sub_1B7AE910C(&v46, &v12[5 * v33 + 4]);
  v49 = v12;
  sub_1B7C3D3CC(a2, a3);
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  sub_1B7C2049C(a2, a3);
  MEMORY[0x1B8CADCA0](0xD000000000000021, 0x80000001B7D52E30);
  v35 = v12[2];
  v34 = v12[3];
  if (v35 >= v34 >> 1)
  {
    v12 = sub_1B7AE3A9C((v34 > 1), v35 + 1, 1, v12);
  }

  v47 = v28;
  v48 = &off_1F2FA89F8;
  *&v46 = v44;
  v12[2] = v35 + 1;
  sub_1B7AE910C(&v46, &v12[5 * v35 + 4]);
  v49 = v12;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](0xD00000000000001DLL, 0x80000001B7D52E60);
  v37 = v12[2];
  v36 = v12[3];
  if (v37 >= v36 >> 1)
  {
    v12 = sub_1B7AE3A9C((v36 > 1), v37 + 1, 1, v12);
  }

  v47 = v28;
  v48 = &off_1F2FA89F8;
  *&v46 = v45;
  v12[2] = v37 + 1;
  sub_1B7AE910C(&v46, &v12[5 * v37 + 4]);
  v49 = v12;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](10, 0xE100000000000000);
  if (qword_1EBA50C88 != -1)
  {
    swift_once();
  }

  MEMORY[0x1B8CADCA0](qword_1EBA50C90, unk_1EBA50C98);
  sub_1B7AF3098(MEMORY[0x1E69E7CC0]);
  v38 = v49;
  sub_1B7AE3B2C(v50, v51, 0);
  sub_1B7AF3FE4(v38);

  result = [v42 reindexSchedulingLastRowID];
  if (__OFSUB__(result, v45))
  {
    __break(1u);
  }

  else
  {
    [v42 setReindexSchedulingLastRowID_];
    [objc_opt_self() _notifyPTasksUpdated];
  }

  return result;
}

void sub_1B7C3C834(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  v10 = off_1E7CB5000;
  v11 = &selRef_isReindexing;
  if (a1)
  {
    v12 = objc_opt_self();
    v13 = a1;
    _Block_copy(a5);
    v14 = [v12 keyPathsToColumns];
    sub_1B7CFE990();

    v15 = objc_allocWithZone(IMDPredicateToSQLConverter);
    v16 = sub_1B7CFE980();

    v80 = [v15 initWithPredicate:v13 keyPathsToColumns:v16];

    if (!v80)
    {
      if (qword_1EBA50EC0 != -1)
      {
        swift_once();
      }

      v55 = sub_1B7CFE420();
      sub_1B7AD9040(v55, qword_1EBA5DA38);
      v56 = v13;
      v57 = sub_1B7CFE400();
      v58 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        aBlock[0] = v61;
        *v59 = 136446466;
        *(v59 + 4) = sub_1B7AED1B8(0xD000000000000037, 0x80000001B7D524B0, aBlock);
        *(v59 + 12) = 2112;
        *(v59 + 14) = v56;
        *v60 = a1;
        v62 = v56;
        _os_log_impl(&dword_1B7AD5000, v57, v58, "Bad predicate provided to %{public}s (%@)", v59, 0x16u);
        sub_1B7AEE190(v60, &qword_1EBA521E0, &unk_1B7D0CE60);
        MEMORY[0x1B8CB0E70](v60, -1, -1);
        sub_1B7AE9168(v61);
        MEMORY[0x1B8CB0E70](v61, -1, -1);
        MEMORY[0x1B8CB0E70](v59, -1, -1);
      }

      sub_1B7AEE088(0, &qword_1EDBE5A20, off_1E7CB5138);
      v82 = sub_1B7CFECC0();
      (a5)[2](a5, v82);

      v54 = v82;
LABEL_41:

      return;
    }

    v10 = off_1E7CB5000;
    v11 = &selRef_isReindexing;
  }

  else
  {
    _Block_copy(a5);
    v80 = 0;
  }

  if (a2)
  {
    v17 = a2;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v17 >> 62)
  {
LABEL_52:
    v18 = sub_1B7CFF120();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v75 = a1;
  v76 = a4;
  v78 = v9;
  v79 = a2;

  if (v18)
  {
    v74 = a5;
    a2 = 0;
    v81 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1B8CAE380](a2, v17);
      }

      else
      {
        if (a2 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v19 = *(v17 + 8 * a2 + 32);
      }

      v20 = v19;
      a1 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      a5 = v18;
      v21 = v10[39];
      v22 = objc_opt_self();
      v23 = v20;
      v24 = [v22 v11[30]];
      sub_1B7CFE990();

      v25 = objc_allocWithZone(IMDSortDescriptorToSQLConverter);
      v26 = sub_1B7CFE980();

      v27 = [v25 initWithSortDescriptor:v23 keyPathsToColumns:v26];

      if (!v27)
      {
        break;
      }

      v28 = [v27 expression];
      a4 = sub_1B7CFEA60();
      v9 = v29;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = sub_1B7AF182C(0, *(v81 + 2) + 1, 1, v81);
      }

      v31 = *(v81 + 2);
      v30 = *(v81 + 3);
      if (v31 >= v30 >> 1)
      {
        v81 = sub_1B7AF182C((v30 > 1), v31 + 1, 1, v81);
      }

      *(v81 + 2) = v31 + 1;
      v32 = &v81[16 * v31];
      *(v32 + 4) = a4;
      *(v32 + 5) = v9;
      ++a2;
      v18 = a5;
      v10 = off_1E7CB5000;
      v11 = &selRef_isReindexing;
      if (a1 == a5)
      {
        goto LABEL_25;
      }
    }

    if (qword_1EBA50EC0 != -1)
    {
      swift_once();
    }

    v45 = sub_1B7CFE420();
    sub_1B7AD9040(v45, qword_1EBA5DA38);
    v46 = v23;
    v47 = sub_1B7CFE400();
    v48 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v49 = 136446466;
      *(v49 + 4) = sub_1B7AED1B8(0xD000000000000037, 0x80000001B7D524B0, aBlock);
      *(v49 + 12) = 2112;
      *(v49 + 14) = v46;
      *v50 = v46;
      v52 = v46;
      _os_log_impl(&dword_1B7AD5000, v47, v48, "Bad sort descriptor provided to %{public}s (%@)", v49, 0x16u);
      sub_1B7AEE190(v50, &qword_1EBA521E0, &unk_1B7D0CE60);
      MEMORY[0x1B8CB0E70](v50, -1, -1);
      sub_1B7AE9168(v51);
      MEMORY[0x1B8CB0E70](v51, -1, -1);
      MEMORY[0x1B8CB0E70](v49, -1, -1);
    }

    sub_1B7AEE088(0, &qword_1EDBE5A20, off_1E7CB5138);
    v53 = sub_1B7CFECC0();
    (v74)[2](v74, v53);

    v54 = v80;
    goto LABEL_41;
  }

  v81 = MEMORY[0x1E69E7CC0];
LABEL_25:

  if (qword_1EBA50EC0 != -1)
  {
    swift_once();
  }

  v33 = sub_1B7CFE420();
  sub_1B7AD9040(v33, qword_1EBA5DA38);
  v34 = v75;

  v35 = sub_1B7CFE400();
  v36 = sub_1B7CFEED0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = 0x3E6C696E3CLL;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315650;
    if (v75)
    {
      v40 = [v34 description];
      v41 = sub_1B7CFEA60();
      v43 = v42;
    }

    else
    {
      v43 = 0xE500000000000000;
      v41 = 0x3E6C696E3CLL;
    }

    v63 = sub_1B7AED1B8(v41, v43, aBlock);

    *(v38 + 4) = v63;
    *(v38 + 12) = 2080;
    if (v79)
    {
      v64 = sub_1B7AEE088(0, &unk_1EDBE5900, 0x1E696AEB0);
      v37 = MEMORY[0x1B8CADE30](v79, v64);
      v66 = v65;
    }

    else
    {
      v66 = 0xE500000000000000;
    }

    v67 = sub_1B7AED1B8(v37, v66, aBlock);

    *(v38 + 14) = v67;
    *(v38 + 22) = 2048;
    v44 = a3;
    *(v38 + 24) = a3;
    _os_log_impl(&dword_1B7AD5000, v35, v36, "Fetching ptasks filtered by predicate %s sortDescriptors %s limit %ld", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB0E70](v39, -1, -1);
    MEMORY[0x1B8CB0E70](v38, -1, -1);
  }

  else
  {

    v44 = a3;
  }

  v68 = swift_allocObject();
  v68[2] = sub_1B7C3D280;
  v68[3] = v78;
  v68[4] = v76;
  v68[5] = v80;
  v68[6] = v81;
  v68[7] = v44;
  aBlock[4] = sub_1B7C3D2AC;
  aBlock[5] = v68;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7AE14D0;
  aBlock[3] = &unk_1F2F9F870;
  v69 = _Block_copy(aBlock);
  v70 = v80;

  v71 = v76;

  v72 = [v71 isBlocking];
  IMDPersistencePerformBlockWithHandoffIfNeeded(v69, v72, v73);

  _Block_release(v69);
}

uint64_t sub_1B7C3D2AC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  sub_1B7C39F8C(v3, v4, v5);
  v2();
}

uint64_t sub_1B7C3D3B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1B7C3D3CC(a1, a2);
  }

  return a1;
}

uint64_t sub_1B7C3D3CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B7C1A208(a1, a2);
  }

  return a1;
}

unint64_t sub_1B7C3D3E0()
{
  result = qword_1EBA50FA8;
  if (!qword_1EBA50FA8)
  {
    sub_1B7C1091C(&unk_1EBA525C0, &qword_1B7D0CB80);
    sub_1B7C3D464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50FA8);
  }

  return result;
}

unint64_t sub_1B7C3D464()
{
  result = qword_1EBA50FA0;
  if (!qword_1EBA50FA0)
  {
    sub_1B7C1091C(&qword_1EBA52408, qword_1B7D13650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50FA0);
  }

  return result;
}

uint64_t sub_1B7C3D4E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1B7C2049C(a1, a2);
  }

  return a1;
}

uint64_t sub_1B7C3D51C()
{
  v1 = *(sub_1B7CFE180() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + v3;
  v8 = *(v0 + v4);
  v9 = *v7;
  v10 = *(v7 + 8);
  v11 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_1B7C38CD8(v5, v6, v0 + v2, v9, v10, v8, v12, v13);
}

uint64_t sub_1B7C3D5CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA525D8, &qword_1B7D0CB88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7C3D63C()
{
  result = qword_1EBA50E80;
  if (!qword_1EBA50E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50E80);
  }

  return result;
}

char *sub_1B7C3D6F8()
{
  v1 = *(sub_1B7CFE120() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);
  v11 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B7C343B4(v5, v6, v7, v0 + v2, v8, v9, v10);
}

uint64_t sub_1B7C3D804(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  return sub_1B7CFEFD0() & 1;
}

unint64_t IMPersistentTaskFlag.groupID.getter(unint64_t result)
{
  if (qword_1EDBE3010 != -1)
  {
    v3 = result;
    swift_once();
    result = v3;
  }

  v1 = qword_1EDBE79C8;
  if (*(qword_1EDBE79C8 + 16))
  {
    result = sub_1B7C40320(result);
    if (v2)
    {
      return *(*(v1 + 56) + 48 * result + 40);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t IMPersistentTaskFlag.flagPriority.getter(unint64_t result)
{
  if (qword_1EBA50DE8 != -1)
  {
    v3 = result;
    swift_once();
    result = v3;
  }

  v1 = qword_1EBA5DA00;
  if (*(qword_1EBA5DA00 + 16))
  {
    result = sub_1B7C40320(result);
    if (v2)
    {
      return *(*(v1 + 56) + 8 * result);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C3DA5C(uint64_t a1, uint64_t a2)
{
  if (qword_1EDBE3010 != -1)
  {
    v11 = a2;
    swift_once();
    a2 = v11;
  }

  v3 = qword_1EDBE79C8;
  if (!*(qword_1EDBE79C8 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = sub_1B7C40320(a2);
  if ((v5 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = *(*(v3 + 56) + 48 * v4 + 40);
  switch(v6)
  {
    case 2:
      if (qword_1EDBE2DF0 != -1)
      {
        swift_once();
      }

      v7 = &qword_1EDBE79B8;
      goto LABEL_16;
    case 1:
      if (qword_1EDBE2DE8 == -1)
      {
LABEL_8:
        v7 = &qword_1EDBE79B0;
LABEL_16:
        v8 = *v7;

        v9 = (*(*v8 + 120))(a1);

        return v9;
      }

LABEL_19:
      swift_once();
      goto LABEL_8;
    case 0:
      if (qword_1EDBE2DE0 != -1)
      {
        swift_once();
      }

      v7 = &qword_1EDBE79A8;
      goto LABEL_16;
  }

  type metadata accessor for IMPersistentTaskFlagGroup(0);
  result = sub_1B7CFF720();
  __break(1u);
  return result;
}

uint64_t IMPersistentTaskFlag.group.getter(uint64_t a1)
{
  sub_1B7C40CA8(a1);
}

unint64_t IMPersistentTaskFlag.name.getter(unint64_t result)
{
  if (qword_1EDBE3010 != -1)
  {
    v6 = result;
    swift_once();
    result = v6;
  }

  v1 = qword_1EDBE79C8;
  if (*(qword_1EDBE79C8 + 16))
  {
    result = sub_1B7C40320(result);
    if (v2)
    {
      v3 = *(v1 + 56) + 48 * result;
      v4 = *(v3 + 8);
      v5 = *(v3 + 16);

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t IMPersistentTaskFlag.Group.name.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void *sub_1B7C3DD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  if (qword_1EDBE3000 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v7 = qword_1EDBE79C0;
  if (*(qword_1EDBE79C0 + 16) && (v8 = sub_1B7C40320(a1), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v5[5] = v11;
  v5[6] = a4;
  return v5;
}

uint64_t sub_1B7C3DDC4(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  v6 = v2 + 32;
  while (*(v6 + 8 * result) != a1)
  {
    if (v3 == ++result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7C3DDFC()
{
  v0 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v0);

  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  return 0x286E776F6E6B6E55;
}

void *IMPersistentTaskFlag.Group.deinit()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t IMPersistentTaskFlag.Group.__deallocating_deinit()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C3DF04(uint64_t a1)
{
  v2 = sub_1B7C24154(MEMORY[0x1E69E7CC0]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = 0;
  v5 = a1 + 32;
  while (1)
  {
    v35 = *(v5 + 8 * v4);
    swift_getAtKeyPath();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = sub_1B7C40320(v34);
    v9 = *(v2 + 16);
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v13 = v8;
    if (*(v2 + 24) < v12)
    {
      sub_1B7CE5414(v12, isUniquelyReferenced_nonNull_native);
      v7 = sub_1B7C40320(v34);
      if ((v13 & 1) != (v14 & 1))
      {
        goto LABEL_35;
      }

LABEL_10:
      if (v13)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v33 = v7;
    sub_1B7C107FC(&qword_1EBA52248, &qword_1B7D0B3A0);
    v17 = sub_1B7CFF360();
    v18 = v17;
    if (*(v2 + 16))
    {
      break;
    }

LABEL_29:

    v2 = v18;
    v7 = v33;
    if (v13)
    {
LABEL_3:
      *(*(v2 + 56) + 8 * v7) = v4;
      goto LABEL_4;
    }

LABEL_11:
    *(v2 + 8 * (v7 >> 6) + 64) |= 1 << v7;
    *(*(v2 + 48) + 8 * v7) = v34;
    *(*(v2 + 56) + 8 * v7) = v4;
    v15 = *(v2 + 16);
    v11 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (v11)
    {
      goto LABEL_33;
    }

    *(v2 + 16) = v16;
LABEL_4:
    if (++v4 == v3)
    {
      return v2;
    }
  }

  v19 = (v17 + 64);
  v20 = v2 + 64;
  v21 = ((1 << *(v18 + 32)) + 63) >> 6;
  if (v18 != v2 || v19 >= v20 + 8 * v21)
  {
    memmove(v19, (v2 + 64), 8 * v21);
  }

  v22 = 0;
  *(v18 + 16) = *(v2 + 16);
  v23 = 1 << *(v2 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & *(v2 + 64);
  for (i = (v23 + 63) >> 6; v25; *(*(v18 + 56) + 8 * v28) = v31)
  {
    v27 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v28 = v27 | (v22 << 6);
LABEL_27:
    v31 = *(*(v2 + 56) + 8 * v28);
    *(*(v18 + 48) + 8 * v28) = *(*(v2 + 48) + 8 * v28);
  }

  v29 = v22;
  while (1)
  {
    v22 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v22 >= i)
    {
      goto LABEL_29;
    }

    v30 = *(v20 + 8 * v22);
    ++v29;
    if (v30)
    {
      v25 = (v30 - 1) & v30;
      v28 = __clz(__rbit64(v30)) | (v22 << 6);
      goto LABEL_27;
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  type metadata accessor for IMPersistentTaskFlag(0);
  result = sub_1B7CFF740();
  __break(1u);
  return result;
}

unint64_t sub_1B7C3E1A8()
{
  result = sub_1B7C23EF0(MEMORY[0x1E69E7CC0]);
  v1 = result;
  v2 = 0;
LABEL_3:
  while (1)
  {
    v6 = v2 <= 8 ? 8 - v2 : 0;
    v7 = ~v2;
    v8 = (&unk_1F2FA18E0 + 8 * v2 + 32);
    while (1)
    {
      if (v7 == -9)
      {
        qword_1EDBE79C8 = v1;
        return result;
      }

      if (!v6)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v9 = v7;
      v10 = *v8;
      type metadata accessor for IMPersistentTaskFlag(0);
      if (v10)
      {
        break;
      }

      result = sub_1B7C40320(0);
      --v6;
      v7 = v9 - 1;
      ++v8;
      if (v11)
      {
        v12 = result;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1B7CE8D60();
        }

        v13 = v1[7] + 48 * v12;
        v14 = *(v13 + 16);
        v15 = *(v13 + 32);

        result = sub_1B7CE7284(v12, v1);
        v2 = -v9;
        goto LABEL_3;
      }
    }

    if (v10 <= 4)
    {
      break;
    }

    if (v10 > 6)
    {
      if (v10 == 7)
      {
        v17 = &unk_1B7D0CD60;
        v19 = 0xE400000000000000;
        v18 = 1953719636;
        v16 = 1;
        goto LABEL_31;
      }

      if (v10 != 8)
      {
        goto LABEL_45;
      }

      v18 = 0xD00000000000001FLL;
      v17 = &unk_1B7D0CD50;
      v19 = 0x80000001B7D53BD0;
      v16 = 2;
    }

    else
    {
      v16 = 0;
      if (v10 == 5)
      {
        v18 = 0xD00000000000001BLL;
        v17 = &unk_1B7D0CD40;
        v19 = 0x80000001B7D53C10;
      }

      else
      {
        v18 = 0xD000000000000015;
        v17 = &unk_1B7D0CD48;
        v19 = 0x80000001B7D53BF0;
      }
    }

LABEL_31:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_1B7C40320(v10);
    v22 = v1[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_43;
    }

    v26 = v21;
    if (v1[3] < v25)
    {
      sub_1B7CE4EC0(v25, isUniquelyReferenced_nonNull_native);
      result = sub_1B7C40320(v10);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_46;
      }

LABEL_36:
      if (v26)
      {
        goto LABEL_2;
      }

      goto LABEL_37;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_36;
    }

    v31 = result;
    sub_1B7CE8D60();
    result = v31;
    if (v26)
    {
LABEL_2:
      v3 = (v1[7] + 48 * result);
      v4 = v3[2];
      v5 = v3[4];
      *v3 = v10;
      v3[1] = v18;
      v3[2] = v19;
      v3[3] = v17;
      v3[4] = 0;
      v3[5] = v16;

      v2 = -v9;
      continue;
    }

LABEL_37:
    v1[(result >> 6) + 8] |= 1 << result;
    *(v1[6] + 8 * result) = v10;
    v28 = (v1[7] + 48 * result);
    *v28 = v10;
    v28[1] = v18;
    v28[2] = v19;
    v28[3] = v17;
    v28[4] = 0;
    v28[5] = v16;
    v29 = v1[2];
    v24 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v24)
    {
      goto LABEL_44;
    }

    v1[2] = v30;
    v2 = -v9;
  }

  if (v10 > 2)
  {
    v16 = 0;
    if (v10 == 3)
    {
      v18 = 0xD000000000000015;
      v17 = &unk_1B7D0CD30;
      v19 = 0x80000001B7D53C50;
    }

    else
    {
      v17 = &unk_1B7D0CD38;
      v18 = 0xD000000000000011;
      v19 = 0x80000001B7D53C30;
    }

    goto LABEL_31;
  }

  if (v10 == 1)
  {
    v16 = 0;
    v17 = &unk_1B7D0CD20;
    v18 = 0xD000000000000011;
    v19 = 0x80000001B7D53C90;
    goto LABEL_31;
  }

  if (v10 == 2)
  {
    v16 = 0;
    v18 = 0xD000000000000013;
    v17 = &unk_1B7D0CD28;
    v19 = 0x80000001B7D53C70;
    goto LABEL_31;
  }

LABEL_45:
  sub_1B7CFF720();
  __break(1u);
LABEL_46:
  result = sub_1B7CFF740();
  __break(1u);
  return result;
}

uint64_t sub_1B7C3E650()
{
  v0 = sub_1B7C1F454(&unk_1F2FA18E0);
  swift_getKeyPath();
  v1 = sub_1B7C3DF04(v0);

  qword_1EBA5DA00 = v1;
  return result;
}

uint64_t sub_1B7C3E6BC()
{
  if (qword_1EDBE3010 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v0 = qword_1EDBE79C8;
    v1 = sub_1B7C2404C(MEMORY[0x1E69E7CC0]);
    v2 = v0 + 64;
    v3 = 1 << *(v0 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v0 + 64);
    v6 = (v3 + 63) >> 6;
    v32 = v0;
    swift_bridgeObjectRetain_n();
    v7 = 0;
    if (v5)
    {
      break;
    }

LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        qword_1EDBE79C0 = v1;
        return result;
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  while (1)
  {
LABEL_9:
    v9 = (*(v32 + 56) + 48 * (__clz(__rbit64(v5)) | (v7 << 6)));
    v10 = *v9;
    v11 = v9[4];
    v12 = v9[5];
    v34 = v9[2];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = sub_1B7C40320(v12);
    v16 = v1[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_28;
    }

    v19 = v14;
    if (v1[3] < v18)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v14)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1B7CE8EE0();
      if (v19)
      {
        goto LABEL_18;
      }
    }

LABEL_16:
    v1[(v15 >> 6) + 8] |= 1 << v15;
    *(v1[6] + 8 * v15) = v12;
    *(v1[7] + 8 * v15) = MEMORY[0x1E69E7CC0];
    v22 = v1[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_29;
    }

    v1[2] = v24;
LABEL_18:
    v25 = v1[7];
    v26 = *(v25 + 8 * v15);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *(v25 + 8 * v15) = v26;
    v33 = v10;
    if ((v27 & 1) == 0)
    {
      v26 = sub_1B7CA22F4(0, *(v26 + 2) + 1, 1, v26);
      *(v25 + 8 * v15) = v26;
    }

    v29 = *(v26 + 2);
    v28 = *(v26 + 3);
    if (v29 >= v28 >> 1)
    {
      *(v25 + 8 * v15) = sub_1B7CA22F4((v28 > 1), v29 + 1, 1, v26);
    }

    v5 &= v5 - 1;

    v30 = *(v25 + 8 * v15);
    *(v30 + 16) = v29 + 1;
    *(v30 + 8 * v29 + 32) = v33;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  sub_1B7CE5184(v18, isUniquelyReferenced_nonNull_native);
  type metadata accessor for IMPersistentTaskFlagGroup(0);
  v20 = sub_1B7C40320(v12);
  if ((v19 & 1) == (v21 & 1))
  {
    v15 = v20;
    if (v19)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  result = sub_1B7CFF740();
  __break(1u);
  return result;
}

uint64_t static IMDPersistentTaskUtilities.runTasks(_:withFlag:reason:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7C3E9C8, 0, 0);
}

uint64_t sub_1B7C3E9C8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = swift_allocObject();
  v0[6] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;

  v6 = swift_task_alloc();
  v0[7] = v6;
  *(v6 + 16) = &unk_1B7D0CBE0;
  *(v6 + 24) = v5;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1B7C3EB0C;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1B7C3EB0C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1B7C3EC48;
  }

  else
  {
    v5 = *(v2 + 48);
    v6 = *(v2 + 56);

    v4 = sub_1B7C3EC30;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B7C3EC48()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_1B7C3ECB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1B7C3ECD8, 0, 0);
}

void sub_1B7C3ECD8()
{
  if (qword_1EDBE3010 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBE79C8;
  if (!*(qword_1EDBE79C8 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = sub_1B7C40320(v0[2]);
  if ((v3 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = *(v1 + 56) + 48 * v2;
  v5 = *(v4 + 24);
  v0[6] = *(v4 + 32);

  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B7C3EE40;
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  v11(v10, v8, v9);
}

uint64_t sub_1B7C3EE40()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1B7C3EFB8;
  }

  else
  {
    v3 = sub_1B7C3EF54;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7C3EF54()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B7C3EFB8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t static IMDPersistentTaskUtilities.isWorkloadBacklogged(withGroupID:reports:)(uint64_t a1, uint64_t a2)
{
  switch(a1)
  {
    case 2:
      if (qword_1EDBE2DF0 != -1)
      {
        swift_once();
      }

      v3 = &qword_1EDBE79B8;
      goto LABEL_13;
    case 1:
      if (qword_1EDBE2DE8 != -1)
      {
        swift_once();
      }

      v3 = &qword_1EDBE79B0;
LABEL_13:
      v4 = *v3;

      v5 = (*(*v4 + 152))(a2);

      return v5 & 1;
    case 0:
      if (qword_1EDBE2DE0 != -1)
      {
        swift_once();
      }

      v3 = &qword_1EDBE79A8;
      goto LABEL_13;
  }

  type metadata accessor for IMPersistentTaskFlagGroup(0);
  result = sub_1B7CFF720();
  __break(1u);
  return result;
}

id sub_1B7C3F70C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(a3);
  v4 = sub_1B7CFEA30();

  return v4;
}

IMDPersistentTaskUtilities __swiftcall IMDPersistentTaskUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1B7C3F8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7C107FC(&qword_1EBA52628, &qword_1B7D0CC38);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  v10 = sub_1B7C107FC(&qword_1EBA52630, &qword_1B7D0CC40);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  (*(v11 + 16))(&v21 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  sub_1B7C107FC(&qword_1EBA52638, &qword_1B7D0CC48);
  swift_allocObject();
  v17 = sub_1B7C416F0(sub_1B7C41674, v16);

  v18 = sub_1B7CFEDD0();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = v17;

  sub_1B7C97AD0(0, 0, v9, &unk_1B7D0CC58, v19);
}

uint64_t sub_1B7C3FB14(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_1B7C3FC00;

  return v10();
}

uint64_t sub_1B7C3FC00()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v4 = sub_1B7C3FE70;
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 16);
    v4 = sub_1B7C3FD1C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1B7C3FD1C()
{
  v11 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 120);
    v9 = 0;
    v10 = 0;

    v2(&v9);
    v4 = [objc_opt_self() defaultCenter];
    if (qword_1EDBE39F0 != -1)
    {
      swift_once();
    }

    [v4 removeObserver:*(v0 + 16) name:qword_1EDBE39F8 object:0];
    sub_1B7AE15D4(v2);

    v5 = *(v1 + 112);
    v6 = *(v1 + 120);
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
    sub_1B7AE15D4(v5);
    v7 = sub_1B7C3FE5C;
  }

  else
  {
    v7 = sub_1B7C41950;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B7C3FE70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1B7C3FEDC, v1, 0);
}

uint64_t sub_1B7C3FEDC()
{
  v14 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  v3 = *(v0 + 32);
  if (v2)
  {
    v4 = *(v1 + 120);
    v12 = *(v0 + 32);
    LOBYTE(v13) = 1;
    v5 = v3;
    sub_1B7AD8F38(v2);
    v2(&v12);

    v6 = [objc_opt_self() defaultCenter];
    if (qword_1EDBE39F0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 32);
    [v6 removeObserver:*(v0 + 16) name:qword_1EDBE39F8 object:0];
    sub_1B7AE15D4(v2);

    v8 = *(v1 + 112);
    v9 = *(v1 + 120);
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
    sub_1B7AE15D4(v8);

    v10 = sub_1B7C40054;
  }

  else
  {

    v10 = sub_1B7C41958;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1B7C40054()
{
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1B7C400B4(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1B7CFF7C0();
  sub_1B7CFEB10();

  v4 = sub_1B7CFF800();

  return sub_1B7C40504(a1, v4);
}

unint64_t sub_1B7C40208(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B7CFDD90();
  v5 = MEMORY[0x1E6968B10];
  sub_1B7C41030(&qword_1EBA52618, MEMORY[0x1E6968B10]);
  v6 = sub_1B7CFE9B0();
  return sub_1B7C40A8C(a1, v6, MEMORY[0x1E6968B10], &qword_1EBA52620, v5, MEMORY[0x1E6968B20]);
}

unint64_t sub_1B7C402DC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1B7CFEFC0();

  return sub_1B7C40758(a1, v5);
}

unint64_t sub_1B7C40320(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](a1);
  v4 = sub_1B7CFF800();
  return sub_1B7AE1164(a1, v4);
}

unint64_t sub_1B7C40388(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1B7CFF160();

  return sub_1B7C4082C(a1, v5);
}

unint64_t sub_1B7C403CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B7CFF330();
  v5 = sub_1B7CFE9B0();

  return sub_1B7C408F4(a1, v5);
}

unint64_t sub_1B7C40430(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B7CFE7C0();
  v5 = MEMORY[0x1E697BC90];
  sub_1B7C41030(&qword_1EBA52048, MEMORY[0x1E697BC90]);
  v6 = sub_1B7CFE9B0();
  return sub_1B7C40A8C(a1, v6, MEMORY[0x1E697BC90], &qword_1EBA52610, v5, MEMORY[0x1E697BCA8]);
}

unint64_t sub_1B7C40504(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v7 = 0x64656E616870726FLL;
          v8 = 0xED0000746E756F43;
        }

        else
        {
          if (v6 == 4)
          {
            v7 = 0xD00000000000001CLL;
          }

          else
          {
            v7 = 0xD000000000000012;
          }

          if (v6 == 4)
          {
            v8 = 0x80000001B7D4E310;
          }

          else
          {
            v8 = 0x80000001B7D4E330;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0x746E756F43776F72;
        }

        else
        {
          v7 = 0x6465746E65726170;
        }

        if (v6 == 1)
        {
          v8 = 0xE800000000000000;
        }

        else
        {
          v8 = 0xED0000746E756F43;
        }
      }

      else
      {
        v7 = 0x6D614E656C626174;
        v8 = 0xE900000000000065;
      }

      v9 = 0xD00000000000001CLL;
      if (v5 == 4)
      {
        v10 = 0x80000001B7D4E310;
      }

      else
      {
        v9 = 0xD000000000000012;
        v10 = 0x80000001B7D4E330;
      }

      if (v5 == 3)
      {
        v9 = 0x64656E616870726FLL;
        v10 = 0xED0000746E756F43;
      }

      v11 = 0x746E756F43776F72;
      if (v5 != 1)
      {
        v11 = 0x6465746E65726170;
      }

      v12 = 0xE800000000000000;
      if (v5 != 1)
      {
        v12 = 0xED0000746E756F43;
      }

      if (!v5)
      {
        v11 = 0x6D614E656C626174;
        v12 = 0xE900000000000065;
      }

      v13 = v5 <= 2 ? v11 : v9;
      v14 = v5 <= 2 ? v12 : v10;
      if (v7 == v13 && v8 == v14)
      {
        break;
      }

      v15 = sub_1B7CFF590();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
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

unint64_t sub_1B7C40758(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1B7AEE088(0, &qword_1EBA521E8, 0x1E696B0B8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B7CFEFD0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B7C4082C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B7C41078(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B8CAE2B0](v9, a1);
      sub_1B7C410D4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B7C408F4(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = sub_1B7CFF330();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v22 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v9, *(v24 + 48) + v16 * v11, v4, v7);
      v19 = sub_1B7CFEA20();
      (*v17)(v9, v4);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v22 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1B7C40A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_1B7C41030(v24, v25);
      v20 = sub_1B7CFEA20();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_1B7C40C2C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = *a1;
    sub_1B7C107FC(&qword_1EBA52630, &qword_1B7D0CC40);
    return sub_1B7CFED90();
  }

  else
  {
    sub_1B7C107FC(&qword_1EBA52630, &qword_1B7D0CC40);
    return sub_1B7CFEDA0();
  }
}

uint64_t sub_1B7C40CA8(uint64_t a1)
{
  if (qword_1EDBE3010 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = qword_1EDBE79C8;
  if (!*(qword_1EDBE79C8 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = sub_1B7C40320(a1);
  if ((v3 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = *(*(v1 + 56) + 48 * v2 + 40);
  switch(v4)
  {
    case 2:
      if (qword_1EDBE2DF0 != -1)
      {
        swift_once();
      }

      v5 = &qword_1EDBE79B8;
      return *v5;
    case 1:
      if (qword_1EDBE2DE8 == -1)
      {
LABEL_8:
        v5 = &qword_1EDBE79B0;
        return *v5;
      }

LABEL_19:
      swift_once();
      goto LABEL_8;
    case 0:
      if (qword_1EDBE2DE0 != -1)
      {
        swift_once();
      }

      v5 = &qword_1EDBE79A8;
      return *v5;
  }

  type metadata accessor for IMPersistentTaskFlagGroup(0);
  result = sub_1B7CFF720();
  __break(1u);
  return result;
}

uint64_t sub_1B7C40E24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B7C40EE4;

  return sub_1B7C3ECB4(a1, v4, v5, v7, v6);
}

uint64_t sub_1B7C40EE4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B7C41030(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7C41128(uint64_t a1)
{
  v1 = *(sub_1B7C40CA8(a1) + 16);
  switch(v1)
  {
    case 2:
      if (qword_1EDBE2DF0 != -1)
      {
        swift_once();
      }

      v2 = &qword_1EDBE79B8;
      goto LABEL_13;
    case 1:
      if (qword_1EDBE2DE8 != -1)
      {
        swift_once();
      }

      v2 = &qword_1EDBE79B0;
LABEL_13:
      v3 = *v2;

      v4 = *(v3 + 24);
      v5 = *(v3 + 32);

      return v4;
    case 0:
      if (qword_1EDBE2DE0 != -1)
      {
        swift_once();
      }

      v2 = &qword_1EDBE79A8;
      goto LABEL_13;
  }

  type metadata accessor for IMPersistentTaskFlagGroup(0);
  result = sub_1B7CFF720();
  __break(1u);
  return result;
}

unint64_t sub_1B7C4126C(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (qword_1EDBE3010 != -1)
  {
    result = swift_once();
  }

  v4 = qword_1EDBE79C8;
  if (*(qword_1EDBE79C8 + 16))
  {
    result = sub_1B7C40320(v3);
    if (v5)
    {
      v6 = *(v4 + 56) + 48 * result;
      v11 = *(v6 + 8);
      v12 = *(v6 + 16);

      MEMORY[0x1B8CADCA0](91, 0xE100000000000000);
      v7 = *(*sub_1B7C40CA8(v3) + 128);

      v8 = v7(a2);
      v10 = v9;

      MEMORY[0x1B8CADCA0](v8, v10);

      MEMORY[0x1B8CADCA0](93, 0xE100000000000000);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C41390()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v2 = *(&unk_1F2FA19A8 + v0 + 32);
    if (v2 == 2)
    {
      v3 = &qword_1EDBE79B8;
      if (qword_1EDBE2DF0 != -1)
      {
        swift_once();
        v3 = &qword_1EDBE79B8;
      }
    }

    else if (v2 == 1)
    {
      v3 = &qword_1EDBE79B0;
      if (qword_1EDBE2DE8 != -1)
      {
        swift_once();
        v3 = &qword_1EDBE79B0;
      }
    }

    else
    {
      if (v2)
      {
        goto LABEL_35;
      }

      v3 = &qword_1EDBE79A8;
      if (qword_1EDBE2DE0 != -1)
      {
        swift_once();
        v3 = &qword_1EDBE79A8;
      }
    }

    v4 = *v3;

    swift_beginAccess();
    v5 = *(v4 + 40);

    v6 = *(v5 + 16);
    v7 = *(v1 + 2);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      type metadata accessor for IMPersistentTaskFlagGroup(0);
      result = sub_1B7CFF720();
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= *(v1 + 3) >> 1)
    {
      if (!*(v5 + 16))
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v10 = v7 + v6;
      }

      else
      {
        v10 = v7;
      }

      v1 = sub_1B7CA22F4(isUniquelyReferenced_nonNull_native, v10, 1, v1);
      if (!*(v5 + 16))
      {
LABEL_2:

        if (v6)
        {
          goto LABEL_32;
        }

        goto LABEL_3;
      }
    }

    v11 = *(v1 + 2);
    if ((*(v1 + 3) >> 1) - v11 < v6)
    {
      goto LABEL_33;
    }

    memcpy(&v1[8 * v11 + 32], (v5 + 32), 8 * v6);

    if (v6)
    {
      v12 = *(v1 + 2);
      v13 = __OFADD__(v12, v6);
      v14 = v12 + v6;
      if (v13)
      {
        goto LABEL_34;
      }

      *(v1 + 2) = v14;
    }

LABEL_3:
    v0 += 8;
  }

  while (v0 != 24);
  v15 = *(v1 + 2);
  if (v15)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1B7CFF2C0();
    v16 = 32;
    do
    {
      v17 = *&v1[v16];
      sub_1B7CFF050();
      sub_1B7CFF290();
      v18 = *(v20 + 16);
      sub_1B7CFF2D0();
      sub_1B7CFF2E0();
      sub_1B7CFF2A0();
      v16 += 8;
      --v15;
    }

    while (v15);

    return v20;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1B7C41674(uint64_t a1)
{
  v2 = *(*(sub_1B7C107FC(&qword_1EBA52630, &qword_1B7D0CC40) - 8) + 80);

  return sub_1B7C40C2C(a1);
}

uint64_t sub_1B7C416F0(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  v5 = objc_opt_self();

  v6 = [v5 defaultCenter];
  v7 = qword_1EDBE39F0;

  if (v7 != -1)
  {
    swift_once();
  }

  [v6 addObserver:v2 selector:sel_persistenceConnectionInterrupted_ name:qword_1EDBE39F8 object:0];

  return v2;
}

uint64_t sub_1B7C417D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7C40EE4;

  return sub_1B7C3FB14(a1, v4, v5, v6, v7, v8);
}

__n128 sub_1B7C41898(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B7C418AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B7C418F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t IMPersistentTaskFlagGroup.group.getter(uint64_t a1)
{
  if (a1 == 2)
  {
    if (qword_1EDBE2DF0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDBE79B8;
  }

  else if (a1 == 1)
  {
    if (qword_1EDBE2DE8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDBE79B0;
  }

  else
  {
    if (a1)
    {
      type metadata accessor for IMPersistentTaskFlagGroup(0);
      result = sub_1B7CFF720();
      __break(1u);
      return result;
    }

    if (qword_1EDBE2DE0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDBE79A8;
  }

  v2 = *v1;
}

uint64_t IMPersistentTaskFlagGroup.name.getter(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      if (qword_1EDBE2DF0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EDBE79B8;
      goto LABEL_13;
    case 1:
      if (qword_1EDBE2DE8 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EDBE79B0;
LABEL_13:
      v2 = *v1;

      v3 = *(v2 + 24);
      v4 = *(v2 + 32);

      return v3;
    case 0:
      if (qword_1EDBE2DE0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EDBE79A8;
      goto LABEL_13;
  }

  type metadata accessor for IMPersistentTaskFlagGroup(0);
  result = sub_1B7CFF720();
  __break(1u);
  return result;
}

void *sub_1B7C41BCC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1B7C41C08()
{
  v0 = sub_1B7C2436C(MEMORY[0x1E69E7CC0]);
  type metadata accessor for IMPersistentTaskFlagGroup(0);
  v1 = 0;
  while (1)
  {
    v4 = *(&unk_1F2FA1A08 + v1 + 32);
    if (v4 == 2)
    {
      v5 = &qword_1EDBE79B8;
      if (qword_1EDBE2DF0 != -1)
      {
        swift_once();
        v5 = &qword_1EDBE79B8;
      }
    }

    else if (v4 == 1)
    {
      v5 = &qword_1EDBE79B0;
      if (qword_1EDBE2DE8 != -1)
      {
        swift_once();
        v5 = &qword_1EDBE79B0;
      }
    }

    else
    {
      if (v4)
      {
        goto LABEL_27;
      }

      v5 = &qword_1EDBE79A8;
      if (qword_1EDBE2DE0 != -1)
      {
        swift_once();
        v5 = &qword_1EDBE79A8;
      }
    }

    v6 = *v5;

    v8 = *(v6 + 24);
    v7 = *(v6 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_1B7AE11D0(v8, v7);
    v11 = v0[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      break;
    }

    v15 = v10;
    if (v0[3] < v14)
    {
      sub_1B7CE5694(v14, isUniquelyReferenced_nonNull_native);
      result = sub_1B7AE11D0(v8, v7);
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_26;
      }

LABEL_18:
      if (v15)
      {
        goto LABEL_2;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v20 = result;
    sub_1B7CE903C();
    result = v20;
    if (v15)
    {
LABEL_2:
      v2 = result;

      *(v0[7] + 8 * v2) = v4;
      goto LABEL_3;
    }

LABEL_19:
    v0[(result >> 6) + 8] |= 1 << result;
    v17 = (v0[6] + 16 * result);
    *v17 = v8;
    v17[1] = v7;
    *(v0[7] + 8 * result) = v4;
    v18 = v0[2];
    v13 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v13)
    {
      goto LABEL_25;
    }

    v0[2] = v19;
LABEL_3:
    v1 += 8;
    if (v1 == 24)
    {
      qword_1EBA52640 = v0;
      return result;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1B7CFF740();
  __break(1u);
LABEL_27:
  result = sub_1B7CFF720();
  __break(1u);
  return result;
}

uint64_t static IMPersistentTaskFlagGroup.groupsByName.getter()
{
  if (qword_1EBA515A8 != -1)
  {
    swift_once();
  }
}

void *sub_1B7C41F10()
{
  sub_1B7C459AC();
  v0 = sub_1B7CFEF90();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    v2 = v0;
    sub_1B7C31320(0, v1, 0);
    v3 = v2;
    v4 = v10;
    v5 = *(v10 + 16);
    v6 = 32;
    do
    {
      v7 = *(v3 + v6);
      v8 = *(v10 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1B7C31320((v8 > 1), v5 + 1, 1);
        v3 = v2;
      }

      *(v10 + 16) = v5 + 1;
      *(v10 + 8 * v5 + 32) = v7;
      v6 += 8;
      ++v5;
      --v1;
    }

    while (v1);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  return sub_1B7C3DD1C(0, 0x6867696C746F7053, 0xE900000000000074, v4);
}

id sub_1B7C4203C(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 priorityForIndexReason_];
}

uint64_t sub_1B7C42084()
{
  v0 = NSStringFromIMCoreSpotlightIndexReason();
  v1 = sub_1B7CFEA60();

  return v1;
}

id sub_1B7C420D0(void *a1, uint64_t a2)
{
  v4 = IMSharedHelperMessagesApplicationName();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7CFEA60();
    v8 = v7;

    sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B7D0A7B0;
    *(v9 + 32) = v6;
    *(v9 + 40) = v8;
    v10 = sub_1B7CFECC0();

    [a1 setRelatedApplications_];
  }

  if (a2 != 3)
  {
    [a1 setResourceIntensive_];
    [a1 setResources_];
  }

  sub_1B7C42280();
  v11 = sub_1B7CFECC0();

  [a1 setInvolvedProcesses_];

  [a1 setRequiresBuddyComplete_];
  result = [a1 setRequiresProtectionClass_];
  if (a2 == 1)
  {
    v13 = &selRef_setRequiresUserInactivity_;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    [a1 setRequiresUserInactivity_];
    v13 = &selRef_setRequiresExternalPower_;
  }

  v14 = *v13;

  return [a1 v14];
}

char *sub_1B7C42280()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7D0CB60;
  *(inited + 32) = 0x6474736567677573;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 0x64737465737361;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 64) = 0xD000000000000013;
  *(inited + 72) = 0x80000001B7D4E180;
  result = sub_1B7AF182C(1, 4, 1, inited);
  *(result + 2) = 4;
  *(result + 10) = 0x64686372616573;
  *(result + 11) = 0xE700000000000000;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7C42374(uint64_t a1, uint64_t a2)
{
  if (a2 <= 5)
  {
    if (a2 <= 2)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          return 2;
        }

        if (a2 == 2)
        {
          return 0;
        }

LABEL_11:
        type metadata accessor for IMCoreSpotlightIndexReason(0);
        sub_1B7CFF720();
        __break(1u);
      }

      return 1;
    }

    return 0;
  }

  switch(a2)
  {
    case 1000:
    case 1002:
    case 1003:
    case 1004:
    case 1009:
    case 1010:
    case 1011:
    case 1012:
    case 1013:
    case 1014:
      result = 3;
      break;
    case 1001:
    case 1005:
    case 1006:
    case 1007:
    case 1008:
    case 1015:
      return 2;
    case 1016:
      return 0;
    default:
      if (a2 != 6 && a2 != 7)
      {
        goto LABEL_11;
      }

      return 0;
  }

  return result;
}

uint64_t sub_1B7C4244C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1B7C24230(MEMORY[0x1E69E7CC0]);
  }

  v3 = objc_allocWithZone(IMDIndexingContext);

  v4 = sub_1B7CFE980();

  v5 = [v3 initWithDictionary_];

  if (!a2)
  {
    sub_1B7C24230(MEMORY[0x1E69E7CC0]);
  }

  v6 = objc_allocWithZone(IMDIndexingContext);

  v7 = sub_1B7CFE980();

  v8 = [v6 initWithDictionary_];

  if ([v8 fullReindex])
  {
    [v5 setFullReindex_];
  }

  if ([v8 needsPriorityCheck])
  {
    [v5 setNeedsPriorityCheck_];
  }

  v9 = [v5 dictionaryRepresentation];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1B7CFE990();
  }

  else
  {

    return 0;
  }

  return v11;
}

unint64_t sub_1B7C42630(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      v4 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1B8CAE380](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v5 = *(v1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v8 = [v5 count];

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B7AF2DCC(0, *(v4 + 16) + 1, 1, v4);
          v4 = result;
        }

        v10 = *(v4 + 16);
        v9 = *(v4 + 24);
        v11 = v10 + 1;
        if (v10 >= v9 >> 1)
        {
          result = sub_1B7AF2DCC((v9 > 1), v10 + 1, 1, v4);
          v4 = result;
        }

        *(v4 + 16) = v11;
        *(v4 + 8 * v10 + 32) = v8;
        ++v3;
        if (v7 == v2)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      result = sub_1B7CFF120();
      v2 = result;
    }

    while (result);
  }

  v4 = MEMORY[0x1E69E7CC0];
  v11 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v11)
  {
LABEL_19:
    v12 = 0;
    for (i = 32; ; i += 8)
    {
      v14 = *(v4 + i);
      v15 = __OFADD__(v12, v14);
      v12 += v14;
      if (v15)
      {
        break;
      }

      if (!--v11)
      {

        return v12 > 1000;
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

uint64_t sub_1B7C427D8()
{
  sub_1B7C459AC();
  v0 = sub_1B7CFEF90();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = (v0 + 32);
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = *v3++;
      v7 = v8;
      if (IMDSpotlightIndexingUsesPartialIndexersForReason(v8))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B7C31350(0, *(v4 + 16) + 1, 1);
        }

        v6 = *(v4 + 16);
        v5 = *(v4 + 24);
        if (v6 >= v5 >> 1)
        {
          sub_1B7C31350((v5 > 1), v6 + 1, 1);
        }

        *(v4 + 16) = v6 + 1;
        *(v4 + 8 * v6 + 32) = v7;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v4 + 16);
  if (v9)
  {
    sub_1B7C31320(0, v9, 0);
    v10 = v2;
    v11 = *(v2 + 16);
    v12 = 32;
    do
    {
      v13 = *(v4 + v12);
      v14 = *(v10 + 24);
      if (v11 >= v14 >> 1)
      {
        sub_1B7C31320((v14 > 1), v11 + 1, 1);
      }

      *(v10 + 16) = v11 + 1;
      *(v10 + 8 * v11 + 32) = v13;
      v12 += 8;
      ++v11;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v10;
}

BOOL sub_1B7C42984(uint64_t a1, uint64_t a2)
{
  result = IMDSpotlightIndexingUsesPartialIndexersForReason(a1);
  if (result)
  {
    return IMDSpotlightIndexingUsesPartialIndexersForReason(a2);
  }

  return result;
}

void *sub_1B7C429B8()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1B7C31320(0, 2, 0);
  v0 = v7;
  v2 = *(v7 + 16);
  v1 = *(v7 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1B7C31320((v1 > 1), v2 + 1, 1);
    v0 = v7;
    v1 = *(v7 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  *(v0 + 8 * v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    sub_1B7C31320((v1 > 1), v5, 1);
    v0 = v7;
  }

  *(v0 + 16) = v5;
  *(v0 + 8 * v4 + 32) = 1;

  return sub_1B7C3DD1C(1, 1953719636, 0xE400000000000000, v0);
}

void *sub_1B7C42B08()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1B7C31320(0, 2, 0);
  v0 = v7;
  v2 = *(v7 + 16);
  v1 = *(v7 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1B7C31320((v1 > 1), v2 + 1, 1);
    v0 = v7;
    v1 = *(v7 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  *(v0 + 8 * v2 + 32) = 100000;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    sub_1B7C31320((v1 > 1), v5, 1);
    v0 = v7;
  }

  *(v0 + 16) = v5;
  *(v0 + 8 * v4 + 32) = 100001;

  return sub_1B7C3DD1C(2, 0x746E657261706552, 0xEB00000000676E69, v0);
}

id sub_1B7C42C68(void *a1, uint64_t a2)
{
  v4 = IMSharedHelperMessagesApplicationName();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7CFEA60();
    v8 = v7;

    sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B7D0A7B0;
    *(v9 + 32) = v6;
    *(v9 + 40) = v8;
    v10 = sub_1B7CFECC0();

    [a1 setRelatedApplications_];
  }

  [a1 setResources_];
  v11 = sub_1B7CFECC0();
  [a1 setInvolvedProcesses_];

  [a1 setRequiresBuddyComplete_];
  result = [a1 setRequiresProtectionClass_];
  if (a2 == 1)
  {
    v13 = &selRef_setRequiresUserInactivity_;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    [a1 setRequiresUserInactivity_];
    v13 = &selRef_setRequiresExternalPower_;
  }

  v14 = *v13;

  return [a1 v14];
}

uint64_t sub_1B7C42E00()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C42EB0(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B7C42FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7C42FC4, 0, 0);
}

uint64_t sub_1B7C42FC4()
{
  v1 = v0[18];
  v2 = [objc_opt_self() queryProvider];
  v0[21] = v2;
  if (v1 >> 62)
  {
    if (v0[18] < 0)
    {
      v28 = v0[18];
    }

    v3 = sub_1B7CFF120();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v30 = MEMORY[0x1E69E7CC0];
    v4 = sub_1B7AECEEC(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v4);
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1B8CAE380](v5, v0[18]);
        v6 = [swift_unknownObjectRetain() guid];
        v7 = sub_1B7CFEA60();
        v9 = v8;

        swift_unknownObjectRelease_n();
        v11 = *(v30 + 16);
        v10 = *(v30 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B7AECEEC((v10 > 1), v11 + 1, 1);
        }

        ++v5;
        *(v30 + 16) = v11 + 1;
        v12 = v30 + 16 * v11;
        *(v12 + 32) = v7;
        *(v12 + 40) = v9;
      }

      while (v3 != v5);
    }

    else
    {
      v13 = (v0[18] + 32);
      do
      {
        v14 = *v13;
        v15 = [v14 guid];
        v16 = sub_1B7CFEA60();
        v18 = v17;

        v20 = *(v30 + 16);
        v19 = *(v30 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1B7AECEEC((v19 > 1), v20 + 1, 1);
        }

        *(v30 + 16) = v20 + 1;
        v21 = v30 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        ++v13;
        --v3;
      }

      while (v3);
    }
  }

  v22 = v0[20];
  v23 = sub_1B7CFECC0();
  v0[22] = v23;

  if (v22)
  {
    v24 = v0[20];
    v25 = sub_1B7CFE980();
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_allocWithZone(IMDIndexingContext) initForReindexing:0 reason:v0[19] runningViaBGST:1 userInfo:v25];
  v0[23] = v26;

  v0[2] = v0;
  v0[3] = sub_1B7C43344;
  v27 = swift_continuation_init();
  v0[17] = sub_1B7C107FC(&unk_1EBA52450, &qword_1B7D0CA50);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7C310BC;
  v0[13] = &unk_1F2F9F898;
  v0[14] = v27;
  [v2 addMessageGUIDs:v23 context:v26 completionHandler:v0 + 10];
  v4 = (v0 + 2);

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t sub_1B7C43344()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1B7C45C3C;
  }

  else
  {
    v3 = sub_1B7C45C34;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7C43454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7C43478, 0, 0);
}

uint64_t sub_1B7C43478()
{
  v1 = MEMORY[0x1E69E7CA0];
  if (v0[20])
  {
    v2 = sub_1B7CFE980();
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[18];
  v4 = [objc_allocWithZone(IMDIndexingContext) initForReindexing:1 reason:v0[19] runningViaBGST:1 userInfo:v2];
  v0[21] = v4;

  v62 = MEMORY[0x1E69E7CC0];
  v55 = v3 >> 62;
  if (v3 >> 62)
  {
LABEL_23:
    v19 = v0[18];
    if (v3 < 0)
    {
      v20 = v0[18];
    }

    v5 = sub_1B7CFF120();
    v56 = v0;
    v57 = v4;
    if (v5)
    {
LABEL_6:
      v6 = v3;
      v3 = 0;
      v54 = v6;
      v59 = v6 & 0xFFFFFFFFFFFFFF8;
      v60 = v6 & 0xC000000000000001;
      v58 = v0[18] + 32;
      do
      {
        if (v60)
        {
          v7 = MEMORY[0x1B8CAE380](v3, v56[18]);
        }

        else
        {
          if (v3 >= *(v59 + 16))
          {
            goto LABEL_22;
          }

          v7 = *(v58 + 8 * v3);
        }

        v8 = v7;
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v10 = [v7 userInfo];
        if (v10)
        {
          v4 = v5;
          v11 = v10;
          v0 = MEMORY[0x1E69E69B8];
          sub_1B7CFE990();

          v12 = objc_allocWithZone(IMDIndexingContext);
          v13 = v1;
          v14 = sub_1B7CFE980();

          v15 = [v12 initWithDictionary_];

          v16 = [v15 fullReindex];
          if (v16)
          {
            sub_1B7CFF290();
            v17 = *(v62 + 16);
            sub_1B7CFF2D0();
            sub_1B7CFF2E0();
            sub_1B7CFF2A0();
          }

          else
          {
          }

          v1 = v13;
          v5 = v4;
        }

        else
        {
        }

        ++v3;
      }

      while (v9 != v5);
      v18 = v62;
      v4 = v57;
      v3 = v54;
      if ((v62 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v56 = v0;
    v57 = v4;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

LABEL_27:
  if ((v18 & 0x4000000000000000) != 0)
  {
LABEL_36:
    [v4 setMessagesContributingToFullReindex_];
    v21 = sub_1B7CFF120();
    v22 = v56;
    if (!v21)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  [v4 setMessagesContributingToFullReindex_];
  v21 = *(v18 + 16);
  v22 = v56;
  if (!v21)
  {
LABEL_37:

    v27 = 0;
    goto LABEL_38;
  }

LABEL_29:
  v23 = __OFSUB__(v21, 1);
  v24 = v21 - 1;
  if (v23)
  {
    __break(1u);
  }

  else if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v24 >= *(v18 + 16))
    {
LABEL_63:
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v24);
    }

    v25 = *(v18 + 8 * v24 + 32);
    goto LABEL_34;
  }

  v25 = MEMORY[0x1B8CAE380](v24, v18);
LABEL_34:
  v26 = v25;

  v27 = [v26 guid];

  if (!v27)
  {
    sub_1B7CFEA60();
    v27 = sub_1B7CFEA30();
  }

LABEL_38:
  [v4 setOldestFullReindexMessageGUID_];

  v28 = [objc_opt_self() queryProvider];
  v22[22] = v28;
  if (v55)
  {
    v31 = v22[18];
    v29 = v3;
    if (v3 < 0)
    {
      v32 = v22[18];
    }

    v30 = sub_1B7CFF120();
  }

  else
  {
    v29 = v3;
    v30 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v30)
  {
    goto LABEL_56;
  }

  v63 = MEMORY[0x1E69E7CC0];
  v24 = sub_1B7AECEEC(0, v30 & ~(v30 >> 63), 0);
  if (v30 < 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  v61 = v28;
  if ((v29 & 0xC000000000000001) != 0)
  {
    v33 = v22;
    v34 = 0;
    do
    {
      MEMORY[0x1B8CAE380](v34, v33[18]);
      v35 = [swift_unknownObjectRetain() guid];
      v36 = sub_1B7CFEA60();
      v38 = v37;

      swift_unknownObjectRelease_n();
      v40 = *(v63 + 16);
      v39 = *(v63 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1B7AECEEC((v39 > 1), v40 + 1, 1);
      }

      ++v34;
      *(v63 + 16) = v40 + 1;
      v41 = v63 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
    }

    while (v30 != v34);
  }

  else
  {
    v33 = v22;
    v42 = (v22[18] + 32);
    do
    {
      v43 = *v42;
      v44 = [v43 guid];
      v45 = sub_1B7CFEA60();
      v47 = v46;

      v49 = *(v63 + 16);
      v48 = *(v63 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1B7AECEEC((v48 > 1), v49 + 1, 1);
      }

      *(v63 + 16) = v49 + 1;
      v50 = v63 + 16 * v49;
      *(v50 + 32) = v45;
      *(v50 + 40) = v47;
      ++v42;
      --v30;
    }

    while (v30);
  }

  v22 = v33;
  v28 = v61;
LABEL_56:
  v51 = sub_1B7CFECC0();
  v22[23] = v51;

  v22[2] = v22;
  v22[3] = sub_1B7C43AFC;
  v52 = swift_continuation_init();
  v22[17] = sub_1B7C107FC(&unk_1EBA52450, &qword_1B7D0CA50);
  v22[10] = MEMORY[0x1E69E9820];
  v22[11] = 1107296256;
  v22[12] = sub_1B7C310BC;
  v22[13] = &unk_1F2FA41F8;
  v22[14] = v52;
  [v28 addMessageGUIDs:v51 context:v57 completionHandler:v22 + 10];
  v24 = (v22 + 2);

  return MEMORY[0x1EEE6DEC8](v24);
}

uint64_t sub_1B7C43AFC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1B7C43C80;
  }

  else
  {
    v3 = sub_1B7C43C0C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7C43C0C()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);

  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B7C43C80()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  swift_willThrow();

  swift_unknownObjectRelease();
  v5 = v0[1];
  v6 = v0[24];

  return v5();
}

uint64_t sub_1B7C43D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7C43D2C, 0, 0);
}

uint64_t sub_1B7C43D2C()
{
  if (v0[20])
  {
    v1 = sub_1B7CFE980();
  }

  else
  {
    v1 = 0;
  }

  v2 = v0[18];
  v53 = [objc_allocWithZone(IMDIndexingContext) initForReindexing:0 reason:v0[19] runningViaBGST:1 userInfo:v1];
  v0[21] = v53;

  v52 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_62;
  }

  v55 = v2 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7CFF120())
  {
    v54 = v0;
    v51 = v2;
    v4 = v2 & 0xC000000000000001;
    v5 = (v0[18] + 32);
    if (i)
    {
      v0 = 0;
      v2 = MEMORY[0x1E69E7CC0];
      do
      {
        v6 = v0;
        while (1)
        {
          if (v4)
          {
            v7 = MEMORY[0x1B8CAE380](v6, v54[18]);
            v0 = (v6 + 1);
            if (__OFADD__(v6, 1))
            {
              goto LABEL_59;
            }
          }

          else
          {
            if (v6 >= *(v55 + 16))
            {
              goto LABEL_60;
            }

            v7 = v5[v6];
            v0 = (v6 + 1);
            if (__OFADD__(v6, 1))
            {
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
              goto LABEL_61;
            }
          }

          v8 = v7;
          v9 = [v8 userInfo];
          if (v9)
          {
            break;
          }

          ++v6;
          if (v0 == i)
          {
            goto LABEL_25;
          }
        }

        v10 = v9;
        v11 = sub_1B7CFE990();

        v12 = v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1B7CA278C(0, *(v2 + 16) + 1, 1, v2);
        }

        v14 = *(v2 + 16);
        v13 = *(v2 + 24);
        if (v14 >= v13 >> 1)
        {
          v2 = sub_1B7CA278C((v13 > 1), v14 + 1, 1, v2);
        }

        *(v2 + 16) = v14 + 1;
        *(v2 + 8 * v14 + 32) = v11;
        v4 = v12;
      }

      while (v0 != i);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

LABEL_25:
    v0 = *(v2 + 16);
    if (!v0)
    {
      break;
    }

    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v17 = v15;
    while (v17 < *(v2 + 16))
    {
      v18 = *(v2 + 32 + 8 * v17);
      v15 = (v17 + 1);
      v19 = objc_allocWithZone(IMDIndexingContext);

      v20 = sub_1B7CFE980();
      v21 = [v19 initWithDictionary_];

      LOBYTE(v20) = [v21 fullReindex];
      if (v20)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B7C313F0(0, *(v16 + 16) + 1, 1);
        }

        v23 = *(v16 + 16);
        v22 = *(v16 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1B7C313F0((v22 > 1), v23 + 1, 1);
        }

        *(v16 + 16) = v23 + 1;
        *(v16 + 8 * v23 + 32) = v18;
        if ((v0 - 1) != v17)
        {
          goto LABEL_27;
        }

        goto LABEL_39;
      }

      ++v17;
      if (v0 == v15)
      {
        goto LABEL_39;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    v49 = v0[18];
    v55 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_39:

  v24 = *(v16 + 16);

  [v53 setChatsContributingToFullReindex_];
  v25 = [objc_opt_self() queryProvider];
  v26 = v54;
  v54[22] = v25;
  if (v52)
  {
    v28 = v54[18];
    if (v51 < 0)
    {
      v29 = v54[18];
    }

    v27 = sub_1B7CFF120();
  }

  else
  {
    v27 = *(v55 + 16);
  }

  if (v27)
  {
    v56 = MEMORY[0x1E69E7CC0];
    v30 = sub_1B7AECEEC(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v30);
    }

    if (v4)
    {
      v31 = 0;
      do
      {
        MEMORY[0x1B8CAE380](v31, v54[18]);
        v32 = [swift_unknownObjectRetain() guid];
        v33 = sub_1B7CFEA60();
        v35 = v34;

        swift_unknownObjectRelease_n();
        v37 = *(v56 + 16);
        v36 = *(v56 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1B7AECEEC((v36 > 1), v37 + 1, 1);
        }

        ++v31;
        *(v56 + 16) = v37 + 1;
        v38 = v56 + 16 * v37;
        *(v38 + 32) = v33;
        *(v38 + 40) = v35;
      }

      while (v27 != v31);
    }

    else
    {
      do
      {
        v39 = *v5;
        v40 = [v39 guid];
        v41 = sub_1B7CFEA60();
        v43 = v42;

        v45 = *(v56 + 16);
        v44 = *(v56 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1B7AECEEC((v44 > 1), v45 + 1, 1);
        }

        *(v56 + 16) = v45 + 1;
        v46 = v56 + 16 * v45;
        *(v46 + 32) = v41;
        *(v46 + 40) = v43;
        ++v5;
        --v27;
      }

      while (v27);
    }

    v26 = v54;
  }

  v47 = sub_1B7CFECC0();
  v26[23] = v47;

  v26[2] = v26;
  v26[3] = sub_1B7C443C4;
  v48 = swift_continuation_init();
  v26[17] = sub_1B7C107FC(&unk_1EBA52450, &qword_1B7D0CA50);
  v26[10] = MEMORY[0x1E69E9820];
  v26[11] = 1107296256;
  v26[12] = sub_1B7C310BC;
  v26[13] = &unk_1F2FA4220;
  v26[14] = v48;
  [v25 addChatGUIDs:v47 context:v53 completionHandler:v26 + 10];
  v30 = (v26 + 2);

  return MEMORY[0x1EEE6DEC8](v30);
}

uint64_t sub_1B7C443C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1B7C45C38;
  }

  else
  {
    v3 = sub_1B7C45C30;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7C444D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7C444F8, 0, 0);
}

uint64_t sub_1B7C444F8()
{
  v1 = v0[18];
  v2 = [objc_opt_self() queryProvider];
  v0[21] = v2;
  if (v1 >> 62)
  {
    if (v0[18] < 0)
    {
      v28 = v0[18];
    }

    v3 = sub_1B7CFF120();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v30 = MEMORY[0x1E69E7CC0];
    v4 = sub_1B7AECEEC(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v4);
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1B8CAE380](v5, v0[18]);
        v6 = [swift_unknownObjectRetain() guid];
        v7 = sub_1B7CFEA60();
        v9 = v8;

        swift_unknownObjectRelease_n();
        v11 = *(v30 + 16);
        v10 = *(v30 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B7AECEEC((v10 > 1), v11 + 1, 1);
        }

        ++v5;
        *(v30 + 16) = v11 + 1;
        v12 = v30 + 16 * v11;
        *(v12 + 32) = v7;
        *(v12 + 40) = v9;
      }

      while (v3 != v5);
    }

    else
    {
      v13 = (v0[18] + 32);
      do
      {
        v14 = *v13;
        v15 = [v14 guid];
        v16 = sub_1B7CFEA60();
        v18 = v17;

        v20 = *(v30 + 16);
        v19 = *(v30 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1B7AECEEC((v19 > 1), v20 + 1, 1);
        }

        *(v30 + 16) = v20 + 1;
        v21 = v30 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        ++v13;
        --v3;
      }

      while (v3);
    }
  }

  v22 = v0[20];
  v23 = sub_1B7CFECC0();
  v0[22] = v23;

  if (v22)
  {
    v24 = v0[20];
    v25 = sub_1B7CFE980();
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_allocWithZone(IMDIndexingContext) initForReindexing:0 reason:v0[19] runningViaBGST:1 userInfo:v25];
  v0[23] = v26;

  v0[2] = v0;
  v0[3] = sub_1B7C44878;
  v27 = swift_continuation_init();
  v0[17] = sub_1B7C107FC(&unk_1EBA52450, &qword_1B7D0CA50);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7C310BC;
  v0[13] = &unk_1F2FA4248;
  v0[14] = v27;
  [v2 deleteMessageGUIDs:v23 context:v26 completionHandler:v0 + 10];
  v4 = (v0 + 2);

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t sub_1B7C44878()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1B7C449F8;
  }

  else
  {
    v3 = sub_1B7C44988;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7C44988()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B7C449F8()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  swift_willThrow();
  swift_unknownObjectRelease();

  v5 = v0[1];
  v6 = v0[24];

  return v5();
}

uint64_t sub_1B7C44A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7C44AA4, 0, 0);
}

uint64_t sub_1B7C44AA4()
{
  v1 = v0[18];
  v2 = [objc_opt_self() queryProvider];
  v0[21] = v2;
  if (v1 >> 62)
  {
    if (v0[18] < 0)
    {
      v28 = v0[18];
    }

    v3 = sub_1B7CFF120();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v30 = MEMORY[0x1E69E7CC0];
    v4 = sub_1B7AECEEC(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v4);
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1B8CAE380](v5, v0[18]);
        v6 = [swift_unknownObjectRetain() guid];
        v7 = sub_1B7CFEA60();
        v9 = v8;

        swift_unknownObjectRelease_n();
        v11 = *(v30 + 16);
        v10 = *(v30 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B7AECEEC((v10 > 1), v11 + 1, 1);
        }

        ++v5;
        *(v30 + 16) = v11 + 1;
        v12 = v30 + 16 * v11;
        *(v12 + 32) = v7;
        *(v12 + 40) = v9;
      }

      while (v3 != v5);
    }

    else
    {
      v13 = (v0[18] + 32);
      do
      {
        v14 = *v13;
        v15 = [v14 guid];
        v16 = sub_1B7CFEA60();
        v18 = v17;

        v20 = *(v30 + 16);
        v19 = *(v30 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1B7AECEEC((v19 > 1), v20 + 1, 1);
        }

        *(v30 + 16) = v20 + 1;
        v21 = v30 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        ++v13;
        --v3;
      }

      while (v3);
    }
  }

  v22 = v0[20];
  v23 = sub_1B7CFECC0();
  v0[22] = v23;

  if (v22)
  {
    v24 = v0[20];
    v25 = sub_1B7CFE980();
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_allocWithZone(IMDIndexingContext) initForReindexing:0 reason:v0[19] runningViaBGST:1 userInfo:v25];
  v0[23] = v26;

  v0[2] = v0;
  v0[3] = sub_1B7C43344;
  v27 = swift_continuation_init();
  v0[17] = sub_1B7C107FC(&unk_1EBA52450, &qword_1B7D0CA50);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7C310BC;
  v0[13] = &unk_1F2FA4270;
  v0[14] = v27;
  [v2 deleteAttachmentGUIDs:v23 context:v26 completionHandler:v0 + 10];
  v4 = (v0 + 2);

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t sub_1B7C44E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7C44E48, 0, 0);
}

uint64_t sub_1B7C44E48()
{
  v1 = v0[18];
  v2 = [objc_opt_self() queryProvider];
  v0[21] = v2;
  if (v1 >> 62)
  {
    if (v0[18] < 0)
    {
      v28 = v0[18];
    }

    v3 = sub_1B7CFF120();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v30 = MEMORY[0x1E69E7CC0];
    v4 = sub_1B7AECEEC(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v4);
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1B8CAE380](v5, v0[18]);
        v6 = [swift_unknownObjectRetain() guid];
        v7 = sub_1B7CFEA60();
        v9 = v8;

        swift_unknownObjectRelease_n();
        v11 = *(v30 + 16);
        v10 = *(v30 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B7AECEEC((v10 > 1), v11 + 1, 1);
        }

        ++v5;
        *(v30 + 16) = v11 + 1;
        v12 = v30 + 16 * v11;
        *(v12 + 32) = v7;
        *(v12 + 40) = v9;
      }

      while (v3 != v5);
    }

    else
    {
      v13 = (v0[18] + 32);
      do
      {
        v14 = *v13;
        v15 = [v14 guid];
        v16 = sub_1B7CFEA60();
        v18 = v17;

        v20 = *(v30 + 16);
        v19 = *(v30 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1B7AECEEC((v19 > 1), v20 + 1, 1);
        }

        *(v30 + 16) = v20 + 1;
        v21 = v30 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        ++v13;
        --v3;
      }

      while (v3);
    }
  }

  v22 = v0[20];
  v23 = sub_1B7CFECC0();
  v0[22] = v23;

  if (v22)
  {
    v24 = v0[20];
    v25 = sub_1B7CFE980();
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_allocWithZone(IMDIndexingContext) initForReindexing:0 reason:v0[19] runningViaBGST:1 userInfo:v25];
  v0[23] = v26;

  v0[2] = v0;
  v0[3] = sub_1B7C43344;
  v27 = swift_continuation_init();
  v0[17] = sub_1B7C107FC(&unk_1EBA52450, &qword_1B7D0CA50);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7C310BC;
  v0[13] = &unk_1F2F9F690;
  v0[14] = v27;
  [v2 deleteChatGUIDs:v23 context:v26 completionBlock:v0 + 10];
  v4 = (v0 + 2);

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t sub_1B7C451C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7C451E8, 0, 0);
}

uint64_t sub_1B7C451E8()
{
  v39 = v0;
  v2 = v0 + 10;
  if (qword_1EBA50EC0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B7CFE420();
  v0[21] = sub_1B7AD9040(v3, qword_1EBA5DA38);
  v4 = sub_1B7CFE400();
  v5 = sub_1B7CFEED0();
  if (!os_log_type_enabled(v4, v5))
  {
    goto LABEL_6;
  }

  v6 = swift_slowAlloc();
  v1 = swift_slowAlloc();
  v38 = v1;
  *v6 = 136315394;
  if (qword_1EDBE2DF0 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v7 = v0[20];
    v8 = *(qword_1EDBE79B8 + 24);
    v9 = *(qword_1EDBE79B8 + 32);

    v10 = sub_1B7AED1B8(v8, v9, &v38);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v0[10] = v7;
    sub_1B7C3D63C();
    v11 = sub_1B7CFF090();
    v13 = sub_1B7AED1B8(v11, v12, &v38);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_1B7AD5000, v4, v5, "Running %s for reason %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB0E70](v1, -1, -1);
    MEMORY[0x1B8CB0E70](v6, -1, -1);
LABEL_6:

    v14 = v0[19];
    v4 = [objc_opt_self() synchronousDatabase];
    v0[22] = v4;
    if (v14 >> 62)
    {
      v35 = v0[19];
      if (v14 < 0)
      {
        v36 = v0[19];
      }

      v6 = sub_1B7CFF120();
    }

    else
    {
      v6 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v6)
    {
      break;
    }

    v38 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v6 & ~(v6 >> 63), 0);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v15 = v38;
      if ((v14 & 0xC000000000000001) != 0)
      {
        v16 = 0;
        do
        {
          MEMORY[0x1B8CAE380](v16, v0[19]);
          v17 = [swift_unknownObjectRetain() guid];
          v18 = sub_1B7CFEA60();
          v20 = v19;

          swift_unknownObjectRelease_n();
          v38 = v15;
          v22 = *(v15 + 16);
          v21 = *(v15 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1B7AECEEC((v21 > 1), v22 + 1, 1);
            v15 = v38;
          }

          ++v16;
          *(v15 + 16) = v22 + 1;
          v23 = v15 + 16 * v22;
          *(v23 + 32) = v18;
          *(v23 + 40) = v20;
        }

        while (v6 != v16);
      }

      else
      {
        v24 = (v0[19] + 32);
        do
        {
          v25 = *v24;
          v26 = [v25 guid];
          v27 = sub_1B7CFEA60();
          v29 = v28;

          v38 = v15;
          v31 = *(v15 + 16);
          v30 = *(v15 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_1B7AECEEC((v30 > 1), v31 + 1, 1);
            v15 = v38;
          }

          *(v15 + 16) = v31 + 1;
          v32 = v15 + 16 * v31;
          *(v32 + 32) = v27;
          *(v32 + 40) = v29;
          ++v24;
          --v6;
        }

        while (v6);
      }

      v2 = v0 + 10;
      break;
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v33 = sub_1B7CFECC0();
  v0[23] = v33;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B7C456A8;
  v34 = swift_continuation_init();
  v0[17] = sub_1B7C107FC(&qword_1EBA52658, &qword_1B7D0CD58);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7C4593C;
  v0[13] = &unk_1F2F9F668;
  v0[14] = v34;
  [v4 reparentMessagesUsingChatIDWithGUIDs:v33 completionHandler:v2];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7C456A8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7C45788, 0, 0);
}

uint64_t sub_1B7C45788()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[18];
  swift_unknownObjectRelease();

  if (*(v3 + 16))
  {
    v4 = v0[21];
    v5 = v0[19];

    v6 = sub_1B7CFE400();
    v7 = sub_1B7CFEED0();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[19];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 134218240;
      *(v10 + 4) = *(v3 + 16);

      *(v10 + 12) = 2048;
      if (v9 >> 62)
      {
        v11 = sub_1B7CFF120();
        v13 = v0[19];
      }

      else
      {
        v11 = *((v0[19] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v10 + 14) = v11;

      _os_log_impl(&dword_1B7AD5000, v6, v7, "Successfully reparented %ld out of %ld messages.", v10, 0x16u);
      MEMORY[0x1B8CB0E70](v10, -1, -1);
    }

    else
    {
      v12 = v0[19];
    }

    v14 = sub_1B7CFECC0();

    IMDCoreSpotlightReindexMessages(v14, 1016, 0);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B7C4593C(uint64_t a1)
{
  v1 = *sub_1B7AE9124((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = sub_1B7CFECE0();

  return MEMORY[0x1EEE6DED8](v1);
}

unint64_t sub_1B7C459AC()
{
  result = qword_1EDBE2AB8;
  if (!qword_1EDBE2AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBE2AB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLConnectionMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SQLConnectionMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B7C45B4C()
{
  result = qword_1EBA52660;
  if (!qword_1EBA52660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52660);
  }

  return result;
}

unint64_t sub_1B7C45BA4()
{
  result = qword_1EBA52668;
  if (!qword_1EBA52668)
  {
    sub_1B7C1091C(&unk_1EBA52670, qword_1B7D0CDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52668);
  }

  return result;
}

uint64_t static IMPersistentTaskFlag.spotlightFlags.getter()
{
  if (qword_1EDBE2DE0 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1EDBE79A8 + 40);
}

uint64_t sub_1B7C45CA4(void *a1, uint64_t (*a2)(void))
{
  if (qword_1EDBE3808 != -1)
  {
    swift_once();
  }

  v4 = sub_1B7CFE420();
  sub_1B7AD9040(v4, qword_1EDBE79D0);
  v5 = a1;
  v6 = sub_1B7CFE400();
  v7 = sub_1B7CFEEF0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7AD5000, v6, v7, "Error in synchronous proxy for ptask queries: %@", v8, 0xCu);
    sub_1B7C20434(v9);
    MEMORY[0x1B8CB0E70](v9, -1, -1);
    MEMORY[0x1B8CB0E70](v8, -1, -1);
  }

  return a2();
}

uint64_t sub_1B7C45DFC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B7C4803C;
  *(v7 + 24) = v6;
  if (a1 && (v51 = &unk_1F2FDF1C0, (v8 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      aBlock[4] = sub_1B7C48050;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B7C4E668;
      aBlock[3] = &unk_1F2FA4530;
      v10 = _Block_copy(aBlock);
      swift_retain_n();

      swift_unknownObjectRetain();

      v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v10);
      sub_1B7CFF0A0();
      swift_unknownObjectRelease();

      sub_1B7C255E0(&v49, v50);
      sub_1B7AED284(v50, aBlock);
      v12 = sub_1B7C107FC(&unk_1EBA52710, &unk_1B7D0CEB0);
      if (swift_dynamicCast())
      {
        sub_1B7AE9168(v50);
        swift_unknownObjectRelease();

        v13 = v49;

        return v13;
      }

      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v38 = v12;
      v39 = qword_1EDBE3808;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_1B7CFE420();
      sub_1B7AD9040(v40, qword_1EDBE79D0);
      v41 = v27;
      v42 = sub_1B7CFE400();
      v43 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v27;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_1B7AD5000, v42, v43, "Error in synchronous proxy for ptask queries: %@", v44, 0xCu);
        sub_1B7C20434(v45);
        MEMORY[0x1B8CB0E70](v45, -1, -1);
        MEMORY[0x1B8CB0E70](v44, -1, -1);
      }

      a2();

      swift_unknownObjectRelease();

      sub_1B7AE9168(v50);
    }

    else
    {
      swift_retain_n();

      swift_unknownObjectRetain();
      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v28 = 1;
      v29 = qword_1EDBE3808;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_1B7CFE420();
      sub_1B7AD9040(v30, qword_1EDBE79D0);
      v31 = v27;
      v32 = sub_1B7CFE400();
      v33 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = v27;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_1B7AD5000, v32, v33, "Error in synchronous proxy for ptask queries: %@", v34, 0xCu);
        sub_1B7C20434(v35);
        MEMORY[0x1B8CB0E70](v35, -1, -1);
        MEMORY[0x1B8CB0E70](v34, -1, -1);
      }

      a2();
      swift_unknownObjectRelease();
    }

    v26 = v27;
  }

  else
  {
    sub_1B7C47EDC();
    v15 = swift_allocError();
    *v16 = 0;
    v17 = qword_1EDBE3808;
    swift_retain_n();

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_1B7CFE420();
    sub_1B7AD9040(v18, qword_1EDBE79D0);
    v19 = v15;
    v20 = sub_1B7CFE400();
    v21 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v15;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B7AD5000, v20, v21, "Error in synchronous proxy for ptask queries: %@", v22, 0xCu);
      sub_1B7C20434(v23);
      MEMORY[0x1B8CB0E70](v23, -1, -1);
      MEMORY[0x1B8CB0E70](v22, -1, -1);
    }

    a2();

    v26 = v15;
  }

  return 0;
}

uint64_t sub_1B7C4648C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B7C4803C;
  *(v7 + 24) = v6;
  if (a1 && (v51 = &unk_1F2FDF1C0, (v8 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      aBlock[4] = sub_1B7C48050;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B7C4E668;
      aBlock[3] = &unk_1F2FA44B8;
      v10 = _Block_copy(aBlock);
      swift_retain_n();

      swift_unknownObjectRetain();

      v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v10);
      sub_1B7CFF0A0();
      swift_unknownObjectRelease();

      sub_1B7C255E0(&v49, v50);
      sub_1B7AED284(v50, aBlock);
      v12 = sub_1B7C107FC(&qword_1EBA52708, &unk_1B7D0CEA0);
      if (swift_dynamicCast())
      {
        sub_1B7AE9168(v50);
        swift_unknownObjectRelease();

        v13 = v49;

        return v13;
      }

      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v38 = v12;
      v39 = qword_1EDBE3808;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_1B7CFE420();
      sub_1B7AD9040(v40, qword_1EDBE79D0);
      v41 = v27;
      v42 = sub_1B7CFE400();
      v43 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v27;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_1B7AD5000, v42, v43, "Error in synchronous proxy for ptask queries: %@", v44, 0xCu);
        sub_1B7C20434(v45);
        MEMORY[0x1B8CB0E70](v45, -1, -1);
        MEMORY[0x1B8CB0E70](v44, -1, -1);
      }

      a2();

      swift_unknownObjectRelease();

      sub_1B7AE9168(v50);
    }

    else
    {
      swift_retain_n();

      swift_unknownObjectRetain();
      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v28 = 1;
      v29 = qword_1EDBE3808;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_1B7CFE420();
      sub_1B7AD9040(v30, qword_1EDBE79D0);
      v31 = v27;
      v32 = sub_1B7CFE400();
      v33 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = v27;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_1B7AD5000, v32, v33, "Error in synchronous proxy for ptask queries: %@", v34, 0xCu);
        sub_1B7C20434(v35);
        MEMORY[0x1B8CB0E70](v35, -1, -1);
        MEMORY[0x1B8CB0E70](v34, -1, -1);
      }

      a2();
      swift_unknownObjectRelease();
    }

    v26 = v27;
  }

  else
  {
    sub_1B7C47EDC();
    v15 = swift_allocError();
    *v16 = 0;
    v17 = qword_1EDBE3808;
    swift_retain_n();

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_1B7CFE420();
    sub_1B7AD9040(v18, qword_1EDBE79D0);
    v19 = v15;
    v20 = sub_1B7CFE400();
    v21 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v15;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B7AD5000, v20, v21, "Error in synchronous proxy for ptask queries: %@", v22, 0xCu);
      sub_1B7C20434(v23);
      MEMORY[0x1B8CB0E70](v23, -1, -1);
      MEMORY[0x1B8CB0E70](v22, -1, -1);
    }

    a2();

    v26 = v15;
  }

  return 0;
}

uint64_t sub_1B7C46B1C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B7C4803C;
  *(v7 + 24) = v6;
  if (a1 && (v51 = &unk_1F2FDF1C0, (v8 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      aBlock[4] = sub_1B7C48050;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B7C4E668;
      aBlock[3] = &unk_1F2FA4440;
      v10 = _Block_copy(aBlock);
      swift_retain_n();

      swift_unknownObjectRetain();

      v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v10);
      sub_1B7CFF0A0();
      swift_unknownObjectRelease();

      sub_1B7C255E0(&v49, v50);
      sub_1B7AED284(v50, aBlock);
      v12 = sub_1B7C107FC(&qword_1EBA52700, &unk_1B7D0CE90);
      if (swift_dynamicCast())
      {
        sub_1B7AE9168(v50);
        swift_unknownObjectRelease();

        v13 = v49;

        return v13;
      }

      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v38 = v12;
      v39 = qword_1EDBE3808;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_1B7CFE420();
      sub_1B7AD9040(v40, qword_1EDBE79D0);
      v41 = v27;
      v42 = sub_1B7CFE400();
      v43 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v27;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_1B7AD5000, v42, v43, "Error in synchronous proxy for ptask queries: %@", v44, 0xCu);
        sub_1B7C20434(v45);
        MEMORY[0x1B8CB0E70](v45, -1, -1);
        MEMORY[0x1B8CB0E70](v44, -1, -1);
      }

      a2();

      swift_unknownObjectRelease();

      sub_1B7AE9168(v50);
    }

    else
    {
      swift_retain_n();

      swift_unknownObjectRetain();
      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v28 = 1;
      v29 = qword_1EDBE3808;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_1B7CFE420();
      sub_1B7AD9040(v30, qword_1EDBE79D0);
      v31 = v27;
      v32 = sub_1B7CFE400();
      v33 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = v27;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_1B7AD5000, v32, v33, "Error in synchronous proxy for ptask queries: %@", v34, 0xCu);
        sub_1B7C20434(v35);
        MEMORY[0x1B8CB0E70](v35, -1, -1);
        MEMORY[0x1B8CB0E70](v34, -1, -1);
      }

      a2();
      swift_unknownObjectRelease();
    }

    v26 = v27;
  }

  else
  {
    sub_1B7C47EDC();
    v15 = swift_allocError();
    *v16 = 0;
    v17 = qword_1EDBE3808;
    swift_retain_n();

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_1B7CFE420();
    sub_1B7AD9040(v18, qword_1EDBE79D0);
    v19 = v15;
    v20 = sub_1B7CFE400();
    v21 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v15;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B7AD5000, v20, v21, "Error in synchronous proxy for ptask queries: %@", v22, 0xCu);
      sub_1B7C20434(v23);
      MEMORY[0x1B8CB0E70](v23, -1, -1);
      MEMORY[0x1B8CB0E70](v22, -1, -1);
    }

    a2();

    v26 = v15;
  }

  return 0;
}

uint64_t sub_1B7C471AC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B7C4803C;
  *(v7 + 24) = v6;
  if (a1 && (v51 = &unk_1F2FDF1C0, (v8 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      aBlock[4] = sub_1B7C48050;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B7C4E668;
      aBlock[3] = &unk_1F2FA43C8;
      v10 = _Block_copy(aBlock);
      swift_retain_n();

      swift_unknownObjectRetain();

      v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v10);
      sub_1B7CFF0A0();
      swift_unknownObjectRelease();

      sub_1B7C255E0(&v49, v50);
      sub_1B7AED284(v50, aBlock);
      v12 = sub_1B7C107FC(&qword_1EBA526F8, &unk_1B7D0CE80);
      if (swift_dynamicCast())
      {
        sub_1B7AE9168(v50);
        swift_unknownObjectRelease();

        v13 = v49;

        return v13;
      }

      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v38 = v12;
      v39 = qword_1EDBE3808;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_1B7CFE420();
      sub_1B7AD9040(v40, qword_1EDBE79D0);
      v41 = v27;
      v42 = sub_1B7CFE400();
      v43 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v27;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_1B7AD5000, v42, v43, "Error in synchronous proxy for ptask queries: %@", v44, 0xCu);
        sub_1B7C20434(v45);
        MEMORY[0x1B8CB0E70](v45, -1, -1);
        MEMORY[0x1B8CB0E70](v44, -1, -1);
      }

      a2();

      swift_unknownObjectRelease();

      sub_1B7AE9168(v50);
    }

    else
    {
      swift_retain_n();

      swift_unknownObjectRetain();
      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v28 = 1;
      v29 = qword_1EDBE3808;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_1B7CFE420();
      sub_1B7AD9040(v30, qword_1EDBE79D0);
      v31 = v27;
      v32 = sub_1B7CFE400();
      v33 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = v27;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_1B7AD5000, v32, v33, "Error in synchronous proxy for ptask queries: %@", v34, 0xCu);
        sub_1B7C20434(v35);
        MEMORY[0x1B8CB0E70](v35, -1, -1);
        MEMORY[0x1B8CB0E70](v34, -1, -1);
      }

      a2();
      swift_unknownObjectRelease();
    }

    v26 = v27;
  }

  else
  {
    sub_1B7C47EDC();
    v15 = swift_allocError();
    *v16 = 0;
    v17 = qword_1EDBE3808;
    swift_retain_n();

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_1B7CFE420();
    sub_1B7AD9040(v18, qword_1EDBE79D0);
    v19 = v15;
    v20 = sub_1B7CFE400();
    v21 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v15;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B7AD5000, v20, v21, "Error in synchronous proxy for ptask queries: %@", v22, 0xCu);
      sub_1B7C20434(v23);
      MEMORY[0x1B8CB0E70](v23, -1, -1);
      MEMORY[0x1B8CB0E70](v22, -1, -1);
    }

    a2();

    v26 = v15;
  }

  return 0;
}

uint64_t sub_1B7C4783C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B7C47ECC;
  *(v7 + 24) = v6;
  if (a1 && (v51 = &unk_1F2FDF1C0, (v8 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      aBlock[4] = sub_1B7C47ED4;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B7C4E668;
      aBlock[3] = &unk_1F2F9F8C0;
      v10 = _Block_copy(aBlock);
      swift_retain_n();

      swift_unknownObjectRetain();

      v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v10);
      sub_1B7CFF0A0();
      swift_unknownObjectRelease();

      sub_1B7C255E0(&v49, v50);
      sub_1B7AED284(v50, aBlock);
      v12 = sub_1B7C107FC(&qword_1EBA526F0, &unk_1B7D0CE70);
      if (swift_dynamicCast())
      {
        sub_1B7AE9168(v50);
        swift_unknownObjectRelease();

        v13 = v49;

        return v13;
      }

      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v38 = v12;
      v39 = qword_1EDBE3808;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_1B7CFE420();
      sub_1B7AD9040(v40, qword_1EDBE79D0);
      v41 = v27;
      v42 = sub_1B7CFE400();
      v43 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v27;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_1B7AD5000, v42, v43, "Error in synchronous proxy for ptask queries: %@", v44, 0xCu);
        sub_1B7C20434(v45);
        MEMORY[0x1B8CB0E70](v45, -1, -1);
        MEMORY[0x1B8CB0E70](v44, -1, -1);
      }

      a2();

      swift_unknownObjectRelease();

      sub_1B7AE9168(v50);
    }

    else
    {
      swift_retain_n();

      swift_unknownObjectRetain();
      sub_1B7C47EDC();
      v27 = swift_allocError();
      *v28 = 1;
      v29 = qword_1EDBE3808;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_1B7CFE420();
      sub_1B7AD9040(v30, qword_1EDBE79D0);
      v31 = v27;
      v32 = sub_1B7CFE400();
      v33 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = v27;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_1B7AD5000, v32, v33, "Error in synchronous proxy for ptask queries: %@", v34, 0xCu);
        sub_1B7C20434(v35);
        MEMORY[0x1B8CB0E70](v35, -1, -1);
        MEMORY[0x1B8CB0E70](v34, -1, -1);
      }

      a2();
      swift_unknownObjectRelease();
    }

    v26 = v27;
  }

  else
  {
    sub_1B7C47EDC();
    v15 = swift_allocError();
    *v16 = 0;
    v17 = qword_1EDBE3808;
    swift_retain_n();

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_1B7CFE420();
    sub_1B7AD9040(v18, qword_1EDBE79D0);
    v19 = v15;
    v20 = sub_1B7CFE400();
    v21 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v15;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B7AD5000, v20, v21, "Error in synchronous proxy for ptask queries: %@", v22, 0xCu);
      sub_1B7C20434(v23);
      MEMORY[0x1B8CB0E70](v23, -1, -1);
      MEMORY[0x1B8CB0E70](v22, -1, -1);
    }

    a2();

    v26 = v15;
  }

  return 0;
}

unint64_t sub_1B7C47EDC()
{
  result = qword_1EBA52680;
  if (!qword_1EBA52680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52680);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SynchronousProxyError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SynchronousProxyError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B7C47FE0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B7C47FF8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1B7C48054()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EBA52720);
  sub_1B7AD9040(v0, qword_1EBA52720);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

id AskToParser.init(url:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1B7CFE500();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_1B7CFDFF0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  sub_1B7CFE4F0();
  sub_1B7C487D8(a1, &v2[OBJC_IVAR___IMDAskToParser_url]);
  sub_1B7C487D8(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B7AEE190(v12, &qword_1EBA51FA0, &qword_1B7D0A6D0);
    if (qword_1EBA515B8 != -1)
    {
      swift_once();
    }

    v19 = sub_1B7CFE420();
    sub_1B7AD9040(v19, qword_1EBA52720);
    v20 = sub_1B7CFE400();
    v21 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = ObjectType;
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B7AD5000, v20, v21, "Provided payload URL was nil", v23, 2u);
      v24 = v23;
      ObjectType = v22;
      MEMORY[0x1B8CB0E70](v24, -1, -1);
    }

    *&v2[OBJC_IVAR___IMDAskToParser_payload] = 0;
  }

  else
  {
    v29 = v5;
    v30 = ObjectType;
    (*(v14 + 32))(v18, v12, v13);
    sub_1B7CFE4F0();
    sub_1B7CFE520();
    v25 = MEMORY[0x1E698CFD0];
    sub_1B7C493B0(&qword_1EBA52740, MEMORY[0x1E698CFD0]);
    sub_1B7C493B0(&qword_1EBA52748, v25);
    sub_1B7CFE4D0();
    (*(v31 + 8))(v8, v29);
    (*(v14 + 8))(v18, v13);
    *&v2[OBJC_IVAR___IMDAskToParser_payload] = v32;
    ObjectType = v30;
  }

  v33.receiver = v2;
  v33.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v33, sel_init);
  sub_1B7AEE190(a1, &qword_1EBA51FA0, &qword_1B7D0A6D0);
  return v26;
}

uint64_t sub_1B7C487D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AskToParser.isValid.getter()
{
  v1 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - v3;
  v5 = sub_1B7CFDFF0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C487D8(v0 + OBJC_IVAR___IMDAskToParser_url, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1B7AEE190(v4, &qword_1EBA51FA0, &qword_1B7D0A6D0);
    v10 = 0;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v10 = sub_1B7CFE4E0();
    (*(v6 + 8))(v9, v5);
  }

  return v10 & 1;
}

uint64_t AskToParser.notificationText.getter()
{
  if (!*(v0 + OBJC_IVAR___IMDAskToParser_payload))
  {
    return 0;
  }

  v1 = sub_1B7CFE510();
  v2 = sub_1B7CFE430();

  return v2;
}

id sub_1B7C48DE4(char *a1, uint64_t a2, void (*a3)(void))
{
  if (*&a1[OBJC_IVAR___IMDAskToParser_payload])
  {
    v4 = a1;
    v5 = sub_1B7CFE510();
    a3();

    v6 = sub_1B7CFEA30();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1B7C48E90(uint64_t (*a1)(void))
{
  if (!*(v1 + OBJC_IVAR___IMDAskToParser_payload))
  {
    return 0;
  }

  v3 = sub_1B7CFE510();
  v4 = a1();

  return v4;
}

id AskToParser.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AskToParser.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B7C49054(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B7C490A0(a1, a2);
  sub_1B7C491D0(&unk_1F2FA1600);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1B7C490A0(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B7CD95C0(v5, 0);
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

  result = sub_1B7CFF280();
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
        v10 = sub_1B7CFEBA0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B7CD95C0(v10, 0);
        result = sub_1B7CFF1D0();
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

uint64_t sub_1B7C491D0(uint64_t result)
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

  result = sub_1B7C492BC(result, v12, 1, v3);
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

char *sub_1B7C492BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA52768, &qword_1B7D0CFA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B7C493B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AskToParser()
{
  result = qword_1EBA52750;
  if (!qword_1EBA52750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7C4944C()
{
  v0 = sub_1B7CFE500();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B7C4954C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B7C4954C()
{
  if (!qword_1EBA52760)
  {
    sub_1B7CFDFF0();
    v0 = sub_1B7CFEFF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA52760);
    }
  }
}

uint64_t sub_1B7C495A4()
{
  sub_1B7C107FC(&qword_1EBA52770, &qword_1B7D0CFA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7D0CB70;
  v1 = type metadata accessor for MessageRecord();
  v2 = sub_1B7C49770(&qword_1EDBE5658, type metadata accessor for MessageRecord);
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v3 = type metadata accessor for ChatRecord();
  v4 = sub_1B7C49770(&qword_1EDBE5708, type metadata accessor for ChatRecord);
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = type metadata accessor for ChatLookupRecord();
  v6 = sub_1B7C49770(&qword_1EDBE3F90, type metadata accessor for ChatLookupRecord);
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = type metadata accessor for SyncChatSliceRecord();
  v8 = sub_1B7C49770(&qword_1EDBE3CA0, type metadata accessor for SyncChatSliceRecord);
  *(inited + 80) = v7;
  *(inited + 88) = v8;
  v9 = type metadata accessor for ChatServiceRecord();
  v10 = sub_1B7C49770(&qword_1EDBE3F10, type metadata accessor for ChatServiceRecord);
  *(inited + 96) = v9;
  *(inited + 104) = v10;
  type metadata accessor for SQLDatabaseSchema();
  swift_allocObject();
  result = sub_1B7AE70D4(inited);
  qword_1EDBE79E8 = result;
  return result;
}

uint64_t sub_1B7C49770(unint64_t *a1, void (*a2)(uint64_t))
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

id static IMDLegacyRecordBridge.prewarm()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [ObjCClassFromMetadata messageRecordDescriptor];

  return [ObjCClassFromMetadata chatRecordDescriptor];
}

void sub_1B7C49AEC(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  IMDDropAllTriggers(v9, 1);
  v3 = v9[0];
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  sub_1B7C1542C(a1, v4);
  v6 = *(v5 + 16);
  v7 = v3;
  v6(v4, v5);
  if (!v1)
  {
    v9[0] = v7;
    IMDCreateTriggers(v9, 1);
  }

  v8 = *MEMORY[0x1E69E9840];
}

IMDLegacyRecordBridge __swiftcall IMDLegacyRecordBridge.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t _sSo21IMDLegacyRecordBridgeC14IMDPersistenceE7migrate11fromVersion5usingS2i_SpySo20CSDBSqliteConnectionVGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLConnectionConfiguration();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v41 - v10;
  v12 = *(v9 + 36);
  v13 = sub_1B7CFE420();
  v14 = *(*(v13 - 8) + 56);
  v47 = v13;
  result = v14(&v11[v12], 1, 1);
  *v11 = 1;
  *(v11 + 1) = 0;
  *(v11 + 8) = 1;
  v16 = *(a2 + 8);
  if (!v16)
  {
    goto LABEL_30;
  }

  sub_1B7AE3EA4(v11, v8);
  v17 = type metadata accessor for SQLConnection(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = (v20 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
  v22 = MEMORY[0x1E69E7CC8];
  *v21 = MEMORY[0x1E69E7CC8];
  v21[1] = v22;
  v21[2] = 32;
  *(v20 + 16) = v16;
  *(v20 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
  v48 = v20;
  result = sub_1B7AE3EA4(v8, v20 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
  if ((v8[2] & 1) == 0)
  {
    v23 = v8[1] * 1000.0;
    if (COERCE__INT64(fabs(v23)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v23 > -2147483650.0)
    {
      if (v23 < 2147483650.0)
      {
        sqlite3_busy_timeout(v16, v23);
        goto LABEL_7;
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

LABEL_7:
  sub_1B7C4BDE4(v8, type metadata accessor for SQLConnectionConfiguration);
  if (qword_1EBA50F70 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v24 = qword_1EBA5DA88;
    v25 = qword_1EBA5DA90;
    v26 = *(qword_1EBA5DA90 + 16);
    if (!v26)
    {
      break;
    }

    v41[1] = qword_1EBA5DA80;
    v42 = v11;

    v27 = 0;
    v28 = (v25 + 40);
    *&v29 = 134217984;
    v44 = v29;
    v30 = a1;
    v43 = a1;
    v45 = v25;
    v46 = v24;
    while (v27 < *(v24 + 16))
    {
      if (v27 >= v26)
      {
        goto LABEL_25;
      }

      v31 = *(v24 + 8 * v27 + 32);
      if (v31 > a1)
      {
        v32 = *(v28 - 1);
        v33 = *v28;
        v34 = qword_1EBA50EB8;
        swift_retain_n();
        if (v34 != -1)
        {
          swift_once();
        }

        sub_1B7AD9040(v47, qword_1EBA5DA20);
        v35 = sub_1B7CFE400();
        v36 = sub_1B7CFEF00();
        if (os_log_type_enabled(v35, v36))
        {
          v11 = swift_slowAlloc();
          *v11 = v44;
          *(v11 + 4) = v31;
          _os_log_impl(&dword_1B7AD5000, v35, v36, "Starting migration step %ld", v11, 0xCu);
          MEMORY[0x1B8CB0E70](v11, -1, -1);
        }

        v49 = v48;
        v32(&v49);
        v37 = sub_1B7CFE400();
        v38 = sub_1B7CFEF00();
        v39 = os_log_type_enabled(v37, v38);
        v40 = v45;
        if (v39)
        {
          v11 = swift_slowAlloc();
          *v11 = v44;
          *(v11 + 4) = v31;
          _os_log_impl(&dword_1B7AD5000, v37, v38, "Completed migration step %ld", v11, 0xCu);
          MEMORY[0x1B8CB0E70](v11, -1, -1);
        }

        v26 = *(v40 + 16);
        v30 = v31;
        a1 = v43;
        v24 = v46;
      }

      ++v27;
      v28 += 2;
      if (v27 >= v26)
      {

        a1 = v30;
        v11 = v42;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_23:

  sub_1B7C4BDE4(v11, type metadata accessor for SQLConnectionConfiguration);

  return a1;
}

uint64_t _sSo21IMDLegacyRecordBridgeC14IMDPersistenceE12createTables5usingSbSpySo20CSDBSqliteConnectionVG_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for SQLConnectionConfiguration();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (&v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v80 - v8;
  v10 = *(v7 + 36);
  v11 = sub_1B7CFE420();
  v12 = *(*(v11 - 8) + 56);
  v85 = v11;
  result = v12(&v9[v10], 1, 1);
  *v9 = 1;
  *(v9 + 1) = 0;
  *(v9 + 8) = 1;
  v14 = *(a1 + 8);
  if (!v14)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  sub_1B7AE3EA4(v9, v6);
  v15 = type metadata accessor for SQLConnection(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = (v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
  v20 = MEMORY[0x1E69E7CC8];
  *v19 = MEMORY[0x1E69E7CC8];
  v19[1] = v20;
  v19[2] = 32;
  v18[2] = v14;
  *(v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
  v21 = &OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration;
  sub_1B7AE3EA4(v6, v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
  if (v6[2])
  {
    goto LABEL_7;
  }

  v22 = v6[1] * 1000.0;
  if (COERCE__INT64(fabs(v22)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v22 <= -2147483650.0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:

LABEL_42:

    __break(1u);
    goto LABEL_43;
  }

  if (v22 >= 2147483650.0)
  {
    goto LABEL_40;
  }

  sqlite3_busy_timeout(v14, v22);
LABEL_7:
  v80 = v9;
  sub_1B7C4BDE4(v6, type metadata accessor for SQLConnectionConfiguration);
  if (qword_1EBA515E0 != -1)
  {
LABEL_37:
    swift_once();
  }

  v24 = qword_1EBA5DB28;
  v83 = *(qword_1EBA5DB28 + 16);
  if (v83)
  {
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v25 = 0;
    v21 = 0;
    v84 = v24 + 32;
    *&v23 = 136315138;
    v82 = v23;
    while (1)
    {
      if (v25 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v86 = *(v84 + 16 * v25);
      sub_1B7AD9040(v85, qword_1EBA5DA20);
      v26 = sub_1B7CFE400();
      v27 = sub_1B7CFEF00();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v81 = 0;
        v30 = v29;
        *&v87 = v29;
        *v28 = v82;
        v31 = (*(*(&v86 + 1) + 16))();
        v33 = v24;
        v34 = v18;
        v35 = sub_1B7AED1B8(v31, v32, &v87);

        *(v28 + 4) = v35;
        v18 = v34;
        v24 = v33;
        _os_log_impl(&dword_1B7AD5000, v26, v27, "Starting create table step for %s", v28, 0xCu);
        sub_1B7AE9168(v30);
        v36 = v30;
        v21 = v81;
        MEMORY[0x1B8CB0E70](v36, -1, -1);
        MEMORY[0x1B8CB0E70](v28, -1, -1);
      }

      if (qword_1EDBE3F50 != -1)
      {
        swift_once();
      }

      v37 = *(qword_1EDBE79E8 + 32);
      v87 = v86;

      sub_1B7C107FC(&qword_1EBA524C0, &qword_1B7D0CAA8);
      v38 = sub_1B7CFEAB0();
      if (!*(v37 + 16))
      {
        goto LABEL_41;
      }

      v40 = sub_1B7AE11D0(v38, v39);
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        goto LABEL_42;
      }

      v43 = *(*(v37 + 56) + 8 * v40);

      v44 = sub_1B7C21090(v43);
      sub_1B7AE3B2C(v44, v45, 1);
      if (v21)
      {
        break;
      }

      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

      v46 = sub_1B7CFE400();
      v47 = sub_1B7CFEF00();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v87 = v49;
        *v48 = v82;
        v50 = (*(*(&v86 + 1) + 16))();
        v52 = sub_1B7AED1B8(v50, v51, &v87);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_1B7AD5000, v46, v47, "Completed create table step for %s", v48, 0xCu);
        sub_1B7AE9168(v49);
        MEMORY[0x1B8CB0E70](v49, -1, -1);
        MEMORY[0x1B8CB0E70](v48, -1, -1);
      }

      if (v83 == ++v25)
      {
        swift_setDeallocating();
        if (*(v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) == 1)
        {
          sqlite3_close_v2(v18[2]);
        }

        sub_1B7C4BDE4(v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration, type metadata accessor for SQLConnectionConfiguration);
        v74 = v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString;
        v75 = *(v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);

        v76 = *(v74 + 1);

        goto LABEL_35;
      }
    }

    v53 = v21;
    v54 = sub_1B7CFE400();
    v55 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v87 = v58;
      *v56 = 136315394;
      v59 = (*(*(&v86 + 1) + 16))();
      v61 = sub_1B7AED1B8(v59, v60, &v87);

      *(v56 + 4) = v61;
      *(v56 + 12) = 2112;
      v62 = v21;
      v63 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 14) = v63;
      *v57 = v63;
      _os_log_impl(&dword_1B7AD5000, v54, v55, "Error during create table step for %s: %@", v56, 0x16u);
      sub_1B7C20434(v57);
      MEMORY[0x1B8CB0E70](v57, -1, -1);
      sub_1B7AE9168(v58);
      MEMORY[0x1B8CB0E70](v58, -1, -1);
      MEMORY[0x1B8CB0E70](v56, -1, -1);
      swift_setDeallocating();
      if (*(v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) == 1)
      {
        sqlite3_close_v2(v18[2]);
      }

      sub_1B7C4BDE4(v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration, type metadata accessor for SQLConnectionConfiguration);
      v64 = v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString;
      v65 = *(v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);

      v66 = *(v64 + 1);

      v67 = *(*v18 + 12);
      v68 = *(*v18 + 26);
      swift_deallocClassInstance();
    }

    else
    {

      swift_setDeallocating();
      if (*(v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) == 1)
      {
        sqlite3_close_v2(v18[2]);
      }

      sub_1B7C4BDE4(v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration, type metadata accessor for SQLConnectionConfiguration);
      v69 = v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString;
      v70 = *(v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);

      v71 = *(v69 + 1);

      v72 = *(*v18 + 12);
      v73 = *(*v18 + 26);
      swift_deallocClassInstance();
    }

    sub_1B7C4BDE4(v80, type metadata accessor for SQLConnectionConfiguration);
    return 0;
  }

  else
  {
    swift_setDeallocating();
    sub_1B7C4BDE4(v18 + *v21, type metadata accessor for SQLConnectionConfiguration);
LABEL_35:
    v77 = v80;
    v78 = *(*v18 + 12);
    v79 = *(*v18 + 26);
    swift_deallocClassInstance();
    sub_1B7C4BDE4(v77, type metadata accessor for SQLConnectionConfiguration);
    return 1;
  }
}

uint64_t _sSo21IMDLegacyRecordBridgeC14IMDPersistenceE20configureNewDatabase5usingSbSpySo20CSDBSqliteConnectionVG_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for SQLConnectionConfiguration();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v24[-v8];
  v10 = *(v7 + 36);
  v11 = sub_1B7CFE420();
  result = (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  *v9 = 1;
  *(v9 + 1) = 0;
  *(v9 + 8) = 1;
  v13 = *(a1 + 8);
  if (!v13)
  {
    goto LABEL_15;
  }

  sub_1B7AE3EA4(v9, v6);
  v14 = type metadata accessor for SQLConnection(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = (v17 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
  v19 = MEMORY[0x1E69E7CC8];
  *v18 = MEMORY[0x1E69E7CC8];
  v18[1] = v19;
  v18[2] = 32;
  *(v17 + 16) = v13;
  *(v17 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
  result = sub_1B7AE3EA4(v6, v17 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
  if ((v6[2] & 1) == 0)
  {
    v20 = v6[1] * 1000.0;
    if (COERCE__INT64(fabs(v20)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v20 > -2147483650.0)
    {
      if (v20 < 2147483650.0)
      {
        sqlite3_busy_timeout(v13, v20);
        goto LABEL_7;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

LABEL_7:
  sub_1B7C4BDE4(v6, type metadata accessor for SQLConnectionConfiguration);
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  sub_1B7AD9040(v11, qword_1EBA5DA20);
  v21 = sub_1B7CFE400();
  v22 = sub_1B7CFEF00();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1B7AD5000, v21, v22, "Configuring new database", v23, 2u);
    MEMORY[0x1B8CB0E70](v23, -1, -1);
  }

  sub_1B7CD2F6C(1, 0x7372655674616863, 0xEB000000006E6F69);
  sub_1B7CD2F6C(1, 0xD000000000000011, 0x80000001B7D53FD0);
  sub_1B7C4BDE4(v9, type metadata accessor for SQLConnectionConfiguration);

  return 1;
}

void sub_1B7C4B0A8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[3];
  v9 = a1[4];
  sub_1B7AE9124(a1, v8);
  if (sub_1B7C49970(v8, v9))
  {
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v10 = sub_1B7CFE420();
    sub_1B7AD9040(v10, qword_1EBA5DA20);

    v11 = sub_1B7CFE400();
    v12 = sub_1B7CFEF00();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1B7AED1B8(a3, a4, &v22);
      _os_log_impl(&dword_1B7AD5000, v11, v12, "Performing out of band migration for %s", v13, 0xCu);
      sub_1B7AE9168(v14);
      MEMORY[0x1B8CB0E70](v14, -1, -1);
      MEMORY[0x1B8CB0E70](v13, -1, -1);
    }

    sub_1B7CA47E0(0, a2, a1);

    oslog = sub_1B7CFE400();
    v19 = sub_1B7CFEF00();

    if (os_log_type_enabled(oslog, v19))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1B7AED1B8(a3, a4, &v22);
      v18 = "Completed out of band migration for %s";
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v15 = sub_1B7CFE420();
    sub_1B7AD9040(v15, qword_1EBA5DA20);

    oslog = sub_1B7CFE400();
    v19 = sub_1B7CFEF00();

    if (os_log_type_enabled(oslog, v19))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1B7AED1B8(a3, a4, &v22);
      v18 = "Out of band migration %s already completed or could not determine state.";
LABEL_13:
      _os_log_impl(&dword_1B7AD5000, oslog, v19, v18, v16, 0xCu);
      sub_1B7AE9168(v17);
      MEMORY[0x1B8CB0E70](v17, -1, -1);
      MEMORY[0x1B8CB0E70](v16, -1, -1);

      return;
    }
  }
}

uint64_t _sSo21IMDLegacyRecordBridgeC14IMDPersistenceE24registerChatTableVersion5usingySpySo20CSDBSqliteConnectionVG_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for SQLConnectionError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = type metadata accessor for SQLConnectionConfiguration();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v53 - v10;
  v12 = *(v9 + 36);
  v13 = sub_1B7CFE420();
  result = (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  *v11 = 1;
  *(v11 + 1) = 0;
  *(v11 + 8) = 1;
  v15 = *(a1 + 8);
  if (v15)
  {
    sub_1B7AE3EA4(v11, v8);
    v16 = type metadata accessor for SQLConnection(0);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    v19 = swift_allocObject();
    v20 = (v19 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
    v21 = MEMORY[0x1E69E7CC8];
    *v20 = MEMORY[0x1E69E7CC8];
    v20[1] = v21;
    v20[2] = 32;
    v19[2] = v15;
    *(v19 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
    sub_1B7AE3EA4(v8, v19 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
    if (v8[2])
    {
LABEL_7:
      sub_1B7C4BDE4(v8, type metadata accessor for SQLConnectionConfiguration);
      v57 = &v58;

      v23 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v25 = v23[2];
      v24 = v23[3];
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1B7AE3A9C((v24 > 1), v25 + 1, 1, v23);
      }

      v55 = MEMORY[0x1E69E6158];
      v56 = &off_1F2FA8B58;
      *&v54 = 0x7372655674616863;
      *(&v54 + 1) = 0xEB000000006E6F69;
      v23[2] = v25 + 1;
      sub_1B7AE910C(&v54, &v23[5 * v25 + 4]);
      sub_1B7AF45D8(0xD000000000000029, 0x80000001B7D51060, v23, 0, &v57);

      v26 = v58 < 1;
      if (qword_1EBA50EB8 != -1)
      {
        swift_once();
      }

      sub_1B7AD9040(v13, qword_1EBA5DA20);
      v27 = sub_1B7CFE400();
      v28 = sub_1B7CFEF00();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 67109120;
        *(v29 + 4) = !v26;
        _os_log_impl(&dword_1B7AD5000, v27, v28, "Chat table was migrated successfully: %{BOOL}d", v29, 8u);
        MEMORY[0x1B8CB0E70](v29, -1, -1);
      }

      v30 = [objc_opt_self() sharedFeatureFlags];
      [v30 _setOneChatForceDisabled_persist_];

      swift_setDeallocating();
      if (*(v19 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) == 1)
      {
        sqlite3_close_v2(v19[2]);
      }

      sub_1B7C4BDE4(v19 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration, type metadata accessor for SQLConnectionConfiguration);
      v31 = v19 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString;
      v32 = *(v19 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);

      v33 = *(v31 + 1);

      v34 = *(*v19 + 12);
      v35 = *(*v19 + 26);
      swift_deallocClassInstance();
      return sub_1B7C4BDE4(v11, type metadata accessor for SQLConnectionConfiguration);
    }

    v22 = v8[1] * 1000.0;
    if (COERCE__INT64(fabs(v22)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v22 > -2147483650.0)
    {
      if (v22 < 2147483650.0)
      {
        sqlite3_busy_timeout(v15, v22);
        goto LABEL_7;
      }

LABEL_26:
      __break(1u);
      swift_once();
      sub_1B7AD9040(v13, qword_1EBA5DA20);
      v36 = v15;
      v37 = sub_1B7CFE400();
      v38 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v15;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_1B7AD5000, v37, v38, "Could not determine if chat migration completed successfully: %@", v39, 0xCu);
        sub_1B7C20434(v40);
        MEMORY[0x1B8CB0E70](v40, -1, -1);
        MEMORY[0x1B8CB0E70](v39, -1, -1);

        swift_setDeallocating();
        if (*(v19 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) == 1)
        {
          sqlite3_close_v2(v19[2]);
        }

        sub_1B7C4BDE4(v19 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration, type metadata accessor for SQLConnectionConfiguration);
        v43 = v19 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString;
        v44 = *(v19 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);

        v45 = *(v43 + 1);

        v46 = *(*v19 + 12);
        v47 = *(*v19 + 26);
        swift_deallocClassInstance();
      }

      else
      {

        swift_setDeallocating();
        if (*(v19 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) == 1)
        {
          sqlite3_close_v2(v19[2]);
        }

        sub_1B7C4BDE4(v19 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration, type metadata accessor for SQLConnectionConfiguration);
        v48 = v19 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString;
        v49 = *(v19 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);

        v50 = *(v48 + 1);

        v51 = *(*v19 + 12);
        v52 = *(*v19 + 26);
        swift_deallocClassInstance();
      }

      return sub_1B7C4BDE4(v11, type metadata accessor for SQLConnectionConfiguration);
    }

    __break(1u);
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for IMDLegacyRecordBridge()
{
  result = qword_1EBA52778;
  if (!qword_1EBA52778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA52778);
  }

  return result;
}

uint64_t sub_1B7C4BDE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7C4BE44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7C4BE8C()
{
  sub_1B7CFF0B0();

  v0 = sub_1B7CFEAB0();
  v2 = v1;
  sub_1B7C4BFF0();
  v3 = (sub_1B7CFF060() + 16);
  v4 = *v3;
  if (*v3)
  {

    if (v4 <= *v3)
    {
      v5 = &v3[2 * v4];
      v6 = *v5;
      v7 = v5[1];

      return v6;
    }

    __break(1u);
  }

  sub_1B7CFF210();

  MEMORY[0x1B8CADCA0](v0, v2);
  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

unint64_t sub_1B7C4BFF0()
{
  result = qword_1EDBE3028[0];
  if (!qword_1EDBE3028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBE3028);
  }

  return result;
}

uint64_t sub_1B7C4C044()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EBA52780);
  sub_1B7AD9040(v0, qword_1EBA52780);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

uint64_t sub_1B7C4C0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v13 = *(MEMORY[0x1E69A6748] + 4);
  v14 = swift_task_alloc();
  *(v8 + 24) = v14;
  *v14 = v8;
  v14[1] = sub_1B7C4C1C4;

  return MEMORY[0x1EEE10AE8](0xD000000000000022, 0x80000001B7D54320, 0xD000000000000013, 0x80000001B7D54350, a5, a6, a7, a8);
}

uint64_t sub_1B7C4C1C4()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {

    v3 = sub_1B7C4D0B0;
  }

  else
  {
    v3 = sub_1B7C4C2E0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1B7C4C33C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v101 = a3;
  v100 = a2;
  v6 = sub_1B7C107FC(&qword_1EBA52628, &qword_1B7D0CC38);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v89 - v8;
  v10 = sub_1B7CFE290();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v108 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1B7CFE2D0();
  v107 = *(v109 - 8);
  v14 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v106 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1B7CFE2A0();
  v104 = *(v113 - 8);
  v16 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v102 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B7CFE280();
  v111 = *(v18 - 8);
  v112 = v18;
  v19 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v110 = v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B7CFE2E0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v105 = v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v114 = v89 - v26;
  v27 = [objc_opt_self() sharedInstance];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 isInternalInstall];

    if (v29)
    {
      v30 = [objc_opt_self() messagesDomain];
      if (!v30 || (v31 = v30, v32 = sub_1B7CFEA30(), v33 = [v31 BOOLForKey_], v31, v32, (v33 & 1) == 0))
      {
        if (qword_1EBA515C8 != -1)
        {
          swift_once();
        }

        v95 = v11;
        v97 = v22;
        v98 = v21;
        v34 = sub_1B7CFE420();
        sub_1B7AD9040(v34, qword_1EBA52780);
        v35 = a1;
        v36 = sub_1B7CFE400();
        v37 = sub_1B7CFEF00();

        v38 = os_log_type_enabled(v36, v37);
        v99 = v9;
        v96 = v10;
        LODWORD(v94) = a4;
        if (v38)
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v116 = v40;
          *v39 = 136315138;
          swift_getErrorValue();
          v41 = sub_1B7CFF750();
          v43 = sub_1B7AED1B8(v41, v42, &v116);

          *(v39 + 4) = v43;
          _os_log_impl(&dword_1B7AD5000, v36, v37, "Presenting migration error: %s", v39, 0xCu);
          sub_1B7AE9168(v40);
          MEMORY[0x1B8CB0E70](v40, -1, -1);
          MEMORY[0x1B8CB0E70](v39, -1, -1);
        }

        v44 = sub_1B7CFDEB0();
        v116 = 0;
        v117 = 0xE000000000000000;
        sub_1B7CFF210();

        v45 = (v94 & 1) == 0;
        if (v94)
        {
          v46 = 0xD00000000000009CLL;
        }

        else
        {
          v46 = 0xD000000000000062;
        }

        v94 = v46;
        if (v45)
        {
          v47 = "ase Migration Failed";
        }

        else
        {
          v47 = " Migration Failed";
        }

        v48 = 0xD000000000000021;
        if (v45)
        {
          v48 = 0xD000000000000024;
        }

        v92 = v48;
        if (v45)
        {
          v49 = "ence23MigrationAlertPresenter";
        }

        else
        {
          v49 = " data has been affected.";
        }

        v91 = v49 | 0x8000000000000000;
        v93 = v47 | 0x8000000000000000;
        v116 = 0x5D5254545BLL;
        v117 = 0xE500000000000000;
        if (v45)
        {
          v50 = 0;
        }

        else
        {
          v50 = 0x5D6C616972545BLL;
        }

        if (v45)
        {
          v51 = 0xE000000000000000;
        }

        else
        {
          v51 = 0xE700000000000000;
        }

        if (v45)
        {
          v52 = 0;
        }

        else
        {
          v52 = 0xD000000000000038;
        }

        if (v45)
        {
          v53 = 0xE000000000000000;
        }

        else
        {
          v53 = 0x80000001B7D541F0;
        }

        MEMORY[0x1B8CADCA0](v50, v51);

        MEMORY[0x1B8CADCA0](0xD00000000000001DLL, 0x80000001B7D54180);
        v90 = v44;
        v54 = [v44 domain];
        v55 = sub_1B7CFEA60();
        v57 = v56;

        MEMORY[0x1B8CADCA0](v55, v57);

        MEMORY[0x1B8CADCA0](45, 0xE100000000000000);
        v115 = [v44 code];
        v58 = sub_1B7CFF570();
        MEMORY[0x1B8CADCA0](v58);

        MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
        v89[2] = v116;
        v89[1] = v117;
        v116 = 0;
        v117 = 0xE000000000000000;
        sub_1B7CFF210();
        MEMORY[0x1B8CADCA0](0xD00000000000002BLL, 0x80000001B7D541A0);
        MEMORY[0x1B8CADCA0](v52, v53);

        MEMORY[0x1B8CADCA0](0x3A746E6576450A0ALL, 0xE900000000000020);
        MEMORY[0x1B8CADCA0](v100, v101);
        MEMORY[0x1B8CADCA0](0xD000000000000010, 0x80000001B7D541D0);
        swift_getErrorValue();
        v59 = sub_1B7CFF750();
        MEMORY[0x1B8CADCA0](v59);

        MEMORY[0x1B8CADCA0](0x726F7272450A0A22, 0xEA00000000000A3ALL);
        v115 = a1;
        v60 = a1;
        sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
        v61 = sub_1B7CFEAB0();
        MEMORY[0x1B8CADCA0](v61);

        v101 = v116;
        (*(v111 + 104))(v110, *MEMORY[0x1E69A6730], v112);
        v62 = v104;
        v63 = v102;
        (*(v104 + 104))(v102, *MEMORY[0x1E69A6740], v113);
        sub_1B7C107FC(&qword_1EBA52798, &qword_1B7D0CFC8);
        v64 = sub_1B7CFE270();
        v65 = *(v64 - 8);
        v66 = *(v65 + 72);
        v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_1B7D0A6F0;
        v69 = v68 + v67;
        v70 = *(v65 + 104);
        v70(v69, *MEMORY[0x1E69A6728], v64);
        v70(v69 + v66, *MEMORY[0x1E69A6720], v64);
        v71 = v106;
        sub_1B7CFE2C0();
        v72 = v95;
        v73 = v108;
        v74 = v96;
        (*(v95 + 104))(v108, *MEMORY[0x1E69A6738], v96);
        v75 = v110;
        sub_1B7CFE260();

        (*(v72 + 8))(v73, v74);
        (*(v107 + 8))(v71, v109);
        (*(v62 + 8))(v63, v113);
        (*(v111 + 8))(v75, v112);
        v76 = sub_1B7CFEDD0();
        v77 = v99;
        (*(*(v76 - 8) + 56))(v99, 1, 1, v76);
        v78 = v97;
        v79 = v105;
        v80 = v114;
        v81 = v98;
        (*(v97 + 16))(v105, v114, v98);
        v82 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v83 = (v103 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
        v84 = swift_allocObject();
        *(v84 + 16) = 0;
        *(v84 + 24) = 0;
        (*(v78 + 32))(v84 + v82, v79, v81);
        v85 = (v84 + v83);
        v86 = v91;
        *v85 = v92;
        v85[1] = v86;
        v87 = (v84 + ((v83 + 23) & 0xFFFFFFFFFFFFFFF8));
        v88 = v93;
        *v87 = v94;
        v87[1] = v88;
        sub_1B7C977FC(0, 0, v77, &unk_1B7D0CFD8, v84);

        (*(v78 + 8))(v80, v81);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B7C4CF5C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B7CFE2E0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1B7C40EE4;

  return sub_1B7C4C0B8(a1, v9, v10, v1 + v6, v12, v13, v14, v15);
}