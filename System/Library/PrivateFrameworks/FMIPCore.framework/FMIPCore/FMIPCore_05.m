void sub_24A6E8294(uint64_t a1, void *a2, char *a3)
{
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_type))
  {
    if (*(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_type) == 1)
    {
      v7 = type metadata accessor for FMIPSavePreferencesRequest();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      *(swift_allocObject() + qword_27EF78D80) = a1;

      v10 = sub_24A6A183C(0x6665725065766173, 0xE800000000000000, 0, 0, 1);
      v11 = v3[9];
      v12 = v3[10];
      sub_24A67DF6C(v3 + 6, v11);
      v13 = swift_allocObject();
      v13[2] = a2;
      v13[3] = a3;
      v13[4] = a1;
      v14 = *(v12 + 56);
      v15 = type metadata accessor for FMIPSavePreferencesResponse();

      v14(v10, sub_24A6EEFBC, v13, v15, v11, v12);
    }

    else
    {

      sub_24A6EACA0(a1, a2, a3);
    }
  }

  else
  {

    sub_24A6E88B8(a1, a2, a3);
  }
}

uint64_t sub_24A6E8458(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void, void), uint64_t a4, uint64_t a5, const char *a6, const char *a7, char a8)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v13 = sub_24A82CDC4();
  sub_24A6797D0(v13, qword_27EF78C40);

  v14 = sub_24A82CD94();
  v15 = sub_24A82D504();

  if (os_log_type_enabled(v14, v15))
  {
    v46 = a3;
    v16 = swift_slowAlloc();
    v45 = a5;
    v17 = swift_slowAlloc();
    v49 = v17;
    *v16 = 136315138;
    sub_24A6BBA94(&qword_27EF5D5E8, &qword_24A833938);
    v18 = sub_24A82D624();
    v20 = a2;
    v21 = a6;
    v22 = sub_24A68761C(v18, v19, &v49);

    *(v16 + 4) = v22;
    v23 = v21;
    a2 = v20;
    _os_log_impl(&dword_24A675000, v14, v15, v23, v16, 0xCu);
    sub_24A6876E8(v17);
    v24 = v17;
    a5 = v45;
    MEMORY[0x24C21E1D0](v24, -1, -1);
    v25 = v16;
    a3 = v46;
    MEMORY[0x24C21E1D0](v25, -1, -1);
  }

  if (a2 || !a1)
  {
    v31 = a2;
    v32 = sub_24A82CD94();
    v33 = sub_24A82D504();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = a5;
      v36 = swift_slowAlloc();
      v49 = v36;
      *v34 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v37 = sub_24A82D624();
      v39 = sub_24A68761C(v37, v38, &v49);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_24A675000, v32, v33, a7, v34, 0xCu);
      sub_24A6876E8(v36);
      v40 = v36;
      a5 = v35;
      MEMORY[0x24C21E1D0](v40, -1, -1);
      MEMORY[0x24C21E1D0](v34, -1, -1);
    }

    LOBYTE(v49) = a8;
    return a3(&v49, 0, a2, a5);
  }

  else
  {

    v26 = sub_24A82CD94();
    v27 = sub_24A82D504();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_24A675000, v26, v27, "FMIPDeviceActionsController: response success", v28, 2u);
      MEMORY[0x24C21E1D0](v28, -1, -1);
    }

    FMIPActionStatus.init(rawValue:)(*(a1 + 48));
    v29 = v49;
    if (v49 == 18)
    {
      v29 = 0;
    }

    LOBYTE(v49) = v29;
    if (*(a1 + 56))
    {
      v30 = *(a1 + 56);
    }

    else
    {
      sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
      v42 = *(type metadata accessor for FMIPDevice() - 8);
      v43 = *(v42 + 72);
      v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_24A8327A0;
      sub_24A68FD9C(a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v30 + v44, type metadata accessor for FMIPDevice);
    }

    a3(&v49, v30, 0, a5);
  }
}

uint64_t sub_24A6E88B8(uint64_t a1, void (*a2)(char *, uint64_t, void *, uint64_t), uint64_t a3)
{
  v7 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  if (*(v7 + *(type metadata accessor for FMIPDevice() + 132)) == 1)
  {

    return sub_24A6E8E0C(a1, 0, a2, a3);
  }

  else
  {
    v9 = type metadata accessor for FMIPNotifyRequest();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    *(swift_allocObject() + qword_27EF78FD8) = a1;

    v17 = sub_24A6A183C(0xD000000000000010, 0x800000024A845450, 0, 0, 1);
    v12 = v3[9];
    v13 = v3[10];
    sub_24A67DF6C(v3 + 6, v12);
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = a1;
    v14[5] = v3;
    v15 = *(v13 + 56);
    v16 = type metadata accessor for FMIPNotifyResponse();

    v15(v17, sub_24A6EEFB0, v14, v16, v12, v13);
  }
}

uint64_t sub_24A6E8A88(uint64_t a1, void *a2, void (*a3)(char *, uint64_t, void *, uint64_t), uint64_t a4, uint64_t a5)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_27EF78C40);

  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v33 = a5;
    v13 = a4;
    v14 = a3;
    v15 = swift_slowAlloc();
    v35 = v15;
    *v12 = 136315138;
    sub_24A6BBA94(&qword_27EF5D5E0, &qword_24A833930);
    v16 = sub_24A82D624();
    v18 = sub_24A68761C(v16, v17, &v35);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPDeviceActionsController: notify action response received: %s", v12, 0xCu);
    sub_24A6876E8(v15);
    v19 = v15;
    a3 = v14;
    a4 = v13;
    a5 = v33;
    MEMORY[0x24C21E1D0](v19, -1, -1);
    MEMORY[0x24C21E1D0](v12, -1, -1);
  }

  if (a2 || !a1)
  {
    v20 = a2;
    v21 = sub_24A82CD94();
    v22 = sub_24A82D504();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = a3;
      v25 = swift_slowAlloc();
      v35 = v25;
      *v23 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v26 = sub_24A82D624();
      v28 = sub_24A68761C(v26, v27, &v35);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_24A675000, v21, v22, "FMIPDeviceActionsController: error received for notify request: %s", v23, 0xCu);
      sub_24A6876E8(v25);
      v29 = v25;
      a3 = v24;
      MEMORY[0x24C21E1D0](v29, -1, -1);
      MEMORY[0x24C21E1D0](v23, -1, -1);
    }

    LOBYTE(v35) = 0;
    return (a3)(&v35, 0, a2, a5);
  }

  else
  {
    if (!*(a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 24) || (*(a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 216) & 0x80) != 0)
    {
      FMIPActionStatus.init(rawValue:)(*(a1 + 48));
      v31 = v35;
      if (v35 == 18)
      {
        v31 = 0;
      }

      LOBYTE(v35) = v31;
      v32 = *(a1 + 56);

      a3(&v35, v32, 0, a5);
    }

    else
    {

      sub_24A6E8E0C(a5, a1, a3, a4);
    }
  }
}

uint64_t sub_24A6E8E0C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, void *, uint64_t), uint64_t a4)
{
  v74 = a3;
  v75 = a4;
  v73 = a2;
  v5 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v72 = &v68 - v7;
  v8 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v68 - v13;
  v15 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v68 - v17;
  v19 = type metadata accessor for FMIPItemGroup();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24A82CAA4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v70 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v29 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  v69 = type metadata accessor for FMIPDevice();
  sub_24A67E964(v29 + *(v69 + 128), v18, &unk_27EF5E0B0, &qword_24A8338B0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_24A67F378(v18, &unk_27EF5E0B0, &qword_24A8338B0);
    v30 = v28;
    v31 = v24;
    if (!*(v29 + 24))
    {
LABEL_8:
      if (qword_27EF5CB98 != -1)
      {
        swift_once();
      }

      v35 = sub_24A82CDC4();
      sub_24A6797D0(v35, qword_27EF78C40);

      v36 = sub_24A82CD94();
      v37 = sub_24A82D4E4();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v76 = v39;
        *v38 = 136315138;

        v40 = sub_24A6F57A4();
        v42 = v41;

        v43 = sub_24A68761C(v40, v42, &v76);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_24A675000, v36, v37, "Missing baUUID for %s", v38, 0xCu);
        sub_24A6876E8(v39);
        MEMORY[0x24C21E1D0](v39, -1, -1);
        MEMORY[0x24C21E1D0](v38, -1, -1);
      }

      v44 = v73;
      if (v73)
      {
        FMIPActionStatus.init(rawValue:)(*(v73 + 48));
        v45 = v77;
        if (v77 == 18)
        {
          v45 = 0;
        }

        v78 = v45;
        v46 = *(v44 + 56);
        if (v46)
        {

LABEL_24:
          sub_24A6EE8A0();
          v66 = swift_allocError();
          *v67 = 6;
          v74(&v78, v46, v66, v30);
        }
      }

      else
      {
        v78 = 0;
      }

      sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
      v64 = *(*(v69 - 8) + 72);
      v65 = (*(*(v69 - 8) + 80) + 32) & ~*(*(v69 - 8) + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_24A8327A0;
      sub_24A68FD9C(v29, v46 + v65, type metadata accessor for FMIPDevice);

      goto LABEL_24;
    }
  }

  else
  {
    sub_24A6EF274(v18, v23, type metadata accessor for FMIPItemGroup);
    v32 = *(v23 + 1);
    v33 = *(v23 + 2);
    sub_24A82CA44();
    sub_24A68FFEC(v23, type metadata accessor for FMIPItemGroup);
    v31 = v24;
    if ((*(v25 + 48))(v14, 1, v24) != 1)
    {
      v30 = v28;
      goto LABEL_19;
    }

    sub_24A67F378(v14, &qword_27EF5D020, &qword_24A830E40);
    v30 = v28;
    if (!*(v29 + 24))
    {
      goto LABEL_8;
    }
  }

  v34 = *(v29 + 16);
  sub_24A82CA44();
  if ((*(v25 + 48))(v12, 1, v31) == 1)
  {
    sub_24A67F378(v12, &qword_27EF5D020, &qword_24A830E40);
    goto LABEL_8;
  }

  v14 = v12;
LABEL_19:
  v47 = v70;
  (*(v25 + 32))(v70, v14, v31);
  v48 = *(v30 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled);
  v49 = objc_opt_self();
  v50 = v25;
  v51 = sub_24A82CA64();
  v52 = &selRef_enableNotifyWhenFound_;
  if (!v48)
  {
    v52 = &selRef_disableNotifyWhenFound_;
  }

  v53 = [v49 *v52];

  v54 = sub_24A82D354();
  v55 = v72;
  (*(*(v54 - 8) + 56))(v72, 1, 1, v54);
  v56 = *(v71 + 168);
  v57 = *(v71 + 32);
  v58 = swift_allocObject();
  v58[2] = 0;
  v58[3] = 0;
  v58[4] = v57;
  v58[5] = v53;
  v59 = v74;
  v60 = v75;
  v58[6] = v56;
  v58[7] = v59;
  v58[8] = v60;
  v58[9] = v30;
  v58[10] = v73;

  v61 = v53;

  v62 = v57;

  sub_24A6E5984(0, 0, v55, &unk_24A833908, v58);

  sub_24A67F378(v55, &qword_27EF5CF08, &qword_24A830D80);
  return (*(v50 + 8))(v47, v31);
}

uint64_t sub_24A6E95F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v10;
  v8[14] = v11;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  return MEMORY[0x2822009F8](sub_24A6E9628, 0, 0);
}

uint64_t sub_24A6E9628()
{
  v1 = *(v0 + 80);
  *(v0 + 120) = [*(v0 + 64) executeCommand_];

  return MEMORY[0x2822009F8](sub_24A6E96A8, v1, 0);
}

uint64_t sub_24A6E96A8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  swift_beginAccess();
  MEMORY[0x24C21CB10](v1);
  if (*((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v4 = *((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24A82D274();
  }

  v3 = *(v0 + 120);
  sub_24A82D2C4();
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24A6E9788, 0, 0);
}

uint64_t sub_24A6E9788()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v19 = v0[14];
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v4;
  v6[6] = v1;
  v0[6] = sub_24A6EEDB4;
  v0[7] = v6;
  v7 = MEMORY[0x277D85DD0];
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24A720114;
  v0[5] = &unk_285DC2AC0;
  v8 = _Block_copy(v0 + 2);
  v9 = v0[7];
  v10 = v1;

  v11 = [v10 addFailureBlock_];
  _Block_release(v8);

  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = v3;
  v12[4] = v19;
  v12[5] = v2;
  v12[6] = v4;
  v12[7] = v10;
  v0[6] = sub_24A6EEE18;
  v0[7] = v12;
  v0[2] = v7;
  v0[3] = 1107296256;
  v0[4] = sub_24A72011C;
  v0[5] = &unk_285DC2B10;
  v13 = _Block_copy(v0 + 2);
  v14 = v0[7];

  v15 = v10;

  v16 = [v15 addSuccessBlock_];
  _Block_release(v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_24A6E99C0(uint64_t a1, void (*a2)(char *, uint64_t, void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - v14;
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_27EF78C40);
  v17 = sub_24A82CD94();
  v18 = sub_24A82D504();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24A675000, v17, v18, "FMIPDeviceActionsController: notify subscription succeeded", v19, 2u);
    MEMORY[0x24C21E1D0](v19, -1, -1);
  }

  if (!a4)
  {
    v31 = 2;
LABEL_11:
    sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
    v22 = *(type metadata accessor for FMIPDevice() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24A8327A0;
    sub_24A68FD9C(a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v21 + v24, type metadata accessor for FMIPDevice);

    goto LABEL_12;
  }

  FMIPActionStatus.init(rawValue:)(*(a4 + 48));
  v20 = v30;
  if (v30 == 18)
  {
    v20 = 0;
  }

  v31 = v20;
  v21 = *(a4 + 56);
  if (!v21)
  {
    goto LABEL_11;
  }

LABEL_12:
  a2(&v31, v21, 0, a5);

  v25 = sub_24A82D354();
  (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = a6;
  v26[5] = a7;

  v27 = a7;
  sub_24A6E5984(0, 0, v15, &unk_24A833918, v26);

  return sub_24A67F378(v15, &qword_27EF5CF08, &qword_24A830D80);
}

uint64_t sub_24A6E9CEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, void *, uint64_t), uint64_t a5)
{
  v6 = v5;
  v10 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v54 = &v50 - v12;
  v13 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_24A82CAA4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A82CA44();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_24A67F378(v16, &qword_27EF5D020, &qword_24A830E40);
    v55 = 0;
    sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
    v22 = *(type metadata accessor for FMIPDevice() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_24A8327A0;
    sub_24A68FD9C(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v25 + v24, type metadata accessor for FMIPDevice);
    sub_24A6EE8A0();
    v26 = swift_allocError();
    *v27 = 6;
    a4(&v55, v25, v26, a1);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v29 = *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isTrackingEnabled);
    v52 = a4;
    v53 = a5;
    if (v29 == 1)
    {
      v51 = sub_24A82CA64();
      if (*(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message + 8))
      {
        v30 = *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message);
        v31 = *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message + 8);
      }

      v35 = sub_24A82CF94();

      if (*(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber + 8))
      {
        v36 = *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber);
        v37 = sub_24A82CF94();
      }

      else
      {
        v37 = 0;
      }

      if (*(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email + 8))
      {
        v38 = *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email);
        v33 = sub_24A82CF94();
      }

      else
      {
        v33 = 0;
      }

      v39 = objc_opt_self();
      v40 = v51;
      v34 = [v39 enableLostModeForBeaconUUID:v51 message:v35 phoneNumber:v37 email:v33];
    }

    else
    {
      v32 = objc_opt_self();
      v33 = sub_24A82CA64();
      v34 = [v32 disableLostModeForBeaconUUID_];
    }

    v41 = sub_24A82D354();
    v42 = v54;
    (*(*(v41 - 8) + 56))(v54, 1, 1, v41);
    v43 = *(v6 + 168);
    v44 = *(v6 + 32);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v44;
    v45[5] = v34;
    v46 = v52;
    v47 = v53;
    v45[6] = v43;
    v45[7] = v46;
    v45[8] = v47;
    v45[9] = a1;
    v48 = v34;

    v49 = v44;

    sub_24A6E5984(0, 0, v42, &unk_24A8338C0, v45);

    sub_24A67F378(v42, &qword_27EF5CF08, &qword_24A830D80);
    return (*(v18 + 8))(v21, v17);
  }
}

uint64_t sub_24A6EA22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v10;
  v8[10] = a6;
  v8[11] = a7;
  v8[8] = a4;
  v8[9] = a5;
  return MEMORY[0x2822009F8](sub_24A6EA25C, 0, 0);
}

uint64_t sub_24A6EA25C()
{
  v1 = *(v0 + 80);
  *(v0 + 112) = [*(v0 + 64) executeCommand_];

  return MEMORY[0x2822009F8](sub_24A6EA2DC, v1, 0);
}

uint64_t sub_24A6EA2DC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  swift_beginAccess();
  MEMORY[0x24C21CB10](v1);
  if (*((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v4 = *((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24A82D274();
  }

  v3 = *(v0 + 112);
  sub_24A82D2C4();
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24A6EA3BC, 0, 0);
}

uint64_t sub_24A6EA3BC()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v19 = v4;
  v5 = v0[10];
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v1;
  v6[5] = v5;
  v6[6] = v2;
  v0[6] = sub_24A6EEA98;
  v0[7] = v6;
  v7 = MEMORY[0x277D85DD0];
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24A720114;
  v0[5] = &unk_285DC29A8;
  v8 = _Block_copy(v0 + 2);
  v9 = v0[7];
  v10 = v2;

  v11 = [v10 addFailureBlock_];
  _Block_release(v8);

  v12 = swift_allocObject();
  v12[2] = v19;
  v12[3] = v3;
  v12[4] = v1;
  v12[5] = v5;
  v12[6] = v10;
  v0[6] = sub_24A6EEAC0;
  v0[7] = v12;
  v0[2] = v7;
  v0[3] = 1107296256;
  v0[4] = sub_24A72011C;
  v0[5] = &unk_285DC29F8;
  v13 = _Block_copy(v0 + 2);
  v14 = v0[7];
  v15 = v10;

  v16 = [v15 addSuccessBlock_];
  _Block_release(v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_24A6EA5EC(void *a1, void (*a2)(uint64_t *, void, void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, const char *a7, uint64_t a8, uint64_t a9)
{
  v35 = a7;
  v36 = a6;
  v37 = a2;
  v38 = a3;
  v13 = a9;
  v14 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v32 - v16;
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v18 = sub_24A82CDC4();
  sub_24A6797D0(v18, qword_27EF78C40);
  v19 = a1;
  v20 = sub_24A82CD94();
  v21 = sub_24A82D504();

  v34 = v21;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = a9;
    v23 = v22;
    v24 = swift_slowAlloc();
    v32[1] = a8;
    v25 = v24;
    *v23 = 136315138;
    v39 = a1;
    v40 = 0;
    v41 = 0xE000000000000000;
    v42 = v24;
    sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
    sub_24A82D914();
    v26 = sub_24A68761C(v40, v41, &v42);

    *(v23 + 4) = v26;
    _os_log_impl(&dword_24A675000, v20, v34, v35, v23, 0xCu);
    sub_24A6876E8(v25);
    MEMORY[0x24C21E1D0](v25, -1, -1);
    v13 = v33;
    MEMORY[0x24C21E1D0](v23, -1, -1);
  }

  LOBYTE(v40) = 0;
  v37(&v40, 0, a1, a4);
  v27 = sub_24A82D354();
  (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v29 = v36;
  v28[4] = a5;
  v28[5] = v29;

  v30 = v29;
  sub_24A6E5984(0, 0, v17, v13, v28);

  return sub_24A67F378(v17, &qword_27EF5CF08, &qword_24A830D80);
}

uint64_t sub_24A6EA8C0(uint64_t a1, void (*a2)(char *, uint64_t, void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_27EF78C40);
  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24A675000, v15, v16, "FMIPDeviceActionsController: lost mode action succeeded", v17, 2u);
    MEMORY[0x24C21E1D0](v17, -1, -1);
  }

  v27 = 2;
  sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
  v18 = *(type metadata accessor for FMIPDevice() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24A8327A0;
  sub_24A68FD9C(a4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v21 + v20, type metadata accessor for FMIPDevice);
  a2(&v27, v21, 0, a4);

  v22 = sub_24A82D354();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a5;
  v23[5] = a6;

  v24 = a6;
  sub_24A6E5984(0, 0, v13, &unk_24A8338E8, v23);

  return sub_24A67F378(v13, &qword_27EF5CF08, &qword_24A830D80);
}

uint64_t sub_24A6EABAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_24A6EABCC, a4, 0);
}

uint64_t sub_24A6EABCC()
{
  v2 = v0[8];
  v1 = v0[9];
  swift_beginAccess();
  v3 = *(v2 + 112);

  v4 = sub_24A720190(v1, v3);
  LOBYTE(v1) = v5;

  if ((v1 & 1) == 0)
  {
    swift_beginAccess();
    v6 = sub_24A72029C(v4);
    swift_endAccess();
  }

  v7 = v0[1];

  return v7();
}

void sub_24A6EACA0(uint64_t a1, void *a2, char *a3)
{
  v92 = a2;
  v5 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v87 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v80 - v9;
  v91 = sub_24A82CAA4();
  v81 = *(v91 - 8);
  v10 = *(v81 + 64);
  v11 = MEMORY[0x28223BE20](v91);
  v84 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v88 = &v80 - v13;
  v14 = type metadata accessor for FMIPItem();
  v85 = *(v14 - 8);
  v15 = v85[8];
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v80 - v20;
  v22 = type metadata accessor for FMIPItemGroup();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v80 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v26 = sub_24A82CDC4();
  sub_24A6797D0(v26, qword_27EF78C40);
  v27 = sub_24A82CD94();
  v28 = sub_24A82D504();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_24A675000, v27, v28, "FMIPDeviceActionsController: Perform Separation Action.", v29, 2u);
    MEMORY[0x24C21E1D0](v29, -1, -1);
  }

  v30 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  v31 = type metadata accessor for FMIPDevice();
  sub_24A67E964(v30 + *(v31 + 128), v21, &unk_27EF5E0B0, &qword_24A8338B0);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_24A67F378(v21, &unk_27EF5E0B0, &qword_24A8338B0);
    if (!*(v30 + 24))
    {
LABEL_9:
      v36 = sub_24A82CD94();
      v37 = sub_24A82D504();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_24A675000, v36, v37, "FMIPDeviceActionsController: Separation action could not be completed. No identifier for the device.", v38, 2u);
        MEMORY[0x24C21E1D0](v38, -1, -1);
      }

      return;
    }

    v32 = *(v30 + 16);
    v33 = v87;
    sub_24A82CA44();
    v34 = v81;
    v35 = v91;
    if ((*(v81 + 48))(v33, 1, v91) == 1)
    {
      sub_24A67F378(v33, &qword_27EF5D020, &qword_24A830E40);
      goto LABEL_9;
    }

    v71 = v84;
    (*(v34 + 32))(v84, v33, v35);
    v72 = *(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled);
    v73 = objc_opt_self();
    v74 = sub_24A82CA64();
    v75 = &selRef_beginLeashingWithBeaconUUID_;
    if (!v72)
    {
      v75 = &selRef_endLeashingWithBeaconUUID_;
    }

    v76 = [v73 *v75];

    v77 = *(v89 + 32);
    v78 = swift_allocObject();
    v78[2] = v92;
    v78[3] = a3;
    v78[4] = a1;
    v97 = sub_24A6EE87C;
    v98 = v78;
    aBlock = MEMORY[0x277D85DD0];
    v94 = 1107296256;
    v95 = sub_24A7386AC;
    v96 = &unk_285DC2840;
    v79 = _Block_copy(&aBlock);

    [v77 executeCommand:v76 completion:v79];
    _Block_release(v79);

    (*(v34 + 8))(v71, v35);
  }

  else
  {
    v39 = v21;
    v40 = v80;
    sub_24A6EF274(v39, v80, type metadata accessor for FMIPItemGroup);
    v41 = *(v40 + 40);
    v42 = *(v41 + 16);
    v43 = MEMORY[0x277D84F90];
    v86 = a1;
    if (v42)
    {
      v87 = a3;
      aBlock = MEMORY[0x277D84F90];
      sub_24A6FC900(0, v42, 0);
      v43 = aBlock;
      v44 = v41 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v45 = v85[9];
      do
      {
        sub_24A68FD9C(v44, v17, type metadata accessor for FMIPItem);
        v47 = *(v17 + 44);
        v46 = *(v17 + 45);

        sub_24A68FFEC(v17, type metadata accessor for FMIPItem);
        aBlock = v43;
        v49 = v43[2];
        v48 = v43[3];
        if (v49 >= v48 >> 1)
        {
          sub_24A6FC900((v48 > 1), v49 + 1, 1);
          v43 = aBlock;
        }

        v43[2] = v49 + 1;
        v50 = &v43[2 * v49];
        v50[4] = v47;
        v50[5] = v46;
        v44 += v45;
        --v42;
      }

      while (v42);
      v51 = v86;
      a3 = v87;
    }

    else
    {
      v51 = a1;
    }

    v52 = swift_allocObject();
    v52[2] = v92;
    v52[3] = a3;
    v52[4] = v51;
    v52[5] = v43;
    v87 = swift_allocObject();
    *(v87 + 2) = 0;
    v53 = v43[2];
    v55 = v90;
    v54 = v91;
    if (v53)
    {
      v85 = v52;
      v56 = (v81 + 48);
      v83 = (v81 + 32);
      v84 = OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled;
      v81 += 8;
      v82 = &v95;

      v57 = v43 + 5;
      v58 = v87;
      do
      {
        v59 = *(v57 - 1);
        v60 = *v57;

        sub_24A82CA44();

        if ((*v56)(v55, 1, v54) == 1)
        {
          sub_24A67F378(v55, &qword_27EF5D020, &qword_24A830E40);
        }

        else
        {
          v61 = v88;
          (*v83)(v88, v55, v54);
          v62 = v84[v86];
          v63 = objc_opt_self();
          v64 = sub_24A82CA64();
          v65 = &selRef_beginLeashingWithBeaconUUID_;
          if (!v62)
          {
            v65 = &selRef_endLeashingWithBeaconUUID_;
          }

          v66 = [v63 *v65];

          v92 = *(v89 + 32);
          v67 = swift_allocObject();
          v68 = v56;
          v69 = v85;
          v67[2] = sub_24A6EE888;
          v67[3] = v69;
          v67[4] = v58;
          v97 = sub_24A6EE894;
          v98 = v67;
          aBlock = MEMORY[0x277D85DD0];
          v94 = 1107296256;
          v95 = sub_24A7386AC;
          v96 = &unk_285DC28E0;
          v70 = _Block_copy(&aBlock);
          v56 = v68;

          v54 = v91;

          v55 = v90;
          [v92 executeCommand:v66 completion:v70];
          _Block_release(v70);

          (*v81)(v61, v54);
        }

        v57 += 2;
        --v53;
      }

      while (v53);
    }

    else
    {
    }

    sub_24A68FFEC(v80, type metadata accessor for FMIPItemGroup);
  }
}

uint64_t sub_24A6EB6B8(uint64_t result, id a2, void (*a3)(char *, uint64_t, id, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v9 = a2;
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_27EF78C40);
    v11 = sub_24A82CD94();
    v12 = sub_24A82D504();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24A675000, v11, v12, "FMIPDeviceActionsController: Complete Separation with error.", v13, 2u);
      MEMORY[0x24C21E1D0](v13, -1, -1);
    }

    v27 = 0;
    sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
    v14 = *(type metadata accessor for FMIPDevice() - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_24A8327A0;
    sub_24A68FD9C(a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v17 + v16, type metadata accessor for FMIPDevice);
    v18 = a2;
    a3(&v27, v17, a2, a5);
  }

  else
  {
    if (*(a6 + 16) != result)
    {
      return result;
    }

    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v19 = sub_24A82CDC4();
    sub_24A6797D0(v19, qword_27EF78C40);
    v20 = sub_24A82CD94();
    v21 = sub_24A82D504();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24A675000, v20, v21, "FMIPDeviceActionsController: Separation Complete Success!", v22, 2u);
      MEMORY[0x24C21E1D0](v22, -1, -1);
    }

    v28 = 2;
    sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
    v23 = *(type metadata accessor for FMIPDevice() - 8);
    v24 = *(v23 + 72);
    v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_24A8327A0;
    sub_24A68FD9C(a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v26 + v25, type metadata accessor for FMIPDevice);
    a3(&v28, v26, 0, a5);
  }
}

uint64_t sub_24A6EBA60(void *a1, uint64_t (*a2)(uint64_t, void *), uint64_t a3, uint64_t a4)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_27EF78C40);
  v8 = a1;
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = a1;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v14 = sub_24A82D024();
    v16 = sub_24A68761C(v14, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPDeviceActionsController: Separation action completed with error %s", v11, 0xCu);
    sub_24A6876E8(v12);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  if (a1)
  {
    swift_beginAccess();
    result = *(a4 + 16);
    v18 = a1;
    return a2(result, v18);
  }

  swift_beginAccess();
  v19 = *(a4 + 16);
  result = v19 + 1;
  if (!__OFADD__(v19, 1))
  {
    *(a4 + 16) = result;
    v18 = 0;
    return a2(result, v18);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A6EBC44(void *a1, void (*a2)(uint64_t **, uint64_t, void *, uint64_t), uint64_t a3, uint64_t a4)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_27EF78C40);
  v8 = a1;
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    v13 = a1;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v14 = sub_24A82D024();
    v16 = sub_24A68761C(v14, v15, &v27);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPDeviceActionsController: Separation action completed with error %s", v11, 0xCu);
    sub_24A6876E8(v12);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  if (a1)
  {
    LOBYTE(v27) = 0;
    sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
    v17 = *(type metadata accessor for FMIPDevice() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24A8327A0;
    sub_24A68FD9C(a4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v20 + v19, type metadata accessor for FMIPDevice);
    v21 = a1;
    a2(&v27, v20, a1, a4);
  }

  else
  {
    LOBYTE(v27) = 2;
    sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
    v22 = *(type metadata accessor for FMIPDevice() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_24A8327A0;
    sub_24A68FD9C(a4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v25 + v24, type metadata accessor for FMIPDevice);
    a2(&v27, v25, 0, a4);
  }
}

void sub_24A6EBFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  if (*(v7 + *(type metadata accessor for FMIPDevice() + 152)))
  {
    v8 = swift_allocObject();
    v8[2] = a2;
    v8[3] = a3;
    v8[4] = a1;
    v8[5] = v3;
    if (*(v7 + 56))
    {
      v9 = *(v7 + 48);
      v10 = objc_opt_self();

      v11 = [v10 sharedInstance];
      v12 = sub_24A82CF94();
      v14[4] = sub_24A6EE870;
      v14[5] = v8;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 1107296256;
      v14[2] = sub_24A7386AC;
      v14[3] = &unk_285DC27F0;
      v13 = _Block_copy(v14);

      [v11 removeAccessoryWithDiscoveryId:v12 completion:v13];

      _Block_release(v13);
    }

    else
    {

      sub_24A6EC3C0(a1, a2, a3);
    }
  }

  else
  {

    sub_24A6EC3C0(a1, a2, a3);
  }
}

void sub_24A6EC1D0(void *a1, void (*a2)(void *, void, void *, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v8 = sub_24A82CDC4();
    sub_24A6797D0(v8, qword_27EF78C40);
    v9 = a1;
    v10 = sub_24A82CD94();
    v11 = sub_24A82D504();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 136315138;
      v15[0] = 0;
      v15[1] = 0xE000000000000000;
      v16 = v13;
      sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
      sub_24A82D914();
      v14 = sub_24A68761C(0, 0xE000000000000000, &v16);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_24A675000, v10, v11, "FMIPDeviceActionsController: remove device failed %s", v12, 0xCu);
      sub_24A6876E8(v13);
      MEMORY[0x24C21E1D0](v13, -1, -1);
      MEMORY[0x24C21E1D0](v12, -1, -1);
    }

    LOBYTE(v15[0]) = 0;
    a2(v15, 0, a1, a4);
  }

  else
  {
    sub_24A6EC3C0(a4, a2, a3);
  }
}

uint64_t sub_24A6EC3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_27EF78C40);
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPDeviceActionsController: Starting remove device request", v11, 2u);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  v12 = type metadata accessor for FMIPRemoveRequest();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  *(swift_allocObject() + qword_27EF78F98) = a1;
  if ((*(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 216) & 0x80) != 0)
  {
    v15 = 0xD000000000000014;
  }

  else
  {
    v15 = 0x65766F6D6572;
  }

  if ((*(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 216) & 0x80) != 0)
  {
    v16 = 0x800000024A8453F0;
  }

  else
  {
    v16 = 0xE600000000000000;
  }

  v17 = *(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  v18 = *(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken + 8);

  v25 = sub_24A6A183C(v15, v16, v17, v18, 1);
  v19 = v4[9];
  v20 = v4[10];
  sub_24A67DF6C(v4 + 6, v19);
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = a1;
  v21[5] = v4;
  v22 = *(v20 + 56);
  v23 = type metadata accessor for FMIPRemoveResponse();

  v22(v25, sub_24A6EE84C, v21, v23, v19, v20);
}

uint64_t sub_24A6EC62C(Swift::Int *a1, void *a2, uint64_t (*a3)(void, void, void, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a6;
  v63 = a2;
  v10 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = &v57 - v12;
  v13 = sub_24A82CAA4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v61 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v17 = sub_24A82CDC4();
  sub_24A6797D0(v17, qword_27EF78C40);

  v18 = sub_24A82CD94();
  v19 = sub_24A82D504();

  v20 = os_log_type_enabled(v18, v19);
  v62 = v14;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v57 = a4;
    v58 = a3;
    v23 = a5;
    v24 = v22;
    aBlock[0] = v22;
    *v21 = 136315138;
    v65 = a1;
    sub_24A6BBA94(&qword_27EF5D5C8, &unk_24A8338A0);
    v25 = sub_24A82D624();
    v27 = v13;
    v28 = sub_24A68761C(v25, v26, aBlock);

    *(v21 + 4) = v28;
    v13 = v27;
    _os_log_impl(&dword_24A675000, v18, v19, "FMIPDeviceActionsController: remove response received: %s", v21, 0xCu);
    sub_24A6876E8(v24);
    v29 = v24;
    a5 = v23;
    a4 = v57;
    a3 = v58;
    MEMORY[0x24C21E1D0](v29, -1, -1);
    MEMORY[0x24C21E1D0](v21, -1, -1);
  }

  v30 = v63;
  if (v63 || !a1)
  {
    v34 = v63;
    v35 = sub_24A82CD94();
    v36 = sub_24A82D504();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315138;
      v65 = v30;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v39 = sub_24A82D624();
      v41 = sub_24A68761C(v39, v40, aBlock);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_24A675000, v35, v36, "FMIPDeviceActionsController: error received for remove request: %s", v37, 0xCu);
      sub_24A6876E8(v38);
      MEMORY[0x24C21E1D0](v38, -1, -1);
      MEMORY[0x24C21E1D0](v37, -1, -1);
    }

    LOBYTE(aBlock[0]) = 0;
    return a3(aBlock, 0, v30, a5);
  }

  else
  {
    if (!*(a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 24))
    {

      goto LABEL_14;
    }

    v31 = *(a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 16);

    v32 = v60;
    sub_24A82CA44();
    v33 = v62;
    if ((*(v62 + 48))(v32, 1, v13) == 1)
    {
      sub_24A67F378(v32, &qword_27EF5D020, &qword_24A830E40);
LABEL_14:
      v43 = sub_24A82CD94();
      v44 = sub_24A82D504();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_24A675000, v43, v44, "FMIPDeviceActionsController: Not calling unpair for local findable beacons", v45, 2u);
        MEMORY[0x24C21E1D0](v45, -1, -1);
      }

      FMIPActionStatus.init(rawValue:)(a1[6]);
      v46 = aBlock[0];
      if (LOBYTE(aBlock[0]) == 18)
      {
        v46 = 0;
      }

      LOBYTE(aBlock[0]) = v46;
      v47 = a1[7];

      a3(aBlock, v47, 0, a5);
    }

    (*(v33 + 32))(v61, v32, v13);
    v48 = sub_24A82CD94();
    v49 = sub_24A82D504();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_24A675000, v48, v49, "FMIPDeviceActionsController: Calling unpair for local findable beacons", v50, 2u);
      MEMORY[0x24C21E1D0](v50, -1, -1);
    }

    v51 = sub_24A6DA74C();
    v52 = v61;
    v53 = sub_24A82CA64();
    v54 = swift_allocObject();
    v54[2] = a3;
    v54[3] = a4;
    v54[4] = a1;
    v54[5] = 0;
    v54[6] = a5;
    aBlock[4] = sub_24A6EE858;
    aBlock[5] = v54;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7386AC;
    aBlock[3] = &unk_285DC27A0;
    v55 = _Block_copy(aBlock);

    v56 = 0;

    [v51 unpairUUID:v53 force:0 completion:v55];
    _Block_release(v55);

    return (*(v62 + 8))(v52, v13);
  }
}

uint64_t sub_24A6ECCC4(void *a1, void (*a2)(void, void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v11 = sub_24A82CDC4();
  sub_24A6797D0(v11, qword_27EF78C40);
  v12 = a1;
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = a2;
    v16 = a6;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315138;
    v19 = a1;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v20 = sub_24A82D024();
    v22 = sub_24A68761C(v20, v21, &v27);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_24A675000, v13, v14, "FMIPDeviceActionsController: Unpair finished. With error? %s", v17, 0xCu);
    sub_24A6876E8(v18);
    MEMORY[0x24C21E1D0](v18, -1, -1);
    v23 = v17;
    a6 = v16;
    a2 = v15;
    MEMORY[0x24C21E1D0](v23, -1, -1);
  }

  FMIPActionStatus.init(rawValue:)(*(a4 + 48));
  v24 = v27;
  if (v27 == 18)
  {
    v24 = 0;
  }

  LOBYTE(v27) = v24;
  v25 = *(a4 + 56);

  a2(&v27, v25, a5, a6);
}

uint64_t sub_24A6ECEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_27EF78C40);
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPDeviceActionsController: Starting repair device request", v11, 2u);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  v12 = type metadata accessor for FMIPRepairRequest();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  *(swift_allocObject() + qword_27EF78DE0) = a1;
  v15 = *(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  v16 = *(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken + 8);

  v17 = sub_24A6A183C(0x6544726961706572, 0xEC00000065636976, v15, v16, 0);
  v18 = v4[9];
  v19 = v4[10];
  sub_24A67DF6C(v4 + 6, v18);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a1;
  v21 = *(v19 + 56);
  v22 = type metadata accessor for FMIPRepairResponse();

  v21(v17, sub_24A6EE840, v20, v22, v18, v19);
}

uint64_t sub_24A6ED0EC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t **, uint64_t, void *, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a2 || !a1)
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v17 = sub_24A82CDC4();
    sub_24A6797D0(v17, qword_27EF78C40);
    v18 = a2;
    v19 = sub_24A82CD94();
    v20 = sub_24A82D504();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v23 = sub_24A82D624();
      v25 = sub_24A68761C(v23, v24, &v26);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_24A675000, v19, v20, "FMIPDeviceActionsController: error received for repair request: %s", v21, 0xCu);
      sub_24A6876E8(v22);
      MEMORY[0x24C21E1D0](v22, -1, -1);
      MEMORY[0x24C21E1D0](v21, -1, -1);
    }

    LOBYTE(v26) = 0;
    return a3(&v26, 0, a2, a5);
  }

  else
  {
    v8 = qword_27EF5CB98;

    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_27EF78C40);
    v11 = sub_24A82CD94();
    v12 = sub_24A82D504();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24A675000, v11, v12, "FMIPDeviceActionsController: repair device action completed successfully", v13, 2u);
      MEMORY[0x24C21E1D0](v13, -1, -1);
    }

    FMIPActionStatus.init(rawValue:)(*(a1 + 48));
    v14 = v26;
    if (v26 == 18)
    {
      v14 = 0;
    }

    LOBYTE(v26) = v14;
    v15 = *(a1 + 56);

    a3(&v26, v15, 0, a5);
  }
}

void sub_24A6ED3AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, id a5, void (*a6)(uint64_t, id), uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a5)
  {
    v13 = a5;
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v14 = sub_24A82CDC4();
    sub_24A6797D0(v14, qword_27EF78C40);
    v15 = a5;
    v16 = sub_24A82CD94();
    v17 = sub_24A82D504();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v40 = v19;
      *v18 = 136315138;
      v20 = a5;
      sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
      v21 = sub_24A82D024();
      v23 = sub_24A68761C(v21, v22, &v40);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_24A675000, v16, v17, "FMIPDeviceActionsController: Authentication error %s", v18, 0xCu);
      sub_24A6876E8(v19);
      MEMORY[0x24C21E1D0](v19, -1, -1);
      MEMORY[0x24C21E1D0](v18, -1, -1);
    }

    v24 = a5;
    a6(a8, a5);
  }

  else if (a4 && a2)
  {
    v27 = qword_27EF5CB98;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = sub_24A82CDC4();
    sub_24A6797D0(v28, qword_27EF78C40);

    v29 = sub_24A82CD94();
    v30 = sub_24A82D504();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_24A68761C(a3, a4, &v40);
      _os_log_impl(&dword_24A675000, v29, v30, "FMIPDeviceActionsController: Authentication received %s", v31, 0xCu);
      sub_24A6876E8(v32);
      MEMORY[0x24C21E1D0](v32, -1, -1);
      MEMORY[0x24C21E1D0](v31, -1, -1);
    }

    v33 = (a8 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
    v34 = *(a8 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid + 8);
    *v33 = a1;
    v33[1] = a2;

    v35 = swift_allocObject();
    v35[2] = a6;
    v35[3] = a7;
    v35[4] = a8;

    sub_24A6EDAF8(a3, a4, a8, sub_24A6EFB08, v35);
  }

  else
  {
    sub_24A6EE8A0();
    v36 = swift_allocError();
    *v37 = 1;
    a6(a8, v36);
  }
}

void sub_24A6ED7C4(int a1, uint64_t a2, id a3, void (*a4)(uint64_t, id), uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v9 = a3;
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_27EF78C40);
    v11 = a3;
    v12 = sub_24A82CD94();
    v13 = sub_24A82D504();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      *v14 = 136315138;
      v16 = a3;
      sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
      v17 = sub_24A82D024();
      v19 = sub_24A68761C(v17, v18, &v30);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_24A675000, v12, v13, "FMIPDeviceActionsController: Error validating password %s", v14, 0xCu);
      sub_24A6876E8(v15);
      MEMORY[0x24C21E1D0](v15, -1, -1);
      MEMORY[0x24C21E1D0](v14, -1, -1);
    }

    v20 = a3;
    a4(a6, a3);
  }

  else
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v22 = sub_24A82CDC4();
    sub_24A6797D0(v22, qword_27EF78C40);

    v23 = sub_24A82CD94();
    v24 = sub_24A82D504();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      v27 = (*(*a2 + 344))();
      v29 = sub_24A68761C(v27, v28, &v30);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_24A675000, v23, v24, "FMIPDeviceActionsController: Password validated %s", v25, 0xCu);
      sub_24A6876E8(v26);
      MEMORY[0x24C21E1D0](v26, -1, -1);
      MEMORY[0x24C21E1D0](v25, -1, -1);
    }

    a4(a2, 0);
  }
}

uint64_t sub_24A6EDAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for FMIPDevice();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FMIPLostModeAction(0);
  if (swift_dynamicCastClass())
  {
    v16 = 3;
  }

  else
  {
    type metadata accessor for FMIPLockAction();
    if (swift_dynamicCastClass())
    {
      v16 = 2;
    }

    else
    {
      type metadata accessor for FMIPEraseAction();
      if (swift_dynamicCastClass())
      {
        v16 = 0;
      }

      else
      {
        type metadata accessor for FMIPCancelEraseAction();
        if (swift_dynamicCastClass())
        {
          v16 = 1;
        }

        else
        {
          type metadata accessor for FMIPRemoveDeviceAction(0);
          if (swift_dynamicCastClass())
          {
            v16 = 4;
          }

          else
          {
            v16 = 5;
          }
        }
      }
    }
  }

  sub_24A68FD9C(a3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v15, type metadata accessor for FMIPDevice);
  v17 = type metadata accessor for FMIPValidatePasswordRequest();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = (v20 + qword_27EF78EB8);
  *v21 = a1;
  v21[1] = a2;
  *(v20 + qword_27EF78EC0) = v16;
  sub_24A68FD9C(v15, v20 + qword_27EF78EC8, type metadata accessor for FMIPDevice);
  v22 = *(v15 + 27);
  if ((v22 & 0x80) != 0)
  {
    v23 = 0xD000000000000013;
  }

  else
  {
    v23 = 0xD000000000000011;
  }

  if ((v22 & 0x80) != 0)
  {
    v24 = "authForUserDevice";
  }

  else
  {
    v24 = "$defaultActor";
  }

  v25 = sub_24A6A183C(v23, v24 | 0x8000000000000000, 0, 0, 1);
  sub_24A68FFEC(v15, type metadata accessor for FMIPDevice);
  v26 = v6[9];
  v27 = v6[10];
  sub_24A67DF6C(v6 + 6, v26);
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a3;
  v29 = *(v27 + 56);
  v30 = type metadata accessor for FMIPValidatePasswordResponse();

  v29(v25, sub_24A6EE834, v28, v30, v26, v27);
}

uint64_t sub_24A6EDDC0(void *a1, void *a2, uint64_t (*a3)(void, void, void), uint64_t a4, uint64_t a5)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_27EF78C40);

  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();

  if (os_log_type_enabled(v10, v11))
  {
    v35 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36 = v13;
    *v12 = 136315138;
    sub_24A6BBA94(&qword_27EF5D5C0, &unk_24A833890);
    v14 = sub_24A82D624();
    v16 = a5;
    v17 = sub_24A68761C(v14, v15, &v36);

    *(v12 + 4) = v17;
    a5 = v16;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPDeviceActionsController: validate password response received: %s", v12, 0xCu);
    sub_24A6876E8(v13);
    MEMORY[0x24C21E1D0](v13, -1, -1);
    v18 = v12;
    a3 = v35;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  if (a2 || !a1)
  {
    v26 = a2;
    v27 = sub_24A82CD94();
    v28 = sub_24A82D504();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      *v29 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v31 = sub_24A82D624();
      v33 = a5;
      v34 = sub_24A68761C(v31, v32, &v36);

      *(v29 + 4) = v34;
      a5 = v33;
      _os_log_impl(&dword_24A675000, v27, v28, "FMIPDeviceActionsController: error received validate password: %s", v29, 0xCu);
      sub_24A6876E8(v30);
      MEMORY[0x24C21E1D0](v30, -1, -1);
      MEMORY[0x24C21E1D0](v29, -1, -1);
    }

    LOBYTE(v36) = 0;
    return a3(&v36, a5, a2);
  }

  else
  {
    v19 = a1[8];
    v20 = (a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
    v21 = *(a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID + 8);
    *v20 = a1[7];
    v20[1] = v19;

    v22 = a1[10];
    v23 = (a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
    v24 = *(a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken + 8);
    *v23 = a1[9];
    v23[1] = v22;

    LOBYTE(v36) = 2 * (a1[6] == 200);
    a3(&v36, a5, 0);
  }
}

void sub_24A6EE108(unsigned __int8 *a1, void *a2, void (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_27EF78C40);

  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38[0] = v11;
    *v10 = 136315138;
    v39 = a1;
    sub_24A6BBA94(&qword_27EF5D618, &qword_24A8339A8);
    v12 = sub_24A82D624();
    v14 = sub_24A68761C(v12, v13, v38);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPDeviceActionsController: verify trusted state response received: %s", v10, 0xCu);
    sub_24A6876E8(v11);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    MEMORY[0x24C21E1D0](v10, -1, -1);
  }

  if (a2 || !a1)
  {
    v21 = a2;
    v22 = sub_24A82CD94();
    v23 = sub_24A82D504();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38[0] = v25;
      *v24 = 136315138;
      v39 = a2;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v26 = sub_24A82D624();
      v28 = sub_24A68761C(v26, v27, v38);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_24A675000, v22, v23, "FMIPDeviceActionsController: error received verifying trusted state password: %s", v24, 0xCu);
      sub_24A6876E8(v25);
      MEMORY[0x24C21E1D0](v25, -1, -1);
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    a3(a5, a2);
  }

  else
  {
    v15 = a5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation;
    swift_beginAccess();
    v16 = *v15;
    if (*v15)
    {
      v17 = *(v15 + 8);
      v18 = a1[57];
      v19 = a1[56];
      v20 = swift_allocObject();
      v20[2] = a3;
      v20[3] = a4;
      v20[4] = a5;

      sub_24A6A7314(v16);

      v16(v18, v19, sub_24A6EFA14, v20);

      sub_24A6AFFE8(v16);
    }

    else
    {
      v29 = qword_281515DC8;

      if (v29 != -1)
      {
        swift_once();
      }

      sub_24A6797D0(v7, qword_281518F88);
      v30 = sub_24A82CD94();
      v31 = sub_24A82D4E4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_24A675000, v30, v31, "FMIPDeviceActionsController: trusted device confirmation callback missing", v32, 2u);
        MEMORY[0x24C21E1D0](v32, -1, -1);
      }

      sub_24A6EE8A0();
      v33 = swift_allocError();
      *v34 = 3;
      a3(a5, v33);
    }
  }
}

void sub_24A6EE578(char a1, void (*a2)(uint64_t, void *), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v6 = sub_24A82CDC4();
    sub_24A6797D0(v6, qword_27EF78C40);
    v7 = sub_24A82CD94();
    v8 = sub_24A82D504();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24A675000, v7, v8, "FMIPDeviceActionsController: trusted device confirmation confirmed", v9, 2u);
      MEMORY[0x24C21E1D0](v9, -1, -1);
    }

    a2(a4, 0);
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_281518F88);
    v11 = sub_24A82CD94();
    v12 = sub_24A82D4E4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24A675000, v11, v12, "FMIPDeviceActionsController: trusted device confirmation declined", v13, 2u);
      MEMORY[0x24C21E1D0](v13, -1, -1);
    }

    sub_24A6EE8A0();
    v14 = swift_allocError();
    *v15 = 4;
    a2(a4, v14);
  }
}

uint64_t sub_24A6EE794()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_24A6EE7E0()
{
  result = qword_27EF5D5B8;
  if (!qword_27EF5D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D5B8);
  }

  return result;
}

unint64_t sub_24A6EE8A0()
{
  result = qword_27EF5D5D8;
  if (!qword_27EF5D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D5D8);
  }

  return result;
}

uint64_t sub_24A6EE8F4(uint64_t a1)
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
  v12[1] = sub_24A69BD40;

  return sub_24A6EA22C(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_24A6EE9E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24A69BD40;

  return sub_24A69B884(a1, v5);
}

uint64_t sub_24A6EEAF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A6CADE0;

  return sub_24A6EABAC(a1, v4, v5, v7, v6);
}

uint64_t sub_24A6EEBB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A6CADE0;

  return sub_24A6E5964(a1, v4, v5, v7, v6);
}

uint64_t sub_24A6EEC70(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_24A6CADE0;

  return sub_24A6E95F4(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_24A6EED64()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A6EEE30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A6CADE0;

  return sub_24A6E5964(a1, v4, v5, v7, v6);
}

uint64_t sub_24A6EEEF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A6CADE0;

  return sub_24A6E5964(a1, v4, v5, v7, v6);
}

uint64_t sub_24A6EF084(uint64_t a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for FMIPItemGroup();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMIPDevice();
  sub_24A67E964(a1 + *(v11 + 128), v5, &unk_27EF5E0B0, &qword_24A8338B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24A67F378(v5, &unk_27EF5E0B0, &qword_24A8338B0);
    if (*(a1 + *(v11 + 136)) == 5)
    {
      v13 = *(a1 + 16);
      v12 = *(a1 + 24);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_24A6EF274(v5, v10, type metadata accessor for FMIPItemGroup);
    v13 = *(v10 + 1);
    v14 = *(v10 + 2);

    sub_24A68FFEC(v10, type metadata accessor for FMIPItemGroup);
  }

  return v13;
}

uint64_t sub_24A6EF274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A6EF2DC(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_24A82CAA4() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24A6CADE0;

  return sub_24A6E4F44(a1, v6, v7, v8, v9, v10, v1 + v5, v13);
}

uint64_t sub_24A6EF448()
{
  v1 = sub_24A82CAA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_24A6EF564(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_24A82CAA4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = (v2 + v6);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v7);
  v13 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v8, v2 + v5, v10, v11, v12, v13);
}

uint64_t sub_24A6EF634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A6CADE0;

  return sub_24A6E5964(a1, v4, v5, v7, v6);
}

uint64_t sub_24A6EF6F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6EF73C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A6CADE0;

  return sub_24A6E5964(a1, v4, v5, v7, v6);
}

uint64_t sub_24A6EF808()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6EF85C(void *a1)
{
  v3 = *(sub_24A82CAA4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_24A6E2604(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_24A6EF900(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24A6EFA2C()
{
  result = qword_27EF5D620;
  if (!qword_27EF5D620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF5D620);
  }

  return result;
}

uint64_t sub_24A6EFA78(void (*a1)(void))
{
  v3 = v1[3];

  v4 = v1[4];

  a1(v1[5]);

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t sub_24A6EFB2C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t FMIPAudioChannel.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_24A6EFC28()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6EFCE4()
{
  *v0;
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A6EFD8C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6EFE44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A6F044C();
  *a2 = result;
  return result;
}

void sub_24A6EFE74(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701667182;
  v4 = 0xE900000000000065;
  v5 = 0x6C62616C69617661;
  if (*v1 != 2)
  {
    v5 = 0x646574756DLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E6979616C70;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_24A6EFEEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A6F044C();
  *a1 = result;
  return result;
}

uint64_t sub_24A6EFF20(uint64_t a1)
{
  v2 = sub_24A68E7A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6EFF5C(uint64_t a1)
{
  v2 = sub_24A68E7A8();

  return MEMORY[0x2821FE720](a1, v2);
}

void FMIPAudioChannel.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5D650, &qword_24A833A68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = *(v1 + 16);
  v17 = *(v1 + 17);
  v14[3] = *(v1 + 18);
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v11 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A68E7A8();
  sub_24A82DD84();
  v21 = 0;
  v12 = v16;
  sub_24A82DB04();
  if (v12)
  {
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v13 = v15;
    v20 = 1;
    sub_24A82DB14();
    [v13 integerValue];
    v19 = 2;
    sub_24A82DB34();
    v18 = 3;
    sub_24A82DB14();
    (*(v4 + 8))(v7, v3);
  }
}

uint64_t static FMIPAudioChannel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = *(a2 + 16);
  v6 = *(a2 + 17);
  v7 = *(a2 + 18);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
    if (v4 != v7)
    {
      return result;
    }

    goto LABEL_9;
  }

  v9 = sub_24A82DC04();
  result = 0;
  if ((v9 & 1) != 0 && ((v4 ^ v7) & 1) == 0)
  {
LABEL_9:
    if (((v3 ^ v6) & 1) == 0)
    {
      return v2 ^ v5 ^ 1u;
    }
  }

  return result;
}

uint64_t sub_24A6F02C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = *(a2 + 16);
  v6 = *(a2 + 17);
  v7 = *(a2 + 18);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
    if (v4 != v7)
    {
      return result;
    }

    goto LABEL_9;
  }

  v9 = sub_24A82DC04();
  result = 0;
  if ((v9 & 1) != 0 && ((v4 ^ v7) & 1) == 0)
  {
LABEL_9:
    if (((v3 ^ v6) & 1) == 0)
    {
      return v2 ^ v5 ^ 1u;
    }
  }

  return result;
}

uint64_t sub_24A6F0368(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_24A6F03B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A6F03F8()
{
  result = qword_27EF5D658;
  if (!qword_27EF5D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D658);
  }

  return result;
}

uint64_t sub_24A6F044C()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A6F0498(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6574737572547369;
  }

  else
  {
    v4 = 0x65447473614C7369;
  }

  if (v3)
  {
    v5 = 0xEC00000065636976;
  }

  else
  {
    v5 = 0xEF65636976654464;
  }

  if (*a2)
  {
    v6 = 0x6574737572547369;
  }

  else
  {
    v6 = 0x65447473614C7369;
  }

  if (*a2)
  {
    v7 = 0xEF65636976654464;
  }

  else
  {
    v7 = 0xEC00000065636976;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A6F0554()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6F05EC()
{
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A6F0670()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6F0704@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A82D9C4();

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

void sub_24A6F0764(uint64_t *a1@<X8>)
{
  v2 = 0x65447473614C7369;
  if (*v1)
  {
    v2 = 0x6574737572547369;
  }

  v3 = 0xEC00000065636976;
  if (*v1)
  {
    v3 = 0xEF65636976654464;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A6F07B8()
{
  if (*v0)
  {
    result = 0x6574737572547369;
  }

  else
  {
    result = 0x65447473614C7369;
  }

  *v0;
  return result;
}

uint64_t sub_24A6F0808@<X0>(char *a1@<X8>)
{
  v2 = sub_24A82D9C4();

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

uint64_t sub_24A6F086C(uint64_t a1)
{
  v2 = sub_24A6F0F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6F08A8(uint64_t a1)
{
  v2 = sub_24A6F0F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A6F0930(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5D670, &qword_24A833D28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6F0F0C();
  sub_24A82DD64();
  if (v2)
  {
    sub_24A6876E8(a1);
    type metadata accessor for FMIPVerifyTrustedStateResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v30[0]) = 0;
    v11 = sub_24A82DA54();
    LOBYTE(v30[0]) = 1;
    v12 = sub_24A82DA54();
    *(v1 + 56) = v11 & 1;
    *(v1 + 57) = v12 & 1;
    sub_24A698230(a1, v30);
    v3 = sub_24A814C20(v30);
    v13 = qword_281515DC8;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = sub_24A82CDC4();
    sub_24A6797D0(v14, qword_281518F88);
    v15 = sub_24A82CD94();
    v16 = sub_24A82D504();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = v17;
      v18 = swift_slowAlloc();
      v31 = v18;
      *v17 = 136315138;
      v29 = v15;
      v30[0] = v18;
      v19 = sub_24A6F0C7C();
      v21 = sub_24A68761C(v19, v20, v30);

      v22 = v28;
      *(v28 + 1) = v21;
      v23 = v16;
      v24 = v29;
      _os_log_impl(&dword_24A675000, v29, v23, "FMIPVerifyTrustedStateResponse: initialized with coder %s", v22, 0xCu);
      v25 = v31;
      sub_24A6876E8(v31);
      MEMORY[0x24C21E1D0](v25, -1, -1);
      MEMORY[0x24C21E1D0](v22, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v9, v5);
    sub_24A6876E8(a1);
  }

  return v3;
}

uint64_t sub_24A6F0C7C()
{
  v9[0] = 60;
  v9[1] = 0xE100000000000000;
  v1 = *v0;
  v2 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v3 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v3);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  strcpy(v9, "isLastDevice:");
  HIWORD(v9[1]) = -4864;
  if (*(v0 + 56))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + 56))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v4, v5);

  MEMORY[0x24C21C9E0](0xD000000000000011, 0x800000024A8455A0);
  if (*(v0 + 57))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 57))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v6, v7);

  MEMORY[0x24C21C9E0](15913, 0xE200000000000000);

  MEMORY[0x24C21C9E0](v9[0], v9[1]);

  return 60;
}

uint64_t sub_24A6F0E7C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

unint64_t sub_24A6F0F0C()
{
  result = qword_27EF5D678;
  if (!qword_27EF5D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D678);
  }

  return result;
}

unint64_t sub_24A6F0F74()
{
  result = qword_27EF5D680;
  if (!qword_27EF5D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D680);
  }

  return result;
}

unint64_t sub_24A6F0FCC()
{
  result = qword_27EF5D688;
  if (!qword_27EF5D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D688);
  }

  return result;
}

unint64_t sub_24A6F1024()
{
  result = qword_27EF5D690;
  if (!qword_27EF5D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D690);
  }

  return result;
}

uint64_t sub_24A6F108C(uint64_t a1)
{
  v28 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_24A82D744();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v34 = MEMORY[0x277D84F90];
  sub_24A6FCA0C(0, v2 & ~(v2 >> 63), 0);
  v3 = v34;
  if (v28)
  {
    result = sub_24A82D6F4();
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    result = sub_24A82D6C4();
    v5 = *(a1 + 36);
  }

  v31 = result;
  v32 = v5;
  v33 = v28 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v27 = v2;
    while (!__OFADD__(v7++, 1))
    {
      v10 = v31;
      v9 = v32;
      v11 = v33;
      sub_24A810BB4(v31, v32, v33, a1);
      FMIPSafeLocation.init(safeLocation:)(v12, __src);
      v34 = v3;
      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_24A6FCA0C((v13 > 1), v14 + 1, 1);
        v3 = v34;
      }

      *(v3 + 16) = v14 + 1;
      result = memcpy((v3 + 352 * v14 + 32), __src, 0x160uLL);
      if (v28)
      {
        if (!v11)
        {
          goto LABEL_43;
        }

        if (sub_24A82D714())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        sub_24A6BBA94(&qword_27EF5D718, &qword_24A841600);
        v19 = sub_24A82D3E4();
        sub_24A82D7A4();
        result = v19(v29, 0);
        v20 = v7 >= v27;
        if (v7 == v27)
        {
LABEL_35:
          sub_24A6CA498(v31, v32, v33);
          return v3;
        }
      }

      else
      {
        if (v11)
        {
          goto LABEL_44;
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        v15 = 1 << *(a1 + 32);
        if (v10 >= v15)
        {
          goto LABEL_39;
        }

        v16 = v10 >> 6;
        v17 = *(a1 + 56 + 8 * (v10 >> 6));
        if (((v17 >> v10) & 1) == 0)
        {
          goto LABEL_40;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_41;
        }

        v18 = v17 & (-2 << (v10 & 0x3F));
        if (v18)
        {
          v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = v16 << 6;
          v22 = v16 + 1;
          v23 = (a1 + 64 + 8 * v16);
          while (v22 < (v15 + 63) >> 6)
          {
            v25 = *v23++;
            v24 = v25;
            v21 += 64;
            ++v22;
            if (v25)
            {
              result = sub_24A6CA498(v10, v9, 0);
              v15 = __clz(__rbit64(v24)) + v21;
              goto LABEL_31;
            }
          }

          result = sub_24A6CA498(v10, v9, 0);
        }

LABEL_31:
        v26 = *(a1 + 36);
        v31 = v15;
        v32 = v26;
        v33 = 0;
        v20 = v7 >= v27;
        if (v7 == v27)
        {
          goto LABEL_35;
        }
      }

      if (v20)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void sub_24A6F13CC()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPSafeLocationRefreshingController: Starting refreshing Safe Locations", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v6 = *(v1 + 56);
  v7 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_24A6F28FC;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24A6F15C4;
  v9[3] = &unk_285DC3370;
  v8 = _Block_copy(v9);

  [v6 startRefreshingSafeLocationWithBlock_];
  _Block_release(v8);
}

uint64_t sub_24A6F1560(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24A6F1F94(a1, 0);
  }

  return result;
}

uint64_t sub_24A6F15C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_24A6F2904();
  sub_24A679F94(&qword_27EF5D728, sub_24A6F2904);
  v3 = sub_24A82D3A4();

  v2(v3);
}

void sub_24A6F1674()
{
  [*(v0 + 56) stopRefreshingSafeLocations];
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A82CDC4();
  sub_24A6797D0(v1, qword_281518F88);
  oslog = sub_24A82CD94();
  v2 = sub_24A82D504();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24A675000, oslog, v2, "FMIPSafeLocationRefreshingController: Stopped refreshing Safe Locations", v3, 2u);
    MEMORY[0x24C21E1D0](v3, -1, -1);
  }
}

uint64_t sub_24A6F176C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a2;
  v5 = sub_24A82CDF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24A82CE54();
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v24);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_281518F88);
  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24A675000, v15, v16, "FMIPSafeLocationRefreshingController: Manually refreshing Safe Locations", v17, 2u);
    MEMORY[0x24C21E1D0](v17, -1, -1);
  }

  v18 = *(v3 + 40);
  v19 = swift_allocObject();
  v19[2] = v3;
  v19[3] = a1;
  v19[4] = v23;
  aBlock[4] = sub_24A6F289C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC3280;
  v20 = _Block_copy(aBlock);

  sub_24A6A7314(a1);
  sub_24A82CE24();
  v25 = MEMORY[0x277D84F90];
  sub_24A679F94(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v13, v9, v20);
  _Block_release(v20);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v24);
}

void sub_24A6F1ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 56);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v9[4] = sub_24A6F28F0;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24A72032C;
  v9[3] = &unk_285DC32D0;
  v8 = _Block_copy(v9);

  sub_24A6A7314(a2);

  [v6 safeLocationsForSeparationMonitoring_];
  _Block_release(v8);
}

uint64_t sub_24A6F1BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v7 = sub_24A82CDF4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24A82CE54();
  v12 = *(v36 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v36);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_281518F88);
  v17 = sub_24A82CD94();
  v18 = sub_24A82D504();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = v15;
    v20 = v11;
    v21 = v7;
    v22 = a2;
    v23 = v12;
    v24 = v8;
    v25 = a1;
    v26 = a4;
    v27 = v19;
    *v19 = 0;
    _os_log_impl(&dword_24A675000, v17, v18, "FMIPSafeLocationRefreshingController: Manually refreshed Safe Locations", v19, 2u);
    v28 = v27;
    a4 = v26;
    a1 = v25;
    v8 = v24;
    v12 = v23;
    a2 = v22;
    v7 = v21;
    v11 = v20;
    v15 = v34;
    MEMORY[0x24C21E1D0](v28, -1, -1);
  }

  sub_24A6F1F94(a1, 1);
  v29 = *(a2 + 48);
  v30 = swift_allocObject();
  v31 = v35;
  *(v30 + 16) = v35;
  *(v30 + 24) = a4;
  aBlock[4] = sub_24A6AF880;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC3320;
  v32 = _Block_copy(aBlock);
  sub_24A6A7314(v31);
  sub_24A82CE24();
  v37 = MEMORY[0x277D84F90];
  sub_24A679F94(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v15, v11, v32);
  _Block_release(v32);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v36);
}

uint64_t sub_24A6F1F94(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24A82CDF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CE54();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 40);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = v3;
  *(v17 + 32) = a1;
  aBlock[4] = sub_24A6F281C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC31E0;
  v18 = _Block_copy(aBlock);

  sub_24A82CE24();
  v20[1] = MEMORY[0x277D84F90];
  sub_24A679F94(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v15, v10, v18);
  _Block_release(v18);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
}

void sub_24A6F2248(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CDF4();
  v32 = *(v6 - 8);
  isa = v32[8].isa;
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A82CE54();
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_281518F88);
  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24A675000, v15, v16, "FMIPSafeLocationRefreshingController: Processing safe locations update", v17, 2u);
    MEMORY[0x24C21E1D0](v17, -1, -1);
  }

  if ((a1 & 1) != 0 || (v18 = *(a2 + 32), v19 = , v20 = sub_24A7B4E64(v19, a3), , (v20 & 1) == 0))
  {
    v24 = *(a2 + 32);
    *(a2 + 32) = a3;

    v25 = sub_24A6F108C(a3);
    v26 = *(a2 + 48);
    v27 = swift_allocObject();
    *(v27 + 16) = a2;
    *(v27 + 24) = v25;
    aBlock[4] = sub_24A6F288C;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC3230;
    v28 = _Block_copy(aBlock);

    sub_24A82CE24();
    v33 = MEMORY[0x277D84F90];
    sub_24A679F94(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A6F2828();
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v13, v9, v28);
    _Block_release(v28);
    (v32[1].isa)(v9, v6);
    (*(v30 + 8))(v13, v31);
  }

  else
  {
    v32 = sub_24A82CD94();
    v21 = sub_24A82D504();
    if (os_log_type_enabled(v32, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24A675000, v32, v21, "FMIPSafeLocationRefreshingController: No changes detected, bailing.", v22, 2u);
      MEMORY[0x24C21E1D0](v22, -1, -1);
    }

    v23 = v32;
  }
}

uint64_t sub_24A6F2690(uint64_t a1, uint64_t a2)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v3 = sub_24A82CDC4();
  sub_24A6797D0(v3, qword_281518F88);
  v4 = sub_24A82CD94();
  v5 = sub_24A82D504();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24A675000, v4, v5, "FMIPSafeLocationRefreshingController: Completely processed safe location updates.", v6, 2u);
    MEMORY[0x24C21E1D0](v6, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(result + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationShifter);
    v9 = result;
    swift_unknownObjectRetain();
    sub_24A71CCD0(a2, sub_24A6F2894, v9);
  }

  return result;
}

uint64_t sub_24A6F27C4()
{
  sub_24A6BAF88(v0 + 16);
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_24A6F2828()
{
  result = qword_281514700[0];
  if (!qword_281514700[0])
  {
    sub_24A6CCDC0(&unk_27EF5D708, qword_24A833F40);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281514700);
  }

  return result;
}

uint64_t sub_24A6F28A8()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_24A6F2904()
{
  result = qword_27EF5D720;
  if (!qword_27EF5D720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF5D720);
  }

  return result;
}

uint64_t sub_24A6F2A7C()
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6F2AF0()
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6F2B44@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A82D9C4();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_24A6F2BBC()
{
  result = qword_27EF5D730[0];
  if (!qword_27EF5D730[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF5D730);
  }

  return result;
}

void *FMIPDeviceImageCache.__allocating_init(converter:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24A67ABB0(a1, a2);

  return v4;
}

uint64_t FMIPDeviceImageCache.__deallocating_deinit()
{
  FMImageCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t FMIPStandalonePart.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_24A6F2CD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1701667182;
  }

  else
  {
    v4 = 0x696669746E656469;
  }

  if (v3)
  {
    v5 = 0xEA00000000007265;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1701667182;
  }

  else
  {
    v6 = 0x696669746E656469;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xEA00000000007265;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A6F2D7C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6F2DFC()
{
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A6F2E68()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6F2EE4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A82D9C4();

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

void sub_24A6F2F44(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (!*v1)
  {
    v2 = 0x696669746E656469;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A6F2F80()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_24A6F2FB8@<X0>(char *a1@<X8>)
{
  v2 = sub_24A82D9C4();

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

uint64_t sub_24A6F301C(uint64_t a1)
{
  v2 = sub_24A6F323C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6F3058(uint64_t a1)
{
  v2 = sub_24A6F323C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPStandalonePart.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5D7B8, &qword_24A8340C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6F323C();
  sub_24A82DD64();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_24A82DA74();
    v17 = 1;
    v13 = sub_24A82DA44();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v15;
  }

  return sub_24A6876E8(a1);
}

unint64_t sub_24A6F323C()
{
  result = qword_27EF5D7C0;
  if (!qword_27EF5D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D7C0);
  }

  return result;
}

uint64_t FMIPStandalonePart.encode(to:)(void *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5D7C8, &qword_24A8340C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v13[1] = v9;
  v11 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6F323C();
  sub_24A82DD84();
  v15 = 0;
  sub_24A82DB34();
  if (!v2)
  {
    v14 = 1;
    sub_24A82DB04();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t static FMIPStandalonePart.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_24A82DC04();
  }
}

uint64_t FMIPStandalonePart.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x24C21D5E0](*v0);

  return sub_24A82D094();
}

uint64_t FMIPStandalonePart.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6F3550(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_24A82DC04();
  }
}

uint64_t sub_24A6F3598()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6F35FC()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x24C21D5E0](*v0);

  return sub_24A82D094();
}

uint64_t sub_24A6F3650()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  sub_24A82D094();
  return sub_24A82DD24();
}

unint64_t sub_24A6F36B4()
{
  result = qword_27EF5D7D0;
  if (!qword_27EF5D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D7D0);
  }

  return result;
}

__n128 sub_24A6F3708(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24A6F371C(uint64_t a1, int a2)
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

uint64_t sub_24A6F3764(uint64_t result, int a2, int a3)
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

unint64_t sub_24A6F37C8()
{
  result = qword_27EF5D7D8;
  if (!qword_27EF5D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D7D8);
  }

  return result;
}

unint64_t sub_24A6F3820()
{
  result = qword_27EF5D7E0;
  if (!qword_27EF5D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D7E0);
  }

  return result;
}

unint64_t sub_24A6F3878()
{
  result = qword_27EF5D7E8;
  if (!qword_27EF5D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D7E8);
  }

  return result;
}

uint64_t sub_24A6F3918(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5D800, &unk_24A834860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  *(v1 + 56) = 0;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6F4230();
  sub_24A82DD64();
  if (v2)
  {
    sub_24A6876E8(a1);
    v11 = *(v1 + 56);

    type metadata accessor for FMIPInitClientResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
    v30 = 4;
    sub_24A6815B0();
    sub_24A82DA84();
    v12 = *(v1 + 56);
    *(v1 + 56) = v29[0];

    sub_24A698230(a1, v29);
    v3 = sub_24A814C20(v29);
    v13 = qword_281515DC8;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = sub_24A82CDC4();
    sub_24A6797D0(v14, qword_281518F88);
    v15 = sub_24A82CD94();
    v16 = sub_24A82D504();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v26 = v17;
      v28 = swift_slowAlloc();
      v29[0] = v28;
      *v17 = 136315138;
      v27 = v15;
      v18 = sub_24A6F3C74();
      v20 = sub_24A68761C(v18, v19, v29);

      v21 = v26;
      *(v26 + 1) = v20;
      v22 = v16;
      v23 = v27;
      _os_log_impl(&dword_24A675000, v27, v22, "FMIPInitClientResponse: initialized with coder %s", v21, 0xCu);
      v24 = v28;
      sub_24A6876E8(v28);
      MEMORY[0x24C21E1D0](v24, -1, -1);
      MEMORY[0x24C21E1D0](v21, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v9, v5);
    sub_24A6876E8(a1);
  }

  return v3;
}

uint64_t sub_24A6F3C74()
{
  v1 = *v0;
  v2 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v3 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v3);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  v4 = v0[3];
  if (v4)
  {
    v6 = v4[2];
    v5 = v4[3];
  }

  else
  {
    v5 = 0xE900000000000064;
    v6 = 0x656E696665646E75;
  }

  MEMORY[0x24C21C9E0](v6, v5);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);

  MEMORY[0x24C21C9E0](0x3A72656E776FLL, 0xE600000000000000);

  sub_24A82D854();

  if (v4)
  {
    v7 = *(v4[13] + 16);
  }

  v8 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v8);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);

  MEMORY[0x24C21C9E0](0xD000000000000013, 0x800000024A845670);

  sub_24A82D854();
  MEMORY[0x24C21C9E0](0x4373656369766564, 0xED00003A746E756FLL);
  v9 = v0[7];
  if (v9)
  {
    v10 = *(v9 + 16);
  }

  sub_24A6BBA94(&qword_27EF5D7F8, &unk_24A8343C0);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](32, 0xE100000000000000);

  MEMORY[0x24C21C9E0](0, 0xE000000000000000);

  sub_24A82D854();

  if (v0[2])
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v0[2])
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v11, v12);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);

  MEMORY[0x24C21C9E0](0x6F43726576726573, 0xEF203A747865746ELL);

  return 60;
}

uint64_t sub_24A6F4064(uint64_t a1)
{
  v2 = v1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);

  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);

    _os_log_impl(&dword_24A675000, v5, v6, "FMIPDeviceContainingResponse: Updating with shifted devices %ld", v7, 0xCu);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  else
  {
  }

  v8 = *(v2 + 56);
  *(v2 + 56) = a1;
}

uint64_t sub_24A6F41D8(uint64_t a1, uint64_t a2)
{
  result = sub_24A681668(&qword_27EF5D7F0, a2, type metadata accessor for FMIPInitClientResponse);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24A6F4230()
{
  result = qword_281514258;
  if (!qword_281514258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514258);
  }

  return result;
}

uint64_t FMReverseGeocodingRequest.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMReverseGeocodingRequest.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMReverseGeocodingRequest() + 24);

  return sub_24A6F434C(v3, a1);
}

uint64_t type metadata accessor for FMReverseGeocodingRequest()
{
  result = qword_27EF5D820;
  if (!qword_27EF5D820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6F434C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMReverseGeocodingRequest.debugDescription.getter()
{
  sub_24A82D854();
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0xD000000000000019, 0x800000024A8343E0);
  MEMORY[0x24C21C9E0](0x69746E656469203ALL, 0xEE00203A72656966);
  MEMORY[0x24C21C9E0](*v0, v0[1]);
  MEMORY[0x24C21C9E0](0x203A6873616820, 0xE700000000000000);
  v1 = v0[2];
  v2 = sub_24A6F47C0();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](0x203A74616C20, 0xE600000000000000);
  [v1 coordinate];
  sub_24A82D374();
  MEMORY[0x24C21C9E0](0x203A676E6F6C20, 0xE700000000000000);
  [v1 coordinate];
  sub_24A82D374();
  MEMORY[0x24C21C9E0](0x3A73756964617220, 0xE900000000000020);
  [v1 horizontalAccuracy];
  sub_24A82D374();
  MEMORY[0x24C21C9E0](0x3A74656B63756220, 0xE900000000000020);
  [v1 horizontalAccuracy];
  v3 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v3);

  MEMORY[0x24C21C9E0](0xD000000000000015, 0x800000024A845690);
  v4 = type metadata accessor for FMReverseGeocodingRequest();
  if (*(v0 + *(v4 + 28)))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + *(v4 + 28)))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v5, v6);

  MEMORY[0x24C21C9E0](0xD000000000000013, 0x800000024A8456B0);
  MEMORY[0x24C21C9E0](v5, v6);

  MEMORY[0x24C21C9E0](0xD000000000000011, 0x800000024A8456D0);
  [v1 referenceFrame];
  v7 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v7);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_24A6F47C0()
{
  [v0 coordinate];
  v2 = round(v1 * 10000.0) / 10000.0;
  [v0 coordinate];
  v4 = round(v3 * 10000.0) / 10000.0;
  sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24A8343E0;
  v6 = MEMORY[0x277D839F8];
  v7 = MEMORY[0x277D83A80];
  *(v5 + 56) = MEMORY[0x277D839F8];
  *(v5 + 64) = v7;
  *(v5 + 32) = v2;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = v4;
  v8 = [v0 referenceFrame];
  v9 = MEMORY[0x277D84D30];
  *(v5 + 136) = MEMORY[0x277D84CC0];
  *(v5 + 144) = v9;
  *(v5 + 112) = v8;
  [v0 horizontalAccuracy];
  if (v10 >= 5.0)
  {
    if (v10 >= 10.0)
    {
      if (v10 >= 25.0)
      {
        v11 = 50;
        v12 = 100;
        v13 = 1000;
        if (v10 < 250.0)
        {
          v13 = 250;
        }

        if (v10 >= 100.0)
        {
          v12 = v13;
        }

        if (v10 >= 50.0)
        {
          v11 = v12;
        }
      }

      else
      {
        v11 = 25;
      }
    }

    else
    {
      v11 = 10;
    }
  }

  else
  {
    v11 = 5;
  }

  v14 = MEMORY[0x277D83C10];
  *(v5 + 176) = MEMORY[0x277D83B88];
  *(v5 + 184) = v14;
  *(v5 + 152) = v11;

  return sub_24A82CFF4();
}

uint64_t FMReverseGeocodingRequest.hash(into:)()
{
  v1 = v0;
  v2 = sub_24A82CAE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = *v0;
  v12 = v0[1];
  sub_24A82D094();
  v13 = v0[2];
  sub_24A82D5F4();
  v14 = type metadata accessor for FMReverseGeocodingRequest();
  sub_24A6F434C(v1 + v14[6], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_24A82DCE4();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_24A82DCE4();
    sub_24A6F5230(&qword_27EF5D808, MEMORY[0x277CC9788]);
    sub_24A82CF64();
    (*(v3 + 8))(v6, v2);
  }

  v15 = *(v1 + v14[7]);
  sub_24A82DCE4();
  v16 = *(v1 + v14[8]);
  return sub_24A82DCE4();
}

uint64_t FMReverseGeocodingRequest.hashValue.getter()
{
  sub_24A82DCC4();
  FMReverseGeocodingRequest.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A6F4BF0()
{
  sub_24A82DCC4();
  FMReverseGeocodingRequest.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A6F4C34()
{
  sub_24A82DCC4();
  FMReverseGeocodingRequest.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A6F4C78()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82DCF4();
  return sub_24A82DD24();
}

uint64_t sub_24A6F4CEC()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82DCF4();
  return sub_24A82DD24();
}

uint64_t _s8FMIPCore25FMReverseGeocodingRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_24A82CAE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_24A6BBA94(&qword_27EF5D838, qword_24A834550);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24A82DC04() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
  v17 = a1[2];
  v18 = a2[2];
  if ((sub_24A82D5E4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v27 = type metadata accessor for FMReverseGeocodingRequest();
  v19 = v27[6];
  v20 = *(v13 + 48);
  sub_24A6F434C(a1 + v19, v16);
  sub_24A6F434C(a2 + v19, &v16[v20]);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    sub_24A6F434C(v16, v12);
    if (v21(&v16[v20], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v20], v4);
      sub_24A6F5230(&qword_27EF5D840, MEMORY[0x277CC9788]);
      v22 = sub_24A82CF84();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_24A67F378(v16, &qword_27EF5E930, &unk_24A8343F0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    (*(v5 + 8))(v12, v4);
LABEL_10:
    sub_24A67F378(v16, &qword_27EF5D838, qword_24A834550);
    goto LABEL_13;
  }

  if (v21(&v16[v20], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_24A67F378(v16, &qword_27EF5E930, &unk_24A8343F0);
LABEL_12:
  if (*(a1 + v27[7]) == *(a2 + v27[7]))
  {
    v24 = *(a1 + v27[8]) ^ *(a2 + v27[8]) ^ 1;
    return v24 & 1;
  }

LABEL_13:
  v24 = 0;
  return v24 & 1;
}

void sub_24A6F517C()
{
  sub_24A679170(319, &qword_27EF5D830, 0x277CE41F8);
  if (v0 <= 0x3F)
  {
    sub_24A687858();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24A6F5230(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for FMIPGetURLInfoRequest()
{
  result = qword_27EF5D848;
  if (!qword_27EF5D848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6F52C4()
{
  result = sub_24A82C8B4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A6F535C()
{
  v1 = v0;
  v2 = sub_24A82C814();
  v12 = MEMORY[0x277D837D0];
  *&v11 = v2;
  *(&v11 + 1) = v3;
  v4 = qword_27EF5D920;
  v5 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 24));

  sub_24A6A50DC(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v10, 7107189, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  v8 = *(v1 + v4);

  os_unfair_lock_lock((v8 + 24));
  sub_24A6A3D28((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
}

uint64_t sub_24A6F546C()
{
  v1 = qword_27EF78C70;
  v2 = sub_24A82C8B4();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_24A6F54D4()
{
  v0 = sub_24A6F8F90();
  v1 = qword_27EF78C70;
  v2 = sub_24A82C8B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t FMIPNotifyActionType.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t FMIPNotifyAction.__allocating_init(device:type:enabled:)(uint64_t a1, _BYTE *a2, char a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  FMIPNotifyAction.init(device:type:enabled:)(a1, a2, a3);
  return v9;
}

uint64_t FMIPNotifyAction.init(device:type:enabled:)(uint64_t a1, _BYTE *a2, char a3)
{
  *(v3 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_type) = *a2;
  *(v3 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled) = a3;
  *(v3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v4 = (v3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v8 = 0;
  v8[1] = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A68D558(a1, v3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, type metadata accessor for FMIPDevice);
  return v3;
}

uint64_t static FMIPNotifyAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled) == *(a2 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled))
  {
    return static FMIPDevice.== infix(_:_:)(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A6F57A4()
{
  v1 = sub_24A6FDDC4();
  if (*(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v2, v3);

  MEMORY[0x24C21C9E0](0x64656C62616E6520, 0xEA0000000000203ALL);

  return v1;
}

uint64_t FMIPNotifyAction.__deallocating_deinit()
{
  v0 = *FMIPDeviceAction.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A6F5904(void *a1, void *a2)
{
  if (*(*a1 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled) == *(*a2 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled))
  {
    return static FMIPDevice.== infix(_:_:)(*a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, *a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  }

  else
  {
    return 0;
  }
}

uint64_t FMIPNotifyItemActionType.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t FMIPNotifyItemAction.__allocating_init(item:type:state:)(uint64_t a1, _BYTE *a2, char a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_type) = *a2;
  *(v9 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state) = a3;
  sub_24A68D558(a1, v9 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  return v9;
}

uint64_t FMIPNotifyItemAction.init(item:type:state:)(uint64_t a1, _BYTE *a2, char a3)
{
  *(v3 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_type) = *a2;
  *(v3 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state) = a3;
  sub_24A68D558(a1, v3 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  return v3;
}

uint64_t sub_24A6F5AE0()
{
  if (*(v0 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state))
  {
    result = 0x64656C62616E65;
  }

  else
  {
    result = 0x64656C6261736964;
  }

  *(v0 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state);
  return result;
}

uint64_t FMIPNotifyItemAction.__deallocating_deinit()
{
  sub_24A6CB3F0(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s8FMIPCore20FMIPNotifyItemActionC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s8FMIPCore8FMIPItemV2eeoiySbAC_ACtFZ_0(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, a2 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item) && *(a1 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_type) == *(a2 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_type))
  {
    v4 = *(a1 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state) ^ *(a2 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_24A6F5C78()
{
  result = qword_27EF5D858;
  if (!qword_27EF5D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D858);
  }

  return result;
}

unint64_t sub_24A6F5CD0()
{
  result = qword_27EF5D860;
  if (!qword_27EF5D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D860);
  }

  return result;
}

uint64_t sub_24A6F5EE8(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5D800, &unk_24A834860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  *(v1 + 56) = 0;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6F4230();
  sub_24A82DD64();
  if (v2)
  {
    sub_24A6876E8(a1);
    v11 = *(v1 + 56);

    type metadata accessor for FMIPDeviceActionResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
    v30 = 4;
    sub_24A6815B0();
    sub_24A82DA84();
    v12 = *(v1 + 56);
    *(v1 + 56) = v29[0];

    sub_24A698230(a1, v29);
    v3 = sub_24A814C20(v29);
    v13 = qword_281515DC8;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = sub_24A82CDC4();
    sub_24A6797D0(v14, qword_281518F88);
    v15 = sub_24A82CD94();
    v16 = sub_24A82D504();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v26 = v17;
      v28 = swift_slowAlloc();
      v29[0] = v28;
      *v17 = 136315138;
      v27 = v15;
      v18 = sub_24A6F6244();
      v20 = sub_24A68761C(v18, v19, v29);

      v21 = v26;
      *(v26 + 1) = v20;
      v22 = v16;
      v23 = v27;
      _os_log_impl(&dword_24A675000, v27, v22, "FMIPDeviceContainingResponse: initialized with coder %s", v21, 0xCu);
      v24 = v28;
      sub_24A6876E8(v28);
      MEMORY[0x24C21E1D0](v24, -1, -1);
      MEMORY[0x24C21E1D0](v21, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v9, v5);
    sub_24A6876E8(a1);
  }

  return v3;
}

uint64_t sub_24A6F6244()
{
  v16 = 60;
  v17 = 0xE100000000000000;
  v1 = *v0;
  v2 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  v15 = v0;
  sub_24A6CB660();
  v3 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v3);

  v4 = MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  v16 = 0x203A737574617473;
  v17 = 0xE800000000000000;
  (*(*v0 + 144))(&v14, v4);
  v15 = qword_24A834880[v14];
  v5 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v5);

  v6 = v16;
  v7 = v17;
  v16 = 60;
  v17 = 0xE100000000000000;

  MEMORY[0x24C21C9E0](v6, v7);

  v9 = v16;
  v8 = v17;
  v16 = 0x3A73656369766564;
  v17 = 0xE800000000000000;
  v15 = v0[7];

  sub_24A6BBA94(&qword_27EF5D890, &unk_24A834870);
  v10 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v10);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  v11 = v16;
  v12 = v17;
  v16 = v9;
  v17 = v8;

  MEMORY[0x24C21C9E0](v11, v12);

  return v16;
}

uint64_t sub_24A6F6520(uint64_t a1, uint64_t a2)
{
  result = sub_24A6F6578(&qword_27EF5D888, a2, type metadata accessor for FMIPDeviceActionResponse);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24A6F6578(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t static FMSystemInfo.isKoreaSKU()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isInternalBuild];

  if (v1)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = sub_24A82CF94();
    v4 = [v2 BOOLForKey_];

    if (v4)
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v5 = sub_24A82CDC4();
      sub_24A6797D0(v5, qword_281518F88);
      v6 = sub_24A82CD94();
      v7 = sub_24A82D504();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_24A675000, v6, v7, "SystemInfo simulating Korea SKU device.", v8, 2u);
        MEMORY[0x24C21E1D0](v8, -1, -1);
      }

      return 1;
    }
  }

  if (sub_24A6F67B4() == 18507 && v9 == 0xE200000000000000)
  {

    return 1;
  }

  v11 = sub_24A82DC04();

  return v11 & 1;
}

uint64_t sub_24A6F67B4()
{
  sub_24A6F6A08(v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }
  }

  else
  {
    sub_24A6F6C40(v2);
  }

  return 0;
}

uint64_t static FMSystemInfo.isChinaSKU()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isInternalBuild];

  if (v1)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = sub_24A82CF94();
    v4 = [v2 BOOLForKey_];

    if (v4)
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v5 = sub_24A82CDC4();
      sub_24A6797D0(v5, qword_281518F88);
      v6 = sub_24A82CD94();
      v7 = sub_24A82D504();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_24A675000, v6, v7, "SystemInfo simulating China SKU device.", v8, 2u);
        MEMORY[0x24C21E1D0](v8, -1, -1);
      }

      return 1;
    }
  }

  if (sub_24A6F67B4() == 18499 && v9 == 0xE200000000000000)
  {

    return 1;
  }

  v11 = sub_24A82DC04();

  return v11 & 1;
}

void sub_24A6F6A08(uint64_t a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = sub_24A82CF94();
  v3 = MGCopyAnswerWithError();

  if (v3)
  {
    *(a1 + 24) = swift_getObjectType();
    *a1 = v3;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24A6F6C40(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5D898, qword_24A8354A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPUnknownItemUTMetadata.modelName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMIPUnknownItemUTMetadata.manufacturerName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FMIPUnknownItemUTMetadata.learnMoreInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMIPUnknownItemUTMetadata() + 24);

  return sub_24A6F6D4C(v3, a1);
}

uint64_t sub_24A6F6D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5D8A0, &qword_24A834940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMIPUnknownItemUTMetadata.disableInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMIPUnknownItemUTMetadata() + 28);

  return sub_24A6F6D4C(v3, a1);
}

uint64_t sub_24A6F6E0C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6F6EEC()
{
  *v0;
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A6F6FB8()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6F7094@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A6F8F44();
  *a2 = result;
  return result;
}

void sub_24A6F70C4(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D614E6C65646F6DLL;
  v4 = 0xED00006F666E4965;
  v5 = 0x726F4D6E7261656CLL;
  if (*v1 != 2)
  {
    v5 = 0x49656C6261736964;
    v4 = 0xEB000000006F666ELL;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000024A843550;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_24A6F7160()
{
  v1 = 0x6D614E6C65646F6DLL;
  v2 = 0x726F4D6E7261656CLL;
  if (*v0 != 2)
  {
    v2 = 0x49656C6261736964;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A6F71F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A6F8F44();
  *a1 = result;
  return result;
}

uint64_t sub_24A6F7220(uint64_t a1)
{
  v2 = sub_24A6F7874();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6F725C(uint64_t a1)
{
  v2 = sub_24A6F7874();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPUnknownItemUTMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v56 = type metadata accessor for FMIPUnknownItemProductMetadata();
  isa = v56[-1].isa;
  v3 = *(isa + 64);
  v4 = MEMORY[0x28223BE20](v56);
  v57 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - v6;
  v8 = sub_24A6BBA94(&qword_27EF5D8A8, &qword_24A834948);
  v58 = *(v8 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - v10;
  v12 = type metadata accessor for FMIPUnknownItemUTMetadata();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6F7874();
  v17 = v59;
  sub_24A82DD64();
  if (v17)
  {
    v23 = a1;
  }

  else
  {
    v53 = v12;
    v59 = v15;
    v18 = v56;
    v64 = 0;
    v19 = v11;
    v52 = sub_24A82DA44();
    v21 = v20;
    v63 = 1;
    v49 = sub_24A82DA44();
    v51 = v22;
    v62 = 2;
    v50 = sub_24A6F8DBC(&qword_27EF5D8B8, type metadata accessor for FMIPUnknownItemProductMetadata);
    sub_24A82DA84();
    v48 = v7;
    v61 = 2;
    sub_24A82DA84();
    v50 = v19;
    v25 = v59;
    v26 = v53;
    *v59 = v52;
    v25[1] = v21;
    v27 = v48;
    v28 = v51;
    v25[2] = v49;
    v25[3] = v28;
    v29 = *(v26 + 24);
    sub_24A6F7924(v27, v25 + v29);
    v30 = *(isa + 56);
    v30(v25 + v29, 0, 1, v18);
    v31 = *(v26 + 28);
    v32 = v57;
    sub_24A6F7924(v57, v25 + v31);
    v30(v25 + v31, 0, 1, v18);
    v33 = FMIPUnknownItemUTMetadata.debugDescription.getter();
    v35 = v34;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v36 = sub_24A82CDC4();
    sub_24A6797D0(v36, qword_281518F88);

    v37 = sub_24A82CD94();
    v38 = sub_24A82D4C4();

    v56 = v37;
    v39 = a1;
    if (os_log_type_enabled(v37, v38))
    {
      v40 = v32;
      v41 = v38;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      isa = v8;
      v44 = v43;
      v60 = v43;
      *v42 = 136315138;
      v45 = sub_24A68761C(v33, v35, &v60);

      *(v42 + 4) = v45;
      v46 = v56;
      _os_log_impl(&dword_24A675000, v56, v41, "FMIPUnknownItemUTMetadata: initialized %s", v42, 0xCu);
      sub_24A6876E8(v44);
      MEMORY[0x24C21E1D0](v44, -1, -1);
      MEMORY[0x24C21E1D0](v42, -1, -1);

      sub_24A6F78C8(v40);
      sub_24A6F78C8(v48);
      (*(v58 + 8))(v50, isa);
    }

    else
    {

      sub_24A6F78C8(v32);
      sub_24A6F78C8(v48);
      (*(v58 + 8))(v50, v8);
    }

    sub_24A6F8D0C(v59, v55, type metadata accessor for FMIPUnknownItemUTMetadata);
    v23 = v39;
  }

  return sub_24A6876E8(v23);
}

unint64_t sub_24A6F7874()
{
  result = qword_27EF5D8B0;
  if (!qword_27EF5D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D8B0);
  }

  return result;
}

uint64_t sub_24A6F78C8(uint64_t a1)
{
  v2 = type metadata accessor for FMIPUnknownItemProductMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A6F7924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPUnknownItemProductMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMIPUnknownItemUTMetadata.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_24A6BBA94(&qword_27EF5D8A0, &qword_24A834940);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0xD000000000000019, 0x800000024A834930);
  MEMORY[0x24C21C9E0](0x4E6C65646F6D203ALL, 0xED0000203A656D61);
  v9 = v0[1];
  v25 = *v0;
  v26 = v9;

  sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  v10 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v10);

  MEMORY[0x24C21C9E0](0xD000000000000013, 0x800000024A8458B0);
  v11 = v0[3];
  v25 = v0[2];
  v26 = v11;

  v12 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v12);

  MEMORY[0x24C21C9E0](0xD000000000000010, 0x800000024A8458D0);
  v13 = type metadata accessor for FMIPUnknownItemUTMetadata();
  sub_24A6F6D4C(v0 + *(v13 + 24), v8);
  v14 = type metadata accessor for FMIPUnknownItemProductMetadata();
  v15 = *(*(v14 - 8) + 48);
  if (v15(v8, 1, v14) == 1)
  {
    sub_24A67F378(v8, &qword_27EF5D8A0, &qword_24A834940);
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v16 = FMIPUnknownItemProductMetadata.debugDescription.getter();
    v17 = v18;
    sub_24A6F78C8(v8);
  }

  v25 = v16;
  v26 = v17;
  v19 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v19);

  MEMORY[0x24C21C9E0](0x656C626173696420, 0xEE00203A6F666E49);
  sub_24A6F6D4C(v1 + *(v13 + 28), v6);
  if (v15(v6, 1, v14) == 1)
  {
    sub_24A67F378(v6, &qword_27EF5D8A0, &qword_24A834940);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v20 = FMIPUnknownItemProductMetadata.debugDescription.getter();
    v21 = v22;
    sub_24A6F78C8(v6);
  }

  v25 = v20;
  v26 = v21;
  v23 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v23);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return v27;
}

void FMIPUnknownItemUTMetadata.init(productInfo:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24A6BBA94(&qword_27EF5D8A0, &qword_24A834940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v41 - v6;
  v7 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = [a1 modelName];
  v14 = sub_24A82CFC4();
  v16 = v15;

  *a2 = v14;
  a2[1] = v16;
  v17 = [a1 manufacturerName];
  v18 = sub_24A82CFC4();
  v20 = v19;

  a2[2] = v18;
  a2[3] = v20;
  v42 = type metadata accessor for FMIPUnknownItemUTMetadata();
  v21 = *(v42 + 24);
  v22 = [a1 learnModeMetadata];
  v23 = sub_24A82C8B4();
  v24 = 1;
  v41 = *(*(v23 - 8) + 56);
  v41(v12, 1, 1, v23);
  FMIPUnknownItemProductMetadata.init(metadata:disableURL:)(v22, v12, a2 + v21);
  v25 = type metadata accessor for FMIPUnknownItemProductMetadata();
  v26 = *(*(v25 - 8) + 56);
  v26(a2 + v21, 0, 1, v25);
  v27 = [a1 disableMetadata];
  v45 = a1;
  v28 = [a1 disableURL];
  v29 = v43;
  if (v28)
  {
    v30 = v28;
    sub_24A82C884();

    v24 = 0;
  }

  v41(v29, v24, 1, v23);
  v31 = v44;
  FMIPUnknownItemProductMetadata.init(metadata:disableURL:)(v27, v29, v44);
  v26(v31, 0, 1, v25);
  sub_24A6F872C(v31, a2 + *(v42 + 28));
  v32 = FMIPUnknownItemUTMetadata.debugDescription.getter();
  v34 = v33;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v35 = sub_24A82CDC4();
  sub_24A6797D0(v35, qword_281518F88);

  v36 = sub_24A82CD94();
  v37 = sub_24A82D4C4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46 = v39;
    *v38 = 136315138;
    v40 = sub_24A68761C(v32, v34, &v46);

    *(v38 + 4) = v40;
    _os_log_impl(&dword_24A675000, v36, v37, "FMIPUnknownItemUTMetadata: initialized %s", v38, 0xCu);
    sub_24A6876E8(v39);
    MEMORY[0x24C21E1D0](v39, -1, -1);
    MEMORY[0x24C21E1D0](v38, -1, -1);
  }

  else
  {
  }
}

uint64_t FMIPUnknownItemUTMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5D8C0, &qword_24A834980);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6F7874();
  sub_24A82DD84();
  v15 = *v3;
  v16 = 0;
  sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  sub_24A6CCEB0();
  sub_24A82DB44();
  if (!v2)
  {
    v15 = v3[1];
    v16 = 1;
    sub_24A82DB44();
    v12 = type metadata accessor for FMIPUnknownItemUTMetadata();
    v13 = *(v12 + 24);
    LOBYTE(v15) = 2;
    sub_24A6BBA94(&qword_27EF5D8A0, &qword_24A834940);
    sub_24A6F879C();
    sub_24A82DB44();
    v14 = *(v12 + 28);
    LOBYTE(v15) = 3;
    sub_24A82DB44();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FMIPUnknownItemUTMetadata.hash(into:)()
{
  v1 = type metadata accessor for FMIPUnknownItemProductMetadata();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5D8A0, &qword_24A834940);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  if (v0[1])
  {
    v13 = *v0;
    sub_24A82DCE4();
    sub_24A82D094();
    if (v0[3])
    {
LABEL_3:
      v14 = v0[2];
      sub_24A82DCE4();
      sub_24A82D094();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24A82DCE4();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  sub_24A82DCE4();
LABEL_6:
  v15 = type metadata accessor for FMIPUnknownItemUTMetadata();
  sub_24A6F6D4C(v0 + *(v15 + 24), v12);
  v16 = *(v2 + 48);
  if (v16(v12, 1, v1) == 1)
  {
    sub_24A82DCE4();
  }

  else
  {
    sub_24A6F8D0C(v12, v5, type metadata accessor for FMIPUnknownItemProductMetadata);
    sub_24A82DCE4();
    FMIPUnknownItemProductMetadata.hash(into:)();
    sub_24A6F78C8(v5);
  }

  sub_24A6F6D4C(v0 + *(v15 + 28), v10);
  if (v16(v10, 1, v1) == 1)
  {
    return sub_24A82DCE4();
  }

  sub_24A6F8D0C(v10, v5, type metadata accessor for FMIPUnknownItemProductMetadata);
  sub_24A82DCE4();
  FMIPUnknownItemProductMetadata.hash(into:)();
  return sub_24A6F78C8(v5);
}

uint64_t FMIPUnknownItemUTMetadata.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPUnknownItemUTMetadata.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A6F8678()
{
  sub_24A82DCC4();
  FMIPUnknownItemUTMetadata.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A6F86BC()
{
  sub_24A82DCC4();
  FMIPUnknownItemUTMetadata.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A6F872C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5D8A0, &qword_24A834940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A6F879C()
{
  result = qword_27EF5D8C8;
  if (!qword_27EF5D8C8)
  {
    sub_24A6CCDC0(&qword_27EF5D8A0, &qword_24A834940);
    sub_24A6F8DBC(&qword_27EF5D8D0, type metadata accessor for FMIPUnknownItemProductMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D8C8);
  }

  return result;
}

uint64_t _s8FMIPCore25FMIPUnknownItemUTMetadataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for FMIPUnknownItemProductMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A6BBA94(&qword_27EF5D8A0, &qword_24A834940);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = sub_24A6BBA94(&qword_27EF5D918, &unk_24A834BD8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v23 = a1[1];
  v24 = a2[1];
  if (v23)
  {
    if (!v24 || (*a1 != *a2 || v23 != v24) && (sub_24A82DC04() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v24)
  {
    goto LABEL_29;
  }

  v25 = a1[3];
  v26 = a2[3];
  if (v25)
  {
    if (!v26 || (a1[2] != a2[2] || v25 != v26) && (sub_24A82DC04() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v26)
  {
    goto LABEL_29;
  }

  v41 = v13;
  v43 = v8;
  v27 = v5;
  v42 = type metadata accessor for FMIPUnknownItemUTMetadata();
  v28 = *(v42 + 24);
  v29 = *(v16 + 48);
  sub_24A6F6D4C(a1 + v28, v22);
  sub_24A6F6D4C(a2 + v28, &v22[v29]);
  v30 = *(v27 + 48);
  if (v30(v22, 1, v4) == 1)
  {
    if (v30(&v22[v29], 1, v4) == 1)
    {
      v40 = v30;
      sub_24A67F378(v22, &qword_27EF5D8A0, &qword_24A834940);
      v31 = v43;
      goto LABEL_22;
    }

LABEL_20:
    v32 = v22;
LABEL_28:
    sub_24A67F378(v32, &qword_27EF5D918, &unk_24A834BD8);
    goto LABEL_29;
  }

  sub_24A6F6D4C(v22, v15);
  if (v30(&v22[v29], 1, v4) == 1)
  {
    sub_24A6F78C8(v15);
    goto LABEL_20;
  }

  v40 = v30;
  v31 = v43;
  sub_24A6F8D0C(&v22[v29], v43, type metadata accessor for FMIPUnknownItemProductMetadata);
  v33 = _s8FMIPCore30FMIPUnknownItemProductMetadataV2eeoiySbAC_ACtFZ_0(v15, v31);
  sub_24A6F78C8(v31);
  sub_24A6F78C8(v15);
  sub_24A67F378(v22, &qword_27EF5D8A0, &qword_24A834940);
  if ((v33 & 1) == 0)
  {
LABEL_29:
    v37 = 0;
    return v37 & 1;
  }

LABEL_22:
  v34 = *(v42 + 28);
  v35 = *(v16 + 48);
  sub_24A6F6D4C(a1 + v34, v20);
  sub_24A6F6D4C(a2 + v34, &v20[v35]);
  v36 = v40;
  if (v40(v20, 1, v4) != 1)
  {
    v38 = v41;
    sub_24A6F6D4C(v20, v41);
    if (v36(&v20[v35], 1, v4) != 1)
    {
      sub_24A6F8D0C(&v20[v35], v31, type metadata accessor for FMIPUnknownItemProductMetadata);
      v37 = _s8FMIPCore30FMIPUnknownItemProductMetadataV2eeoiySbAC_ACtFZ_0(v38, v31);
      sub_24A6F78C8(v31);
      sub_24A6F78C8(v38);
      sub_24A67F378(v20, &qword_27EF5D8A0, &qword_24A834940);
      return v37 & 1;
    }

    sub_24A6F78C8(v38);
    goto LABEL_27;
  }

  if (v36(&v20[v35], 1, v4) != 1)
  {
LABEL_27:
    v32 = v20;
    goto LABEL_28;
  }

  sub_24A67F378(v20, &qword_27EF5D8A0, &qword_24A834940);
  v37 = 1;
  return v37 & 1;
}

uint64_t sub_24A6F8D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A6F8DBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24A6F8E40()
{
  result = qword_27EF5D900;
  if (!qword_27EF5D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D900);
  }

  return result;
}

unint64_t sub_24A6F8E98()
{
  result = qword_27EF5D908;
  if (!qword_27EF5D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D908);
  }

  return result;
}

unint64_t sub_24A6F8EF0()
{
  result = qword_27EF5D910;
  if (!qword_27EF5D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D910);
  }

  return result;
}

uint64_t sub_24A6F8F44()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A6F8F90()
{
  v0 = sub_24A82CB74();
  v1 = *(v0 + qword_281514398 + 8);

  v2 = *(v0 + qword_27EF5D920);

  v3 = *(v0 + qword_27EF5D928);

  v4 = *(v0 + qword_2815143B0 + 8);

  v5 = *(v0 + qword_2815143A8);

  v6 = *(v0 + qword_2815143A0);

  v7 = qword_281518ED0;
  v8 = sub_24A82CA34();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

unint64_t sub_24A6F9090(char a1)
{
  result = 0x6E656B6F54737061;
  switch(a1)
  {
    case 1:
      result = 2037149030;
      break;
    case 2:
      result = 1752397168;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6954746E65696C63;
      break;
    case 5:
      result = 0x6973726556707061;
      break;
    case 6:
      result = 0x54746375646F7270;
      break;
    case 7:
      result = 0x6F6973726556736FLL;
      break;
    case 8:
      result = 0x646C697542736FLL;
      break;
    case 9:
      result = 0x4455656369766564;
      break;
    case 10:
      result = 0x6576697463616E69;
      break;
    case 11:
      result = 0x436C6C53776F6873;
      break;
    case 12:
      result = 0x73696365446C6C73;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x6956776F646E6977;
      break;
    case 15:
      result = 0x736F4D746E6F7266;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A6F9294(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a1 = a2;
}

uint64_t sub_24A6F92DC()
{
  v1 = v0;
  v2 = *(v0 + qword_2815143A0);
  v13 = sub_24A6BBA94(&qword_27EF5D930, &qword_24A83B150);
  *&v12 = v2;
  v3 = qword_27EF5D920;
  v4 = *(v1 + qword_27EF5D920);

  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);

  os_unfair_lock_unlock((v4 + 24));

  v11 = v5;
  if (v13)
  {
    sub_24A6A50DC(&v12, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = sub_24A6A4F8C(v10, 0x6F43726576726573, 0xED0000747865746ELL, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_24A6F6C40(&v12);
    sub_24A7C3F0C(0x6F43726576726573, 0xED0000747865746ELL, v10);
    v7 = sub_24A6F6C40(v10);
  }

  v8 = *(v1 + v3);
  MEMORY[0x28223BE20](v7);

  os_unfair_lock_lock((v8 + 24));
  sub_24A6A3BBC((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
}

uint64_t sub_24A6F9470()
{
  v1 = *(v0 + qword_281514398 + 8);

  v2 = *(v0 + qword_27EF5D920);

  v3 = *(v0 + qword_27EF5D928);

  v4 = *(v0 + qword_2815143B0 + 8);

  v5 = *(v0 + qword_2815143A8);

  v6 = *(v0 + qword_2815143A0);

  v7 = qword_281518ED0;
  v8 = sub_24A82CA34();
  v9 = *(*(v8 - 8) + 8);

  return v9(v0 + v7, v8);
}

uint64_t sub_24A6F9540()
{
  v0 = *sub_24A6F8F90();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A6F959C()
{
  v1 = *(*v0 + qword_27EF5D928);

  os_unfair_lock_lock((v1 + 24));
  sub_24A6A3BBC((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t (*sub_24A6F9618(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  v4 = qword_27EF5D928;
  a1[1] = *v1;
  a1[2] = v4;
  v5 = *(v3 + v4);

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 24));

  *a1 = v6;
  return sub_24A6F96A0;
}

uint64_t sub_24A6F96A0(uint64_t *a1, char a2)
{
  v2 = *(a1[1] + a1[2]);
  v4 = *a1;
  if (a2)
  {

    os_unfair_lock_lock((v2 + 24));
    sub_24A6A3BBC((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }

  else
  {

    os_unfair_lock_lock((v2 + 24));
    sub_24A6A3BBC((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }
}

FMIPCore::FMIPAirPodsPlaySoundType_optional __swiftcall FMIPAirPodsPlaySoundType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPAirPodsPlaySoundType.rawValue.getter()
{
  if (*v0)
  {
    result = 29813;
  }

  else
  {
    result = 0x72656E776FLL;
  }

  *v0;
  return result;
}

uint64_t sub_24A6F9800(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 29813;
  }

  else
  {
    v4 = 0x72656E776FLL;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  if (*a2)
  {
    v6 = 29813;
  }

  else
  {
    v6 = 0x72656E776FLL;
  }

  if (*a2)
  {
    v7 = 0xE200000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A6F9898()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6F990C()
{
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A6F996C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6F99DC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A82D9C4();

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

void sub_24A6F9A3C(uint64_t *a1@<X8>)
{
  v2 = 29813;
  if (!*v1)
  {
    v2 = 0x72656E776FLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *FMIPAirPodsPlaySoundEvent.onlinePlaySoundError.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *FMIPAirPodsPlaySoundEvent.offlinePlaySoundError.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

_BYTE *FMIPAirPodsPlaySoundEvent.init(soundEventType:includedCase:includedLeftBud:includedRightBud:onlinePlaySoundAttempted:onlinePlaySoundSuccess:onlinePlaySoundError:offlinePlaySoundAttempted:offlinePlaySoundSuccess:offlinePlaySoundError:userShownPlayingState:userShownFinishedPlayingState:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, char a13)
{
  *a9 = *result;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 8) = a7;
  *(a9 + 16) = a8;
  *(a9 + 17) = a10;
  *(a9 + 24) = a11;
  *(a9 + 32) = a12;
  *(a9 + 33) = a13;
  return result;
}

unint64_t sub_24A6F9D8C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v5 = 0xD000000000000015;
      if (a1 != 10)
      {
        v5 = 0xD00000000000001DLL;
      }

      if (a1 == 9)
      {
        return 0xD000000000000015;
      }

      else
      {
        return v5;
      }
    }

    else
    {
      v4 = 0xD000000000000017;
      if (a1 == 7)
      {
        v4 = 0xD000000000000019;
      }

      if (a1 == 6)
      {
        return 0xD000000000000014;
      }

      else
      {
        return v4;
      }
    }
  }

  else
  {
    v1 = 0x657645646E756F73;
    if (a1 == 4)
    {
      v2 = 0xD000000000000018;
    }

    else
    {
      v2 = 0xD000000000000016;
    }

    if (a1 == 3)
    {
      v2 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = 0x646564756C636E69;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t FMIPManager.enqueue(airpodsPlaySoundEvent:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return _s8FMIPCore13FMIPAnalyticsV25sendAirPodsPlaySoundEvent5eventyAA07FMIPAirefgH0V_tFZ_0(v3);
}

void sub_24A6F9F74(uint64_t a1)
{
  v2 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  *a1;
  *a1;
  v3 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v4 = sub_24A82CF94();

  v5 = [v3 initWithString_];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v2;
  sub_24A6AE690(v5, 0x657645646E756F73, 0xEE0065707954746ELL, isUniquelyReferenced_nonNull_native);
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v2;
  sub_24A6AE690(v7, 0x646564756C636E69, 0xEC00000065736143, v8);
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v10 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v2;
  sub_24A6AE690(v9, 0xD000000000000010, 0x800000024A845C60, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v2;
  sub_24A6AE690(v11, 0x646564756C636E69, 0xEF6475427466654CLL, v12);
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v2;
  sub_24A6AE690(v13, 0xD000000000000018, 0x800000024A845C80, v14);
  v15 = v2;
  v16 = *(a1 + 8);
  if (v16)
  {
    v17 = *(a1 + 8);
    swift_getErrorValue();
    v18 = v16;
    v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) 0x1FAA73D78];
    v20 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v2;
    sub_24A6AE690(v19, 0xD000000000000014, 0x800000024A845DA0, v20);
  }

  v21 = *(a1 + 5);
  if (v21 != 2)
  {
    v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v23 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v15;
    sub_24A6AE690(v22, 0xD000000000000016, 0x800000024A845D80, v23);
  }

  v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v25 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v15;
  sub_24A6AE690(v24, 0xD000000000000019, 0x800000024A845CA0, v25);
  v26 = *(a1 + 24);
  if (v26)
  {
    v27 = *(a1 + 24);
    swift_getErrorValue();
    v28 = v26;
    v29 = [objc_allocWithZone(MEMORY[0x277CCABB0]) 0x1FAA73D78];
    v30 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v15;
    sub_24A6AE690(v29, 0xD000000000000015, 0x800000024A845D60, v30);
  }

  v31 = *(a1 + 17);
  if (v31 != 2)
  {
    v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v33 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v15;
    sub_24A6AE690(v32, 0xD000000000000017, 0x800000024A845D40, v33);
  }

  v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v35 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v15;
  sub_24A6AE690(v34, 0xD000000000000015, 0x800000024A845CC0, v35);
  v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v36, 0xD00000000000001DLL, 0x800000024A845CE0, v37);
  v38 = sub_24A82CF94();
  v39 = swift_allocObject();
  *(v39 + 16) = v15;
  aBlock[4] = sub_24A6AEBB4;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6AEADC;
  aBlock[3] = &unk_285DC3990;
  v40 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v40);
}

uint64_t _s8FMIPCore13FMIPAnalyticsV25sendAirPodsPlaySoundEvent5eventyAA07FMIPAirefgH0V_tFZ_0(uint64_t a1)
{
  v2 = sub_24A82CDF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CE54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v12;
  v21 = *(a1 + 32);
  if (qword_27EF5CC50 != -1)
  {
    swift_once();
  }

  v13 = swift_allocObject();
  v14 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a1 + 32);
  aBlock[4] = sub_24A6FA970;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC3940;
  v15 = _Block_copy(aBlock);
  sub_24A6FA978(v20, v18);
  sub_24A82CE24();
  v18[0] = MEMORY[0x277D84F90];
  sub_24A6FA9B0();
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v6, v15);
  _Block_release(v15);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

unint64_t sub_24A6FA834()
{
  result = qword_27EF5D948;
  if (!qword_27EF5D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D948);
  }

  return result;
}

__n128 sub_24A6FA898(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24A6FA8AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
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

uint64_t sub_24A6FA908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24A6FA9B0()
{
  result = qword_281515DB0;
  if (!qword_281515DB0)
  {
    sub_24A82CDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281515DB0);
  }

  return result;
}

uint64_t FMIPPlaySoundDeviceAction.__allocating_init(device:channels:safetyWarningConfirmed:soundQueueingConfirmed:soundMethod:)(uint64_t a1, uint64_t a2, char a3, char a4, _BYTE *a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  LOBYTE(a5) = *a5;
  sub_24A82CA24();
  *(v13 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_channels) = a2;
  *(v13 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_safetyWarningConfirmed) = a3;
  *(v13 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundQueueingConfirmed) = a4;
  *(v13 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundMethod) = a5;
  *(v13 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v14 = (v13 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v13 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v13 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v13 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v13 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v18 = 0;
  v18[1] = 0;
  *(v13 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A68D5C0(a1, v13 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, type metadata accessor for FMIPDevice);
  return v13;
}

uint64_t FMIPPlaySoundMethod.description.getter()
{
  v1 = *v0;
  v2 = 1701601838;
  if (v1 != 2)
  {
    v2 = 0x697269732ELL;
  }

  if (v1 >= 2)
  {
    return v2;
  }

  else
  {
    return 0x63697373616C632ELL;
  }
}

uint64_t FMIPPlaySoundMethod.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t sub_24A6FAC3C()
{
  v1 = *v0;
  v2 = 1701601838;
  if (v1 != 2)
  {
    v2 = 0x697269732ELL;
  }

  if (v1 >= 2)
  {
    return v2;
  }

  else
  {
    return 0x63697373616C632ELL;
  }
}

uint64_t FMIPPlaySoundDeviceAction.issueDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_issueDate;
  v4 = sub_24A82CA34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FMIPPlaySoundDeviceAction.init(device:channels:safetyWarningConfirmed:soundQueueingConfirmed:soundMethod:)(uint64_t a1, uint64_t a2, char a3, char a4, char *a5)
{
  v10 = *a5;
  sub_24A82CA24();
  *(v5 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_channels) = a2;
  *(v5 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_safetyWarningConfirmed) = a3;
  *(v5 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundQueueingConfirmed) = a4;
  *(v5 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundMethod) = v10;
  *(v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v11 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v15 = 0;
  v15[1] = 0;
  *(v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A68D5C0(a1, v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, type metadata accessor for FMIPDevice);
  return v5;
}

unint64_t sub_24A6FAE80()
{
  sub_24A82D854();

  sub_24A6CB660();
  v1 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  v2 = MEMORY[0x24C21CB60](*(v0 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_channels), &type metadata for FMIPPlaySoundChannels);
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](0x203A637773202CLL, 0xE700000000000000);
  if (*(v0 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_safetyWarningConfirmed))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  v4 = 0xE400000000000000;
  if (*(v0 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_safetyWarningConfirmed))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v3, v5);

  MEMORY[0x24C21C9E0](0x203A637173202CLL, 0xE700000000000000);
  if (*(v0 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundQueueingConfirmed))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundQueueingConfirmed))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v6, v7);

  MEMORY[0x24C21C9E0](0x203A6D73202CLL, 0xE600000000000000);
  v8 = *(v0 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundMethod);
  if (v8 >= 2)
  {
    if (v8 == 2)
    {
      v9 = 1701601838;
    }

    else
    {
      v4 = 0xE500000000000000;
      v9 = 0x697269732ELL;
    }
  }

  else
  {
    v4 = 0xE800000000000000;
    v9 = 0x63697373616C632ELL;
  }

  MEMORY[0x24C21C9E0](v9, v4);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);

  MEMORY[0x24C21C9E0](0x736C656E6E616863, 0xEA0000000000203ALL);

  return 0xD00000000000001ELL;
}

uint64_t sub_24A6FB144()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_channels);

  v2 = OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_issueDate;
  v3 = sub_24A82CA34();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

uint64_t FMIPPlaySoundDeviceAction.deinit()
{
  v0 = FMIPDeviceAction.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_channels);

  v2 = OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_issueDate;
  v3 = sub_24A82CA34();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t FMIPPlaySoundDeviceAction.__deallocating_deinit()
{
  v0 = FMIPDeviceAction.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_channels);

  v2 = OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_issueDate;
  v3 = sub_24A82CA34();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t FMIPIgnoreItemAction.init(unknownItem:until:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8FMIPCore20FMIPIgnoreItemAction_until) = a2;
  sub_24A68D5C0(a1, v2 + OBJC_IVAR____TtC8FMIPCore16FMIPUTItemAction_unknownItem, type metadata accessor for FMIPUnknownItem);
  return v2;
}

uint64_t _s8FMIPCore16FMIPUTItemActionCfD_0()
{
  sub_24A6FB9B0(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPUTItemAction_unknownItem, type metadata accessor for FMIPUnknownItem);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s8FMIPCore16FMIPUTItemActionC11unknownItemAcA011FMIPUnknownE0V_tcfC_0(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_24A68D5C0(a1, v5 + OBJC_IVAR____TtC8FMIPCore16FMIPUTItemAction_unknownItem, type metadata accessor for FMIPUnknownItem);
  return v5;
}

uint64_t sub_24A6FB4D8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + *a3) = a2;
  sub_24A68D5C0(a1, v9 + OBJC_IVAR____TtC8FMIPCore16FMIPUTItemAction_unknownItem, type metadata accessor for FMIPUnknownItem);
  return v9;
}

uint64_t FMIPPlayUTSoundAction.init(unknownItem:context:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8FMIPCore21FMIPPlayUTSoundAction_context) = a2;
  sub_24A68D5C0(a1, v2 + OBJC_IVAR____TtC8FMIPCore16FMIPUTItemAction_unknownItem, type metadata accessor for FMIPUnknownItem);
  return v2;
}

uint64_t FMIPUTItemAction.debugDescription.getter()
{
  v1 = *v0;
  v2 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v3 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v3);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0x496E776F6E6B6E75, 0xEC0000003A6D6574);
  type metadata accessor for FMIPUnknownItem();
  sub_24A82D914();
  MEMORY[0x24C21C9E0](62, 0xE100000000000000);

  MEMORY[0x24C21C9E0](0, 0xE000000000000000);

  return 60;
}

uint64_t FMIPPlaySoundItemAction.__allocating_init(item:context:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC8FMIPCore23FMIPPlaySoundItemAction_uuid;
  v11 = sub_24A82CAA4();
  (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
  v12 = v9 + OBJC_IVAR____TtC8FMIPCore23FMIPPlaySoundItemAction_context;
  *v12 = a2;
  *(v12 + 8) = a3 & 1;
  sub_24A68D5C0(a1, v9 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  return v9;
}

uint64_t FMIPPlaySoundItemAction.init(item:context:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = OBJC_IVAR____TtC8FMIPCore23FMIPPlaySoundItemAction_uuid;
  v8 = sub_24A82CAA4();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = v3 + OBJC_IVAR____TtC8FMIPCore23FMIPPlaySoundItemAction_context;
  *v9 = a2;
  *(v9 + 8) = a3 & 1;
  sub_24A68D5C0(a1, v3 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  return v3;
}

uint64_t FMIPPlaySoundItemAction.deinit()
{
  sub_24A6FB9B0(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  sub_24A6FBA10(v0 + OBJC_IVAR____TtC8FMIPCore23FMIPPlaySoundItemAction_uuid);
  return v0;
}

uint64_t sub_24A6FB9B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A6FBA10(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPPlaySoundItemAction.__deallocating_deinit()
{
  sub_24A6FB9B0(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  sub_24A6FBA10(v0 + OBJC_IVAR____TtC8FMIPCore23FMIPPlaySoundItemAction_uuid);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_24A6FBB08()
{
  result = qword_27EF5D950;
  if (!qword_27EF5D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D950);
  }

  return result;
}

uint64_t sub_24A6FBB94()
{
  result = sub_24A82CA34();
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

uint64_t sub_24A6FBE14()
{
  result = type metadata accessor for FMIPUnknownItem();
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

void sub_24A6FBEF8()
{
  sub_24A68FA94();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void FMIPItemImageSize.init(rawValue:)(char *a1@<X8>, double a2@<D0>)
{
  if (a2 == 66.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (a2 == 37.0)
  {
    v2 = 0;
  }

  *a1 = v2;
}

double FMIPItemImageSize.rawValue.getter()
{
  result = 37.0;
  if (*v0)
  {
    return 66.0;
  }

  return result;
}

BOOL sub_24A6FC098(_BYTE *a1, _BYTE *a2)
{
  v2 = 37.0;
  if (*a1)
  {
    v3 = 66.0;
  }

  else
  {
    v3 = 37.0;
  }

  if (*a2)
  {
    v2 = 66.0;
  }

  return v3 == v2;
}

uint64_t sub_24A6FC0DC()
{
  if (*v0)
  {
    v1 = 0x4050800000000000;
  }

  else
  {
    v1 = 0x4042800000000000;
  }

  return MEMORY[0x24C21D610](v1);
}

double *sub_24A6FC128@<X0>(double *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result == 37.0)
  {
    *a2 = 0;
  }

  else if (*result == 66.0)
  {
    *a2 = 1;
  }

  else
  {
    *a2 = 2;
  }

  return result;
}

void sub_24A6FC174(double *a1@<X8>)
{
  v2 = 37.0;
  if (*v1)
  {
    v2 = 66.0;
  }

  *a1 = v2;
}

uint64_t FMIPItemImageCacheRequest.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  sub_24A82D854();
  MEMORY[0x24C21C9E0](0xD00000000000001BLL, 0x800000024A846040);
  MEMORY[0x24C21C9E0](v1, v2);
  MEMORY[0x24C21C9E0](9071406774580000, 0xE700000000000000);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0x203A656C61637320, 0xE800000000000000);
  v8 = sub_24A82D364();
  MEMORY[0x24C21C9E0](v8);

  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A846060);
  type metadata accessor for CGColor(0);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0x6973726556736F20, 0xEC000000203A6E6FLL);
  MEMORY[0x24C21C9E0](v5, v7);
  return 0;
}

uint64_t FMIPItemImageCacheRequest.fileName.getter()
{
  v2 = *v0;
  v1 = *(v0 + 1);
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 4);
  v8 = sub_24A82D454();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v10)
  {
    v28 = v2;
    v11 = v5;
    v29 = MEMORY[0x277D84F90];
    sub_24A6FC900(0, v10, 0);
    v12 = 32;
    v13 = v29;
    do
    {
      v14 = *(v9 + v12);
      v15 = sub_24A82D364();
      v30 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        v27 = v15;
        v20 = v16;
        sub_24A6FC900((v17 > 1), v18 + 1, 1);
        v16 = v20;
        v15 = v27;
        v13 = v30;
      }

      *(v13 + 16) = v18 + 1;
      v19 = v13 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v12 += 8;
      --v10;
    }

    while (v10);

    v5 = v11;
    v2 = v28;
  }

  else
  {
  }

  sub_24A6BBA94(&qword_27EF5D9D0, &qword_24A835090);
  sub_24A6FC920();
  v21 = sub_24A82CF74();
  v23 = v22;

  MEMORY[0x24C21C9E0](95, 0xE100000000000000);
  v24 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v24);

  result = MEMORY[0x24C21C9E0](95, 0xE100000000000000);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 < 9.22337204e18)
  {
    v26 = sub_24A82DB84();
    MEMORY[0x24C21C9E0](v26);

    MEMORY[0x24C21C9E0](95, 0xE100000000000000);
    MEMORY[0x24C21C9E0](v21, v23);

    MEMORY[0x24C21C9E0](95, 0xE100000000000000);
    MEMORY[0x24C21C9E0](v5, v6);
    return *&v2;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t FMIPItemImageCacheRequest.emoji.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMIPItemImageCacheRequest.osVersion.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t FMIPItemImageCacheRequest.init(emoji:size:scale:backgroundColor:osVersion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v8 = *a3;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = v8;
  *(a7 + 24) = a8;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t FMIPItemImageCacheRequest.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  sub_24A82D094();
  if (v3)
  {
    v7 = 0x4050800000000000;
  }

  else
  {
    v7 = 0x4042800000000000;
  }

  MEMORY[0x24C21D610](v7);
  sub_24A82D094();
  type metadata accessor for CGColor(0);
  sub_24A6FC984();
  return sub_24A82CD74();
}

uint64_t FMIPItemImageCacheRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  sub_24A82DCC4();
  sub_24A82D094();
  if (v3)
  {
    v7 = 0x4050800000000000;
  }

  else
  {
    v7 = 0x4042800000000000;
  }

  MEMORY[0x24C21D610](v7);
  sub_24A82D094();
  type metadata accessor for CGColor(0);
  sub_24A6FC984();
  sub_24A82CD74();
  return sub_24A82DD24();
}

uint64_t sub_24A6FC800()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = v0[3];
  v6 = *(v0 + 2);
  v7 = v0[6];
  sub_24A82DCC4();
  FMIPItemImageCacheRequest.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A6FC870()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = v0[3];
  v6 = *(v0 + 2);
  v7 = v0[6];
  sub_24A82DCC4();
  FMIPItemImageCacheRequest.hash(into:)();
  return sub_24A82DD24();
}

void *sub_24A6FC8E0(void *a1, int64_t a2, char a3)
{
  result = sub_24A6FCCCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A6FC900(char *a1, int64_t a2, char a3)
{
  result = sub_24A6FCE14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_24A6FC920()
{
  result = qword_27EF5D9D8;
  if (!qword_27EF5D9D8)
  {
    sub_24A6CCDC0(&qword_27EF5D9D0, &qword_24A835090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D9D8);
  }

  return result;
}

unint64_t sub_24A6FC984()
{
  result = qword_27EF5D9E0;
  if (!qword_27EF5D9E0)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D9E0);
  }

  return result;
}

char *sub_24A6FC9DC(char *a1, int64_t a2, char a3)
{
  result = sub_24A6FDA9C(a1, a2, a3, *v3, &qword_27EF5DA50, &qword_24A8352E0);
  *v3 = result;
  return result;
}

char *sub_24A6FCA0C(char *a1, int64_t a2, char a3)
{
  result = sub_24A6FCF20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A6FCA2C(void *a1, int64_t a2, char a3)
{
  result = sub_24A6FD048(a1, a2, a3, *v3, &qword_27EF5DA20, &unk_24A8352B0, &qword_27EF5DA28, &qword_24A8415A0);
  *v3 = result;
  return result;
}

void *sub_24A6FCA6C(void *a1, int64_t a2, char a3)
{
  result = sub_24A6FD048(a1, a2, a3, *v3, &qword_27EF5DA30, &qword_24A8352C0, &qword_27EF5DA38, &qword_24A8352C8);
  *v3 = result;
  return result;
}

size_t sub_24A6FCAAC(size_t a1, int64_t a2, char a3)
{
  result = sub_24A6FD17C(a1, a2, a3, *v3, &qword_27EF5E110, &unk_24A835280, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

void *sub_24A6FCAF0(void *a1, int64_t a2, char a3)
{
  result = sub_24A6FD048(a1, a2, a3, *v3, &qword_27EF5DAA0, &qword_24A835330, &qword_27EF5DAA8, &qword_24A835338);
  *v3 = result;
  return result;
}

size_t sub_24A6FCB30(size_t a1, int64_t a2, char a3)
{
  result = sub_24A6FD17C(a1, a2, a3, *v3, &qword_27EF5DAB0, &unk_24A835340, type metadata accessor for FMIPItem);
  *v3 = result;
  return result;
}

size_t sub_24A6FCB74(size_t a1, int64_t a2, char a3)
{
  result = sub_24A6FD17C(a1, a2, a3, *v3, &qword_27EF5DA40, &qword_24A8352D0, type metadata accessor for FMIPItemGroup);
  *v3 = result;
  return result;
}

size_t sub_24A6FCBB8(size_t a1, int64_t a2, char a3)
{
  result = sub_24A6FD17C(a1, a2, a3, *v3, &qword_27EF5D5D0, qword_24A837A80, type metadata accessor for FMIPDevice);
  *v3 = result;
  return result;
}

void *sub_24A6FCBFC(void *a1, int64_t a2, char a3)
{
  result = sub_24A6FD478(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A6FCC1C(char *a1, int64_t a2, char a3)
{
  result = sub_24A6FD5C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A6FCC3C(void *a1, int64_t a2, char a3)
{
  result = sub_24A6FD6E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A6FCC5C(char *a1, int64_t a2, char a3)
{
  result = sub_24A6FD834(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A6FCC7C(void *a1, int64_t a2, char a3)
{
  result = sub_24A6FD954(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A6FCC9C(char *a1, int64_t a2, char a3)
{
  result = sub_24A6FDA9C(a1, a2, a3, *v3, &qword_27EF5DA58, &qword_24A8352E8);
  *v3 = result;
  return result;
}

void *sub_24A6FCCCC(void *result, int64_t a2, char a3, void *a4)
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
    sub_24A6BBA94(&qword_27EF5DA78, &qword_24A835308);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A6BBA94(&qword_27EF5DA80, &unk_24A835310);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A6FCE14(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
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

char *sub_24A6FCF20(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DA48, &qword_24A8352D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 352);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[352 * v8])
    {
      memmove(v12, v13, 352 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24A6FD048(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_24A6BBA94(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A6BBA94(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_24A6FD17C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_24A6BBA94(a5, a6);
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

char *sub_24A6FD358(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DA70, &qword_24A835300);
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

void *sub_24A6FD478(void *result, int64_t a2, char a3, void *a4)
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
    sub_24A6BBA94(&qword_27EF5DA08, &unk_24A83D030);
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
    sub_24A6BBA94(&qword_27EF5EF70, &unk_24A835290);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A6FD5C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DA88, &qword_24A838C20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24A6FD6E8(void *result, int64_t a2, char a3, void *a4)
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
    sub_24A6BBA94(&qword_27EF5DA90, &unk_24A835320);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[28 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 224 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A6BBA94(&qword_27EF5DA98, &qword_24A83D9B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A6FD834(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DA60, &qword_24A8352F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24A6FD954(void *result, int64_t a2, char a3, void *a4)
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
    sub_24A6BBA94(&qword_27EF5DA10, &qword_24A8352A0);
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
    sub_24A6BBA94(&qword_27EF5DA18, &qword_24A8352A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A6FDA9C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_24A6BBA94(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

uint64_t _s8FMIPCore25FMIPItemImageCacheRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (v3 == v8)
    {
      v12 = v2;
    }

    else
    {
      v12 = 0;
    }

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v8)
    {
      v13 = v2;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  type metadata accessor for CGColor(0);
  sub_24A6FC984();
  if ((sub_24A82CD64() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v9 && v6 == v11)
  {
    return 1;
  }

  return sub_24A82DC04();
}

unint64_t sub_24A6FDCBC()
{
  result = qword_27EF5D9E8;
  if (!qword_27EF5D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D9E8);
  }

  return result;
}

__n128 sub_24A6FDD10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t FMIPDeviceAction.init(device:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v2 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v1;
}

uint64_t sub_24A6FDDC4()
{
  v1 = *v0;
  v2 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v3 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v3);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  v4 = (v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  MEMORY[0x24C21C9E0](*v4, v4[1]);
  MEMORY[0x24C21C9E0](0x3A656D616E20, 0xE600000000000000);
  MEMORY[0x24C21C9E0](v4[8], v4[9]);
  v5 = MEMORY[0x24C21C9E0](0xD000000000000014, 0x800000024A846080);
  v6 = (*(*v0 + 144))(v5);
  v7 = (v6 & 1) == 0;
  if (v6)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v7)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x24C21C9E0](v8, v9);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);

  MEMORY[0x24C21C9E0](0x3A656369766564, 0xE700000000000000);

  return 60;
}

uint64_t FMIPDeviceAction.deinit()
{
  sub_24A6FE094(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);

  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation + 8);
  sub_24A6AFFE8(*(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation));
  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username + 8);

  v4 = *(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken + 8);

  v5 = *(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID + 8);

  sub_24A67E8E8(*(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession), *(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession + 8));
  return v0;
}

uint64_t sub_24A6FE094(uint64_t a1)
{
  v2 = type metadata accessor for FMIPDevice();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_24A6FE0F0()
{
  v1 = OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24A6FE13C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24A6FE1F8()
{
  v1 = (v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_24A6A7314(v3);
  return v3;
}

uint64_t sub_24A6FE254(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_24A6AFFE8(v6);
}

uint64_t sub_24A6FE328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPDevice();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A6FE38C@<X0>(void *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t *a3)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A6FEA8C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A6A7314(v4);
}

uint64_t sub_24A6FE42C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)(char a1), uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  v8 = *a3;
  v7 = a3[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  a4(v5, v6, sub_24A6FEA94, v9);
}

uint64_t sub_24A6FE4D4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A6FEA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A6A7314(v3);
  return sub_24A6AFFE8(v8);
}

uint64_t sub_24A6FE59C(char a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, void *))
{
  v12 = a1;
  v11 = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[0] = sub_24A6FEA60;
  v10[1] = v8;

  a5(&v12, &v11, v10);
}

uint64_t FMIPDeviceAction.__allocating_init(device:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v6 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v10 = 0;
  v10[1] = 0;
  *(v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v5;
}

uint64_t FMIPDeviceAction.__deallocating_deinit()
{
  FMIPDeviceAction.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMIPDeviceAction()
{
  result = qword_27EF5DAC0;
  if (!qword_27EF5DAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6FE7FC()
{
  result = type metadata accessor for FMIPDevice();
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

uint64_t sub_24A6FEA60(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_24A6FEA94(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t FMIPCancelEraseAction.__allocating_init(device:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v6 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v10 = 0;
  v10[1] = 0;
  *(v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v5;
}

uint64_t FMIPCancelEraseAction.init(device:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v2 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v1;
}

uint64_t FMIPCancelEraseAction.__deallocating_deinit()
{
  v0 = *FMIPDeviceAction.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMIPCancelEraseAction()
{
  result = qword_27EF5DAD0;
  if (!qword_27EF5DAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FMIPEraseRequest()
{
  result = qword_27EF5DAE0;
  if (!qword_27EF5DAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6FEE08()
{
  v1 = v0;
  v2 = *(v0 + qword_27EF78D38);
  v4 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  v3 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 8);
  v5 = MEMORY[0x277D837D0];
  v67 = MEMORY[0x277D837D0];
  *&v65 = v4;
  *(&v65 + 1) = v3;
  v6 = qword_27EF5D920;
  v7 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 24));

  sub_24A6A50DC(&v65, v63);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = v8;
  sub_24A6A4F8C(v63, 0x656369766564, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v10 = *(v1 + v6);

  os_unfair_lock_lock((v10 + 24));
  sub_24A6A3D28((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));

  v11 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_isUserTextEnabled);
  v67 = MEMORY[0x277D839B0];
  LOBYTE(v65) = v11;
  v12 = *(v1 + v6);

  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);

  os_unfair_lock_unlock((v12 + 24));

  v64 = v13;
  if (v67)
  {
    sub_24A6A50DC(&v65, v63);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = sub_24A6A4F8C(v63, 0x7478655472657375, 0xE800000000000000, v14);
  }

  else
  {
    sub_24A6F6C40(&v65);
    sub_24A7C3F0C(0x7478655472657375, 0xE800000000000000, v63);
    v15 = sub_24A6F6C40(v63);
  }

  v16 = *(v1 + v6);
  MEMORY[0x28223BE20](v15);

  os_unfair_lock_lock((v16 + 24));
  sub_24A6FF740((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));

  v17 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid + 8);
  if (v17)
  {
    v18 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
    v19 = MEMORY[0x277D837D0];
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v66 = 0;
  }

  *&v65 = v18;
  *(&v65 + 1) = v17;
  v67 = v19;
  v20 = *(v1 + v6);

  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);

  os_unfair_lock_unlock((v20 + 24));

  v64 = v21;
  if (v67)
  {
    sub_24A6A50DC(&v65, v63);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_24A6A4F8C(v63, 1684632420, 0xE400000000000000, v22);
  }

  else
  {
    sub_24A6F6C40(&v65);
    sub_24A7C3F0C(1684632420, 0xE400000000000000, v63);
    v23 = sub_24A6F6C40(v63);
  }

  v24 = *(v1 + v6);
  MEMORY[0x28223BE20](v23);

  os_unfair_lock_lock((v24 + 24));
  sub_24A6FF740((v24 + 16));
  os_unfair_lock_unlock((v24 + 24));

  v25 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message + 8);
  if (v25)
  {
    v26 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message);
    v27 = MEMORY[0x277D837D0];
    v28 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message + 8);
  }

  else
  {
    v28 = 0;
    v26 = 0;
    v27 = 0;
    v66 = 0;
  }

  *&v65 = v26;
  *(&v65 + 1) = v28;
  v67 = v27;
  v29 = *(v1 + v6);

  os_unfair_lock_lock((v29 + 24));
  v30 = *(v29 + 16);

  os_unfair_lock_unlock((v29 + 24));

  v64 = v30;
  if (v25)
  {
    sub_24A6A50DC(&v65, v63);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v32 = sub_24A6A4F8C(v63, 1954047348, 0xE400000000000000, v31);
  }

  else
  {
    sub_24A6F6C40(&v65);
    sub_24A7C3F0C(1954047348, 0xE400000000000000, v63);
    v32 = sub_24A6F6C40(v63);
  }

  v33 = *(v1 + v6);
  MEMORY[0x28223BE20](v32);

  os_unfair_lock_lock((v33 + 24));
  sub_24A6FF740((v33 + 16));
  os_unfair_lock_unlock((v33 + 24));

  v34 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber + 8);
  if (v34)
  {
    v35 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber);
    v36 = MEMORY[0x277D837D0];
    v37 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber + 8);
  }

  else
  {
    v37 = 0;
    v35 = 0;
    v36 = 0;
    v66 = 0;
  }

  *&v65 = v35;
  *(&v65 + 1) = v37;
  v67 = v36;
  v38 = *(v1 + v6);

  os_unfair_lock_lock((v38 + 24));
  v39 = *(v38 + 16);

  os_unfair_lock_unlock((v38 + 24));

  v64 = v39;
  if (v34)
  {
    sub_24A6A50DC(&v65, v63);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v41 = sub_24A6A4F8C(v63, 0x72624E72656E776FLL, 0xE800000000000000, v40);
  }

  else
  {
    sub_24A6F6C40(&v65);
    sub_24A7C3F0C(0x72624E72656E776FLL, 0xE800000000000000, v63);
    v41 = sub_24A6F6C40(v63);
  }

  v42 = *(v1 + v6);
  MEMORY[0x28223BE20](v41);

  os_unfair_lock_lock((v42 + 24));
  sub_24A6FF740((v42 + 16));
  os_unfair_lock_unlock((v42 + 24));

  v43 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode + 8);
  if (v43)
  {
    v44 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode);
    v45 = MEMORY[0x277D837D0];
    v46 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode + 8);
  }

  else
  {
    v46 = 0;
    v44 = 0;
    v45 = 0;
    v66 = 0;
  }

  *&v65 = v44;
  *(&v65 + 1) = v46;
  v67 = v45;
  v47 = *(v1 + v6);

  os_unfair_lock_lock((v47 + 24));
  v48 = *(v47 + 16);

  os_unfair_lock_unlock((v47 + 24));

  v64 = v48;
  if (v43)
  {
    sub_24A6A50DC(&v65, v63);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v50 = sub_24A6A4F8C(v63, 0x65646F6373736170, 0xE800000000000000, v49);
  }

  else
  {
    sub_24A6F6C40(&v65);
    sub_24A7C3F0C(0x65646F6373736170, 0xE800000000000000, v63);
    v50 = sub_24A6F6C40(v63);
  }

  v51 = *(v1 + v6);
  MEMORY[0x28223BE20](v50);

  os_unfair_lock_lock((v51 + 24));
  sub_24A6FF740((v51 + 16));
  os_unfair_lock_unlock((v51 + 24));

  v53 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession);
  v54 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession + 8);
  if (v54 >> 60 != 15)
  {
    v55 = *v53;
    sub_24A681458(*v53, *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession + 8));
    v56 = sub_24A82C8F4();
    v67 = v5;
    *&v65 = v56;
    *(&v65 + 1) = v57;
    v58 = *(v1 + v6);

    os_unfair_lock_lock((v58 + 24));
    v59 = *(v58 + 16);

    os_unfair_lock_unlock((v58 + 24));

    sub_24A6A50DC(&v65, v63);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v59;
    v61 = sub_24A6A4F8C(v63, 0xD000000000000011, 0x800000024A846180, v60);
    v62 = *(v1 + v6);
    MEMORY[0x28223BE20](v61);

    os_unfair_lock_lock((v62 + 24));
    sub_24A6FF740((v62 + 16));
    os_unfair_lock_unlock((v62 + 24));
    sub_24A67E8E8(v55, v54);
  }

  return result;
}

uint64_t sub_24A6FF6C4()
{
  v0 = sub_24A6F8F90();
  v1 = *(v0 + qword_27EF78D38);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A6FF758()
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6FF7B4()
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6FF7FC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A82D9C4();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_24A6FF874@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24A82D9C4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_24A6FF8CC(uint64_t a1)
{
  v2 = sub_24A700150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6FF908(uint64_t a1)
{
  v2 = sub_24A700150();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t *sub_24A6FF944(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_24A6FF990(a1);
}

uint64_t *sub_24A6FF990(uint64_t *a1)
{
  v4 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_24A6BBA94(&qword_27EF5DB00, &qword_24A835508);
  v35 = *(v8 - 8);
  v9 = *(v35 + 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A700150();
  sub_24A82DD64();
  if (v2)
  {
    sub_24A6876E8(a1);
    type metadata accessor for FMIPGetURLInfoResponse();
    v13 = *(*v1 + 48);
    v14 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = a1;
    v15 = v35;
    sub_24A82DA44();
    v32 = v8;
    v18 = v33;
    if (v16)
    {
      sub_24A82C8A4();
    }

    else
    {
      v17 = sub_24A82C8B4();
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    }

    sub_24A696DA0(v7, v1 + OBJC_IVAR____TtC8FMIPCore22FMIPGetURLInfoResponse_url);
    sub_24A698230(v18, v34);
    a1 = sub_24A814C20(v34);
    v19 = qword_281515DC8;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_24A82CDC4();
    sub_24A6797D0(v20, qword_281518F88);
    v21 = sub_24A82CD94();
    v22 = sub_24A82D504();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34[0] = v24;
      *v23 = 136315138;
      v25 = sub_24A6FFD9C();
      v27 = sub_24A68761C(v25, v26, v34);
      v35 = v11;
      v28 = v15;
      v29 = v27;

      *(v23 + 4) = v29;
      _os_log_impl(&dword_24A675000, v21, v22, "FMIPGetURLInfoResponse: initialized with coder %s", v23, 0xCu);
      sub_24A6876E8(v24);
      MEMORY[0x24C21E1D0](v24, -1, -1);
      MEMORY[0x24C21E1D0](v23, -1, -1);

      v18 = v33;
      (*(v28 + 1))(v35, v32);
    }

    else
    {

      (*(v15 + 1))(v11, v32);
    }

    sub_24A6876E8(v18);
  }

  return a1;
}