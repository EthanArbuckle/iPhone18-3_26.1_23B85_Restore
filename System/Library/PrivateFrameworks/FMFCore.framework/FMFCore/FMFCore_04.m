uint64_t sub_24A3CDAB0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24A3A35A8;

  return SPSecureLocationsManager.currentStewieState()(a1);
}

uint64_t StewieStateProviderImpl.currentStewieState()(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_24A4AAD70();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_24A4AADE0() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3CDC38, 0, 0);
}

uint64_t sub_24A3CDC38()
{
  v1 = v0[6];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D09048], v0[3]);
  sub_24A4AADF0();
  v2 = sub_24A4AB3B0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = *(MEMORY[0x277D09498] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_24A3CDD1C;
  v7 = v0[6];

  return MEMORY[0x28215FBB8](v7);
}

uint64_t sub_24A3CDD1C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *v1;
  v3[8] = a1;

  v6 = *(MEMORY[0x277D093A8] + 4);
  v7 = swift_task_alloc();
  v3[9] = v7;
  *v7 = v5;
  v7[1] = sub_24A3CDE6C;
  v8 = v3[2];

  return MEMORY[0x28215FAC8](v8);
}

uint64_t sub_24A3CDE6C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A3CDFC0, 0, 0);
  }

  else
  {
    v4 = v3[8];
    v5 = v3[5];
    v6 = v3[6];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_24A3CDFC0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_24A3CE040(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_24A4AAD70();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_24A4AADE0() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3CE12C, 0, 0);
}

uint64_t sub_24A3CE12C()
{
  v1 = v0[6];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D09048], v0[3]);
  sub_24A4AADF0();
  v2 = sub_24A4AB3B0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = *(MEMORY[0x277D09498] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_24A3CE210;
  v7 = v0[6];

  return MEMORY[0x28215FBB8](v7);
}

uint64_t sub_24A3CE210(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *v1;
  v3[8] = a1;

  v6 = *(MEMORY[0x277D093A8] + 4);
  v7 = swift_task_alloc();
  v3[9] = v7;
  *v7 = v5;
  v7[1] = sub_24A3CE360;
  v8 = v3[2];

  return MEMORY[0x28215FAC8](v8);
}

uint64_t sub_24A3CE360()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A3CFD30, 0, 0);
  }

  else
  {
    v4 = v3[8];
    v5 = v3[5];
    v6 = v3[6];

    v7 = v3[1];

    return v7();
  }
}

void sub_24A3CE4B4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_24A3CE540(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_24A4ABB70();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_24A39997C(a3, v15);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  sub_24A37B3F8(v15, (v11 + 6));
  v12 = a1;

  sub_24A432370(0, 0, v9, &unk_24A4B4850, v11);
}

uint64_t sub_24A3CE674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a4;
  v6[10] = a6;
  v7 = sub_24A4AAE50();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_24A3CE750, 0, 0);
}

uint64_t sub_24A3CE750()
{
  v1 = v0[10];
  v2 = v1[3];
  v3 = v1[4];
  sub_24A37EACC(v1, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_24A3CE87C;
  v7 = v0[14];

  return v9(v7, v2, v3);
}

uint64_t sub_24A3CE87C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_24A3CEA50;
  }

  else
  {
    v3 = sub_24A3CE990;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A3CE990()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = v0[9];
  swift_beginAccess();
  (*(v4 + 40))(v2, v1, v5);
  dispatch_group_leave(v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24A3CEA50()
{
  v23 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = v1;
  v4 = sub_24A4AB600();
  v5 = sub_24A4ABCC0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    v0[8] = v7;
    v10 = v7;
    sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
    v11 = sub_24A4AB870();
    v13 = sub_24A37BD58(v11, v12, &v22);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24A376000, v4, v5, "FMNetworkUtil: failed to get current stewie state: %{public}s", v8, 0xCu);
    sub_24A37EEE0(v9);
    MEMORY[0x24C219130](v9, -1, -1);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[12] + 104))(v0[13], *MEMORY[0x277D09140], v0[11]);
  v15 = v0[14];
  v14 = v0[15];
  v17 = v0[12];
  v16 = v0[13];
  v18 = v0[11];
  v19 = v0[9];
  swift_beginAccess();
  (*(v17 + 40))(v14, v16, v18);
  dispatch_group_leave(v19);

  v20 = v0[1];

  return v20();
}

uint64_t dispatch thunk of StewieStateProvider.currentStewieState()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24A3A35A8;

  return v11(a1, a2, a3);
}

uint64_t sub_24A3CEE58()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBECE8];
  v1 = sub_24A4AB820();
  sub_24A3785D4();
  v2 = sub_24A4ABD60();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A3CE4B4;
  aBlock[3] = &unk_285D85650;
  v3 = _Block_copy(aBlock);
  v4 = _CTServerConnectionCreateOnTargetQueue();
  _Block_release(v3);

  if (v4)
  {
    v5 = sub_24A4AB820();
    _CTServerConnectionCopyCellularUsagePolicy();

    _CTServerConnectionGetCellularDataIsEnabled();
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v6 = sub_24A4AB630();
    sub_24A378E18(v6, qword_27EF4E260);
    v7 = sub_24A4AB600();
    v8 = sub_24A4ABCE0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      swift_beginAccess();
      *(v9 + 4) = 0;
      _os_log_impl(&dword_24A376000, v7, v8, "FMNetworkUtil: Global cellular enabled? %{BOOL}d", v9, 8u);
      MEMORY[0x24C219130](v9, -1, -1);
    }
  }

  result = 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24A3CF238(uint64_t a1)
{
  v73 = a1;
  v1 = sub_24A4AAE50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = v67 - v7;
  v8 = sub_24A4AB700();
  isa = v8[-1].isa;
  v80 = v8;
  v9 = *(isa + 8);
  v10 = MEMORY[0x28223BE20](v8);
  v77 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = v67 - v12;
  v13 = sub_24A4AB690();
  v76 = *(v13 - 8);
  v14 = *(v76 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A4AB6E0();
  v74 = *(v17 - 8);
  v75 = v17;
  v18 = *(v74 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A4AB6A0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24A4AA700();
  v83 = v26;
  v84 = sub_24A38D2E4(&qword_27EF40910, MEMORY[0x277D08A28]);
  v27 = sub_24A38D3BC(aBlock);
  (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D089E0], v26);
  LOBYTE(v26) = sub_24A4AA6C0();
  sub_24A37EEE0(aBlock);
  if ((v26 & 1) == 0)
  {
LABEL_8:
    v48 = 0;
    return v48 & 1;
  }

  v69 = v6;
  v28 = swift_allocBox();
  v30 = v29;
  v31 = *MEMORY[0x277D09138];
  v32 = *(v2 + 104);
  v70 = v30;
  v67[1] = v2 + 104;
  v67[0] = v32;
  v32();
  v33 = dispatch_group_create();
  v68 = v1;
  v34 = v33;
  dispatch_group_enter(v33);
  sub_24A3785D4();
  (*(v22 + 104))(v25, *MEMORY[0x277D851C8], v21);
  v35 = sub_24A4ABDA0();
  v71 = v2;
  v36 = v35;
  (*(v22 + 8))(v25, v21);
  sub_24A39997C(v73, v86);
  v37 = swift_allocObject();
  *(v37 + 16) = v34;
  *(v37 + 24) = v28;
  sub_24A37B3F8(v86, v37 + 32);
  v84 = sub_24A3CFBF4;
  v85 = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  v83 = &unk_285D85600;
  v38 = _Block_copy(aBlock);
  v39 = v34;
  v73 = v28;

  sub_24A4AB6B0();
  v81 = MEMORY[0x277D84F90];
  sub_24A38D2E4(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3CFC00();
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v20, v16, v38);
  _Block_release(v38);

  (*(v76 + 8))(v16, v13);
  (*(v74 + 8))(v20, v75);

  v40 = v77;
  sub_24A4AB6F0();
  v41 = v78;
  sub_24A4AB720();
  v42 = v80;
  v43 = *(isa + 1);
  v43(v40, v80);
  sub_24A4ABCF0();
  v43(v41, v42);
  if (sub_24A4AB680())
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v44 = sub_24A4AB630();
    sub_24A378E18(v44, qword_27EF4E260);
    v45 = sub_24A4AB600();
    v46 = sub_24A4ABCE0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_24A376000, v45, v46, "FMNetworkUtil: Stewie state is unavailable (timed out after 60 secs)", v47, 2u);
      MEMORY[0x24C219130](v47, -1, -1);
    }

    goto LABEL_8;
  }

  v80 = v39;
  v49 = [objc_allocWithZone(MEMORY[0x277D07B30]) init];
  v50 = [v49 isNetworkUp];

  v51 = v70;
  swift_beginAccess();
  v52 = v71;
  v53 = *(v71 + 16);
  v54 = v72;
  v55 = v68;
  v53(v72, v51, v68);
  v56 = v69;
  (v67[0])(v69, *MEMORY[0x277D09140], v55);
  sub_24A38D2E4(&qword_27EF3F0C0, MEMORY[0x277D09148]);
  LOBYTE(v51) = sub_24A4AB810();
  v57 = *(v52 + 8);
  v57(v56, v55);
  v58 = v55;
  v71 = v52 + 8;
  v57(v54, v55);
  v59 = v51 | v50;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v48 = v59 ^ 1;
  v60 = sub_24A4AB630();
  sub_24A378E18(v60, qword_27EF4E260);

  v61 = sub_24A4AB600();
  v62 = sub_24A4ABCE0();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 134218240;
    v64 = v72;
    v53(v72, v70, v58);
    v65 = sub_24A4AAE40();
    v57(v64, v58);
    *(v63 + 4) = v65;

    *(v63 + 12) = 1024;
    *(v63 + 14) = v48 & 1;
    _os_log_impl(&dword_24A376000, v61, v62, "FMNetworkUtil: Stewie state is %ld (available=%{BOOL}d)", v63, 0x12u);
    MEMORY[0x24C219130](v63, -1, -1);
  }

  else
  {
  }

  return v48 & 1;
}

unint64_t sub_24A3CFC00()
{
  result = qword_27EF408F0;
  if (!qword_27EF408F0)
  {
    sub_24A3CBC9C(&unk_27EF40310, &unk_24A4B4F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF408F0);
  }

  return result;
}

uint64_t sub_24A3CFC64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A3A35A8;

  return sub_24A3CE674(a1, v4, v5, v6, v7, (v1 + 6));
}

void sub_24A3CFD28(unint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_24A3CD7BC(a1, a2);
}

uint64_t sub_24A3CFD3C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A3B1F3C(*a1);
  v5 = v4;
  if (v3 == sub_24A3B1F3C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A3CFDC4()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A3B1F3C(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3CFE28()
{
  sub_24A3B1F3C(*v0);
  sub_24A4AB8F0();
}

uint64_t sub_24A3CFE7C()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A3B1F3C(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3CFEDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A3D0370();
  *a2 = result;
  return result;
}

unint64_t sub_24A3CFF0C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A3B1F3C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A3CFF38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A3D0370();
  *a1 = result;
  return result;
}

uint64_t sub_24A3CFF6C(uint64_t a1)
{
  v2 = sub_24A3B16E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A3CFFA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labels);

  v2 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labelledLocations);

  v3 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_devices);

  v4 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences + 24);
  sub_24A37F110(*(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences + 8), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences + 16));
  v5 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 8);
  v6 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 16);
  v7 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 24);
  v8 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 32);
  v9 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 40);
  v10 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 48);
  v11 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 56);
  sub_24A3B2D38(*(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo));
  v12 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locations);

  v13 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locatesInProgress);

  v14 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_following);

  v15 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_followers);

  v16 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowing);

  v17 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowers);

  v18 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_pendingOffers);

  v19 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnMeByMe);

  v20 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnMeByFriends);

  v21 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnFriendsByMe);

  v22 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnFriendsByFriends);
}

uint64_t sub_24A3D00E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_24A3D02B0(v0 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse);
  v3 = *(v0 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_alert);

  v4 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labels);

  v5 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labelledLocations);

  v6 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_devices);

  v7 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences + 24);
  sub_24A37F110(*(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences + 8), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences + 16));
  v8 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 8);
  v9 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 16);
  v10 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 24);
  v11 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 32);
  v12 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 40);
  v13 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 48);
  v14 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 56);
  sub_24A3B2D38(*(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo));
  v15 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locations);

  v16 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locatesInProgress);

  v17 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_following);

  v18 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_followers);

  v19 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowing);

  v20 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowers);

  v21 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_pendingOffers);

  v22 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnMeByMe);

  v23 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnMeByFriends);

  v24 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnFriendsByMe);

  v25 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnFriendsByFriends);

  return v0;
}

uint64_t sub_24A3D0250()
{
  sub_24A3D00E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A3D02B0(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F1C8, &unk_24A4B7C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A3D031C()
{
  result = qword_27EF3F1D0;
  if (!qword_27EF3F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F1D0);
  }

  return result;
}

uint64_t sub_24A3D0370()
{
  v0 = sub_24A4AC290();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A3D03C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_24A3D0410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A3D0460(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4C676E69646E6570;
  v4 = 0xEF676E697461636FLL;
  if (v2 != 1)
  {
    v3 = 0x6F4C646573756170;
    v4 = 0xEE00676E69746163;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x4C676E69646E6570;
  v8 = 0xEF676E697461636FLL;
  if (*a2 != 1)
  {
    v7 = 0x6F4C646573756170;
    v8 = 0xEE00676E69746163;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A4AC270();
  }

  return v11 & 1;
}

uint64_t sub_24A3D058C()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3D0640()
{
  *v0;
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A3D06E0()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3D0790@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A3D0F58();
  *a2 = result;
  return result;
}

void sub_24A3D07C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEF676E697461636FLL;
  v5 = 0x4C676E69646E6570;
  if (v2 != 1)
  {
    v5 = 0x6F4C646573756170;
    v4 = 0xEE00676E69746163;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24A3D0830(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x737574617473;
  }

  else
  {
    v4 = 25705;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x737574617473;
  }

  else
  {
    v6 = 25705;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A4AC270();
  }

  return v9 & 1;
}

uint64_t sub_24A3D08C8()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3D093C()
{
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A3D099C()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3D0A0C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A4AC0C0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_24A3D0A6C(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x737574617473;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A3D0A9C@<X0>(char *a1@<X8>)
{
  v2 = sub_24A4AC0C0();

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

uint64_t sub_24A3D0B0C(uint64_t a1)
{
  v2 = sub_24A3D11B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A3D0B48(uint64_t a1)
{
  v2 = sub_24A3D11B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A3D0B84(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = sub_24A3C9CEC(&qword_27EF3F1F8, &qword_24A4B4BC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3D11B8();
  sub_24A4AC3D0();
  v16 = 0;
  sub_24A4AC1B0();
  if (v4)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v15 = 1;
  sub_24A4AC1B0();
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_24A3D0D84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24A3D0FA4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_24A3D0DF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a1 == a4 && a2 == a5 || (v8 = 0, (sub_24A4AC270() & 1) != 0))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v9 = 0x4C676E69646E6570;
      }

      else
      {
        v9 = 0x6F4C646573756170;
      }

      if (a3 == 1)
      {
        v10 = 0xEF676E697461636FLL;
      }

      else
      {
        v10 = 0xEE00676E69746163;
      }

      v11 = a6;
      if (a6)
      {
LABEL_12:
        if (v11 == 1)
        {
          v12 = 0x4C676E69646E6570;
        }

        else
        {
          v12 = 0x6F4C646573756170;
        }

        if (v11 == 1)
        {
          v13 = 0xEF676E697461636FLL;
        }

        else
        {
          v13 = 0xEE00676E69746163;
        }

        if (v9 != v12)
        {
          goto LABEL_24;
        }

LABEL_22:
        if (v10 == v13)
        {
          v8 = 1;
LABEL_25:

          return v8 & 1;
        }

LABEL_24:
        v8 = sub_24A4AC270();
        goto LABEL_25;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      v9 = 1701736302;
      v11 = a6;
      if (a6)
      {
        goto LABEL_12;
      }
    }

    v13 = 0xE400000000000000;
    if (v9 != 1701736302)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  return v8 & 1;
}

uint64_t sub_24A3D0F58()
{
  v0 = sub_24A4AC0C0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A3D0FA4(uint64_t *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3F1E8, &qword_24A4B4BB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3D11B8();
  sub_24A4AC3C0();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_24A4AC120();
    v11 = 1;
    sub_24A4AC120();
    sub_24A4AC0C0();

    (*(v4 + 8))(v7, v3);
  }

  sub_24A37EEE0(a1);
  return v8;
}

unint64_t sub_24A3D11B8()
{
  result = qword_27EF3F1F0;
  if (!qword_27EF3F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F1F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFLocationAlertAcceptanceStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_24A3D12C0()
{
  result = qword_27EF3F200;
  if (!qword_27EF3F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F200);
  }

  return result;
}

unint64_t sub_24A3D1318()
{
  result = qword_27EF3F208;
  if (!qword_27EF3F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F208);
  }

  return result;
}

unint64_t sub_24A3D1370()
{
  result = qword_27EF3F210;
  if (!qword_27EF3F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F210);
  }

  return result;
}

unint64_t sub_24A3D13C8()
{
  result = qword_27EF3F218;
  if (!qword_27EF3F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F218);
  }

  return result;
}

void sub_24A3D1444()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  oslog = sub_24A4AB600();
  v3 = sub_24A4ABCE0();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    if (*(v1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_isRefreshing))
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (*(v1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_isRefreshing))
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v8 = sub_24A37BD58(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_24A376000, oslog, v3, "FMFRefreshController: auto refreshing set to: %s", v4, 0xCu);
    sub_24A37EEE0(v5);
    MEMORY[0x24C219130](v5, -1, -1);
    MEMORY[0x24C219130](v4, -1, -1);
  }
}

char *sub_24A3D15D4()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 2);
    v8 = *(v1 + 3);

    v9 = sub_24A37E99C(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C217CD0](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A37BD58(v16, v18, &v28);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFRefreshController<%s>.deinit", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v20 = *(v1 + 3);

  v21 = *(v1 + 4);

  sub_24A3C8470((v1 + 40));
  sub_24A37EF2C(&v1[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_selectedFriend], &qword_27EF3F2D0, &qword_24A4B4F50);
  sub_24A37EEE0(&v1[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController]);

  swift_weakDestroy();
  v22 = *&v1[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_tapContexts];

  v23 = *&v1[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_liveSessionStatistics];

  v24 = *&v1[OBJC_IVAR____TtC7FMFCore20FMFRefreshController_legacyFallbackData];

  v25 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_lastRefreshTime;
  v26 = sub_24A4AAAD0();
  (*(*(v26 - 8) + 8))(&v1[v25], v26);

  return v1;
}

uint64_t sub_24A3D1888()
{
  sub_24A3D15D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A3D18E8()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFRefreshController: Start refreshing.", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_24A3D5B44;
  *(v7 + 24) = v1;
  v10[4] = sub_24A37CE34;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24A37CDDC;
  v10[3] = &unk_285D85BB8;
  v8 = _Block_copy(v10);

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A3D1ADC(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_isRefreshing) = 1;
  sub_24A3D1444();
  v2 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController + 24);
  v3 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController + 32);
  sub_24A37EACC((a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController), v2);
  (*(v3 + 56))(v2, v3);
  v4 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_apsConnectionHandler);
  sub_24A3A8C1C();
  return sub_24A3AE1EC(0.0);
}

uint64_t sub_24A3D1B70()
{
  v1 = v0;
  v2 = sub_24A4AB690();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A4AB6E0();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A4AB630();
  sub_24A378E18(v10, qword_27EF4E260);
  v11 = sub_24A4AB600();
  v12 = sub_24A4ABCE0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24A376000, v11, v12, "FMFRefreshController: Stop refreshing.", v13, 2u);
    MEMORY[0x24C219130](v13, -1, -1);
  }

  v14 = *(v1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
  aBlock[4] = sub_24A3D5B3C;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D85B68;
  v15 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v20 = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v9, v5, v15);
  _Block_release(v15);
  (*(v19 + 8))(v5, v2);
  (*(v6 + 8))(v9, v18);
}

id sub_24A3D1ED0(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_isRefreshing) = 0;
  sub_24A3D1444();
  v2 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_apsConnectionHandler);
  sub_24A4565D4();
  v3 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshTimer);

  return [v3 invalidate];
}

uint64_t sub_24A3D1F38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24A4AB690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A4AB6E0();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_24A3D5B30;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D85B40;
  v16 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v20 = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

void sub_24A3D2210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A4AB710();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A4AB630();
  sub_24A378E18(v11, qword_27EF4E260);
  v12 = sub_24A4AB600();
  v13 = sub_24A4ABCE0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_24A37BD58(0xD000000000000014, 0x800000024A4AF5D0, v20);
    _os_log_impl(&dword_24A376000, v12, v13, "FMFRefreshController: refreshTimerFired from %s", v14, 0xCu);
    sub_24A37EEE0(v15);
    MEMORY[0x24C219130](v15, -1, -1);
    MEMORY[0x24C219130](v14, -1, -1);
  }

  v16 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
  *v10 = v16;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v17 = v16;
  LOBYTE(v16) = sub_24A4AB730();
  v18 = (*(v7 + 8))(v10, v6);
  if (v16)
  {
    v19 = MEMORY[0x24C2189A0](v18);
    sub_24A3C1548(a1, a2, a3);
    objc_autoreleasePoolPop(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A3D2470()
{
  v1 = sub_24A4AB690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A4AB6E0();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
  aBlock[4] = sub_24A3C1338;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D85A00;
  v10 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v14 = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

void sub_24A3D2718()
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v0 = sub_24A4AB630();
  sub_24A378E18(v0, qword_27EF4E260);
  oslog = sub_24A4AB600();
  v1 = sub_24A4ABCE0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_24A376000, oslog, v1, "FMFRefreshController: refresh request completed after timer", v2, 2u);
    MEMORY[0x24C219130](v2, -1, -1);
  }
}

uint64_t sub_24A3D283C(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = sub_24A4AB690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A4AB6E0();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || !a1)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v24 = sub_24A4AB630();
    sub_24A378E18(v24, qword_27EF4E260);
    v25 = a2;
    v26 = sub_24A4AB600();
    v27 = sub_24A4ABCE0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136315138;
      v38 = a2;
      v30 = a2;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v31 = sub_24A4AB870();
      v33 = sub_24A37BD58(v31, v32, aBlock);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_24A376000, v26, v27, "FMFRefreshController: refreshClientRequest completed with error: %s", v28, 0xCu);
      sub_24A37EEE0(v29);
      MEMORY[0x24C219130](v29, -1, -1);
      MEMORY[0x24C219130](v28, -1, -1);
    }

    return a3(0);
  }

  else
  {
    v34 = *(a5 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
    v35 = v18;
    v36 = v17;
    v21 = swift_allocObject();
    v21[2] = a5;
    v21[3] = a1;
    v21[4] = a3;
    v21[5] = a4;
    aBlock[4] = sub_24A3D5838;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D85A78;
    v22 = _Block_copy(aBlock);
    swift_retain_n();

    sub_24A4AB6B0();
    v38 = MEMORY[0x277D84F90];
    sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v20, v14, v22);
    _Block_release(v22);

    (*(v11 + 8))(v14, v10);
    (*(v35 + 8))(v20, v36);
  }
}

uint64_t sub_24A3D2C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_24A4AAAD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_firstRefreshCompleted;
  if ((*(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_firstRefreshCompleted) & 1) == 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_24A43DFE0();
      swift_unknownObjectRelease();
    }

    *(a1 + v11) = 1;
  }

  sub_24A3BB91C(a2);
  sub_24A4AAAC0();
  v12 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_lastRefreshTime;
  swift_beginAccess();
  (*(v7 + 40))(a1 + v12, v10, v6);
  swift_endAccess();
  v13 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_tapContexts;
  swift_beginAccess();
  v14 = *(a1 + v13);
  v15 = MEMORY[0x277D84F90];
  *(a1 + v13) = MEMORY[0x277D84F90];

  v16 = sub_24A3A424C(v15);
  v17 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_liveSessionStatistics;
  swift_beginAccess();
  v18 = *(a1 + v17);
  *(a1 + v17) = v16;

  v19 = sub_24A3A424C(v15);
  v20 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_legacyFallbackData;
  swift_beginAccess();
  v21 = *(a1 + v20);
  *(a1 + v20) = v19;

  sub_24A3AE1EC(*(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_callbackInterval));
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v22 = sub_24A4AB630();
  sub_24A378E18(v22, qword_27EF4E260);
  v23 = sub_24A4AB600();
  v24 = sub_24A4ABCB0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_24A376000, v23, v24, "FMFRefreshController: refreshClientRequest completed", v25, 2u);
    MEMORY[0x24C219130](v25, -1, -1);
  }

  return a3(1);
}

uint64_t sub_24A3D2F50(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24A4AB690();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A4AB6E0();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v4 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  aBlock[4] = sub_24A3D581C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D859D8;
  v18 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v22 = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v16, v12, v18);
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);
}

void sub_24A3D3230(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_liveSessionStatistics;
  swift_beginAccess();
  v9 = *(a1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_24A430334(a4, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + v8) = v16;
  swift_endAccess();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A4AB630();
  sub_24A378E18(v11, qword_27EF4E260);

  v12 = sub_24A4AB600();
  v13 = sub_24A4ABCE0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_24A37BD58(a2, a3, &v17);
    *(v14 + 12) = 1024;
    *(v14 + 14) = a4 & 1;
    _os_log_impl(&dword_24A376000, v12, v13, "FMFRefreshController: appendLiveSessionInformation, friendID: %s, successfulLive: %{BOOL}d", v14, 0x12u);
    sub_24A37EEE0(v15);
    MEMORY[0x24C219130](v15, -1, -1);
    MEMORY[0x24C219130](v14, -1, -1);
  }
}

uint64_t sub_24A3D33F4(uint64_t a1, char a2)
{
  v5 = sub_24A4AB690();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A4AB6E0();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v18);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v2 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v2;
  *(v14 + 32) = a2;
  aBlock[4] = sub_24A3D5810;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D85988;
  v15 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v19 = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);
}

void sub_24A3D36C8(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_legacyFallbackData;
  v30 = a3 & 1;
  for (i = (a1 + 40); ; i += 2)
  {
    v11 = *(i - 1);
    v10 = *i;
    swift_beginAccess();

    v12 = *(a2 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a2 + v5);
    *(a2 + v5) = 0x8000000000000000;
    v15 = sub_24A39B2C8(v11, v10);
    v17 = v14[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      break;
    }

    v21 = v16;
    if (v14[3] < v20)
    {
      sub_24A4A48D4(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_24A39B2C8(v11, v10);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_22;
      }

LABEL_10:
      if (v21)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = v15;
    sub_24A4A84C0();
    v15 = v23;
    if (v21)
    {
LABEL_11:
      *(v14[7] + v15) = v30;
      goto LABEL_15;
    }

LABEL_13:
    v14[(v15 >> 6) + 8] |= 1 << v15;
    v24 = (v14[6] + 16 * v15);
    *v24 = v11;
    v24[1] = v10;
    *(v14[7] + v15) = v30;
    v25 = v14[2];
    v19 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    v14[2] = v26;

LABEL_15:
    *(a2 + v5) = v14;
    swift_endAccess();
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v27 = sub_24A4AB630();
    sub_24A378E18(v27, qword_27EF4E260);

    v28 = sub_24A4AB600();
    v29 = sub_24A4ABCE0();

    if (os_log_type_enabled(v28, v29))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v31 = v8;
      *v7 = 136315394;
      v9 = sub_24A37BD58(v11, v10, &v31);

      *(v7 + 4) = v9;
      *(v7 + 12) = 1024;
      *(v7 + 14) = v30;
      _os_log_impl(&dword_24A376000, v28, v29, "FMFRefreshController: appendLiveSessionInformation, friendID: %s, didFallback: %{BOOL}d", v7, 0x12u);
      sub_24A37EEE0(v8);
      MEMORY[0x24C219130](v8, -1, -1);
      MEMORY[0x24C219130](v7, -1, -1);
    }

    else
    {
    }

    if (!--v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_24A4AC2B0();
  __break(1u);
}

uint64_t sub_24A3D39C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[179] = a4;
  v5 = sub_24A4AB220();
  v4[185] = v5;
  v6 = *(v5 - 8);
  v4[191] = v6;
  v7 = *(v6 + 64) + 15;
  v4[197] = swift_task_alloc();
  v4[203] = swift_task_alloc();
  v8 = *(*(sub_24A3C9CEC(&qword_27EF3F2E0, &qword_24A4BACE0) - 8) + 64) + 15;
  v4[209] = swift_task_alloc();
  v4[210] = swift_task_alloc();
  v9 = type metadata accessor for FMFIntermediateFriend();
  v4[211] = v9;
  v10 = *(v9 - 8);
  v4[212] = v10;
  v11 = *(v10 + 64) + 15;
  v4[213] = swift_task_alloc();
  v4[214] = swift_task_alloc();
  v4[215] = swift_task_alloc();
  v4[216] = swift_task_alloc();
  v4[217] = swift_task_alloc();
  v4[218] = swift_task_alloc();
  v12 = sub_24A4AB1E0();
  v4[219] = v12;
  v13 = *(v12 - 8);
  v4[220] = v13;
  v14 = *(v13 + 64) + 15;
  v4[221] = swift_task_alloc();
  v4[222] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3D3BD4, 0, 0);
}

uint64_t sub_24A3D3BD4()
{
  v1 = *(v0 + 1432);

  sub_24A3C9CEC(&qword_27EF3F2E8, &qword_24A4B4F80);
  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 1336, sub_24A3D3CBC, v0 + 1296);
}

uint64_t sub_24A3D3CBC()
{
  *(v1 + 1784) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 656, v1 + 1384, sub_24A3D4B0C, v1 + 1344);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_24A3D3D00, 0, 0);
  }
}

uint64_t sub_24A3D3D00()
{
  v1 = v0[167];
  v50 = *(v1 + 16);
  if (v50)
  {
    v45 = v0[217];
    v2 = v0[211];
    v47 = v1 + ((*(v0[220] + 80) + 32) & ~*(v0[220] + 80));
    v48 = v0[220];
    v46 = (v0[191] + 8);
    v44 = v0[212];

    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    v49 = v3;
    while (v4 < *(v3 + 16))
    {
      v6 = v0[222];
      v7 = v0[219];
      v8 = v0[203];
      (*(v48 + 16))(v6, v47 + *(v48 + 72) * v4, v7);
      sub_24A4AB1D0();
      (*(v48 + 8))(v6, v7);
      v9 = sub_24A4AB210();
      if (v10)
      {
        v11 = v0[217];
        v51 = v0[210];
        v12 = v0[203];
        v13 = v0[185];
        v14 = v2[16];
        *v11 = v9;
        *(v45 + 8) = v10;
        *(v45 + 16) = 0;
        *(v45 + 24) = 0;
        *(v45 + 32) = 0;
        sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
        v15 = v5;
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_24A4B4E10;
        *(v16 + 32) = sub_24A4AB1F0();
        *(v16 + 40) = v17;
        (*v46)(v12, v13);
        *(v45 + 40) = v16;
        *(v45 + 48) = 0u;
        *(v45 + 64) = 0u;
        v18 = v2[10];
        v19 = sub_24A4AAAD0();
        v20 = *(*(v19 - 8) + 56);
        v20(v11 + v18, 1, 1, v19);
        v20(v11 + v2[11], 1, 1, v19);
        v20(v11 + v2[12], 1, 1, v19);
        v5 = v15;
        *(v11 + v2[13]) = 2;
        *(v11 + v2[14]) = 1;
        *(v11 + v2[15]) = 1;
        *(v11 + v14) = 2;
        *(v11 + v2[17]) = 0;
        sub_24A3D5A68(v11, v51);
        v21 = 0;
      }

      else
      {
        (*v46)(v0[203], v0[185]);
        v21 = 1;
      }

      v22 = v0[211];
      v23 = v0[210];
      (*(v44 + 56))(v23, v21, 1, v22);
      if ((*(v44 + 48))(v23, 1, v22) == 1)
      {
        sub_24A37EF2C(v0[210], &qword_27EF3F2E0, &qword_24A4BACE0);
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v24 = sub_24A4AB630();
        sub_24A378E18(v24, qword_27EF4E260);
        v25 = sub_24A4AB600();
        v26 = sub_24A4ABCC0();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_24A376000, v25, v26, "FMFRefreshController: failed to create following friend object!", v27, 2u);
          MEMORY[0x24C219130](v27, -1, -1);
        }
      }

      else
      {
        v28 = v0[218];
        v29 = v0[216];
        sub_24A3D5A68(v0[210], v28);
        sub_24A382A04(v28, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_24A3EDA0C(0, v5[2] + 1, 1, v5);
        }

        v31 = v5[2];
        v30 = v5[3];
        if (v31 >= v30 >> 1)
        {
          v5 = sub_24A3EDA0C(v30 > 1, v31 + 1, 1, v5);
        }

        v32 = v0[216];
        sub_24A382A68(v0[218]);
        v5[2] = v31 + 1;
        sub_24A3D5A68(v32, v5 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v31);
      }

      ++v4;
      v3 = v49;
      if (v50 == v4)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_22;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_21:
  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_32;
  }

LABEL_22:
  v33 = sub_24A4AB630();
  v0[224] = sub_24A378E18(v33, qword_27EF4E260);

  v34 = sub_24A4AB600();
  v35 = sub_24A4ABCE0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    *(v36 + 4) = v5[2];

    _os_log_impl(&dword_24A376000, v34, v35, "FMFRefreshController: fmld returned %ld following", v36, 0xCu);
    MEMORY[0x24C219130](v36, -1, -1);
  }

  else
  {
  }

  v37 = v0[179];
  v0[225] = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_dataManager;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v39 = v0[223];
    v40 = *(Strong + 56);
    v41 = Strong;
    v42 = swift_task_alloc();
    *(v42 + 16) = v5;
    *(v42 + 24) = v41;
    sub_24A4ABD70();
  }

  else
  {
  }

  return MEMORY[0x282200930](v0 + 82, v0 + 173, sub_24A3D4350, v0 + 180);
}

uint64_t sub_24A3D4350()
{
  *(v1 + 1808) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 656, v1 + 1384, sub_24A3D4CE8, v1 + 1488);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_24A3D4394, 0, 0);
  }
}

uint64_t sub_24A3D4394()
{
  v1 = v0[173];
  v53 = *(v1 + 16);
  if (v53)
  {
    v48 = v0[214];
    v2 = v0[211];
    v50 = v1 + ((*(v0[220] + 80) + 32) & ~*(v0[220] + 80));
    v51 = v0[220];
    v49 = (v0[191] + 8);
    v47 = v0[212];

    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v52 = v3;
    while (v7 < *(v3 + 16))
    {
      v9 = v0[221];
      v10 = v0[219];
      v11 = v0[197];
      (*(v51 + 16))(v9, v50 + *(v51 + 72) * v7, v10);
      sub_24A4AB1D0();
      (*(v51 + 8))(v9, v10);
      v12 = sub_24A4AB210();
      if (v13)
      {
        v14 = v0[214];
        v54 = v0[209];
        v15 = v0[197];
        v16 = v0[185];
        v17 = v2[16];
        *v14 = v12;
        *(v48 + 16) = 0;
        *(v48 + 24) = 0;
        *(v48 + 8) = v13;
        sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_24A4B4E10;
        *(v18 + 32) = sub_24A4AB1F0();
        *(v18 + 40) = v19;
        (*v49)(v15, v16);
        *(v48 + 32) = v18;
        *(v48 + 40) = 0u;
        *(v48 + 56) = 0u;
        *(v48 + 72) = 0;
        v20 = v2[10];
        v21 = sub_24A4AAAD0();
        v22 = *(*(v21 - 8) + 56);
        v22(v14 + v20, 1, 1, v21);
        v22(v14 + v2[11], 1, 1, v21);
        v22(v14 + v2[12], 1, 1, v21);
        *(v14 + v2[13]) = 2;
        *(v14 + v2[14]) = 1;
        *(v14 + v2[15]) = 1;
        *(v14 + v17) = 2;
        *(v14 + v2[17]) = 0;
        sub_24A3D5A68(v14, v54);
        v23 = 0;
      }

      else
      {
        (*v49)(v0[197], v0[185]);
        v23 = 1;
      }

      v24 = v0[211];
      v25 = v0[209];
      (*(v47 + 56))(v25, v23, 1, v24);
      if ((*(v47 + 48))(v25, 1, v24) == 1)
      {
        v26 = v0[224];
        sub_24A37EF2C(v0[209], &qword_27EF3F2E0, &qword_24A4BACE0);
        v27 = sub_24A4AB600();
        v28 = sub_24A4ABCC0();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_24A376000, v27, v28, "FMFRefreshController: failed to create followers friend object!", v29, 2u);
          MEMORY[0x24C219130](v29, -1, -1);
        }
      }

      else
      {
        v30 = v0[215];
        v31 = v0[213];
        sub_24A3D5A68(v0[209], v30);
        sub_24A382A04(v30, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24A3EDA0C(0, v8[2] + 1, 1, v8);
        }

        v33 = v8[2];
        v32 = v8[3];
        if (v33 >= v32 >> 1)
        {
          v8 = sub_24A3EDA0C(v32 > 1, v33 + 1, 1, v8);
        }

        v34 = v0[213];
        sub_24A382A68(v0[215]);
        v8[2] = v33 + 1;
        sub_24A3D5A68(v34, v8 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v33);
      }

      ++v7;
      v3 = v52;
      if (v53 == v7)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_19:
    v35 = v0[224];

    v36 = sub_24A4AB600();
    v37 = sub_24A4ABCE0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = v8[2];

      _os_log_impl(&dword_24A376000, v36, v37, "FMFRefreshController: fmld returned %ld followers", v38, 0xCu);
      MEMORY[0x24C219130](v38, -1, -1);
    }

    else
    {
    }

    v39 = v0[225];
    v40 = v0[179];
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v42 = v0[226];
      v43 = *(Strong + 56);
      v44 = Strong;
      v45 = swift_task_alloc();
      *(v45 + 16) = v8;
      *(v45 + 24) = v44;
      sub_24A4ABD70();
    }

    else
    {
    }

    if ((*(v0[179] + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_firstRefreshCompleted) & 1) == 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_24A43DFE0();
      swift_unknownObjectRelease();
    }

    v5 = sub_24A3D4988;
    v3 = (v0 + 82);
    v4 = v0 + 173;
    v6 = v0 + 198;
  }

  return MEMORY[0x282200920](v3, v4, v5, v6);
}

uint64_t sub_24A3D49E0()
{
  v1 = v0[222];
  v2 = v0[221];
  v3 = v0[218];
  v4 = v0[217];
  v5 = v0[216];
  v6 = v0[215];
  v7 = v0[214];
  v8 = v0[213];
  v9 = v0[210];
  v12 = v0[209];
  v13 = v0[203];
  v14 = v0[197];
  *(v0[179] + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_firstRefreshCompleted) = 1;

  v10 = v0[1];

  return v10();
}

uint64_t sub_24A3D4B64()
{
  v1 = v0[223];
  if (*(v0[179] + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_firstRefreshCompleted) != 1)
  {
    v2 = v0[179];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = v1;
      sub_24A43DAE8(v1);

      swift_unknownObjectRelease();
    }
  }

  v4 = v0[222];
  v5 = v0[221];
  v6 = v0[218];
  v7 = v0[217];
  v8 = v0[216];
  v9 = v0[215];
  v10 = v0[214];
  v11 = v0[213];
  v12 = v0[210];
  v15 = v0[209];
  v16 = v0[203];
  v17 = v0[197];
  *(v0[179] + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_firstRefreshCompleted) = 1;

  v13 = v0[1];

  return v13();
}

uint64_t sub_24A3D4D40()
{
  v1 = v0[226];
  if (*(v0[179] + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_firstRefreshCompleted) != 1)
  {
    v2 = v0[179];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = v1;
      sub_24A43DAE8(v1);

      swift_unknownObjectRelease();
    }
  }

  v4 = v0[222];
  v5 = v0[221];
  v6 = v0[218];
  v7 = v0[217];
  v8 = v0[216];
  v9 = v0[215];
  v10 = v0[214];
  v11 = v0[213];
  v12 = v0[210];
  v15 = v0[209];
  v16 = v0[203];
  v17 = v0[197];
  *(v0[179] + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_firstRefreshCompleted) = 1;

  v13 = v0[1];

  return v13();
}

uint64_t sub_24A3D4EC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24A3D4EE4, 0, 0);
}

uint64_t sub_24A3D4EE4()
{
  v1 = *(*(v0 + 24) + 32);
  v2 = *(MEMORY[0x277D09430] + 4);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_24A3D4F7C;

  return MEMORY[0x28215FB60]();
}

uint64_t sub_24A3D4F7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_24A3D5B68, 0, 0);
  }
}

uint64_t sub_24A3D50C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24A3D50E8, 0, 0);
}

uint64_t sub_24A3D50E8()
{
  v1 = *(*(v0 + 24) + 32);
  v2 = *(MEMORY[0x277D09330] + 4);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_24A3D5180;

  return MEMORY[0x28215FA40]();
}

uint64_t sub_24A3D5180(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_24A3D52CC, 0, 0);
  }
}

uint64_t sub_24A3D52F0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_tapContexts;
  swift_beginAccess();
  v5 = *(a2 + v4);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_24A3EDA34(0, v5[2] + 1, 1, v5);
    *(a2 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_24A3EDA34((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v5[v8 + 4] = a1;
  *(a2 + v4) = v5;
  swift_endAccess();
  return sub_24A3AE1EC(0.0);
}

uint64_t sub_24A3D5408(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A4AB690();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24A4AB6E0();
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A4AB630();
  sub_24A378E18(v12, qword_27EF4E260);

  v13 = sub_24A4AB600();
  v14 = sub_24A4ABCB0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = sub_24A4AB760();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&dword_24A376000, v13, v14, "FMFRefreshController: connectionHandler didReceive message: %@", v15, 0xCu);
    sub_24A37EF2C(v16, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v16, -1, -1);
    MEMORY[0x24C219130](v15, -1, -1);
  }

  v18 = *(v2 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v2;
  aBlock[4] = sub_24A3D5808;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D85938;
  v20 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v25 = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v11, v7, v20);
  _Block_release(v20);
  (*(v24 + 8))(v7, v4);
  (*(v8 + 8))(v11, v23);
}

uint64_t sub_24A3D5844(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24A3A35A8;

  return sub_24A3D39C4(a1, v4, v5, v6);
}

uint64_t sub_24A3D58F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24A3A357C;

  return sub_24A3D4EC4(a1, v1);
}

uint64_t sub_24A3D5994(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24A3A35A8;

  return sub_24A3D50C8(a1, v1);
}

uint64_t sub_24A3D5A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFIntermediateFriend();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A3D5ACC(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

void *FMLocationShiftingRequest.__allocating_init(identifier:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a1;
  result[4] = a2;
  return result;
}

uint64_t FMLocationShiftingRequest.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t FMLocationShifter.__allocating_init()()
{
  v0 = swift_allocObject();
  FMLocationShifter.init()();
  return v0;
}

void sub_24A3D5C38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = sub_24A4AB6A0();
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v27);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a1 + 16);
  v12 = *(a2 + 16);
  [v12 coordinate];
  v14 = v13;
  [v12 coordinate];
  v16 = v15;
  [v12 horizontalAccuracy];
  v18 = v17;
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v33 = sub_24A3D6728;
  v34 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_24A3D6360;
  v32 = &unk_285D85CD0;
  v20 = _Block_copy(&aBlock);

  v21 = a4;

  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a2;
  v22[4] = v21;
  v33 = sub_24A3D677C;
  v34 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_24A3D65E0;
  v32 = &unk_285D85D20;
  v23 = _Block_copy(&aBlock);

  v24 = v21;

  sub_24A3785D4();
  v25 = v27;
  (*(v8 + 104))(v11, *MEMORY[0x277D851C8], v27);
  v26 = sub_24A4ABDA0();
  (*(v8 + 8))(v11, v25);
  [v28 shiftCoordinate:v20 accuracy:0 withCompletionHandler:v23 mustGoToNetworkCallback:v26 errorHandler:v14 callbackQueue:{v16, v18}];

  _Block_release(v23);
  _Block_release(v20);
}

uint64_t sub_24A3D5F28(void *a1, uint64_t a2, void *a3, double a4, double a5, double a6)
{
  v12 = sub_24A4AAAD0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v50[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[2];
  [v17 altitude];
  v19 = v18;
  [v17 verticalAccuracy];
  v21 = v20;
  [v17 course];
  v23 = v22;
  [v17 speed];
  v25 = v24;
  v26 = [v17 timestamp];
  sub_24A4AAAA0();

  v27 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v28 = sub_24A4AAA60();
  v29 = [v27 initWithCoordinate:v28 altitude:a4 horizontalAccuracy:a5 verticalAccuracy:v19 course:a6 speed:v21 timestamp:{v23, v25}];

  (*(v13 + 8))(v16, v12);
  [v29 setReferenceFrame_];
  v30 = a1[3];
  v31 = a1[4];
  type metadata accessor for FMLocationShiftingRequest();
  v32 = swift_allocObject();
  v32[2] = v29;
  v32[3] = v30;
  v32[4] = v31;
  swift_beginAccess();

  v33 = v29;

  MEMORY[0x24C217E50](v34);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v48 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24A4ABAA0();
  }

  sub_24A4ABAE0();
  swift_endAccess();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v35 = sub_24A4AB630();
  sub_24A378E18(v35, qword_27EF4E260);
  v36 = v33;

  v37 = v17;
  v38 = sub_24A4AB600();
  v39 = sub_24A4ABCE0();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v49 = a3;
    v50[0] = v42;
    v43 = v42;
    *v40 = 136315650;
    *(v40 + 4) = sub_24A37BD58(v30, v31, v50);
    *(v40 + 12) = 2112;
    *(v40 + 14) = v36;
    *(v40 + 22) = 2112;
    *(v40 + 24) = v37;
    *v41 = v36;
    v41[1] = v37;
    v44 = v36;
    v45 = v37;
    _os_log_impl(&dword_24A376000, v38, v39, "FMLocationShifter: shifting completed %s newLocation: %@ oldLocation: %@", v40, 0x20u);
    sub_24A3C9CEC(&qword_27EF403C0, &unk_24A4B5050);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v41, -1, -1);
    sub_24A37EEE0(v43);
    v46 = v43;
    a3 = v49;
    MEMORY[0x24C219130](v46, -1, -1);
    MEMORY[0x24C219130](v40, -1, -1);
  }

  [a3 signal];
}

uint64_t sub_24A3D6360(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  v7(v9, a2, a3, a4);
}

id sub_24A3D63CC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A4AB630();
  sub_24A378E18(v7, qword_27EF4E260);
  v8 = a1;
  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCC0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = a1;
    sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
    v14 = sub_24A4AB870();
    v16 = sub_24A37BD58(v14, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A376000, v9, v10, "FMLocationShifter: shifting request error %s", v11, 0xCu);
    sub_24A37EEE0(v12);
    MEMORY[0x24C219130](v12, -1, -1);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  swift_beginAccess();

  MEMORY[0x24C217E50](v17);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v19 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24A4ABAA0();
  }

  sub_24A4ABAE0();
  swift_endAccess();
  return [a4 signal];
}

void sub_24A3D65E0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t FMLocationShifter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24A3D6734()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3D67B0()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = v0[41];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v0[40];
  v3 = v0[41];
  v4._countAndFlagsBits = sub_24A4AB880();
  FMFDefaultLabel.init(rawValue:)(v4);
  if (__src[0] == 5)
  {

    v5 = v2;
    v6 = v1;
  }

  else
  {
    v5 = FMFDefaultLabel.localizedLabel.getter();
    v6 = v7;
  }

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_10:
    memcpy(__src, __dst, sizeof(__src));
    if (sub_24A3D77F8(__src) == 1)
    {
      return 0;
    }

    memcpy(v12, __src, sizeof(v12));
    return FMFAddress.displayAddress.getter();
  }

  v9._countAndFlagsBits = sub_24A4AB880();
  FMFDefaultLabel.init(rawValue:)(v9);
  if (__src[0] != 5)
  {
    return FMFDefaultLabel.localizedLabel.getter();
  }

  return v2;
}

uint64_t sub_24A3D690C()
{
  *v0;
  *v0;
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A3D6A38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A3D7908();
  *a2 = result;
  return result;
}

void sub_24A3D6A68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x73736572646461;
  v5 = 0xE600000000000000;
  v6 = 0x736C6562616CLL;
  if (v2 != 5)
  {
    v6 = 0x756363616E497369;
    v5 = 0xEC00000065746172;
  }

  v7 = 0x800000024A4AE0B0;
  v8 = 0xD000000000000012;
  if (v2 != 3)
  {
    v8 = 0x6D617473656D6974;
    v7 = 0xE900000000000070;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x64757469676E6F6CLL;
  v10 = 0xE900000000000065;
  if (v2 != 1)
  {
    v9 = 0x656475746974616CLL;
    v10 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_24A3D6B5C()
{
  v1 = *v0;
  v2 = 0x73736572646461;
  v3 = 0x736C6562616CLL;
  if (v1 != 5)
  {
    v3 = 0x756363616E497369;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x64757469676E6F6CLL;
  if (v1 != 1)
  {
    v5 = 0x656475746974616CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24A3D6C4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A3D7908();
  *a1 = result;
  return result;
}

uint64_t sub_24A3D6C74(uint64_t a1)
{
  v2 = sub_24A3B4A78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A3D6CB0(uint64_t a1)
{
  v2 = sub_24A3B4A78();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_24A3D6CEC(void *a1)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F318, &qword_24A4B5240);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  memcpy(v17, v1, 0x130uLL);
  v8 = v1[38];
  v12 = v1[43];
  v9 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3B4A78();
  sub_24A4AC3D0();
  v10 = [v8 timestamp];
  if (v10)
  {
    v11 = v10;
    memcpy(v16, v17, sizeof(v16));
    v17[327] = 0;
    sub_24A3C34E4(v17, v15);
    sub_24A3C9CEC(&unk_27EF404E0, &unk_24A4B5230);
    sub_24A3D7238();
    sub_24A4AC1F0();
    if (v2)
    {

      memcpy(v15, v16, sizeof(v15));
      sub_24A37EF2C(v15, &unk_27EF404E0, &unk_24A4B5230);
    }

    else
    {
      memcpy(v15, v16, sizeof(v15));
      sub_24A37EF2C(v15, &unk_27EF404E0, &unk_24A4B5230);
      [v8 coordinate];
      LOBYTE(v14) = 2;
      sub_24A4AC1D0();
      [v8 coordinate];
      LOBYTE(v14) = 1;
      sub_24A4AC1D0();
      [v8 horizontalAccuracy];
      LOBYTE(v14) = 3;
      sub_24A4AC1D0();
      [v11 fm_epoch];
      LOBYTE(v14) = 4;
      sub_24A4AC200();
      v14 = v12;
      v17[326] = 5;

      sub_24A3C9CEC(&qword_27EF3F330, &qword_24A4B5248);
      sub_24A3D7310();
      sub_24A4AC1F0();
    }

    (*(v13 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_24A3D7088()
{
  result = qword_27EF3F310;
  if (!qword_27EF3F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F310);
  }

  return result;
}

uint64_t sub_24A3D7114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFLabelledLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A3D7178(uint64_t a1)
{
  v2 = type metadata accessor for FMFLabelledLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A3D71D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFLabelledLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A3D7238()
{
  result = qword_27EF3F320;
  if (!qword_27EF3F320)
  {
    sub_24A3CBC9C(&unk_27EF404E0, &unk_24A4B5230);
    sub_24A3D72BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F320);
  }

  return result;
}

unint64_t sub_24A3D72BC()
{
  result = qword_27EF3F328;
  if (!qword_27EF3F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F328);
  }

  return result;
}

unint64_t sub_24A3D7310()
{
  result = qword_27EF3F338;
  if (!qword_27EF3F338)
  {
    sub_24A3CBC9C(&qword_27EF3F330, &qword_24A4B5248);
    sub_24A3D73CC(&qword_27EF3F340, &qword_27EF3F348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F338);
  }

  return result;
}

uint64_t sub_24A3D73CC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(&qword_27EF3F118, &qword_24A4B4958);
    sub_24A3819E8(a2, type metadata accessor for FMFLabelledLocation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A3D7468(void *__src, void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = *(__src + 38);
  v6 = *(__src + 40);
  v5 = *(__src + 41);
  v18 = *(__src + 43);
  memcpy(v27, a2, sizeof(v27));
  v7 = a2[38];
  v9 = a2[40];
  v8 = a2[41];
  v10 = a2[43];
  memcpy(__srca, __src, 0x130uLL);
  memcpy(&__srca[304], a2, 0x130uLL);
  memcpy(v28, __src, 0x130uLL);
  if (sub_24A3D77F8(v28) == 1)
  {
    memcpy(v23, a2, 0x130uLL);
    if (sub_24A3D77F8(v23) == 1)
    {
      memcpy(v24, __src, sizeof(v24));
      sub_24A3C34E4(__dst, v22);
      sub_24A3C34E4(v27, v22);
      sub_24A37EF2C(v24, &unk_27EF404E0, &unk_24A4B5230);
      goto LABEL_9;
    }

    sub_24A3C34E4(__dst, v24);
    sub_24A3C34E4(v27, v24);
LABEL_7:
    memcpy(v23, __srca, sizeof(v23));
    sub_24A37EF2C(v23, &qword_27EF3F350, &unk_24A4B5250);
    v11 = 0;
    return v11 & 1;
  }

  memcpy(v24, __src, sizeof(v24));
  memcpy(v22, __src, sizeof(v22));
  memcpy(v23, a2, 0x130uLL);
  if (sub_24A3D77F8(v23) == 1)
  {
    memcpy(v21, __src, sizeof(v21));
    sub_24A3C34E4(__dst, v20);
    sub_24A3C34E4(v27, v20);
    sub_24A3C34E4(v24, v20);
    sub_24A3D785C(v21);
    goto LABEL_7;
  }

  memcpy(v21, a2, sizeof(v21));
  v12 = _s7FMFCore10FMFAddressV2eeoiySbAC_ACtFZ_0(v22, v21);
  memcpy(v19, v21, sizeof(v19));
  sub_24A3C34E4(__dst, v20);
  sub_24A3C34E4(v27, v20);
  sub_24A3C34E4(v24, v20);
  sub_24A3D785C(v19);
  memcpy(v20, v22, sizeof(v20));
  sub_24A3D785C(v20);
  memcpy(v21, __src, sizeof(v21));
  sub_24A37EF2C(v21, &unk_27EF404E0, &unk_24A4B5230);
  if ((v12 & 1) == 0)
  {
LABEL_15:
    v11 = 0;
    return v11 & 1;
  }

LABEL_9:
  sub_24A3D7810();
  v13 = v4;
  v14 = v7;
  v15 = sub_24A4ABDB0();

  if ((v15 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    if (v8)
    {
      if ((v6 != v9 || v5 != v8) && (sub_24A4AC270() & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

LABEL_17:

    v11 = 0;
    return v11 & 1;
  }

  if (v8)
  {
    goto LABEL_17;
  }

LABEL_19:
  v11 = (v18 | v10) == 0;
  if (v18 && v10)
  {

    v11 = sub_24A4155AC(v16, v10);
  }

  return v11 & 1;
}

uint64_t sub_24A3D77F8(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_24A3D7810()
{
  result = qword_27EF3F358;
  if (!qword_27EF3F358)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF3F358);
  }

  return result;
}

unint64_t sub_24A3D78B4()
{
  result = qword_27EF3F370;
  if (!qword_27EF3F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F370);
  }

  return result;
}

uint64_t sub_24A3D7908()
{
  v0 = sub_24A4AC0C0();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A3D7958(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A382670(*a1);
  v5 = v4;
  if (v3 == sub_24A382670(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A3D79E0()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A382670(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3D7A44()
{
  sub_24A382670(*v0);
  sub_24A4AB8F0();
}

uint64_t sub_24A3D7A98()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A382670(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3D7AF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A3D8B28();
  *a2 = result;
  return result;
}

uint64_t sub_24A3D7B28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A382670(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A3D7B54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A3D8B28();
  *a1 = result;
  return result;
}

uint64_t sub_24A3D7B88(uint64_t a1)
{
  v2 = sub_24A382600();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A3D7BC8()
{
  v1 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - v3;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  MEMORY[0x24C217D50](0xD000000000000015, 0x800000024A4B53A0);
  MEMORY[0x24C217D50](0x69746E656469203ALL, 0xEE00203A72656966);
  MEMORY[0x24C217D50](*v0, v0[1]);
  MEMORY[0x24C217D50](0x496E6F7372657020, 0xEF203A6873614864);
  v5 = v0[3];
  v23 = v0[2];
  v24 = v5;

  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  v6 = sub_24A4AB870();
  MEMORY[0x24C217D50](v6);

  MEMORY[0x24C217D50](0xD000000000000018, 0x800000024A4AF800);
  v23 = v0[4];

  sub_24A3C9CEC(&qword_27EF3F3E0, &qword_24A4B54A0);
  v7 = sub_24A4AB870();
  MEMORY[0x24C217D50](v7);

  MEMORY[0x24C217D50](0xD00000000000001CLL, 0x800000024A4AF820);
  v23 = v0[5];

  v8 = sub_24A4AB870();
  MEMORY[0x24C217D50](v8);

  MEMORY[0x24C217D50](0xD000000000000019, 0x800000024A4AF840);
  v9 = v0[7];
  v23 = v0[6];
  v24 = v9;

  v10 = sub_24A4AB870();
  MEMORY[0x24C217D50](v10);

  MEMORY[0x24C217D50](0xD000000000000017, 0x800000024A4AF860);
  v11 = v0[9];
  v23 = v0[8];
  v24 = v11;

  v12 = sub_24A4AB870();
  MEMORY[0x24C217D50](v12);

  MEMORY[0x24C217D50](0x6465746164707520, 0xEC000000203A7441);
  v13 = type metadata accessor for FMFIntermediateFriend();
  sub_24A38CB20(v0 + v13[10], v4);
  v14 = sub_24A4AB870();
  MEMORY[0x24C217D50](v14);

  MEMORY[0x24C217D50](0x6465746165726320, 0xEC000000203A7441);
  sub_24A38CB20(v0 + v13[11], v4);
  v15 = sub_24A4AB870();
  MEMORY[0x24C217D50](v15);

  MEMORY[0x24C217D50](0x7845657261687320, 0xEF203A7365726970);
  sub_24A38CB20(v0 + v13[12], v4);
  v16 = sub_24A4AB870();
  MEMORY[0x24C217D50](v16);

  MEMORY[0x24C217D50](0xD000000000000012, 0x800000024A4AF880);
  LOBYTE(v23) = *(v0 + v13[13]);
  sub_24A3C9CEC(&qword_27EF3F408, &qword_24A4B54A8);
  v17 = sub_24A4AB870();
  MEMORY[0x24C217D50](v17);

  MEMORY[0x24C217D50](0xD00000000000001DLL, 0x800000024A4AF8A0);
  LOBYTE(v23) = *(v0 + v13[14]);
  v18 = sub_24A4AB870();
  MEMORY[0x24C217D50](v18);

  MEMORY[0x24C217D50](0xD000000000000021, 0x800000024A4AF8C0);
  LOBYTE(v23) = *(v0 + v13[15]);
  v19 = sub_24A4AB870();
  MEMORY[0x24C217D50](v19);

  MEMORY[0x24C217D50](0xD000000000000019, 0x800000024A4AF8F0);
  LOBYTE(v23) = *(v0 + v13[16]);
  v20 = sub_24A4AB870();
  MEMORY[0x24C217D50](v20);

  MEMORY[0x24C217D50](0xD000000000000013, 0x800000024A4AF910);
  v23 = *(v0 + v13[17]);

  v21 = sub_24A4AB870();
  MEMORY[0x24C217D50](v21);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return v25;
}

uint64_t sub_24A3D80C0(void *a1, void *a2)
{
  v4 = sub_24A4AAAD0();
  v78 = *(v4 - 8);
  v5 = *(v78 + 64);
  MEMORY[0x28223BE20](v4);
  v77 = &v70[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v70[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v70[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v70[-v15];
  v17 = sub_24A3C9CEC(&qword_27EF3F3B8, &qword_24A4B5480);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v70[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v70[-v23];
  MEMORY[0x28223BE20](v22);
  v26 = &v70[-v25];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24A4AC270() & 1) == 0)
  {
    goto LABEL_56;
  }

  v27 = a1[3];
  v28 = a2[3];
  if (v27)
  {
    if (!v28 || (a1[2] != a2[2] || v27 != v28) && (sub_24A4AC270() & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if (v28)
  {
    goto LABEL_56;
  }

  v29 = a1[4];
  v30 = a2[4];
  if (v29)
  {
    if (!v30 || (sub_24A38B37C(v29, v30) & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if (v30)
  {
    goto LABEL_56;
  }

  v31 = a1[5];
  v32 = a2[5];
  if (v31)
  {
    if (!v32 || (sub_24A38B37C(v31, v32) & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if (v32)
  {
    goto LABEL_56;
  }

  v33 = a1[7];
  v34 = a2[7];
  if (v33)
  {
    if (!v34 || (a1[6] != a2[6] || v33 != v34) && (sub_24A4AC270() & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if (v34)
  {
    goto LABEL_56;
  }

  v35 = a1[9];
  v36 = a2[9];
  if (v35)
  {
    if (!v36 || (a1[8] != a2[8] || v35 != v36) && (sub_24A4AC270() & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if (v36)
  {
    goto LABEL_56;
  }

  v73 = type metadata accessor for FMFIntermediateFriend();
  v37 = *(v17 + 48);
  v75 = v73[10];
  v76 = v37;
  sub_24A38CB20(v75 + a1, v26);
  sub_24A38CB20(v75 + a2, &v76[v26]);
  v38 = *(v78 + 48);
  v74 = v78 + 48;
  v75 = v38;
  if (v38(v26, 1, v4) == 1)
  {
    if (v75(&v76[v26], 1, v4) == 1)
    {
      sub_24A37EF2C(v26, &qword_27EF3F460, &unk_24A4B53B0);
      goto LABEL_42;
    }

LABEL_40:
    v39 = v26;
LABEL_55:
    sub_24A37EF2C(v39, &qword_27EF3F3B8, &qword_24A4B5480);
    goto LABEL_56;
  }

  sub_24A38CB20(v26, v16);
  if (v75(&v76[v26], 1, v4) == 1)
  {
    (*(v78 + 8))(v16, v4);
    goto LABEL_40;
  }

  (*(v78 + 32))(v77, &v76[v26], v4);
  sub_24A38CCBC(&qword_27EF3F3C0);
  v71 = sub_24A4AB810();
  v40 = *(v78 + 8);
  v72 = v78 + 8;
  v76 = v40;
  (v40)(v77, v4);
  (v76)(v16, v4);
  sub_24A37EF2C(v26, &qword_27EF3F460, &unk_24A4B53B0);
  if ((v71 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_42:
  v41 = v73[11];
  v42 = *(v17 + 48);
  sub_24A38CB20(a1 + v41, v24);
  v76 = v42;
  sub_24A38CB20(a2 + v41, &v42[v24]);
  v43 = v75;
  if (v75(v24, 1, v4) == 1)
  {
    if (v43(&v76[v24], 1, v4) == 1)
    {
      sub_24A37EF2C(v24, &qword_27EF3F460, &unk_24A4B53B0);
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  sub_24A38CB20(v24, v14);
  if (v43(&v76[v24], 1, v4) == 1)
  {
    (*(v78 + 8))(v14, v4);
LABEL_47:
    v39 = v24;
    goto LABEL_55;
  }

  v44 = v78;
  (*(v78 + 32))(v77, &v76[v24], v4);
  sub_24A38CCBC(&qword_27EF3F3C0);
  LODWORD(v76) = sub_24A4AB810();
  v45 = *(v44 + 8);
  v45(v77, v4);
  v45(v14, v4);
  sub_24A37EF2C(v24, &qword_27EF3F460, &unk_24A4B53B0);
  if ((v76 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_49:
  v46 = v73[12];
  v47 = *(v17 + 48);
  sub_24A38CB20(a1 + v46, v21);
  sub_24A38CB20(a2 + v46, &v21[v47]);
  v48 = v75;
  if (v75(v21, 1, v4) == 1)
  {
    if (v48(&v21[v47], 1, v4) == 1)
    {
      sub_24A37EF2C(v21, &qword_27EF3F460, &unk_24A4B53B0);
      goto LABEL_59;
    }

    goto LABEL_54;
  }

  sub_24A38CB20(v21, v11);
  if (v48(&v21[v47], 1, v4) == 1)
  {
    (*(v78 + 8))(v11, v4);
LABEL_54:
    v39 = v21;
    goto LABEL_55;
  }

  v52 = v77;
  v51 = v78;
  (*(v78 + 32))(v77, &v21[v47], v4);
  sub_24A38CCBC(&qword_27EF3F3C0);
  v53 = sub_24A4AB810();
  v54 = *(v51 + 8);
  v54(v52, v4);
  v54(v11, v4);
  sub_24A37EF2C(v21, &qword_27EF3F460, &unk_24A4B53B0);
  if ((v53 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_59:
  v55 = v73[13];
  v56 = *(a1 + v55);
  v57 = *(a2 + v55);
  if (v56 == 2)
  {
    if (v57 != 2)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v49 = 0;
    if (v57 == 2 || ((v57 ^ v56) & 1) != 0)
    {
      return v49 & 1;
    }
  }

  v58 = v73[14];
  v59 = *(a1 + v58);
  v60 = *(a2 + v58);
  if (v59 == 2)
  {
    if (v60 != 2)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v49 = 0;
    if (v60 == 2 || ((v60 ^ v59) & 1) != 0)
    {
      return v49 & 1;
    }
  }

  v61 = v73[15];
  v62 = *(a1 + v61);
  v63 = *(a2 + v61);
  if (v62 == 2)
  {
    if (v63 != 2)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v49 = 0;
    if (v63 == 2 || ((v63 ^ v62) & 1) != 0)
    {
      return v49 & 1;
    }
  }

  v64 = v73[16];
  v65 = *(a1 + v64);
  v66 = *(a2 + v64);
  if (v65 != 2)
  {
    v49 = 0;
    if (v66 == 2 || ((v66 ^ v65) & 1) != 0)
    {
      return v49 & 1;
    }

    goto LABEL_79;
  }

  if (v66 != 2)
  {
LABEL_56:
    v49 = 0;
    return v49 & 1;
  }

LABEL_79:
  v67 = v73[17];
  v68 = *(a1 + v67);
  v69 = *(a2 + v67);
  v49 = (v68 | v69) == 0;
  if (v68 && v69)
  {
    v49 = sub_24A38B37C(v68, v69);
  }

  return v49 & 1;
}

unint64_t sub_24A3D89D8()
{
  result = qword_27EF3F410;
  if (!qword_27EF3F410)
  {
    sub_24A3CBC9C(&qword_27EF3F408, &qword_24A4B54A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F410);
  }

  return result;
}

unint64_t sub_24A3D8A54()
{
  result = qword_27EF3F420;
  if (!qword_27EF3F420)
  {
    sub_24A3CBC9C(&qword_27EF3F418, &qword_24A4B54B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F420);
  }

  return result;
}

unint64_t sub_24A3D8AD4()
{
  result = qword_27EF3F428;
  if (!qword_27EF3F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F428);
  }

  return result;
}

uint64_t sub_24A3D8B28()
{
  v0 = sub_24A4AC0C0();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

uint64_t FMFRemoveLabelsAction.__allocating_init(labels:)(uint64_t a1)
{
  result = swift_allocObject();
  if (*(a1 + 16))
  {
    *(result + 24) = a1;
    *(result + 16) = 1;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t FMFRemoveLabelsAction.init(labels:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    *(v1 + 24) = a1;
    *(v1 + 16) = 1;
  }

  else
  {

    type metadata accessor for FMFRemoveLabelsAction();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t sub_24A3D8C64()
{
  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v4 = MEMORY[0x24C217E90](v0[3], MEMORY[0x277D837D0]);
  MEMORY[0x24C217D50](v4);

  MEMORY[0x24C217D50](0x203A736C6562616CLL, 0xE800000000000000);

  return 60;
}

uint64_t FMFRemoveLabelsAction.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t FMFRemoveLabelsAction.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void *sub_24A3D8E88(void *a1, uint64_t a2)
{
  v5 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = sub_24A4AA9D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  if (qword_27EF3EC40 != -1)
  {
    swift_once();
  }

  v17 = sub_24A378E18(v5, qword_27EF40938);
  sub_24A39990C(v17, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24A3D9248(v8);
    sub_24A3D92B0();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v30 = a1;
    (*(v10 + 32))(v14, v8, v9);
    sub_24A4AA990();
    v19 = *(v10 + 8);
    v19(v14, v9);
    v20 = sub_24A4AA9E0();
    if (v2)
    {
      return (v19)(v16, v9);
    }

    else
    {
      v22 = v20;
      v23 = v21;
      if (qword_27EF3EBA0 != -1)
      {
        swift_once();
      }

      sub_24A3D9304();
      sub_24A4AA740();
      v19(v16, v9);
      sub_24A386E10(v22, v23);
      v24 = *&v29[0];
      type metadata accessor for FMFDemoDataSource();
      v25 = swift_allocObject();
      v26 = MEMORY[0x277D84F90];
      v25[4] = MEMORY[0x277D84F90];
      v25[5] = v26;
      v25[6] = v26;
      v25[7] = v26;
      v25[2] = v24;
      type metadata accessor for FMFDemoDataGenerator();
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_24A4B5650;
      *(v27 + 32) = 0x4024000000000000;
      v25[3] = v27;
      sub_24A3E40B0();
      sub_24A39997C(a2, v29);
      type metadata accessor for FMFDemoInteractionController();
      swift_allocObject();
      return sub_24A40DD00(v25, v30, v29);
    }
  }
}

uint64_t sub_24A3D9248(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A3D92B0()
{
  result = qword_27EF3F448;
  if (!qword_27EF3F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F448);
  }

  return result;
}

unint64_t sub_24A3D9304()
{
  result = qword_27EF3F450;
  if (!qword_27EF3F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F450);
  }

  return result;
}

uint64_t sub_24A3D9370()
{
  v1 = *v0;
  sub_24A4AC360();
  MEMORY[0x24C218780](v1);
  return sub_24A4AC3A0();
}

uint64_t sub_24A3D93E4()
{
  v1 = *v0;
  sub_24A4AC360();
  MEMORY[0x24C218780](v1);
  return sub_24A4AC3A0();
}

id FMFLocationAlert.fmlFence.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24A4AAAD0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v181 = v171 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v200 = v171 - v9;
  v10 = sub_24A4AB020();
  v190 = *(v10 - 8);
  v191 = v10;
  v11 = *(v190 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v171 - v15;
  v17 = sub_24A4AAFC0();
  v18 = *(v17 - 8);
  v209 = v17;
  v210 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v187 = v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v193 = v171 - v22;
  v23 = sub_24A3C9CEC(&qword_27EF3F468, &qword_24A4B9F30);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v180 = v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v199 = v171 - v27;
  v28 = sub_24A4AAB20();
  v204 = *(v28 - 8);
  v205 = v28;
  v29 = *(v204 + 8);
  MEMORY[0x28223BE20](v28);
  v179 = v171 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v195 = v171 - v32;
  v230 = sub_24A4AADD0();
  v231 = *(v230 - 8);
  v33 = *(v231 + 64);
  MEMORY[0x28223BE20](v230);
  v229 = v171 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v203 = v171 - v37;
  v38 = type metadata accessor for FMFSchedule();
  v185 = *(v38 - 8);
  v186 = v38;
  v39 = *(v185 + 64);
  MEMORY[0x28223BE20](v38);
  v178 = v171 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_24A4AB0C0();
  v211 = *(v41 - 8);
  v212 = v41;
  v42 = *(v211 + 64);
  MEMORY[0x28223BE20](v41);
  v208 = v171 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v184 = v171 - v45;
  MEMORY[0x28223BE20](v46);
  v183 = v171 - v47;
  MEMORY[0x28223BE20](v48);
  v232 = v171 - v49;
  v219 = sub_24A4AAEF0();
  v216 = *(v219 - 8);
  v50 = v216[8];
  MEMORY[0x28223BE20](v219);
  v207 = v171 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v206 = v171 - v53;
  MEMORY[0x28223BE20](v54);
  v215 = v171 - v55;
  MEMORY[0x28223BE20](v56);
  v58 = v171 - v57;
  v59 = sub_24A3C9CEC(&qword_27EF3F478, &qword_24A4B5660);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59 - 8);
  v194 = v171 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v182 = v171 - v63;
  MEMORY[0x28223BE20](v64);
  v214 = v171 - v65;
  v227 = sub_24A4AAF60();
  v226 = *(v227 - 8);
  v66 = *(v226 + 64);
  MEMORY[0x28223BE20](v227);
  v225 = v171 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_24A4AAFB0();
  v68 = *(v233 - 8);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v233);
  v198 = v171 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v217 = v171 - v72;
  v73 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73 - 8);
  v228 = v171 - v75;
  v76 = sub_24A3C9CEC(&qword_27EF3F488, &unk_24A4B6920);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76 - 8);
  v79 = v171 - v78;
  v221 = sub_24A4AB5D0();
  v224 = *(v221 - 8);
  v80 = *(v224 + 64);
  MEMORY[0x28223BE20](v221);
  v197 = v171 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v222 = v171 - v83;
  v223 = type metadata accessor for FMFLocationAlert();
  v84 = (v2 + v223[20]);
  v85 = v84[1];
  v234 = v68;
  if (v85)
  {
    v213 = *v84;
    v86._countAndFlagsBits = sub_24A4AB880();
    FMFDefaultLabel.init(rawValue:)(v86);
    if (LOBYTE(v236[0]) == 5)
    {
      v220 = v85;
    }

    else
    {
      v87 = FMFDefaultLabel.localizedLabel.getter();
      v68 = v234;
      v213 = v87;
      v220 = v88;
    }
  }

  else
  {
    v213 = 0;
    v220 = 0xE000000000000000;
  }

  v89 = *v2;
  v196 = *(v2 + 8);
  memcpy(v237, (v2 + v223[23]), 0x130uLL);
  v90 = sub_24A3D77F8(v237);
  v201 = a1;
  v188 = v13;
  v189 = v16;
  v218 = v58;
  v192 = v89;
  if (v90 == 1)
  {
    v91 = v224;
    v92 = v221;
    (*(v224 + 56))(v79, 1, 1, v221);
    v93 = v222;
    sub_24A4AB5C0();
    if ((*(v91 + 48))(v79, 1, v92) != 1)
    {
      sub_24A37EF2C(v79, &qword_27EF3F488, &unk_24A4B6920);
    }
  }

  else
  {
    v172 = v79;
    v174 = v237[7];
    v175 = v237[5];
    v173 = v237[9];
    v176 = v237[11];
    v177 = v237[1];
    v171[10] = v237[17];
    v171[8] = v237[2];
    v171[9] = v237[26];
    v171[6] = v237[32];
    v171[7] = v237[30];
    v202 = v2;
    v171[1] = v237[12];
    v171[2] = v237[35];
    v171[4] = v237[34];
    v171[5] = v237[36];
    v171[3] = v237[37];

    v2 = v202;
    v94 = v172;
    v68 = v234;
    sub_24A4AB590();
    v95 = v224;
    v92 = v221;
    (*(v224 + 56))(v94, 0, 1, v221);
    v93 = v222;
    (*(v95 + 32))(v222, v94, v92);
  }

  v96 = v228;
  FMFLocationAlert.location.getter(v228);
  v97 = type metadata accessor for FMFLocation();
  if ((*(*(v97 - 8) + 48))(v96, 1, v97) == 1)
  {

    sub_24A37EF2C(v96, &qword_27EF3F480, &unk_24A4B8C20);
LABEL_14:
    sub_24A3DCA98();
    swift_allocError();
    *v98 = 0;
    swift_willThrow();
    return (*(v224 + 8))(v93, v92);
  }

  memcpy(v236, (v96 + *(v97 + 44)), 0x161uLL);
  if (sub_24A3B9C24(v236) == 1)
  {

    sub_24A3DCAEC(v96, type metadata accessor for FMFLocation);
    goto LABEL_14;
  }

  v100 = v236[38];
  sub_24A3DCAEC(v96, type metadata accessor for FMFLocation);
  [v100 coordinate];

  v101 = v223;
  v102 = *(v2 + 32);
  (*(v226 + 104))(v225, **(&unk_278FE1158 + *(v2 + v223[21])), v227);
  sub_24A4AAF70();
  v103 = *(v2 + v101[15]);
  v175 = v101[15];
  if (v103 <= 1)
  {
    v104 = v216;
    v105 = v209;
    v106 = v210;
    v107 = v214;
    if (v103)
    {
      v108 = MEMORY[0x277D09240];
    }

    else
    {
      v108 = MEMORY[0x277D09238];
    }

    goto LABEL_21;
  }

  v104 = v216;
  v105 = v209;
  v106 = v210;
  v107 = v214;
  if (v103 == 2)
  {
    v108 = MEMORY[0x277D09248];
LABEL_21:
    (*(v106 + 104))(v107, *v108, v105);
    v109 = 0;
    goto LABEL_23;
  }

  v109 = 1;
LABEL_23:
  v176 = *(v106 + 56);
  v177 = v106 + 56;
  v176(v107, v109, 1, v105);
  v110 = v223;
  v111 = *MEMORY[0x277D091C8];
  v112 = *MEMORY[0x277D091D0];
  if (*(v2 + v223[24]))
  {
    v113 = v111;
  }

  else
  {
    v113 = v112;
  }

  v114 = v104[13];
  v115 = v219;
  v114(v218, v113, v219);
  if (*(v2 + v110[25]))
  {
    v116 = v112;
  }

  else
  {
    v116 = v111;
  }

  v117 = v215;
  v114(v215, v116, v115);
  if (*(v2 + 41) > 1u)
  {
    v120 = v233;
    if (*(v2 + 41) == 2)
    {

      sub_24A3DCA98();
      v125 = v117;
      swift_allocError();
      *v126 = 1;
      swift_willThrow();
      v127 = v216[1];
      v128 = v125;
      v129 = v219;
      v127(v128, v219);
      v127(v218, v129);
    }

    else
    {
      v146 = v203;
      sub_24A37B740(v2 + v223[12], v203, &qword_27EF3F470, &qword_24A4B6960);
      v147 = (*(v185 + 48))(v146, 1, v186);
      v134 = v219;
      if (v147 != 1)
      {
        v150 = v178;
        sub_24A3DCC88(v146, v178, type metadata accessor for FMFSchedule);
        v133 = v232;
        sub_24A3CAD34(v232);
        sub_24A3DCAEC(v150, type metadata accessor for FMFSchedule);
        (*(v211 + 104))(v133, *MEMORY[0x277D09290], v212);
        goto LABEL_38;
      }

      sub_24A37EF2C(v146, &qword_27EF3F470, &qword_24A4B6960);
      sub_24A3DCA98();
      swift_allocError();
      *v148 = 1;
      swift_willThrow();
      v149 = v216[1];
      v149(v215, v134);
      v149(v218, v134);
    }

    sub_24A37EF2C(v214, &qword_27EF3F478, &qword_24A4B5660);
    (*(v68 + 8))(v217, v120);
    return (*(v224 + 8))(v222, v221);
  }

  v119 = v211;
  v118 = v212;
  v120 = v233;
  v121 = *(v2 + 43);
  if (*(v2 + 41))
  {
    v130 = *MEMORY[0x277D09260];
    v131 = sub_24A4AB0B0();
    v124 = v184;
    (*(*(v131 - 8) + 104))(v184, v130, v131);
  }

  else
  {
    v122 = *MEMORY[0x277D09268];
    v123 = sub_24A4AB0B0();
    v124 = v183;
    (*(*(v123 - 8) + 104))(v183, v122, v123);
  }

  v132 = MEMORY[0x277D09288];
  if (!v121)
  {
    v132 = MEMORY[0x277D09280];
  }

  (*(v119 + 104))(v124, *v132, v118);
  v133 = v232;
  (*(v119 + 32))(v232, v124, v118);
  v134 = v219;
LABEL_38:
  FMFLocationAlert.recipients.getter();
  v137 = v204;
  v136 = v205;
  v228 = v135;
  if (v135 >> 62)
  {
    goto LABEL_58;
  }

  v138 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v138)
  {
LABEL_59:

LABEL_60:
    if (!v196)
    {
      goto LABEL_64;
    }

    v151 = v199;
    sub_24A4AAAE0();
    if ((*(v137 + 6))(v151, 1, v136) == 1)
    {
      v152 = &qword_27EF3F468;
      v153 = &qword_24A4B9F30;
      v154 = v151;
LABEL_63:
      sub_24A37EF2C(v154, v152, v153);
      v134 = v219;
LABEL_64:
      v155 = v216[2];
      v155(v206, v218, v134);
      v155(v207, v215, v134);
      (*(v211 + 16))(v208, v133, v212);
      (*(v68 + 16))(v198, v217, v120);
      v156 = v221;
      (*(v224 + 16))(v197, v222, v221);
      sub_24A37B740(v2 + v223[27], v200, &qword_27EF3F460, &unk_24A4B53B0);
      v157 = v214;
      sub_24A37B740(v214, v194, &qword_27EF3F478, &qword_24A4B5660);
      v158 = v216;
      sub_24A4AB050();
LABEL_72:
      (*(v211 + 8))(v232, v212);
      v169 = v158[1];
      v169(v215, v134);
      v169(v218, v134);
      sub_24A37EF2C(v157, &qword_27EF3F478, &qword_24A4B5660);
      (*(v234 + 8))(v217, v233);
      return (*(v224 + 8))(v222, v156);
    }

    (*(v137 + 4))(v195, v151, v136);
    if (*(v2 + v175) > 1u)
    {
      if (*(v2 + v175) != 2)
      {
        (*(v137 + 1))(v195, v136);
        v170 = v182;
        v176(v182, 1, 1, v209);
        v152 = &qword_27EF3F478;
        v153 = &qword_24A4B5660;
        v154 = v170;
        goto LABEL_63;
      }

      v159 = MEMORY[0x277D09248];
    }

    else if (*(v2 + v175))
    {
      v159 = MEMORY[0x277D09240];
    }

    else
    {
      v159 = MEMORY[0x277D09238];
    }

    v160 = v209;
    v161 = v210;
    v162 = v182;
    (*(v210 + 104))(v182, *v159, v209);
    v176(v162, 0, 1, v160);
    (*(v161 + 32))(v193, v162, v160);
    v163 = v179;
    (*(v137 + 2))(v179, v195, v136);
    v164 = v189;
    MEMORY[0x24C217420](v163);
    (*(v190 + 16))(v188, v164, v191);
    v158 = v216;
    v165 = v216[2];
    v166 = v219;
    v165(v206, v218, v219);
    v165(v207, v215, v166);
    (*(v211 + 16))(v208, v232, v212);
    (*(v210 + 16))(v187, v193, v160);
    (*(v234 + 16))(v198, v217, v233);
    (*(v224 + 16))(v197, v222, v221);
    sub_24A37B740(v2 + v223[27], v200, &qword_27EF3F460, &unk_24A4B53B0);
    v167 = *(v137 + 7);
    v168 = v205;
    v167(v180, 1, 1, v205);
    sub_24A4AAAC0();
    v156 = v221;
    sub_24A4AB030();
    v134 = v219;
    (*(v190 + 8))(v189, v191);
    (*(v210 + 8))(v193, v209);
    (*(v204 + 1))(v195, v168);
    v157 = v214;
    goto LABEL_72;
  }

  while (1)
  {
    v202 = v2;
    v235 = MEMORY[0x277D84F90];
    v227 = v138;
    result = sub_24A3DBCC8(0, v138 & ~(v138 >> 63), 0);
    if (v227 < 0)
    {
      break;
    }

    v2 = 0;
    v139 = v235;
    v140 = v228;
    v226 = v228 & 0xC000000000000001;
    v203 = v228 & 0xFFFFFFFFFFFFFF8;
    v225 = (v231 + 32);
    while (1)
    {
      v136 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v226)
      {
        v141 = MEMORY[0x24C218380](v2, v140);
      }

      else
      {
        if (v2 >= *(v203 + 16))
        {
          goto LABEL_57;
        }

        v141 = *(v140 + 8 * v2 + 32);
      }

      v142 = v141;
      result = [v141 identifier];
      if (!result)
      {
        goto LABEL_75;
      }

      v143 = result;
      v134 = sub_24A4AB850();

      v137 = v229;
      sub_24A4AADA0();

      v235 = v139;
      v145 = *(v139 + 16);
      v144 = *(v139 + 24);
      if (v145 >= v144 >> 1)
      {
        sub_24A3DBCC8(v144 > 1, v145 + 1, 1);
        v139 = v235;
      }

      *(v139 + 16) = v145 + 1;
      (*(v231 + 32))(v139 + ((*(v231 + 80) + 32) & ~*(v231 + 80)) + *(v231 + 72) * v145, v137, v230);
      ++v2;
      v120 = v233;
      v68 = v234;
      v133 = v232;
      v140 = v228;
      if (v136 == v227)
      {

        v2 = v202;
        v134 = v219;
        v137 = v204;
        v136 = v205;
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v138 = sub_24A4AC060();
    if (!v138)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

void FMFLocationAlert.recipients.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FMFLocationAlert();
  v3 = *(v0 + *(v2 + 68));
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v25 = v0;
      v26 = MEMORY[0x277D84F90];
      sub_24A4ABFD0();
      v6 = objc_opt_self();
      v7 = 0;
      v8 = (v3 + 40);
      while (v7 < *(v3 + 16))
      {
        v10 = *(v8 - 1);
        v9 = *v8;

        v11 = sub_24A4AB820();
        v12 = [v6 handleWithId_];

        if (!v12)
        {
          goto LABEL_20;
        }

        ++v7;

        sub_24A4ABFB0();
        v13 = *(v26 + 16);
        sub_24A4ABFE0();
        sub_24A4ABFF0();
        sub_24A4ABFC0();
        v8 += 2;
        if (v4 == v7)
        {
          v1 = v25;
          v5 = v26;
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_8:
    sub_24A3DB650(v5);
  }

  v14 = *(v1 + *(v2 + 64));
  if (!v14)
  {
    return;
  }

  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
LABEL_16:
    sub_24A3DB650(v16);
    return;
  }

  v27 = MEMORY[0x277D84F90];
  sub_24A4ABFD0();
  v17 = objc_opt_self();
  v18 = 0;
  v19 = (v14 + 40);
  while (v18 < *(v14 + 16))
  {
    v21 = *(v19 - 1);
    v20 = *v19;

    v22 = sub_24A4AB820();
    v23 = [v17 handleWithId_];

    if (!v23)
    {
      goto LABEL_21;
    }

    ++v18;

    sub_24A4ABFB0();
    v24 = *(v27 + 16);
    sub_24A4ABFE0();
    sub_24A4ABFF0();
    sub_24A4ABFC0();
    v19 += 2;
    if (v15 == v18)
    {
      v16 = v27;
      goto LABEL_16;
    }
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

id FMFLocationAlert.fence.getter()
{
  v1 = v0;
  v2 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39[-1] - v4;
  v6 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39[-1] - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277D07BB8]) init];
  if (v0[1])
  {
    v11 = *v0;
    v12 = sub_24A4AB820();
    [v10 setIdentifier_];
  }

  v13 = type metadata accessor for FMFLocationAlert();
  v14 = &v1[v13[19]];
  if (v14[1])
  {
    v15 = *v14;
    v16 = sub_24A4AB820();
    [v10 setFriendIdentifier_];
  }

  FMFLocationAlert.recipients.getter();
  sub_24A3DCB4C();
  v17 = sub_24A4ABA50();

  [v10 setRecipients_];

  [v10 setActive_];
  [v10 setRecurring_];
  sub_24A37B740(&v1[v13[12]], v9, &qword_27EF3F470, &qword_24A4B6960);
  v18 = type metadata accessor for FMFSchedule();
  if ((*(*(v18 - 8) + 48))(v9, 1, v18) == 1)
  {
    sub_24A37EF2C(v9, &qword_27EF3F470, &qword_24A4B6960);
    v19 = 0;
  }

  else
  {
    v19 = sub_24A3CB4CC();
    sub_24A3DCAEC(v9, type metadata accessor for FMFSchedule);
  }

  [v10 setSchedule_];

  v1[40];
  v1[40];
  v20 = sub_24A4AB820();

  [v10 setType_];

  v1[41];
  v21 = sub_24A4AB820();

  [v10 setTrigger_];

  v22 = &v1[v13[20]];
  if (v22[1])
  {
    v23 = *v22;
    v24 = v22[1];
    v25._countAndFlagsBits = sub_24A4AB880();
    FMFDefaultLabel.init(rawValue:)(v25);
    if (LOBYTE(v39[0]) == 5)
    {
    }

    else
    {
      FMFDefaultLabel.localizedLabel.getter();
    }

    v26 = sub_24A4AB820();

    [v10 setLabel_];
  }

  memcpy(v40, &v1[v13[23]], sizeof(v40));
  if (sub_24A3D77F8(v40) != 1)
  {
    memcpy(v39, v40, 0x130uLL);
    v27 = FMFAddress.placemark.getter();
    [v10 setPlacemark_];
  }

  [v10 setLocationType_];
  FMFLocationAlert.location.getter(v5);
  v28 = type metadata accessor for FMFLocation();
  if ((*(*(v28 - 8) + 48))(v5, 1, v28) == 1)
  {
    sub_24A37EF2C(v5, &qword_27EF3F480, &unk_24A4B8C20);
  }

  else
  {
    memcpy(v39, &v5[*(v28 + 44)], 0x161uLL);
    if (sub_24A3B9C24(v39) == 1)
    {
      sub_24A3DCAEC(v5, type metadata accessor for FMFLocation);
    }

    else
    {
      v29 = v39[38];
      sub_24A3DCAEC(v5, type metadata accessor for FMFLocation);
      [v10 setLocation_];
    }
  }

  if (v1[v13[15]] <= 2u)
  {
    v30 = sub_24A4AB820();

    [v10 setAcceptanceStatus_];
  }

  v31 = &v1[v13[13]];
  if (v31[1])
  {
    v32 = *v31;
    v33 = sub_24A4AB820();
  }

  else
  {
    v33 = 0;
  }

  [v10 setCkRecordName_];

  v34 = &v1[v13[14]];
  if (v34[1])
  {
    v35 = *v34;
    v36 = sub_24A4AB820();
  }

  else
  {
    v36 = 0;
  }

  [v10 setCkRecordZoneOwnerName_];

  [v10 setFromMe_];
  return v10;
}

uint64_t sub_24A3DB650(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_24A4AC060();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_24A4AC060();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_24A3DC644(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_24A3DC6E4(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_24A3DB740(uint64_t result)
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

  result = sub_24A3EDDB8(result, v12, 1, v3);
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

uint64_t sub_24A3DB82C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_24A4AC060();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_24A4AC060();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_24A3DC644(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_24A3DC874(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_24A3DB948(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_24A3EDED4(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_24A3BEA8C(&v44, &v4[24 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v47 = v24;
          v48 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v41 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v44;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v45;
  v15 = v46;
  v2 = v47;
  v43 = v45;
  if (!v48)
  {
    goto LABEL_19;
  }

  v20 = (v48 - 1) & v48;
  v21 = __clz(__rbit64(v48)) | (v47 << 6);
  v41 = v46;
  v22 = (v46 + 64) >> 6;
LABEL_27:
  v42 = result;
  v27 = *(result + 56) + 24 * v21;
  v29 = *v27;
  v28 = *(v27 + 8);
  v30 = *(v27 + 16);

  v31 = v43;
LABEL_29:
  while (1)
  {
    v32 = *(v4 + 3);
    v33 = v32 >> 1;
    if ((v32 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v33)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v39 = sub_24A3EDED4((v32 > 1), v13 + 1, 1, v4);
  v31 = v43;
  v4 = v39;
  v33 = *(v39 + 3) >> 1;
  if (v13 >= v33)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v34 = &v4[24 * v13 + 32];
    *v34 = v29;
    *(v34 + 8) = v28;
    *(v34 + 16) = v30 & 1;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v42;
LABEL_38:
    v37 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v38 = *(result + 56) + 24 * (v37 | (v2 << 6));
    v29 = *v38;
    v28 = *(v38 + 8);
    v30 = *(v38 + 16);

    v31 = v43;
    if (v13 == v33)
    {
      v13 = v33;
      *(v4 + 2) = v33;
      goto LABEL_29;
    }
  }

  v35 = v2;
  result = v42;
  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v36 >= v22)
    {
      break;
    }

    v20 = *(v31 + 8 * v36);
    ++v35;
    if (v20)
    {
      v2 = v36;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v40 = v2 + 1;
  }

  else
  {
    v40 = v22;
  }

  v46 = v41;
  v47 = v40 - 1;
  v48 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_24A3A13C0();
  *v1 = v4;
  return result;
}

char *sub_24A3DBC2C(char *a1, int64_t a2, char a3)
{
  result = sub_24A3BCAA8(a1, a2, a3, *v3, &qword_27EF3F548, &qword_24A4B5788);
  *v3 = result;
  return result;
}

size_t sub_24A3DBC64(size_t a1, int64_t a2, char a3)
{
  result = sub_24A39E398(a1, a2, a3, *v3, &qword_27EF3F538, &qword_24A4B5778, type metadata accessor for FMFIntermediateFriend);
  *v3 = result;
  return result;
}

char *sub_24A3DBCA8(char *a1, int64_t a2, char a3)
{
  result = sub_24A3DBF68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24A3DBCC8(size_t a1, int64_t a2, char a3)
{
  result = sub_24A39E398(a1, a2, a3, *v3, &unk_27EF3F590, &qword_24A4B57B8, MEMORY[0x277D09098]);
  *v3 = result;
  return result;
}

void *sub_24A3DBD0C(void *a1, int64_t a2, char a3)
{
  result = sub_24A3DC094(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24A3DBD2C(size_t a1, int64_t a2, char a3)
{
  result = sub_24A39E398(a1, a2, a3, *v3, &qword_27EF3F578, &qword_24A4B57A8, type metadata accessor for FMFLabelledLocation);
  *v3 = result;
  return result;
}

char *sub_24A3DBD70(char *a1, int64_t a2, char a3)
{
  result = sub_24A3BCAA8(a1, a2, a3, *v3, &qword_27EF3F4B0, &unk_24A4B68C0);
  *v3 = result;
  return result;
}

char *sub_24A3DBDA8(char *a1, int64_t a2, char a3)
{
  result = sub_24A3DC1D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A3DBDC8(char *a1, int64_t a2, char a3)
{
  result = sub_24A3DC2E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24A3DBDE8(size_t a1, int64_t a2, char a3)
{
  result = sub_24A39E398(a1, a2, a3, *v3, &qword_27EF3F508, &qword_24A4B5750, type metadata accessor for FMFLocationAlert);
  *v3 = result;
  return result;
}

size_t sub_24A3DBE2C(size_t a1, int64_t a2, char a3)
{
  result = sub_24A39E398(a1, a2, a3, *v3, &qword_27EF3F518, &qword_24A4B5758, MEMORY[0x277D092A8]);
  *v3 = result;
  return result;
}

char *sub_24A3DBE70(char *a1, int64_t a2, char a3)
{
  result = sub_24A3BCAA8(a1, a2, a3, *v3, &qword_27EF3F4F8, &unk_24A4B68F0);
  *v3 = result;
  return result;
}

void *sub_24A3DBEA8(void *a1, int64_t a2, char a3)
{
  result = sub_24A3BEC2C(a1, a2, a3, *v3, &qword_27EF3F4E0, &qword_24A4B5740, &qword_27EF3F4E8, &qword_24A4B5748);
  *v3 = result;
  return result;
}

void *sub_24A3DBEE8(void *a1, int64_t a2, char a3)
{
  result = sub_24A3DC510(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A3DBF08(char *a1, int64_t a2, char a3)
{
  result = sub_24A3BCAA8(a1, a2, a3, *v3, &qword_27EF3F558, &unk_24A4B5790);
  *v3 = result;
  return result;
}

char *sub_24A3DBF68(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A3C9CEC(&qword_27EF3F540, &qword_24A4B5780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 408);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[408 * v8])
    {
      memmove(v12, v13, 408 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24A3DC094(void *result, int64_t a2, char a3, void *a4)
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
    sub_24A3C9CEC(&qword_27EF3F528, &qword_24A4B5768);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    sub_24A3C9CEC(&qword_27EF3F530, &qword_24A4B5770);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A3DC1D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_24A3DC2E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A3C9CEC(&qword_27EF3F520, &qword_24A4B5760);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_24A3DC3F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A3C9CEC(&qword_27EF3F550, &qword_24A4B6940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24A3DC510(void *result, int64_t a2, char a3, void *a4)
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
    sub_24A3C9CEC(&qword_27EF3F4B8, &qword_24A4B5730);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24A3DC644(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_24A4AC060();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_24A4ABF80();
  *v1 = result;
  return result;
}

uint64_t sub_24A3DC6E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24A4AC060();
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
      result = sub_24A4AC060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24A3DCCF0(&qword_27EF3F588, &qword_27EF3F580, &qword_24A4B57B0);
          for (i = 0; i != v6; ++i)
          {
            sub_24A3C9CEC(&qword_27EF3F580, &qword_24A4B57B0);
            v9 = sub_24A3DCA10(v13, i, a3);
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
        sub_24A3DCB4C();
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

uint64_t sub_24A3DC874(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24A4AC060();
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
      result = sub_24A4AC060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24A3DCCF0(&qword_27EF3F570, &qword_27EF3F568, &qword_24A4B57A0);
          for (i = 0; i != v6; ++i)
          {
            sub_24A3C9CEC(&qword_27EF3F568, &qword_24A4B57A0);
            v9 = sub_24A3DCC00(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        sub_24A3C9CEC(&qword_27EF3F560, qword_24A4B9FE0);
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

void (*sub_24A3DCA10(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C218380](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_24A3DCA90;
  }

  __break(1u);
  return result;
}

unint64_t sub_24A3DCA98()
{
  result = qword_27EF3F490;
  if (!qword_27EF3F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F490);
  }

  return result;
}

uint64_t sub_24A3DCAEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24A3DCB4C()
{
  result = qword_27EF3F498;
  if (!qword_27EF3F498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF3F498);
  }

  return result;
}

unint64_t sub_24A3DCBAC()
{
  result = qword_27EF3F4A0;
  if (!qword_27EF3F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F4A0);
  }

  return result;
}

uint64_t (*sub_24A3DCC00(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x24C218380](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_24A3DCC80;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A3DCC88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A3DCCF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FMFShowHideLocationAction.__allocating_init(hideLocation:)(char a1)
{
  result = swift_allocObject();
  *(result + 17) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t FMFShowHideLocationAction.init(hideLocation:)(char a1)
{
  *(v1 + 17) = a1;
  *(v1 + 16) = 0;
  return v1;
}

uint64_t sub_24A3DCD8C()
{
  sub_24A4ABF50();

  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](0x636F4C6564696820, 0xEF203A6E6F697461);
  if (*(v0 + 17))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + 17))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v4, v5);

  return 60;
}

__n128 FMFUpdateMeDeviceAction.__allocating_init(meDevice:)(__n128 *a1)
{
  v2 = swift_allocObject();
  result = *a1;
  v4 = a1[1].n128_u64[0];
  v5 = a1[1].n128_u64[1];
  v6 = a1[2].n128_u8[0];
  *(v2 + 24) = *a1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  *(v2 + 16) = 0;
  return result;
}

uint64_t FMFUpdateMeDeviceAction.init(meDevice:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 16) = 0;
  return v1;
}

uint64_t sub_24A3DCFF8()
{
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](0x6369766544656D20, 0xEB00000000203A65);
  v5 = *(v0 + 3);
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 56);
  sub_24A4AC030();
  return 0;
}

uint64_t sub_24A3DD178()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
}

uint64_t FMFUpdateMeDeviceAction.deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);

  return v0;
}

uint64_t FMFUpdateMeDeviceAction.__deallocating_deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t FMFUpdateLocationAlertAction.__allocating_init(locationAlert:location:radius:address:label:triggerType:isOn:repeating:phoneNumbers:emails:schedule:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:)(uint64_t a1, void *a2, uint64_t a3, int a4, const void *a5, uint64_t a6, void *a7, unsigned __int8 *a8, char a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 *a18)
{
  v135 = a7;
  v136 = a8;
  v118 = a6;
  v129 = a4;
  v130 = a3;
  v132 = a2;
  v138 = a13;
  v21 = a10;
  v22 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v127 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v128 = &v118 - v26;
  MEMORY[0x28223BE20](v27);
  v139 = &v118 - v28;
  v29 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v124 = &v118 - v34;
  MEMORY[0x28223BE20](v35);
  v137 = &v118 - v36;
  v37 = type metadata accessor for FMFLocationAlert();
  v38 = *(*(v37 - 1) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v118 - v42;
  MEMORY[0x28223BE20](v44);
  v133 = &v118 - v45;
  v46 = *(v18 + 48);
  v47 = *(v18 + 52);
  v131 = swift_allocObject();
  memcpy(v143, a5, sizeof(v143));
  v48 = *a18;
  if (a10 == 2)
  {
    v21 = *(a1 + 43);
  }

  v119 = *v136;
  if (v48 == 3)
  {
    if (*(a1 + 40))
    {
      v49 = sub_24A4AC270();

      if ((v49 & v21 & 1) == 0)
      {
LABEL_6:
        v48 = 2;
        goto LABEL_9;
      }
    }

    else
    {

      if ((v21 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v48 = 0;
  }

LABEL_9:
  v120 = v48;
  v134 = a1;
  sub_24A3DE9CC(a1, v43);
  v50 = v137;
  sub_24A37B740(v138, v137, &qword_27EF3F470, &qword_24A4B6960);
  v51 = sub_24A4AAAD0();
  v123 = *(v51 - 8);
  v52 = *(v123 + 56);
  v125 = v123 + 56;
  v126 = v51;
  v136 = v52;
  (v52)(v139, 1, 1);
  v53 = *(v43 + 1);
  *v40 = *v43;
  *(v40 + 1) = v53;
  v40[42] = v43[42];
  v40[43] = v21 & 1;
  sub_24A37B740(v50, v32, &qword_27EF3F470, &qword_24A4B6960);
  v54 = type metadata accessor for FMFSchedule();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  if (v56(v32, 1, v54) == 1)
  {
    v57 = v124;
    sub_24A37B740(&v43[v37[12]], v124, &qword_27EF3F470, &qword_24A4B6960);
    v58 = v57;
    v59 = v56(v32, 1, v54);

    if (v59 != 1)
    {
      sub_24A37EF2C(v32, &qword_27EF3F470, &qword_24A4B6960);
    }
  }

  else
  {
    v58 = v124;
    sub_24A3B5814(v32, v124, type metadata accessor for FMFSchedule);
    (*(v55 + 56))(v58, 0, 1, v54);
  }

  v60 = a15;
  sub_24A37BE24(v58, &v40[v37[12]], &qword_27EF3F470, &qword_24A4B6960);
  v40[40] = v43[40];
  v62 = v119;
  if (v119 == 4)
  {
    v62 = v43[41];
  }

  v63 = a17;
  v40[41] = v62;
  v65 = v37[13];
  if (!a15)
  {
    a14 = *&v43[v65];
    v60 = *&v43[v65 + 8];
  }

  v66 = a11;
  v67 = &v40[v65];
  *v67 = a14;
  *(v67 + 1) = v60;
  v68 = v37[14];
  if (!a17)
  {
    a16 = *&v43[v68];
    v63 = *&v43[v68 + 8];
  }

  v69 = a12;
  v70 = &v40[v68];
  *v70 = a16;
  *(v70 + 1) = v63;
  v40[v37[15]] = v120;
  v71 = v37[16];
  if (!a11)
  {
    v66 = *&v43[v71];
  }

  *&v40[v71] = v66;
  v72 = v37[17];
  v73 = v127;
  v74 = v123;
  if (!a12)
  {
    v69 = *&v43[v72];
  }

  *&v40[v72] = v69;
  v75 = v37[18];
  v124 = *&v43[v75];
  *&v40[v75] = v124;
  v76 = v37[19];
  v77 = *&v43[v76];
  v78 = *&v43[v76 + 8];
  v79 = &v40[v76];
  *v79 = v77;
  *(v79 + 1) = v78;
  sub_24A37B740(v139, v73, &qword_27EF3F460, &unk_24A4B53B0);
  v80 = *(v74 + 48);
  v81 = v126;
  v82 = v80(v73, 1, v126);
  v121 = v37;
  v122 = v43;
  if (v82 == 1)
  {
    v83 = &v43[v37[27]];
    v84 = v128;
    sub_24A37B740(v83, v128, &qword_27EF3F460, &unk_24A4B53B0);
    v85 = v80(v73, 1, v81);

    v86 = v81;
    if (v85 != 1)
    {
      sub_24A37EF2C(v73, &qword_27EF3F460, &unk_24A4B53B0);
    }
  }

  else
  {
    v84 = v128;
    (*(v74 + 32))(v128, v73, v81);
    (v136)(v84, 0, 1, v81);

    v86 = v81;
  }

  v87 = v121;
  sub_24A37BE24(v84, &v40[v121[27]], &qword_27EF3F460, &unk_24A4B53B0);
  v88 = v132;
  if (v132)
  {
    v89 = v132;
    [v89 coordinate];
    *(v40 + 2) = v90;
    [v89 coordinate];
    *(v40 + 3) = v91;
    v92 = v87[26];
    v93 = [v89 timestamp];
    sub_24A4AAAA0();

    (v136)(&v40[v92], 0, 1, v86);
    v94 = v135;
    v95 = v122;
  }

  else
  {
    v95 = v122;
    *(v40 + 1) = *(v122 + 1);
    sub_24A37B740(v95 + v87[26], &v40[v87[26]], &qword_27EF3F460, &unk_24A4B53B0);
    v94 = v135;
  }

  v96 = v130;
  if (v129)
  {
    v96 = *(v95 + 32);
  }

  *(v40 + 4) = v96;
  memcpy(v142, v143, sizeof(v142));
  if (sub_24A3D77F8(v142) != 1)
  {
    memcpy(&v40[v87[23]], v143, 0x130uLL);
    memcpy(v141, v142, sizeof(v141));
    v106 = FMFAddress.displayAddress.getter();
    v107 = &v40[v87[22]];
    *v107 = v106;
    v107[1] = v108;
    if (v94)
    {
      goto LABEL_34;
    }

LABEL_39:

    sub_24A37EF2C(v138, &qword_27EF3F470, &qword_24A4B6960);
    sub_24A3DEA30(v134);
    sub_24A37EF2C(v139, &qword_27EF3F460, &unk_24A4B53B0);
    sub_24A37EF2C(v137, &qword_27EF3F470, &qword_24A4B6960);
    v109 = v87[20];
    v111 = *(v95 + v109);
    v110 = *(v95 + v109 + 8);
    v112 = *(v95 + v109 + 16);
    v113 = &v40[v109];
    *v113 = v111;
    *(v113 + 1) = v110;
    *(v113 + 8) = v112;

    goto LABEL_40;
  }

  v97 = v87[23];
  memcpy(v141, (v95 + v97), sizeof(v141));
  memcpy(&v40[v87[23]], (v95 + v97), 0x130uLL);
  v98 = v87[22];
  v99 = *(v95 + v98);
  v100 = *(v95 + v98 + 8);
  v101 = &v40[v98];
  *v101 = v99;
  *(v101 + 1) = v100;
  sub_24A37B740(v141, &v140, &unk_27EF404E0, &unk_24A4B5230);

  if (!v94)
  {
    goto LABEL_39;
  }

LABEL_34:

  v102 = v118;
  v103._countAndFlagsBits = v118;
  v103._object = v94;
  FMFDefaultLabel.init(rawValue:)(v103);

  sub_24A37EF2C(v138, &qword_27EF3F470, &qword_24A4B6960);
  sub_24A3DEA30(v134);
  sub_24A37EF2C(v139, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37EF2C(v137, &qword_27EF3F470, &qword_24A4B6960);
  if (v141[0] == 5)
  {
    v104 = 259;
  }

  else
  {
    v104 = 3;
  }

  v105 = &v40[v87[20]];
  *v105 = v102;
  *(v105 + 1) = v94;
  *(v105 + 8) = v104;
LABEL_40:
  v40[v87[21]] = *(v95 + v87[21]);
  v40[v87[24]] = *(v95 + v87[24]);
  v114 = *(v95 + v87[25]);
  sub_24A3DEA30(v95);
  v40[v87[25]] = v114;
  v115 = v133;
  sub_24A3B5814(v40, v133, type metadata accessor for FMFLocationAlert);
  v116 = v131;
  sub_24A3B5814(v115, v131 + OBJC_IVAR____TtC7FMFCore28FMFUpdateLocationAlertAction_locationAlert, type metadata accessor for FMFLocationAlert);
  *(v116 + 16) = 1;
  return v116;
}

uint64_t FMFUpdateLocationAlertAction.init(locationAlert:location:radius:address:label:triggerType:isOn:repeating:phoneNumbers:emails:schedule:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:)(uint64_t a1, void *a2, uint64_t a3, int a4, const void *a5, uint64_t a6, void *a7, unsigned __int8 *a8, char a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 *a18)
{
  v130 = a7;
  v115 = a6;
  v125 = a4;
  v126 = a3;
  v127 = a2;
  v135 = a13;
  v21 = a10;
  v22 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v123 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v124 = &v115 - v26;
  MEMORY[0x28223BE20](v27);
  v136 = &v115 - v28;
  v29 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v121 = &v115 - v34;
  MEMORY[0x28223BE20](v35);
  v134 = &v115 - v36;
  v37 = type metadata accessor for FMFLocationAlert();
  v38 = *(*(v37 - 1) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v115 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v115 - v42;
  MEMORY[0x28223BE20](v44);
  v128 = &v115 - v45;
  memcpy(v140, a5, sizeof(v140));
  v46 = *a18;
  if (a10 == 2)
  {
    v21 = *(a1 + 43);
  }

  v116 = *a8;
  if (v46 == 3)
  {
    if (*(a1 + 40))
    {
      v47 = sub_24A4AC270();

      if ((v47 & v21 & 1) == 0)
      {
LABEL_6:
        v46 = 2;
        goto LABEL_9;
      }
    }

    else
    {

      if ((v21 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v46 = 0;
  }

LABEL_9:
  v117 = v46;
  v129 = a1;
  sub_24A3DE9CC(a1, v43);
  v48 = v134;
  sub_24A37B740(v135, v134, &qword_27EF3F470, &qword_24A4B6960);
  v49 = sub_24A4AAAD0();
  v120 = *(v49 - 8);
  v132 = *(v120 + 56);
  v133 = v49;
  v122 = v120 + 56;
  v132(v136, 1, 1);
  v50 = *(v43 + 1);
  *v40 = *v43;
  *(v40 + 1) = v50;
  v40[42] = v43[42];
  v40[43] = v21 & 1;
  sub_24A37B740(v48, v32, &qword_27EF3F470, &qword_24A4B6960);
  v51 = type metadata accessor for FMFSchedule();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  if (v53(v32, 1, v51) == 1)
  {
    v54 = v121;
    sub_24A37B740(&v43[v37[12]], v121, &qword_27EF3F470, &qword_24A4B6960);
    v55 = v53(v32, 1, v51);
    v56 = v54;
    v57 = v55;

    if (v57 != 1)
    {
      sub_24A37EF2C(v32, &qword_27EF3F470, &qword_24A4B6960);
    }
  }

  else
  {
    v56 = v121;
    sub_24A3B5814(v32, v121, type metadata accessor for FMFSchedule);
    (*(v52 + 56))(v56, 0, 1, v51);
  }

  v58 = a15;
  sub_24A37BE24(v56, &v40[v37[12]], &qword_27EF3F470, &qword_24A4B6960);
  v40[40] = v43[40];
  v60 = v116;
  if (v116 == 4)
  {
    v60 = v43[41];
  }

  v61 = a17;
  v40[41] = v60;
  v63 = v37[13];
  if (!a15)
  {
    a14 = *&v43[v63];
    v58 = *&v43[v63 + 8];
  }

  v64 = a11;
  v65 = &v40[v63];
  *v65 = a14;
  *(v65 + 1) = v58;
  v66 = v37[14];
  if (!a17)
  {
    a16 = *&v43[v66];
    v61 = *&v43[v66 + 8];
  }

  v67 = a12;
  v68 = &v40[v66];
  *v68 = a16;
  *(v68 + 1) = v61;
  v40[v37[15]] = v117;
  v69 = v37[16];
  v70 = v120;
  if (!a11)
  {
    v64 = *&v43[v69];
  }

  *&v40[v69] = v64;
  v71 = v37[17];
  v72 = v123;
  if (!a12)
  {
    v67 = *&v43[v71];
  }

  *&v40[v71] = v67;
  v73 = v37[18];
  v121 = *&v43[v73];
  *&v40[v73] = v121;
  v74 = v37[19];
  v75 = *&v43[v74];
  v76 = *&v43[v74 + 8];
  v77 = &v40[v74];
  *v77 = v75;
  *(v77 + 1) = v76;
  sub_24A37B740(v136, v72, &qword_27EF3F460, &unk_24A4B53B0);
  v78 = *(v70 + 48);
  v79 = v133;
  v80 = v78(v72, 1, v133);
  v118 = v37;
  v119 = v43;
  if (v80 == 1)
  {
    v81 = &v43[v37[27]];
    v82 = v124;
    sub_24A37B740(v81, v124, &qword_27EF3F460, &unk_24A4B53B0);
    v83 = v78(v72, 1, v79);

    if (v83 != 1)
    {
      sub_24A37EF2C(v72, &qword_27EF3F460, &unk_24A4B53B0);
    }
  }

  else
  {
    v82 = v124;
    (*(v70 + 32))(v124, v72, v79);
    (v132)(v82, 0, 1, v79);
  }

  v84 = v118;
  sub_24A37BE24(v82, &v40[v118[27]], &qword_27EF3F460, &unk_24A4B53B0);
  v85 = v127;
  if (v127)
  {
    v86 = v127;
    [v86 coordinate];
    *(v40 + 2) = v87;
    [v86 coordinate];
    *(v40 + 3) = v88;
    v89 = v84[26];
    v90 = [v86 timestamp];
    sub_24A4AAAA0();

    (v132)(&v40[v89], 0, 1, v133);
    v91 = v130;
    v92 = v119;
  }

  else
  {
    v92 = v119;
    *(v40 + 1) = *(v119 + 1);
    sub_24A37B740(v92 + v84[26], &v40[v84[26]], &qword_27EF3F460, &unk_24A4B53B0);
    v91 = v130;
  }

  v93 = v126;
  if (v125)
  {
    v93 = *(v92 + 32);
  }

  *(v40 + 4) = v93;
  memcpy(v139, v140, sizeof(v139));
  if (sub_24A3D77F8(v139) != 1)
  {
    memcpy(&v40[v84[23]], v140, 0x130uLL);
    memcpy(v138, v139, sizeof(v138));
    v103 = FMFAddress.displayAddress.getter();
    v104 = &v40[v84[22]];
    *v104 = v103;
    v104[1] = v105;
    if (v91)
    {
      goto LABEL_34;
    }

LABEL_39:

    sub_24A37EF2C(v135, &qword_27EF3F470, &qword_24A4B6960);
    sub_24A3DEA30(v129);
    sub_24A37EF2C(v136, &qword_27EF3F460, &unk_24A4B53B0);
    sub_24A37EF2C(v134, &qword_27EF3F470, &qword_24A4B6960);
    v106 = v84[20];
    v108 = *(v92 + v106);
    v107 = *(v92 + v106 + 8);
    v109 = *(v92 + v106 + 16);
    v110 = &v40[v106];
    *v110 = v108;
    *(v110 + 1) = v107;
    *(v110 + 8) = v109;

    goto LABEL_40;
  }

  v94 = v84[23];
  memcpy(v138, (v92 + v94), sizeof(v138));
  memcpy(&v40[v84[23]], (v92 + v94), 0x130uLL);
  v95 = v84[22];
  v96 = *(v92 + v95);
  v97 = *(v92 + v95 + 8);
  v98 = &v40[v95];
  *v98 = v96;
  *(v98 + 1) = v97;
  sub_24A37B740(v138, &v137, &unk_27EF404E0, &unk_24A4B5230);

  if (!v91)
  {
    goto LABEL_39;
  }

LABEL_34:

  v99 = v115;
  v100._countAndFlagsBits = v115;
  v100._object = v91;
  FMFDefaultLabel.init(rawValue:)(v100);

  sub_24A37EF2C(v135, &qword_27EF3F470, &qword_24A4B6960);
  sub_24A3DEA30(v129);
  sub_24A37EF2C(v136, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37EF2C(v134, &qword_27EF3F470, &qword_24A4B6960);
  if (v138[0] == 5)
  {
    v101 = 259;
  }

  else
  {
    v101 = 3;
  }

  v102 = &v40[v84[20]];
  *v102 = v99;
  *(v102 + 1) = v91;
  *(v102 + 8) = v101;
LABEL_40:
  v40[v84[21]] = *(v92 + v84[21]);
  v40[v84[24]] = *(v92 + v84[24]);
  v111 = *(v92 + v84[25]);
  sub_24A3DEA30(v92);
  v40[v84[25]] = v111;
  v112 = v128;
  sub_24A3B5814(v40, v128, type metadata accessor for FMFLocationAlert);
  v113 = v131;
  sub_24A3B5814(v112, v131 + OBJC_IVAR____TtC7FMFCore28FMFUpdateLocationAlertAction_locationAlert, type metadata accessor for FMFLocationAlert);
  *(v113 + 16) = 1;
  return v113;
}

uint64_t sub_24A3DE770()
{
  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  sub_24A4ABF50();
  MEMORY[0x24C217D50](0x6E6F697461636F6CLL, 0xEF203A7472656C41);
  type metadata accessor for FMFLocationAlert();
  sub_24A4AC030();

  MEMORY[0x24C217D50](0, 0xE000000000000000);

  return 60;
}

uint64_t FMFUpdateLocationAlertAction.__deallocating_deinit()
{
  sub_24A3DEA30(v0 + OBJC_IVAR____TtC7FMFCore28FMFUpdateLocationAlertAction_locationAlert);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A3DE9CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFLocationAlert();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A3DEA30(uint64_t a1)
{
  v2 = type metadata accessor for FMFLocationAlert();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FMFUpdateLocationAlertAction()
{
  result = qword_27EF3F5A0;
  if (!qword_27EF3F5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A3DEAE0()
{
  result = type metadata accessor for FMFLocationAlert();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A3DEBE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6D614E7473726966;
    }

    else
    {
      v4 = 0x736C69616D65;
    }

    if (v2)
    {
      v3 = 0xE900000000000065;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x656369766544656DLL;
    v3 = 0xEA00000000006449;
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6449656369766564;
  }

  else
  {
    v4 = 0x656C626967696C65;
    v3 = 0xEE00654D6F747541;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6D614E7473726966;
    }

    else
    {
      v9 = 0x736C69616D65;
    }

    if (a2)
    {
      v8 = 0xE900000000000065;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x6449656369766564;
    if (a2 != 3)
    {
      v6 = 0x656C626967696C65;
      v5 = 0xEE00654D6F747541;
    }

    if (a2 == 2)
    {
      v7 = 0x656369766544656DLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xEA00000000006449;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_24A4AC270();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24A3DED90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x75426C65636E6163;
    v10 = 0xEF4C52556E6F7474;
    if (a1 != 6)
    {
      v9 = 0x7079547472656C61;
      v10 = 0xE900000000000065;
    }

    v11 = 0x6E6F747475426B6FLL;
    v12 = 0xEB000000004C5255;
    if (a1 != 4)
    {
      v11 = 0xD000000000000011;
      v12 = 0x800000024A4AE2A0;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE700000000000000;
    v5 = 0x6567617373656DLL;
    if (a1 != 2)
    {
      v5 = 0x6E6F747475426B6FLL;
      v4 = 0xED0000656C746954;
    }

    v6 = 0x656C746974;
    if (a1)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v6 = 0x64497472656C61;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEF4C52556E6F7474;
        if (v7 != 0x75426C65636E6163)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE900000000000065;
        if (v7 != 0x7079547472656C61)
        {
LABEL_47:
          v14 = sub_24A4AC270();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEB000000004C5255;
      if (v7 != 0x6E6F747475426B6FLL)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x800000024A4AE2A0;
      if (v7 != 0xD000000000000011)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE700000000000000;
      if (v7 != 0x6567617373656DLL)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xED0000656C746954;
      if (v7 != 0x6E6F747475426B6FLL)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE500000000000000;
    if (v7 != 0x656C746974)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x64497472656C61)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_24A3DF050(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7265746E65;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x74616964656D6D69;
    }

    else
    {
      v4 = 0x656C756465686373;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1953069157;
    }

    else
    {
      v4 = 0x7265746E65;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x74616964656D6D69;
  v8 = 0xE900000000000065;
  if (a2 != 2)
  {
    v7 = 0x656C756465686373;
    v8 = 0xE900000000000064;
  }

  if (a2)
  {
    v2 = 1953069157;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A4AC270();
  }

  return v11 & 1;
}

uint64_t sub_24A3DF198(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006564;
  v3 = 0x6F43737574617473;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0xE300000000000000;
    v14 = 7107189;
    if (a1 != 2)
    {
      v14 = 0x6D614E7473726966;
      v13 = 0xE900000000000065;
    }

    v15 = 0x614D737574617473;
    v16 = 0xE900000000000070;
    if (!a1)
    {
      v15 = 0x6F43737574617473;
      v16 = 0xEA00000000006564;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 1)
    {
      v12 = v16;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0xD000000000000010;
    v6 = 0x800000024A4AEAD0;
    v7 = 0x55746E6572727563;
    v8 = 0xED00006449726573;
    if (a1 != 7)
    {
      v7 = 0x65636E6566;
      v8 = 0xE500000000000000;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0xE800000000000000;
    v10 = 0x656D614E7473616CLL;
    if (a1 != 4)
    {
      v10 = 0x6C69616D65;
      v9 = 0xE500000000000000;
    }

    if (a1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 5)
    {
      v12 = v9;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE300000000000000;
        if (v11 != 7107189)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE900000000000065;
        if (v11 != 0x6D614E7473726966)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0xE900000000000070;
      if (v11 != 0x614D737574617473)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x656D614E7473616CLL)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x6C69616D65)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0x800000024A4AEAD0;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0xED00006449726573;
      if (v11 != 0x55746E6572727563)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v2 = 0xE500000000000000;
    v3 = 0x65636E6566;
  }

  if (v11 != v3)
  {
LABEL_49:
    v17 = sub_24A4AC270();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_24A3DF454(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x64757469676E6F6CLL;
  v6 = 0xE900000000000065;
  if (a1 != 6)
  {
    v5 = 0x7354657461647075;
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x644972657375;
  if (a1 != 4)
  {
    v8 = 0x656475746974616CLL;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x7079546C6562616CLL;
  v10 = 0xE900000000000065;
  if (a1 != 2)
  {
    v9 = 1701869940;
    v10 = 0xE400000000000000;
  }

  if (a1)
  {
    v4 = 0x6C6562616CLL;
    v3 = 0xE500000000000000;
  }

  if (a1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x6C6562616CLL)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v13 = 0xE200000000000000;
        if (v11 != 25705)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_41;
    }

    if (a2 != 2)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1701869940)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    v14 = 0x7079546C6562616CLL;
LABEL_32:
    v13 = 0xE900000000000065;
    if (v11 != v14)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x644972657375)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x656475746974616CLL)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_41;
  }

  if (a2 == 6)
  {
    v14 = 0x64757469676E6F6CLL;
    goto LABEL_32;
  }

  v13 = 0xE800000000000000;
  if (v11 != 0x7354657461647075)
  {
LABEL_43:
    v15 = sub_24A4AC270();
    goto LABEL_44;
  }

LABEL_41:
  if (v12 != v13)
  {
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:

  return v15 & 1;
}

uint64_t sub_24A3DF6A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x736C6562616CLL;
  if (a1 == 5)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x756363616E497369;
    v5 = 0xEC00000065746172;
  }

  v6 = 0xD000000000000012;
  v7 = 0x800000024A4AE0B0;
  if (a1 != 3)
  {
    v6 = 0x6D617473656D6974;
    v7 = 0xE900000000000070;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x64757469676E6F6CLL;
  v9 = 0xE900000000000065;
  if (a1 != 1)
  {
    v8 = 0x656475746974616CLL;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x73736572646461;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE900000000000065;
        if (v10 != 0x64757469676E6F6CLL)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x656475746974616CLL)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x73736572646461)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x736C6562616CLL)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xEC00000065746172;
      if (v10 != 0x756363616E497369)
      {
LABEL_40:
        v13 = sub_24A4AC270();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x800000024A4AE0B0;
    if (v10 != 0xD000000000000012)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xE900000000000070;
    if (v10 != 0x6D617473656D6974)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_24A3DF8F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656D6F683C21245FLL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6B726F773C21245FLL;
    }

    else
    {
      v4 = 0x656D6F683C21245FLL;
    }

    v5 = 0xEC0000005F24213ELL;
  }

  else if (a1 == 2)
  {
    v4 = 0x6F6863733C21245FLL;
    v5 = 0xEE005F24213E6C6FLL;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0x3E6D79673C21245FLL;
    }

    else
    {
      v4 = 0x6568746F3C21245FLL;
    }

    if (v3 == 3)
    {
      v5 = 0xEB000000005F2421;
    }

    else
    {
      v5 = 0xED00005F24213E72;
    }
  }

  v6 = 0x6F6863733C21245FLL;
  v7 = 0xEE005F24213E6C6FLL;
  v8 = 0x3E6D79673C21245FLL;
  v9 = 0xEB000000005F2421;
  if (a2 != 3)
  {
    v8 = 0x6568746F3C21245FLL;
    v9 = 0xED00005F24213E72;
  }

  if (a2 != 2)
  {
    v6 = v8;
    v7 = v9;
  }

  if (a2)
  {
    v2 = 0x6B726F773C21245FLL;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v6;
  }

  if (a2 <= 1u)
  {
    v11 = 0xEC0000005F24213ELL;
  }

  else
  {
    v11 = v7;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_24A4AC270();
  }

  return v12 & 1;
}

uint64_t sub_24A3DFAAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7472656C61;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6F43726576726573;
    }

    else
    {
      v4 = 0x7472656C61;
    }

    if (v3)
    {
      v5 = 0xED0000747865746ELL;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x746E6F4361746164;
    v5 = 0xEB00000000747865;
  }

  else if (a1 == 3)
  {
    v4 = 0x6174536863746566;
    v5 = 0xEB00000000737574;
  }

  else
  {
    v4 = 0x52646E616D6D6F63;
    v5 = 0xEF65736E6F707365;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0x6F43726576726573;
    v8 = 0xED0000747865746ELL;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x746E6F4361746164;
    v6 = 0xEB00000000747865;
    v7 = 0x6174536863746566;
    v8 = 0xEB00000000737574;
    if (a2 != 3)
    {
      v7 = 0x52646E616D6D6F63;
      v8 = 0xEF65736E6F707365;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_24A4AC270();
  }

  return v12 & 1;
}

uint64_t sub_24A3DFC74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v5 = 0xD000000000000013;
      v6 = 0x800000024A4AE5F0;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0x457972616D697270;
      }

      else
      {
        v5 = 0x657469726F766166;
      }

      if (v2 == 4)
      {
        v6 = 0xEC0000006C69616DLL;
      }

      else
      {
        v6 = 0xE900000000000073;
      }
    }
  }

  else
  {
    v3 = 0x800000024A4AE5D0;
    v4 = 0xD000000000000011;
    if (a1 != 1)
    {
      v4 = 0x61636F4C65646968;
      v3 = 0xEC0000006E6F6974;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0x800000024A4AE5B0;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v7 = 0xD000000000000011;
      }

      else
      {
        v7 = 0x61636F4C65646968;
      }

      if (a2 == 1)
      {
        v8 = 0x800000024A4AE5D0;
      }

      else
      {
        v8 = 0xEC0000006E6F6974;
      }

      if (v5 != v7)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v9 = "allowFriendRequests";
    goto LABEL_34;
  }

  if (a2 == 3)
  {
    v9 = "shouldReceiveEmails";
LABEL_34:
    v8 = (v9 - 32) | 0x8000000000000000;
    if (v5 != 0xD000000000000013)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (a2 == 4)
  {
    v8 = 0xEC0000006C69616DLL;
    if (v5 != 0x457972616D697270)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v8 = 0xE900000000000073;
    if (v5 != 0x657469726F766166)
    {
LABEL_39:
      v10 = sub_24A4AC270();
      goto LABEL_40;
    }
  }

LABEL_37:
  if (v6 != v8)
  {
    goto LABEL_39;
  }

  v10 = 1;
LABEL_40:

  return v10 & 1;
}

uint64_t sub_24A3DFE78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x454D45564153;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x5441434552504544;
    }

    else
    {
      v4 = 0x454D45564153;
    }

    if (v3)
    {
      v5 = 0xEA00000000004445;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xD000000000000015;
    v5 = 0x800000024A4AE230;
  }

  else if (a1 == 3)
  {
    v4 = 0x496B726F7774656ELL;
    v5 = 0xEC00000065757373;
  }

  else
  {
    v4 = 0x696C616974696E69;
    v5 = 0xEE006E6F6974617ALL;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE600000000000000;
    v7 = 0x5441434552504544;
    v8 = 0xEA00000000004445;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0xD000000000000015;
    v6 = 0x800000024A4AE230;
    v7 = 0x496B726F7774656ELL;
    v8 = 0xEC00000065757373;
    if (a2 != 3)
    {
      v7 = 0x696C616974696E69;
      v8 = 0xEE006E6F6974617ALL;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_24A4AC270();
  }

  return v12 & 1;
}

uint64_t sub_24A3E0028(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x756F487472617473;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x737961446E617073;
  if (a1 != 5)
  {
    v6 = 0x7A5465636E6566;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6E694D646E65;
  if (a1 != 3)
  {
    v8 = 0x6557664F73796164;
    v7 = 0xEA00000000006B65;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6E694D7472617473;
  if (a1 != 1)
  {
    v10 = 0x72756F48646E65;
    v9 = 0xE700000000000000;
  }

  if (!a1)
  {
    v10 = 0x756F487472617473;
    v9 = 0xE900000000000072;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x6E694D7472617473)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x72756F48646E65)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x737961446E617073)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x7A5465636E6566)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x6E694D646E65)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x6557664F73796164;
    v2 = 0xEA00000000006B65;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_24A4AC270();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_24A3E0248(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000010;
      v4 = 0x800000024A4AE2F0;
    }

    else
    {
      v3 = 0x6E6F697461636F6CLL;
      v4 = 0xEE00656372756F53;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x800000024A4AE2F0;
      if (v3 != 0xD000000000000010)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xEE00656372756F53;
      if (v3 != 0x6E6F697461636F6CLL)
      {
LABEL_26:
        v7 = sub_24A4AC270();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v5 = 25705;
    }

    if (a2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_24A3E03B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000044;
  v3 = 0x49555565726F7473;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x73614865726F7473;
    }

    else
    {
      v5 = 0x6D614E74726F6873;
    }

    if (v4 == 2)
    {
      v6 = 0xED00006567616D49;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x4E79616C70736964;
    }

    else
    {
      v5 = 0x49555565726F7473;
    }

    if (v4)
    {
      v6 = 0xEB00000000656D61;
    }

    else
    {
      v6 = 0xE900000000000044;
    }
  }

  v7 = 0x73614865726F7473;
  v8 = 0xED00006567616D49;
  if (a2 != 2)
  {
    v7 = 0x6D614E74726F6873;
    v8 = 0xE900000000000065;
  }

  if (a2)
  {
    v3 = 0x4E79616C70736964;
    v2 = 0xEB00000000656D61;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A4AC270();
  }

  return v11 & 1;
}

_BYTE *FMFAddLocationAlertAction.__allocating_init(friendId:followerIds:emails:phoneNumbers:location:address:label:addressType:radius:locationAlertTarget:triggerType:repeating:schedule:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, unsigned __int8 *a12, unsigned __int8 *a13, unsigned __int8 *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 *a21)
{
  v134 = a5;
  v131 = a4;
  v132 = a3;
  v136 = a2;
  v122 = a1;
  v130 = a18;
  v133 = a16;
  v135 = a11;
  v24 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v128 = &v112 - v26;
  v27 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v125 = &v112 - v29;
  v124 = type metadata accessor for FMFLocationAlert();
  v30 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v126 = (&v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));

  v32 = *(v21 + 48);
  v33 = *(v21 + 52);
  v129 = v21;
  v34 = swift_allocObject();
  v123 = *a12;
  v35 = *a13;
  v36 = a6;
  v37 = *a14;
  v38 = *a21;
  v39 = *(type metadata accessor for FMFLocation() + 44);
  memcpy(v141, (v36 + v39), 0x161uLL);
  if (sub_24A3B9C24(v141) == 1)
  {

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v40 = sub_24A4AB630();
    sub_24A378E18(v40, qword_27EF4E260);
    v41 = sub_24A4AB600();
    v42 = sub_24A4ABCC0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_24A376000, v41, v42, "Location must have an coordinates.", v43, 2u);
      MEMORY[0x24C219130](v43, -1, -1);
    }

    sub_24A3E2578();
    swift_allocError();
    *v44 = 0xD000000000000013;
    *(v44 + 8) = 0x800000024A4AFAE0;
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0;
    swift_willThrow();
    goto LABEL_15;
  }

  LODWORD(v119) = v38;
  v120 = v37;
  v121 = v35;
  v127 = a20;
  v45 = v130;
  v46 = v134;
  v47 = v141[38];
  memcpy(v140, (v36 + v39), 0x161uLL);
  v48 = sub_24A3B9C24(v140);
  v49 = v131;
  if (v48 == 1 || (memcpy(v139, v140, sizeof(v139)), sub_24A3D77F8(v139) == 1))
  {
    v50 = v47;

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v51 = sub_24A4AB630();
    sub_24A378E18(v51, qword_27EF4E260);
    v52 = sub_24A4AB600();
    v53 = sub_24A4ABCC0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = v36;
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_24A376000, v52, v53, "Location must have an address.", v55, 2u);
      v56 = v55;
      v36 = v54;
      MEMORY[0x24C219130](v56, -1, -1);
    }

    v57 = 0x800000024A4AFB00;
    sub_24A3E2578();
    swift_allocError();
    v59 = 0xD000000000000010;
LABEL_14:
    *v58 = v59;
    *(v58 + 8) = v57;
    *(v58 + 16) = 0;
    *(v58 + 24) = 0;
    *(v58 + 32) = 0;
    swift_willThrow();

LABEL_15:
    sub_24A3E267C(v36, type metadata accessor for FMFLocation);
    sub_24A37EF2C(v133, &qword_27EF3F470, &qword_24A4B6960);
    v60 = *(*v34 + 48);
    v61 = *(*v34 + 52);
    swift_deallocPartialClassInstance();
    return v34;
  }

  v63 = v49;
  if (!v49 || !*(v49 + 16))
  {
    if (v46)
    {
      if (!(*(v46 + 16) | v136))
      {
LABEL_21:
        v50 = v47;

        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v64 = sub_24A4AB630();
        sub_24A378E18(v64, qword_27EF4E260);
        v65 = sub_24A4AB600();
        v66 = sub_24A4ABCC0();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = v36;
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&dword_24A376000, v65, v66, "Email, phone numbers, friendId all cannot be empty.", v68, 2u);
          v69 = v68;
          v36 = v67;
          MEMORY[0x24C219130](v69, -1, -1);
        }

        v57 = 0x800000024A4AFB20;
        sub_24A3E2578();
        swift_allocError();
        v59 = 0xD00000000000001ELL;
        goto LABEL_14;
      }
    }

    else if (!v136)
    {
      goto LABEL_21;
    }
  }

  if ((v121 & 1) == 0)
  {
    v70 = v47;
    v72 = v47;
    sub_24A37B740(v140, v138, &unk_27EF404E0, &unk_24A4B5230);

    if (v136)
    {
      goto LABEL_30;
    }

LABEL_33:
    sub_24A37EF2C(v140, &unk_27EF404E0, &unk_24A4B5230);

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v73 = sub_24A4AB630();
    sub_24A378E18(v73, qword_27EF4E260);
    v74 = sub_24A4AB600();
    v75 = sub_24A4ABCC0();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_24A376000, v74, v75, "Alert me should be with a friendId only.", v76, 2u);
      MEMORY[0x24C219130](v76, -1, -1);
    }

    sub_24A3E2578();
    swift_allocError();
    *v77 = xmmword_24A4B58F0;
    *(v77 + 16) = xmmword_24A4B5900;
    *(v77 + 32) = 1;
    goto LABEL_48;
  }

  LODWORD(v118) = sub_24A4AC270();
  v70 = v47;
  v71 = v47;
  sub_24A37B740(v140, v138, &unk_27EF404E0, &unk_24A4B5230);

  if ((v118 & 1) != 0 && !v136)
  {
    goto LABEL_33;
  }

LABEL_30:
  if (v120 > 1 && v120 != 2)
  {

    goto LABEL_42;
  }

  LODWORD(v118) = sub_24A4AC270();

  if (v118)
  {
LABEL_42:
    v78 = type metadata accessor for FMFSchedule();
    if ((*(*(v78 - 8) + 48))(v133, 1, v78) != 1)
    {
      goto LABEL_49;
    }

    sub_24A37EF2C(v140, &unk_27EF404E0, &unk_24A4B5230);

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v79 = sub_24A4AB630();
    sub_24A378E18(v79, qword_27EF4E260);
    v80 = sub_24A4AB600();
    v81 = sub_24A4ABCC0();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_24A376000, v80, v81, "Scheduled fences need to have a schedule", v82, 2u);
      MEMORY[0x24C219130](v82, -1, -1);
    }

    sub_24A3E2578();
    swift_allocError();
    *v83 = xmmword_24A4B58E0;
    *(v83 + 16) = 0;
    *(v83 + 24) = 0;
    *(v83 + 32) = 0;
LABEL_48:
    swift_willThrow();

    goto LABEL_15;
  }

LABEL_49:
  v84 = v135;
  if (v135)
  {

    v118 = a10;
    v85._countAndFlagsBits = a10;
    v85._object = v84;
    FMFDefaultLabel.init(rawValue:)(v85);
    if (v138[0] == 5)
    {
      v86 = 259;
    }

    else
    {
      v86 = 3;
    }

    v117 = v86;
  }

  else
  {
    v118 = 0;
    v117 = 0;
  }

  v87 = v119;
  v129 = v70;
  v119 = a19;
  v116 = a17;
  if (v87 != 3)
  {
    goto LABEL_62;
  }

  if (v121)
  {
    v88 = sub_24A4AC270();

    if (v88 & 1) != 0 && (a15)
    {
      goto LABEL_59;
    }

LABEL_61:
    LOBYTE(v87) = 2;
    goto LABEL_62;
  }

  if ((a15 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_59:
  LOBYTE(v87) = 0;
LABEL_62:
  v89 = v125;
  sub_24A37B740(v133, v125, &qword_27EF3F470, &qword_24A4B6960);
  v114 = sub_24A4AAAD0();
  v90 = *(v114 - 8);
  v113 = *(v90 + 56);
  v115 = v90 + 56;
  v113(v128, 1, 1, v114);
  v91 = v126;
  *v126 = 0;
  v91[1] = 0;
  *(v91 + 42) = 1;
  *(v91 + 43) = a15 & 1;
  v92 = v124;
  sub_24A37B740(v89, v91 + *(v124 + 48), &qword_27EF3F470, &qword_24A4B6960);
  v93 = v120;
  *(v91 + 40) = v121;
  *(v91 + 41) = v93;
  v94 = (v91 + v92[13]);
  *v94 = v116;
  v94[1] = v45;
  v95 = (v91 + v92[14]);
  v96 = v127;
  *v95 = v119;
  v95[1] = v96;
  *(v91 + v92[15]) = v87;
  *(v91 + v92[16]) = v134;
  *(v91 + v92[17]) = v63;
  *(v91 + v92[18]) = v132;
  v97 = (v91 + v92[19]);
  v98 = v136;
  *v97 = v122;
  v97[1] = v98;
  v99 = v129;
  [v129 coordinate];
  v91[2] = v100;
  [v99 coordinate];
  v91[3] = v101;
  v102 = v92[26];
  v103 = [v99 timestamp];
  sub_24A4AAAA0();

  v113(v91 + v102, 0, 1, v114);
  *(v91 + 4) = a7;
  memcpy(v138, v139, sizeof(v138));
  nullsub_1(v138);
  memcpy(v91 + v92[23], v138, 0x130uLL);
  memcpy(v137, v139, sizeof(v137));
  v104 = FMFAddress.displayAddress.getter();
  v105 = (v91 + v92[22]);
  *v105 = v104;
  v105[1] = v106;
  v107 = v91 + v92[20];
  v108 = v135;
  *v107 = v118;
  *(v107 + 1) = v108;
  *(v107 + 8) = v117;
  *(v91 + v92[21]) = v123;
  sub_24A37B740(v128, v91 + v92[27], &qword_27EF3F460, &unk_24A4B53B0);
  *(v91 + v92[24]) = 1;
  if (v121)
  {
    v109 = 1;
  }

  else
  {
    v109 = sub_24A4AC270();
  }

  sub_24A37EF2C(v128, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37EF2C(v125, &qword_27EF3F470, &qword_24A4B6960);
  v110 = v109 & 1;
  v111 = v126;
  *(v126 + *(v124 + 100)) = v110;
  sub_24A3E267C(v36, type metadata accessor for FMFLocation);
  sub_24A3E25CC(v111, &v34[OBJC_IVAR____TtC7FMFCore25FMFAddLocationAlertAction_locationAlert]);
  v34[16] = 1;
  sub_24A37EF2C(v133, &qword_27EF3F470, &qword_24A4B6960);
  return v34;
}

uint64_t FMFAddLocationAlertAction.init(friendId:followerIds:emails:phoneNumbers:location:address:label:addressType:radius:locationAlertTarget:triggerType:repeating:schedule:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, unsigned __int8 *a12, unsigned __int8 *a13, unsigned __int8 *a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 *a21)
{
  v122 = a3;
  v120 = a5;
  v121 = a4;
  v119 = a2;
  v112 = a1;
  v124 = a16;
  v118 = a11;
  v23 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v117 = &v100 - v25;
  v26 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v116 = &v100 - v28;
  v114 = type metadata accessor for FMFLocationAlert();
  v29 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v115 = (&v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));

  v113 = *a12;
  v31 = *a13;
  v32 = *a14;
  v33 = *a21;
  v34 = *(type metadata accessor for FMFLocation() + 44);
  v125 = a6;
  memcpy(v130, (a6 + v34), 0x161uLL);
  if (sub_24A3B9C24(v130) == 1)
  {

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v35 = sub_24A4AB630();
    sub_24A378E18(v35, qword_27EF4E260);
    v36 = sub_24A4AB600();
    v37 = sub_24A4ABCC0();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v124;
    if (v38)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24A376000, v36, v37, "Location must have an coordinates.", v40, 2u);
      MEMORY[0x24C219130](v40, -1, -1);
    }

    sub_24A3E2578();
    swift_allocError();
    *v41 = 0xD000000000000013;
    *(v41 + 8) = 0x800000024A4AFAE0;
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0;
    swift_willThrow();
    goto LABEL_15;
  }

  v110 = a20;
  v111 = a18;
  v109 = v31;
  v42 = v130[38];
  memcpy(v129, (v125 + v34), 0x161uLL);
  v43 = sub_24A3B9C24(v129);
  v39 = v124;
  v45 = v118;
  v44 = v119;
  v47 = v120;
  v46 = v121;
  if (v43 == 1 || (memcpy(v128, v129, sizeof(v128)), sub_24A3D77F8(v128) == 1))
  {
    v48 = v42;

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v49 = sub_24A4AB630();
    sub_24A378E18(v49, qword_27EF4E260);
    v50 = sub_24A4AB600();
    v51 = sub_24A4ABCC0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_24A376000, v50, v51, "Location must have an address.", v52, 2u);
      MEMORY[0x24C219130](v52, -1, -1);
    }

    v53 = 0x800000024A4AFB00;
    sub_24A3E2578();
    swift_allocError();
    v55 = 0xD000000000000010;
LABEL_14:
    *v54 = v55;
    *(v54 + 8) = v53;
    *(v54 + 16) = 0;
    *(v54 + 24) = 0;
    *(v54 + 32) = 0;
    swift_willThrow();

LABEL_15:
    sub_24A3E267C(v125, type metadata accessor for FMFLocation);
    sub_24A37EF2C(v39, &qword_27EF3F470, &qword_24A4B6960);
    type metadata accessor for FMFAddLocationAlertAction();
    v56 = v123;
    v57 = *(*v123 + 48);
    v58 = *(*v123 + 52);
    swift_deallocPartialClassInstance();
    return v56;
  }

  if (!v46 || !*(v46 + 16))
  {
    if (v47)
    {
      if (!(*(v47 + 16) | v44))
      {
LABEL_21:
        v48 = v42;

        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v60 = sub_24A4AB630();
        sub_24A378E18(v60, qword_27EF4E260);
        v61 = sub_24A4AB600();
        v62 = sub_24A4ABCC0();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_24A376000, v61, v62, "Email, phone numbers, friendId all cannot be empty.", v63, 2u);
          MEMORY[0x24C219130](v63, -1, -1);
        }

        v53 = 0x800000024A4AFB20;
        sub_24A3E2578();
        swift_allocError();
        v55 = 0xD00000000000001ELL;
        goto LABEL_14;
      }
    }

    else if (!v44)
    {
      goto LABEL_21;
    }
  }

  if (v109)
  {
    v107 = sub_24A4AC270();
    v64 = v42;
    sub_24A37B740(v129, v127, &unk_27EF404E0, &unk_24A4B5230);

    if ((v107 & 1) != 0 && !v44)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v70 = v42;
    sub_24A37B740(v129, v127, &unk_27EF404E0, &unk_24A4B5230);

    if (!v44)
    {
LABEL_30:
      sub_24A37EF2C(v129, &unk_27EF404E0, &unk_24A4B5230);

      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v65 = sub_24A4AB630();
      sub_24A378E18(v65, qword_27EF4E260);
      v66 = sub_24A4AB600();
      v67 = sub_24A4ABCC0();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_24A376000, v66, v67, "Alert me should be with a friendId only.", v68, 2u);
        MEMORY[0x24C219130](v68, -1, -1);
      }

      sub_24A3E2578();
      swift_allocError();
      *v69 = xmmword_24A4B58F0;
      *(v69 + 16) = xmmword_24A4B5900;
      *(v69 + 32) = 1;
LABEL_46:
      swift_willThrow();

      goto LABEL_15;
    }
  }

  v108 = v42;
  if (v32 > 2)
  {
  }

  else
  {
    v107 = sub_24A4AC270();

    v42 = v108;
    if ((v107 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v71 = type metadata accessor for FMFSchedule();
  if ((*(*(v71 - 8) + 48))(v39, 1, v71) == 1)
  {
    sub_24A37EF2C(v129, &unk_27EF404E0, &unk_24A4B5230);

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v72 = sub_24A4AB630();
    sub_24A378E18(v72, qword_27EF4E260);
    v73 = sub_24A4AB600();
    v74 = sub_24A4ABCC0();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_24A376000, v73, v74, "Scheduled fences need to have a schedule", v75, 2u);
      MEMORY[0x24C219130](v75, -1, -1);
    }

    sub_24A3E2578();
    swift_allocError();
    *v76 = xmmword_24A4B58E0;
    *(v76 + 16) = 0;
    *(v76 + 24) = 0;
    *(v76 + 32) = 0;
    goto LABEL_46;
  }

LABEL_47:
  if (v45)
  {

    v106 = a10;
    v77._countAndFlagsBits = a10;
    v77._object = v45;
    FMFDefaultLabel.init(rawValue:)(v77);
    if (v127[0] == 5)
    {
      v78 = 259;
    }

    else
    {
      v78 = 3;
    }

    v105 = v78;
  }

  else
  {
    v106 = 0;
    v105 = 0;
  }

  v107 = a15;
  v104 = a19;
  v103 = a17;
  if (v33 != 3)
  {
    goto LABEL_60;
  }

  if (v109)
  {
    v79 = sub_24A4AC270();

    if (v79 & 1) != 0 && (v107)
    {
      goto LABEL_57;
    }

LABEL_59:
    LOBYTE(v33) = 2;
    goto LABEL_60;
  }

  if ((v107 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_57:
  LOBYTE(v33) = 0;
LABEL_60:
  sub_24A37B740(v39, v116, &qword_27EF3F470, &qword_24A4B6960);
  v101 = sub_24A4AAAD0();
  v80 = *(v101 - 8);
  v100 = *(v80 + 56);
  v102 = v80 + 56;
  v100(v117, 1, 1, v101);
  v82 = v115;
  v81 = v116;
  *v115 = 0;
  v82[1] = 0;
  *(v82 + 42) = 1;
  *(v82 + 43) = v107 & 1;
  v83 = v114;
  sub_24A37B740(v81, v82 + *(v114 + 48), &qword_27EF3F470, &qword_24A4B6960);
  *(v82 + 40) = v109;
  *(v82 + 41) = v32;
  v84 = (v82 + v83[13]);
  v85 = v111;
  *v84 = v103;
  v84[1] = v85;
  v86 = (v82 + v83[14]);
  v87 = v110;
  *v86 = v104;
  v86[1] = v87;
  *(v82 + v83[15]) = v33;
  *(v82 + v83[16]) = v47;
  *(v82 + v83[17]) = v46;
  *(v82 + v83[18]) = v122;
  v88 = (v82 + v83[19]);
  *v88 = v112;
  v88[1] = v44;
  v89 = v108;
  [v108 coordinate];
  v82[2] = v90;
  [v89 coordinate];
  v82[3] = v91;
  v92 = v83[26];
  v93 = [v89 timestamp];
  sub_24A4AAAA0();

  v100(v82 + v92, 0, 1, v101);
  *(v82 + 4) = a7;
  memcpy(v127, v128, sizeof(v127));
  nullsub_1(v127);
  memcpy(v82 + v83[23], v127, 0x130uLL);
  memcpy(v126, v128, sizeof(v126));
  v94 = FMFAddress.displayAddress.getter();
  v95 = (v82 + v83[22]);
  *v95 = v94;
  v95[1] = v96;
  v97 = v82 + v83[20];
  *v97 = v106;
  *(v97 + 1) = v45;
  *(v97 + 8) = v105;
  *(v82 + v83[21]) = v113;
  sub_24A37B740(v117, v82 + v83[27], &qword_27EF3F460, &unk_24A4B53B0);
  *(v82 + v83[24]) = 1;
  if (v109)
  {
    v98 = 1;
  }

  else
  {
    v98 = sub_24A4AC270();
  }

  sub_24A37EF2C(v117, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37EF2C(v116, &qword_27EF3F470, &qword_24A4B6960);
  v99 = v115;
  *(v115 + *(v114 + 100)) = v98 & 1;
  sub_24A3E267C(v125, type metadata accessor for FMFLocation);
  v56 = v123;
  sub_24A3E25CC(v99, v123 + OBJC_IVAR____TtC7FMFCore25FMFAddLocationAlertAction_locationAlert);
  *(v56 + 16) = 1;
  sub_24A37EF2C(v124, &qword_27EF3F470, &qword_24A4B6960);
  return v56;
}